#include <string.h>

#include "sdx_cppKernel_top.h"

void sdx_cppKernel_top(sdx_data_t *a_in, sdx_data_t *y_out, unsigned int NUMBER_OF_DATA_SETS_t) {
#pragma HLS INTERFACE m_axi port=a_in offset=slave depth=HLS_AXI_SIM_IN_DEPTH latency=100 bundle=gmem num_read_outstanding=32 num_write_outstanding=32 max_read_burst_length=16 max_write_burst_length=16
#pragma HLS INTERFACE m_axi port=y_out offset=slave depth=HLS_AXI_SIM_OUT_DEPTH latency=100 bundle=gmem num_read_outstanding=32 num_write_outstanding=32 max_read_burst_length=16 max_write_burst_length=16
#pragma HLS INTERFACE s_axilite port=a_in bundle=control
#pragma HLS INTERFACE s_axilite port=y_out bundle=control
#pragma HLS INTERFACE s_axilite port=NUMBER_OF_DATA_SETS_t bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    unsigned short G_index = 0;
    unsigned short L_index = 0;

    sdx_data_t bufa_val[SDX_CU_LOCAL_IN_SIZE];
    sdx_data_t bufy_val[SDX_CU_LOCAL_OUT_SIZE];

    sdx_cppKernel_top_local_data_loop:for (int i = 0; i < NUMBER_OF_DATA_SETS_t; i++) {
    #pragma HLS LOOP_TRIPCOUNT min=HLS_SDX_WRAPPER_TRIP_COUNT max=HLS_SDX_WRAPPER_TRIP_COUNT
    #pragma HLS PIPELINE II=HLS_SDX_WRAPPER_II
        memcpy(bufa_val, (const sdx_data_t*)a_in, SDX_BUS_WIDTH_BYTES*SDX_CU_LOCAL_IN_SIZE);
        a_in += SDX_CU_LOCAL_IN_SIZE;
        for (int itn_num = 0 ; itn_num < (SDX_CU_LOCAL_OUT_SIZE); itn_num++) {
        #pragma HLS PIPELINE II=1
            kernel_WRAPPER (G_index, L_index, &bufa_val[itn_num], &bufa_val[itn_num+(SDX_CU_LOCAL_IN_SIZE/2)], &bufy_val[itn_num]);
            L_index++;
        }
        memcpy(y_out, bufy_val, SDX_BUS_WIDTH_BYTES*SDX_CU_LOCAL_OUT_SIZE);
        y_out += SDX_CU_LOCAL_OUT_SIZE;
        L_index = 0;
        G_index++;
    }
    return;
}

