
# decouple_ref_clk_CLOCK contains decouple_ref_clk which is a clock with frequency 125000000 Hz and period 8.0ns
create_clock -verbose -period 8.0 -name decouple_ref_clk [get_ports decouple_ref_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports decouple_ref_clk]




     # AXI_LITE_TO_HLS_PR_0_ref_clk_CLOCK contains AXI_LITE_TO_HLS_PR_0_ref_clk which is a clock with frequency 125000000 Hz and period 8.0ns
     create_clock  -verbose -period 8.0 -name AXI_LITE_TO_HLS_PR_0_ref_clk [get_ports AXI_LITE_TO_HLS_PR_0_ref_clk]
     set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports AXI_LITE_TO_HLS_PR_0_ref_clk]
