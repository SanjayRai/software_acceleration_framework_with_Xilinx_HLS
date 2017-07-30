# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../device_type.tcl




set TOP_module VU9P_AXI_ICAP_PR_DESIGN_top

create_project -in_memory -part [DEVICE_TYPE] 

read_ip {
 ../IP/vio_x8/vio_x8.xci
}
read_bd {
../IP/PCIe_Bridge_ICAP_complex/PCIe_Bridge_ICAP_complex.bd
../IP/HLS_PR_0/HLS_PR_0.bd
}

read_verilog {
../src/PR_modules/PR_module_A/src/PR_module.v
../src/VU9P_AXI_ICAP_PR_DESIGN_top.v
}

read_xdc {
../src/xdc/VU9P_AXI_ICAP_PR_DESIGN_top.xdc
}

synth_design -keep_equivalent_registers -shreg_min_size 8  -top $TOP_module -part [DEVICE_TYPE] 

opt_design -verbose -directive Explore

write_checkpoint -force $TOP_module.post_synth_opt.dcp
if (1) {
source ../src/xdc/srai_gt.tcl
place_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place_phys_opt.dcp
route_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route_phys_opt.dcp
write_debug_probes ./$TOP_module.ltx
report_timing_summary -file $TOP_module.timing_summary.rpt
report_drc -file $TOP_module.drc.rpt

set_param bitstream.enablePR 4123
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
write_bitstream -bin_file $TOP_module.bit      
write_cfgmem  -format mcs -size 512 -interface SPIx4 -loadbit "up 0x00000000 $TOP_module.bit " -file "$TOP_module.mcs"


#update_design -cell U_PR_module -black_box 
#lock_design -level routing
#write_checkpoint -force $TOP_module.routed_BB.dcp
}
