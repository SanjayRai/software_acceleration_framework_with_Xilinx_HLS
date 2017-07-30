# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

set_property  ip_repo_paths  ../HLS/SDX_ACCL_KERNEL/vivado_hls_prj/vhls_prj/solution1/impl/ip [current_project]
update_ip_catalog

add_files -fileset sources_1 -norecurse {
../IP/vio_x8/vio_x8.xci
../IP/PCIe_Bridge_ICAP_complex/PCIe_Bridge_ICAP_complex.bd
../IP/HLS_PR_0/HLS_PR_0.bd
}

