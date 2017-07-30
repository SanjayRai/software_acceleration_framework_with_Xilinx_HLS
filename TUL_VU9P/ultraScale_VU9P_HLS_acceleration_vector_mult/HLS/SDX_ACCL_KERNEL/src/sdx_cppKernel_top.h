#include  "ap_int.h"
#include  "stdint.h"
#ifndef SDX_CPPKERNEL_TOP_H_
#define SDX_CPPKERNEL_TOP_H_ 

//#define data_t double 
//#define data_t ap_uint<512>
#define data_t float
//#define data_t unsigned int
#define data_t2 ap_uint<32> 

#define SDX_BUS_WIDTH 512
#define SDX_BUS_WIDTH_BYTES SDX_BUS_WIDTH/8
#define SDX_CU_LOCAL_IN_SIZE 32
#define SDX_CU_LOCAL_OUT_SIZE 16
//#define MAX_IN0_MEMORY_SIZE 128*1024*1024
//#define MAX_OUT0_MEMORY_SIZE 128*1024*1024
#define MAX_IN0_MEMORY_SIZE 32*1024
#define MAX_OUT0_MEMORY_SIZE 32*1024

#define NUMBER_OF_DATA_SETS ((MAX_OUT0_MEMORY_SIZE)/((SDX_BUS_WIDTH/8)*SDX_CU_LOCAL_OUT_SIZE))

#define sdx_data_t ap_uint<SDX_BUS_WIDTH>

#define GLOBAL_DATA_IN_SIZE SDX_CU_LOCAL_IN_SIZE*NUMBER_OF_DATA_SETS
#define GLOBAL_DATA_OUT_SIZE SDX_CU_LOCAL_OUT_SIZE*NUMBER_OF_DATA_SETS
#define GLOBAL_DATA_IN_SIZE_IN_MB (GLOBAL_DATA_IN_SIZE*sizeof(sdx_data_t))/(1024.0*1024.0)
#define GLOBAL_DATA_OUT_SIZE_IN_MB (GLOBAL_DATA_OUT_SIZE*sizeof(sdx_data_t))/(1024.0*1024.0)

typedef union {
    uint32_t my_uint32;
    float my_float;
} srai_conv;



const long int HLS_AXI_SIM_IN_DEPTH=(long int)GLOBAL_DATA_IN_SIZE;
const long int HLS_AXI_SIM_OUT_DEPTH=(long int)GLOBAL_DATA_OUT_SIZE;
const unsigned int HLS_SDX_WRAPPER_II=(unsigned int)SDX_CU_LOCAL_IN_SIZE;
const unsigned int HLS_SDX_WRAPPER_TRIP_COUNT=(unsigned int)NUMBER_OF_DATA_SETS;

void kernel_WRAPPER (unsigned short G_index, unsigned short L_index, sdx_data_t *a_in, sdx_data_t *b_in, sdx_data_t *results);
void floating_point_vector_mult (data_t *a_in, data_t *b_in, data_t *results);

#ifdef XOCC_CPP_KERNEL 
extern "C" {
#endif
void sdx_cppKernel_top(sdx_data_t *a_in, sdx_data_t *y_out, unsigned int NUMBER_OF_DATA_SETS_t);
#ifdef XOCC_CPP_KERNEL 
}
#endif

#endif
