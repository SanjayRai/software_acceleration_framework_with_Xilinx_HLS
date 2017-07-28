set XILINX_OPENCL /home/applications/Xilinx/SDx/2017.1

open_project vhls_prj
set_top sdx_cppKernel_top

add_files -tb ../src/getCPUTime.cpp
add_files -tb ../src/tb_sdx_cppKernel_top.cpp -cflags "-DVHLS_FLOW -DGPP_ONLY_FLOW -I$XILINX_OPENCL/runtime/include/1_2 -I$XILINX_OPENCL/Vivado_HLS/include -L$XILINX_OPENCL/runtime/lib/x86_64 -lrt"
add_files ../src/kernel_WRAPPER.cpp
add_files ../src/floating_point_vector_mult.cpp
add_files ../src/sdx_cppKernel_top.h
add_files ../src/sdx_cppKernel_top.cpp

open_solution "solution1"
set_part {xcku115-flvb2104-2-i}
create_clock -period 4 -name default
csim_design
csynth_design
#cosim_design -ldflags {-lm -lrt}
#export_design -format ip_catalog
exit

