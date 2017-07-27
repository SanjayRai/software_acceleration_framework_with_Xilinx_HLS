# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../../../../device_type.tcl




set TOP_module KU115_AXI_ICAP_PR_DESIGN_top
set PR_module PR_module
set PR_VARIANT B

create_project -in_memory -part [DEVICE_TYPE] 

read_verilog {
../src/PR_module.v
}

synth_design -top $PR_module -part [DEVICE_TYPE] -mode out_of_context
opt_design -verbose -directive Explore

write_checkpoint -force $PR_module.post_synth_opt.dcp
close_project

open_checkpoint ../../../../vivado_batch/$TOP_module.routed_BB.dcp 
read_checkpoint -strict -cell U_PR_module ./$PR_module.post_synth_opt.dcp
opt_design -verbose -directive Explore
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
set_property BITSTREAM.CONFIG.CONFIGRATE 90 [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
write_bitstream -bin_file $TOP_module.$PR_VARIANT.bit      
write_cfgmem  -format mcs -size 128 -interface SPIx4 -loadbit "up 0x00000000 $TOP_module.$PR_VARIANT.bit " -file "$TOP_module.$PR_VARIANT.mcs"
