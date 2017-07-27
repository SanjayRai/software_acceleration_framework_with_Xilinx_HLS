/* Sanjay Rai - Test routing to access PCIe via  dev.mem mmap  */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>
#include <time.h>
#include <inttypes.h>
#include <fstream>
#include <string>
#include <chrono>
#include <cmath>
#include "pcie_memio.h" 

using namespace std;

//#define PAGE_SIZE (128*1024UL)
#define PAGE_SIZE (512*1024*1024UL)

/* Address Ranges as defined in VIvado IPI Address map */
/* NOTE: Be aware on any PCIe-AXI Address translation setup on the xDMA/PCIEBridge*/ 
/*       These address translations affect the address shown . THese address are  */
/*       exactly waht is populated on the IPI Address tab                         */
#define DDR4_BASE   0x00000000
#define DDR4_BASE_results   0x40000000
#define ICAP_BASE   0x10000000
#define PR_HLS_BASE 0x10010000
#define GPIO_BASE   0x10030000

/* Address Offset of various Peripheral Registers */ 
#define ICAP_CNTRL_REG              ICAP_BASE + 0x10C
#define ICAP_STATUS_REG             ICAP_BASE + 0x110
#define ICAP_WR_FIFO_REG            ICAP_BASE + 0x100
#define ICAP_WR_FIFO_VACANCY_REG    ICAP_BASE + 0x114
#define PR_HLS_CONTROL_REG          PR_HLS_BASE + 0x0
#define PR_HLS_IN0_ADDR_OFFSET      PR_HLS_BASE + 0x10
#define PR_HLS_OUT0_ADDR_OFFSET     PR_HLS_BASE + 0x18
#define PR_HLS_NUMBER_OF_DATA_SETS  PR_HLS_BASE + 0x20


/* Dataset Parameters */ 
#define SDX_BUS_WIDTH 512
#define SDX_BUS_WIDTH_BYTES (SDX_BUS_WIDTH/8) 
#define SDX_CU_BLOCK_SIZE 16
#define NUMBER_OF_INPUTS 2
#define NUMBER_OF_OUTPUTS 1
#define data_t float 
#define SDX_BUS_WIDTH_data_t (SDX_BUS_WIDTH_BYTES/sizeof(data_t)) 

#define SDX_CU_LOCAL_IN_SIZE  (SDX_CU_BLOCK_SIZE*NUMBER_OF_INPUTS) 
#define SDX_CU_LOCAL_OUT_SIZE (SDX_CU_BLOCK_SIZE*NUMBER_OF_OUTPUTS) 

#define MAX_IN0_MEMORY_SIZE 1024*1024*1024
#define MAX_OUT0_MEMORY_SIZE 512*1024*1024
#define TOTAL_IN_MEMORY_SIZE 1024*1024*1024
#define TOTAL_OUT_MEMORY_SIZE 512*1024*1024
#define TOTAL_IN_MEMORY_SIZE_data_t  ((TOTAL_IN_MEMORY_SIZE)/sizeof(data_t)) 
#define TOTAL_OUT_MEMORY_SIZE_data_t ((TOTAL_OUT_MEMORY_SIZE)/sizeof(data_t)) 

#define NUMBER_OF_DATA_SETS ((MAX_OUT0_MEMORY_SIZE)/((SDX_BUS_WIDTH_BYTES)*SDX_CU_LOCAL_OUT_SIZE))

#define INPUT0_ADDR_INCR (SDX_BUS_WIDTH_BYTES)*SDX_CU_LOCAL_IN_SIZE*NUMBER_OF_DATA_SETS
#define OUTPUT0_ADDR_INCR (SDX_BUS_WIDTH_BYTES)*SDX_CU_LOCAL_OUT_SIZE*NUMBER_OF_DATA_SETS

#define NUMBER_OF_ITERATIONS ((TOTAL_OUT_MEMORY_SIZE)/(MAX_OUT0_MEMORY_SIZE))


int ICAP_IPROG_reset (fpga_mmio *fpga_ICAP);
int ICAP_prog_binfile (fpga_mmio *fpga_ICAP, uint32_t *data_buffer, unsigned int binfile_length );
int ICAP_acess (fpga_mmio *fpga_ICAP);

int main(int argc, char **argv) {

    uint32_t base_address;
    uint32_t base_address_ddr4;
    clock_t elspsed_time;
    data_t *data_buf_ptr = new data_t [TOTAL_OUT_MEMORY_SIZE_data_t];
    data_t *A_IN = new data_t [TOTAL_IN_MEMORY_SIZE_data_t];
    unsigned int xfer_count ;
    time_t t;
    srand((unsigned) time(&t));
    uint32_t itn_count = 0;
    unsigned int index_in;
    unsigned int index_out;

    fstream fpga_bin_file;

    int file_size;
    char *bitStream_buffer;
    uint32_t *bitstream_ptr;

    if (argc != 3) {
        printf("usage: pcie_mmio base_addr fpga_bin_file\n");
        return -1;
    }

    // ------------ Init -----------------------
    //
    //Display Software Execution Parameters
    cout << "Software Execution Params :  \n";
    cout << "INPUT0_ADDR_INCR = 0x" << hex << INPUT0_ADDR_INCR << endl;
    cout << "OUTPUT0_ADDR_INCR = 0x" << hex << OUTPUT0_ADDR_INCR << endl;
    cout << "MAX_IN0_MEMORY_SIZE = " << dec << MAX_IN0_MEMORY_SIZE << endl;
    cout << "MAX_OUT0_MEMORY_SIZE = " << MAX_OUT0_MEMORY_SIZE << endl;
    cout << "NUMBER_OF_DATA_SETS = " << NUMBER_OF_DATA_SETS << endl;
    cout << "NUMBER_OF_ITERATIONS = " << NUMBER_OF_ITERATIONS << endl;
    


    cout << "Initializing FPGA\n";
    fpga_mmio *my_fpga_ptr = new fpga_mmio;
    fpga_xDMA *my_fpga_xDMA_ptr = new fpga_xDMA;
    base_address = strtoll(argv[1], 0, 0);
   


    elspsed_time = clock();
    //auto start_t = chrono::high_resolution_clock::now();

    my_fpga_ptr->fpga_mmio_init<uint32_t>(base_address, PAGE_SIZE);
    my_fpga_xDMA_ptr->fpga_xDMA_init();

    string PR_binFile_name;
    string PR_clear_binFile_name;
    string PR_partial ("_partial.bin");
    string PR_clear ("_partial_clear.bin");
    PR_binFile_name = argv[2];
    PR_binFile_name += PR_partial; 
    PR_clear_binFile_name = argv[2];
    PR_clear_binFile_name += PR_clear; 
    cout << "Partial  File_name = " << PR_binFile_name << endl;
    cout << "Partial clear File_name = " << PR_clear_binFile_name << endl;

/* Isolate the PR region by programing the GPIO ISOLATE bits */ 
    my_fpga_ptr->fpga_poke<uint32_t>(GPIO_BASE, 0x00000003); 
/* Program Partial Bit file */
    fpga_bin_file.open(PR_clear_binFile_name, ios::in | ios::binary);
    fpga_bin_file.seekg(0, fpga_bin_file.end);
    file_size = fpga_bin_file.tellg();
    fpga_bin_file.seekg(0, fpga_bin_file.beg);
    bitStream_buffer = new char [file_size];
    bitstream_ptr = (uint32_t *)bitStream_buffer;
    fpga_bin_file.read(bitStream_buffer, file_size);
    fpga_bin_file.close();
    ICAP_prog_binfile (my_fpga_ptr, bitstream_ptr, file_size );
    delete [] bitStream_buffer;

    fpga_bin_file.open(PR_binFile_name, ios::in | ios::binary);
    fpga_bin_file.seekg(0, fpga_bin_file.end);
    file_size = fpga_bin_file.tellg();
    fpga_bin_file.seekg(0, fpga_bin_file.beg);
    bitStream_buffer = new char [file_size];
    bitstream_ptr = (uint32_t *)bitStream_buffer;
    fpga_bin_file.read(bitStream_buffer, file_size);
    fpga_bin_file.close();
    ICAP_prog_binfile (my_fpga_ptr, bitstream_ptr, file_size );
    delete [] bitStream_buffer;

/* De_Isolate the PR region by programing the GPIO ISOLATE bits */ 
    my_fpga_ptr->fpga_poke<uint32_t>(GPIO_BASE, 0x00000000); 


    //Fill ddr4_Memory wr_data_buffer
    cout << "Initializing Memory with InputA args\n";
    index_in = 0;
    for (int i = 0 ; i < NUMBER_OF_ITERATIONS; i++) {
        for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
          for (int k = 0; k < SDX_CU_LOCAL_IN_SIZE; k++) {
            for (int l = 0; l < SDX_BUS_WIDTH_data_t; l++) {
                if ( k  < ((SDX_CU_LOCAL_IN_SIZE)/(NUMBER_OF_INPUTS))) {
                  A_IN[index_in] = (data_t)(rand() % (int)32768.0f)/327.0f; 
                } else {
                  A_IN[index_in] = (data_t)(rand() % (int)32768.0f)/8765.4f; 
                  //A_IN[index_in] = 10.0f; 
                }

                index_in++; 
             } 
           } 
        }
    }

    cout << "Memory Initialized with " << (index_in*sizeof(data_t)) << " bytes of input  data_t\n";

    cout << "Start HLS execution ..." << endl;

    //string temp_var;
    //cin >> temp_var; 
    /* Read the PR_HLS Control register to poll the Idle bit (bit 1) */ 
    itn_count = 0;
    while ((my_fpga_ptr->fpga_peek<uint32_t>(PR_HLS_CONTROL_REG) & 0x04) != 0x4) {
        itn_count++;
        if (itn_count > 1000) FAUT_CONDITION;
    }
    auto start_t = chrono::high_resolution_clock::now();

    for (int i = 0; i < NUMBER_OF_ITERATIONS; i++) { 
        /* Initialize DDR4 Memory with Input Arguments*/
        xfer_count = my_fpga_xDMA_ptr->fpga_xDMA_write((DDR4_BASE + (INPUT0_ADDR_INCR*i)), (char *)(A_IN + (i*NUMBER_OF_DATA_SETS*SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_IN_SIZE)), MAX_IN0_MEMORY_SIZE);
    /* Write to PR_HLS Address offset registers to set the location in Memory where Input Data and Output results are stored */
        my_fpga_ptr->fpga_poke<uint32_t>(PR_HLS_IN0_ADDR_OFFSET, (DDR4_BASE + (INPUT0_ADDR_INCR*i))); 
        my_fpga_ptr->fpga_poke<uint32_t>(PR_HLS_OUT0_ADDR_OFFSET, (DDR4_BASE_results + (OUTPUT0_ADDR_INCR*i))); 
        my_fpga_ptr->fpga_poke<uint32_t>(PR_HLS_NUMBER_OF_DATA_SETS, NUMBER_OF_DATA_SETS); 
    /* Write to PR_HLS Control register to set Start bit HLS_PR module in motion */ 
        my_fpga_ptr->fpga_poke<uint32_t>(PR_HLS_CONTROL_REG, 0x00000011); 
    /* Read the PR_HLS Control register to poll the DOne bit (bit 1) */ 
        itn_count = 0;
        while ((my_fpga_ptr->fpga_peek<uint32_t>(PR_HLS_CONTROL_REG) & 0x02) != 0x2) {
            itn_count++;
            if (itn_count > 10000000) FAUT_CONDITION;
        }
    /* Read Results from DDR4 output (results) area */
    xfer_count = my_fpga_xDMA_ptr->fpga_xDMA_read((DDR4_BASE_results + (OUTPUT0_ADDR_INCR*i)), (char *)(data_buf_ptr + (i*NUMBER_OF_DATA_SETS*SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_OUT_SIZE)), MAX_OUT0_MEMORY_SIZE);

    }

    auto stop_t = chrono::high_resolution_clock::now();
    cout << "End HLS execution :: Wait count = " << dec << itn_count << endl;



    // Verify REsults
    cout << "Verify results " << endl;
    data_t A_v, B_v, Res_v;
    index_in = 0;
    index_out = 0;
    int tmp_count = 0;
    for (int i = 0 ; i < NUMBER_OF_ITERATIONS; i++) {
        for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
          for (int k = 0; k < SDX_CU_LOCAL_OUT_SIZE; k++) {
            for (int l = 0; l < SDX_BUS_WIDTH_data_t; l++) {
              A_v = A_IN[index_in] ;
              B_v = A_IN[index_in+(SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_OUT_SIZE)] ;
              Res_v = data_buf_ptr[index_out];
              if (tmp_count < 0) {
                  cout << "A = " << A_v << " B = " << B_v << " Res = " << Res_v << endl;
                  tmp_count++;
              }
              if( (fabs(A_v * B_v) - Res_v) > 0.001f) { 
                  cout << "Failure at index " << index_out << endl;
                  cout << "A = " << A_v << " B = " << B_v << " Res = " << Res_v << endl;
                  FAUT_CONDITION;
              }

                index_in++; 
                index_out++; 
             } 
           } 
           index_in+= (SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_OUT_SIZE);
        }
    }
    cout << "Results verifcation complete " << endl;

    // Print results 10 random  ones
    cout << "Print results " << endl;
    for (unsigned int i = 0 ; i < 10; i++) {
        unsigned int rnd_iteration_num;
        unsigned int rnd_data_set;
        unsigned int rnd_index;
        unsigned int rnd_in_index;
        unsigned int rnd_out_index;
        rnd_iteration_num = (rand() % NUMBER_OF_ITERATIONS);
        rnd_data_set = (rand() % NUMBER_OF_DATA_SETS);
        rnd_index = (rand() % (SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_OUT_SIZE));
        rnd_out_index = (rnd_iteration_num*rnd_data_set*(SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_OUT_SIZE))+rnd_index;
        rnd_in_index = (rnd_iteration_num*rnd_data_set*(SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_IN_SIZE))+rnd_index;

        //cout << " data_set = " << rnd_data_set; 
        //cout << " index = " << rnd_index; 
        cout << " In_A = " << A_IN[rnd_in_index]; 
        cout << " In_B = " << A_IN[rnd_in_index + (SDX_BUS_WIDTH_data_t*SDX_CU_LOCAL_OUT_SIZE)]; 
        cout << " :: Out = " << data_buf_ptr[rnd_out_index] <<  endl;
    }


    // ------------ Clean -----------------------
    my_fpga_ptr->fpga_mmio_clean();
    my_fpga_xDMA_ptr->fpga_xDMA_clean();
    elspsed_time = (clock() - elspsed_time);
    chrono::duration<double> elapsed_hi_res = stop_t - start_t ;
    double high_res_elapsed_time = elapsed_hi_res.count();
    cout << "HLS Execution time =  " <<  high_res_elapsed_time << "s\n";
    cout << "HLS THroughput =  " <<  (TOTAL_OUT_MEMORY_SIZE/high_res_elapsed_time) << " Bytes/s\n";
    cout << "Transfer Count = "<< xfer_count*4 << " Bytes | Bandwidth =  " << (xfer_count*4)/high_res_elapsed_time << "Bytes/s\n";
    printf ("Elapsede time = %f secs\n", (double)elspsed_time/CLOCKS_PER_SEC);

    delete [] data_buf_ptr;
    delete [] A_IN;
    return 0;
}

int ICAP_prog_binfile (fpga_mmio *fpga_ICAP, uint32_t *data_buffer, unsigned int binfile_length ) {

    uint32_t ret_data;
    uint32_t itn_count;
    uint32_t byte_swapped;
    // Reset the ICAP
    fpga_ICAP->fpga_poke<uint32_t>(ICAP_CNTRL_REG, 0x8); 
    // Check if the ICAP is ready
    ret_data = fpga_ICAP->fpga_peek<uint32_t>(ICAP_STATUS_REG); 
    printf (" Status Reg = %x\n", ret_data);
    itn_count = 0;
    while (ret_data != 0x5) {
        ret_data = fpga_ICAP->fpga_peek<uint32_t>(ICAP_STATUS_REG); 
        itn_count++; 
        if (itn_count > 1000) FAUT_CONDITION;
    }

    // ICAP Data File processing
    for (unsigned int i = 0 ; i < (binfile_length/4); i++) {
        byte_swapped = ((*data_buffer>>24)&0x000000ff) | \
                       ((*data_buffer>>8) &0x0000ff00) | \
                       ((*data_buffer<<8) &0x00ff0000) | \
                       ((*data_buffer<<24)&0xff000000);
        data_buffer++;
    
        //cout << *data_buffer << " :  Writing :  " << hex << byte_swapped << endl;
        fpga_ICAP->fpga_poke<uint32_t>(ICAP_WR_FIFO_REG, byte_swapped); 
        if (((i+1) % 60) == 0) {
            // Write to the COntrol register to drain the Data FIFO every 60 or writes 
            ret_data = fpga_ICAP->fpga_peek<uint32_t>(ICAP_WR_FIFO_VACANCY_REG); 
            fpga_ICAP->fpga_poke<uint32_t>(ICAP_CNTRL_REG, 0x1); 
            itn_count = 0;
            // Wait till Fifo is drained
            while (ret_data != 0x3F) {
                ret_data = fpga_ICAP->fpga_peek<uint32_t>(ICAP_WR_FIFO_VACANCY_REG); 
                itn_count++; 
                if (itn_count > 1000) FAUT_CONDITION;
            }
        }
    }
    // Final ICAP Fifo Flush
    fpga_ICAP->fpga_poke<uint32_t>(ICAP_CNTRL_REG, 0x1); 

   return 0;
}

