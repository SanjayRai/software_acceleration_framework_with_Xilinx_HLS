#include<stdio.h>
#include<math.h>

#include "sdaccel_utils.h" 
#include "sdx_cppKernel_top.h" 

using namespace std;



double getCPUTime();

void gen_test_data(sdx_data_t *a) {

    srai_conv temp;

    temp.my_float = 0.0003933f;

    for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
        for (int i = 0 ; i < SDX_CU_LOCAL_IN_SIZE; i++) {
            if (i < (SDX_CU_LOCAL_IN_SIZE/2)) {
                for (int index = 0; index < 16;index++) {
                    temp.my_float = (float((rand() % 32768))/327.0f); 
                    ((*a)(((index*32)+31), (index*32)))    =  temp.my_uint32;
                }
            } else {
                for (int index = 0; index < 16;index++) {
                    temp.my_float = float(10.0f); 
                    ((*a)(((index*32)+31), (index*32)))    =  temp.my_uint32;
                }
            }
        a++;
        }
    }
}

void print_test_data(sdx_data_t *a) {

srai_conv temp;
printf("\n Input Test Data Set : \n");
for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
    for (int i = 0 ; i < SDX_CU_LOCAL_IN_SIZE; i++) {
        for (int index = 0; index < 16;index++) {
            temp.my_uint32 = ((*a)(((index*32)+31), (index*32)));
            printf ("\t%f|  \n", temp.my_float);
        }
        a++;
    }
}
printf ("\n");
printf ("-----------------------------------------------------\n");
}

int main(int argc, char** argv)
{

  double startTime;
  double endTime;
  double ElapsedTime;

  sdx_data_t *a_in_ptr;
  sdx_data_t *b_in_ptr;
  sdx_data_t *a_in_head;
  sdx_data_t *y_out_ptr;
  sdx_data_t *y_out_ptr_head;
  int num_itn;


  bool RESULT_SUCESSFULL;

  a_in_ptr = new sdx_data_t[GLOBAL_DATA_IN_SIZE];
  a_in_head = a_in_ptr;
  y_out_ptr = new sdx_data_t[GLOBAL_DATA_OUT_SIZE];
  y_out_ptr_head = y_out_ptr;

  printf("-------------------------------------------------------------\n");
  printf("Create Test Data Set\n");
  printf("Note GLOBAL_DATA_IN_SIZE (Number of test loops run) = %d\n", GLOBAL_DATA_IN_SIZE);
  printf("Note GLOBAL_DATA_OUT_SIZE (Number of test loops run) = %d\n", GLOBAL_DATA_OUT_SIZE);
  printf("-------------------------------------------------------------\n\n\n");

 gen_test_data(a_in_ptr);
  
 a_in_ptr = a_in_head;

//print_test_data(a_in_ptr);
//a_in_ptr = a_in_head;
//if (0) { //__SRAI _DEBUG
    //-----------------------------------------------
#ifdef GPP_ONLY_FLOW  
    startTime = getCPUTime();
    sdx_cppKernel_top(a_in_ptr, y_out_ptr, (unsigned int)NUMBER_OF_DATA_SETS);
    endTime = getCPUTime();

     a_in_ptr = a_in_head;
     y_out_ptr = y_out_ptr_head;
#else 
  int in_args_size[10];               // Array of input Argument sizes
  int out_args_size[10];              // Array of output Argument sizes
  int init_success;
  int run_success;
  int sdaccel_clean_success;

    fpga_hw_accel<sdx_data_t,sdx_data_t, 1, GLOBAL_DATA_IN_SIZE, GLOBAL_DATA_OUT_SIZE> Alpha_Data_ku060_card;

    if (argc != 2){
    printf("%s <inputfile>\n", argv[0]);
    return EXIT_FAILURE;
    }

    in_args_size[0] = sizeof(sdx_data_t)*GLOBAL_DATA_IN_SIZE;
    out_args_size[0] = sizeof(sdx_data_t)*GLOBAL_DATA_OUT_SIZE;

    init_success = Alpha_Data_ku060_card.initalize_fpga_hw_accel(argv[1], "sdx_cppKernel_top", in_args_size, out_args_size, 1, 1); 
    if (init_success ) {
        printf ("Launching Algorithm on FPGA Platform\n");
        startTime = getCPUTime();
        


        a_in_ptr = a_in_head;
        y_out_ptr = y_out_ptr_head;
        
        run_success = 0;
        run_success |=  Alpha_Data_ku060_card.run_fpga_accel (a_in_ptr, y_out_ptr);

        a_in_ptr = a_in_head;
        y_out_ptr = y_out_ptr_head;


        endTime = getCPUTime();
        if (!run_success ) {
            printf("Error: SdAccel CPP Kernel execution Failed !!\n");
        }
    } else {
        printf("Error: SdAccel provisioning Failed !!\n");
    }
    sdaccel_clean_success = Alpha_Data_ku060_card.clean_fpga_hw_accel();
    if (!sdaccel_clean_success) {
        printf("Error: SdAccel resource cleanip Failed !!\n");
    }

#endif

    int GLOBAL_DATA_SIZE_to_print = 50;
    int MAX_ITERATION_to_print = 1;

    RESULT_SUCESSFULL = 1;
    for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
    srai_conv in_arg_0;
    srai_conv in_arg_1;
    srai_conv out_arg_0;
        for (int i = 0 ; i < SDX_CU_LOCAL_OUT_SIZE; i++) {
            for (int index = 0; index < 16;index++) {
                        in_arg_0.my_uint32 = ((*a_in_ptr)(((index*32)+31), (index*32)));
                        b_in_ptr = (a_in_ptr+(SDX_CU_LOCAL_IN_SIZE/2));
                        in_arg_1.my_uint32 = ((*b_in_ptr)(((index*32)+31), (index*32)));
                        out_arg_0.my_uint32 = ((*y_out_ptr)(((index*32)+31), (index*32)));
                if (fabs(((in_arg_0.my_float)*(in_arg_1.my_float)) - out_arg_0.my_float) < 0.00005f){
                    RESULT_SUCESSFULL &= 1;
                } else {
                    RESULT_SUCESSFULL &= 0;
                }
            }
        a_in_ptr++;
        y_out_ptr++;
        }
        a_in_ptr+=(SDX_CU_LOCAL_IN_SIZE/2);
    }

    a_in_ptr = a_in_head;
    y_out_ptr = y_out_ptr_head;
    if (!RESULT_SUCESSFULL) {
        printf (" ------------   Results did not Verify - Test Failed !!!!!! -------------------------------------------------\n");
        for (num_itn = 0; num_itn <  MAX_ITERATION_to_print;num_itn++) { 
        srai_conv in_arg_0;
        srai_conv in_arg_1;
        srai_conv out_arg_0;
            printf("\n Input Test Data Set : %d:\n", num_itn);
            for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
                for (int i = 0 ; i < SDX_CU_LOCAL_OUT_SIZE; i++) {
                    for (int index = 0; index < 16;index++) {
                        in_arg_0.my_uint32 = ((*a_in_ptr)(((index*32)+31), (index*32)));
                        b_in_ptr = (a_in_ptr+(SDX_CU_LOCAL_IN_SIZE/2));
                        in_arg_1.my_uint32 = ((*b_in_ptr)(((index*32)+31), (index*32)));
                        out_arg_0.my_uint32 = ((*y_out_ptr)(((index*32)+31), (index*32)));
                        printf (" %f * %f  = \t%f|  \n",in_arg_0.my_float,in_arg_1.my_float, out_arg_0.my_float );
                    }
                    a_in_ptr++;
                    y_out_ptr++;
                }
            a_in_ptr+=(SDX_CU_LOCAL_IN_SIZE/2);
            }
            printf ("\n");
            printf ("-----------------------------------------------------\n");
        }
    } else {
        printf (" ------------   Results Verified  ---------------------------------------------------------------------------\n");
        printf (" ------------   Results  ---------------------------------------------------------------------------\n");
        printf (" Global_data_in_size: %d(%f MB) \n", GLOBAL_DATA_IN_SIZE, (float)GLOBAL_DATA_IN_SIZE_IN_MB); 
        printf (" Global_data_out_size: %d(%f MB) \n", GLOBAL_DATA_OUT_SIZE, (float)GLOBAL_DATA_OUT_SIZE_IN_MB); 
        printf (" ---------------------------------------------------------------------------------------------------\n");
        printf (" ---------------------------------------------------------------------------------------------------\n");
        ElapsedTime = (endTime - startTime);
        for (num_itn = 0; num_itn <  MAX_ITERATION_to_print;num_itn++) { 
        srai_conv in_arg_0;
        srai_conv in_arg_1;
        srai_conv out_arg_0;
            printf("\n Input Test Data Set : %d:\n", num_itn);
            for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
                for (int i = 0 ; i < SDX_CU_LOCAL_OUT_SIZE; i++) {
                    for (int index = 0; index < 16;index++) {
                        in_arg_0.my_uint32 = ((*a_in_ptr)(((index*32)+31), (index*32)));
                        b_in_ptr = (a_in_ptr+(SDX_CU_LOCAL_IN_SIZE/2));
                        in_arg_1.my_uint32 = ((*b_in_ptr)(((index*32)+31), (index*32)));
                        out_arg_0.my_uint32 = ((*y_out_ptr)(((index*32)+31), (index*32)));
                        printf (" %f * %f  = \t%f|  \n",in_arg_0.my_float,in_arg_1.my_float, out_arg_0.my_float );
                    }
                    a_in_ptr++;
                    y_out_ptr++;
                }
            a_in_ptr+=(SDX_CU_LOCAL_IN_SIZE/2);
            }
            printf ("\n");
            printf ("-----------------------------------------------------\n");
        }
    }
    delete [] a_in_head;
    delete [] y_out_ptr_head;
    printf (" Elapsed Time for algorithm = %1f sec\n", ElapsedTime);
//} //__SRAI DBG
    return 0;
}
