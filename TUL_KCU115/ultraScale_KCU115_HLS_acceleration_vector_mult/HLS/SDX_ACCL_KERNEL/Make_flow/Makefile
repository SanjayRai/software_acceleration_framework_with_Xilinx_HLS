XILINX_OPENCL := /home/applications/Xilinx/SDx/2017.1
HLS_INCLUDE := $(XILINX_OPENCL)/Vivado_HLS/include 
DSA := xilinx:xil-accel-rd-ku115:4ddr-xpr:4.0
XOCC := $(XILINX_OPENCL)/bin/xocc
CPP := g++

OPENCL_INC := $(XILINX_OPENCL)/runtime/include/1_2
OPENCL_LIB := $(XILINX_OPENCL)/runtime/lib/x86_64


#NUMBER_OF_CU := 1

SRCS_HOST  :=  ../src/tb_sdx_cppKernel_top.cpp ../src/getCPUTime.cpp 
SRCS_XOCC  :=   ../src/sdx_cppKernel_top.cpp ../src/simple_kernel.cpp
SRCS_GPP   :=  $(SRCS_HOST) $(SRCS_XOCC)


CXXFLAGS := -g -Wall -Werror -I$(OPENCL_INC) -I$(HLS_INCLUDE) -L$(OPENCL_LIB) -lxilinxopencl
#CXXFLAGS := -g -Wall -Werror -DNUMBER_OF_COMPUTE_UNITS=$(NUMBER_OF_CU) -I$(OPENCL_INC) -I$(HLS_INCLUDE) -L$(OPENCL_LIB) -lxilinxopencl
#CXXFLAGS_GPP_ONLY := -g -Wall -DGPP_ONLY_FLOW -DNUMBER_OF_COMPUTE_UNITS=$(NUMBER_OF_CU) -I$(OPENCL_INC) -I$(HLS_INCLUDE) -L$(OPENCL_LIB) -lxilinxopencl -lrt 
CXXFLAGS_GPP_ONLY := -g -Wall -DGPP_ONLY_FLOW -I$(OPENCL_INC) -I$(HLS_INCLUDE) -L$(OPENCL_LIB) -lxilinxopencl -lrt 

#XOCC_COMMON_FLAGS := -g -s --xdevice $(DSA) -DXOCC_CPP_KERNEL --memory_port_data_width all:512 --kernel sdx_cppKernel_top --nk sdx_cppKernel_top:$(NUMBER_OF_CU)
#XOCC_COMMON_FLAGS := -g -s --xdevice $(DSA) -DXOCC_CPP_KERNEL --kernel sdx_cppKernel_top --nk sdx_cppKernel_top:$(NUMBER_OF_CU)
XOCC_COMMON_FLAGS := -g -s --xdevice $(DSA) -DXOCC_CPP_KERNEL --kernel sdx_cppKernel_top

XOCC_SW_EMU := $(XOCC_COMMON_FLAGS) -t sw_emu
XOCC_HW_EMU := $(XOCC_COMMON_FLAGS) -t hw_emu
XOCC_HW := $(XOCC_COMMON_FLAGS) -t hw

.PHONY: all
all: sdx_host_exe sdx_sw_emu

.PHONY: gpp_flow
gpp_flow: tb_gpp

.PHONY: sdx_sw_emu
sdx_sw_emu: sdx_host_exe sdx_sw_emu.xclbin

.PHONY: sdx_hw_emu
sdx_hw_emu: sdx_host_exe sdx_hw_emu.xclbin

.PHONY: sdx_hw
sdx_hw: sdx_host_exe sdx_hw.xclbin


tb_gpp: $(SRCS_GPP) 
	$(CXX) $(CXXFLAGS_GPP_ONLY) -o $@ $^ 

sdx_host_exe: $(SRCS_HOST)
	$(CXX) $(CXXFLAGS) -o $@ $^ 

sdx_sw_emu.xclbin: $(SRCS_XOCC) 
	$(XOCC) $(XOCC_SW_EMU) $^ -o $@

sdx_hw_emu.xclbin: $(SRCS_XOCC)  
	$(XOCC) $(XOCC_HW_EMU) $^ -o $@

sdx_hw.xclbin: $(SRCS_XOCC)  
	$(XOCC) $(XOCC_HW) $^ -o $@

clean:
	rm -rf *.xclbin tb_gpp sdx_host_exe xocc* sdaccel* .Xil
clean_all:
	rm -rf *.xclbin tb_gpp sdx_host_exe xocc* sdaccel* .Xil _xocc_*.dir


tar:
	tar -zcvf SDX_PASS_THRU.tar.gz sdx_host_exe sdx_hw.xclbin
