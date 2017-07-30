#include "sdx_cppKernel_top.h"

void kernel_WRAPPER (unsigned short G_index, unsigned short L_index, sdx_data_t *a_in, sdx_data_t *b_in, sdx_data_t *results) {
srai_conv in_arg_0;
srai_conv in_arg_1;
srai_conv out_arg_0;
float fn_in_arg0;
float fn_in_arg1;
float fn_out_arg0;
#pragma HLS PIPELINE
    for (int index = 0; index < 16;index++) {
        in_arg_0.my_uint32 = ((*a_in)(((index*32)+31), (index*32)));
        in_arg_1.my_uint32 = ((*b_in)(((index*32)+31), (index*32)));

        fn_in_arg0 = in_arg_0.my_float;
        fn_in_arg1 = in_arg_1.my_float;

        floating_point_vector_mult (&fn_in_arg0, &fn_in_arg1, &fn_out_arg0);

        out_arg_0.my_float = fn_out_arg0;

        (*results)(((index*32)+31),(index*32)) = out_arg_0.my_uint32; 
    }
    return;
}
