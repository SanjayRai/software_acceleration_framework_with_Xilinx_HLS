
################################################################
# This is a generated script based on design: HLS_PR_0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source HLS_PR_0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flvb2104-2-i
}


# CHANGE DESIGN NAME HERE
set design_name HLS_PR_0

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir .

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: AXI_MM_3_stage_reg
proc create_hier_cell_AXI_MM_3_stage_reg { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AXI_MM_3_stage_reg() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: axi_register_slice_0, and set properties
  set axi_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0 ]

  # Create instance: axi_register_slice_1, and set properties
  set axi_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_1 ]

  # Create instance: axi_register_slice_2, and set properties
  set axi_register_slice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_2 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_register_slice_2/M_AXI]
  connect_bd_intf_net -intf_net M_AXI_MM_FROM_HLS_PR_0_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_register_slice_0/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI [get_bd_intf_pins axi_register_slice_0/M_AXI] [get_bd_intf_pins axi_register_slice_1/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_1_M_AXI [get_bd_intf_pins axi_register_slice_1/M_AXI] [get_bd_intf_pins axi_register_slice_2/S_AXI]

  # Create port connections
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_pins aclk] [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins axi_register_slice_1/aclk] [get_bd_pins axi_register_slice_2/aclk]
  connect_bd_net -net axi_pcie3_0_axi_aresetn [get_bd_pins aresetn] [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins axi_register_slice_1/aresetn] [get_bd_pins axi_register_slice_2/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AXI_LITE_3Stage_reg
proc create_hier_cell_AXI_LITE_3Stage_reg { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_AXI_LITE_3Stage_reg() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -type rst aresetn1
  create_bd_pin -dir I -type clk m_aclk

  # Create instance: axi_register_slice_0, and set properties
  set axi_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0 ]

  # Create instance: axi_register_slice_1, and set properties
  set axi_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_1 ]

  # Create instance: axi_register_slice_2, and set properties
  set axi_register_slice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_2 ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_0 ]
  set_property -dict [ list \
CONFIG.Clock_Type_AXI {Independent_Clock} \
CONFIG.DATA_WIDTH {32} \
CONFIG.Empty_Threshold_Assert_Value_axis {1018} \
CONFIG.Empty_Threshold_Assert_Value_rach {13} \
CONFIG.Empty_Threshold_Assert_Value_rdch {1018} \
CONFIG.Empty_Threshold_Assert_Value_wach {13} \
CONFIG.Empty_Threshold_Assert_Value_wdch {1018} \
CONFIG.Empty_Threshold_Assert_Value_wrch {13} \
CONFIG.FIFO_Implementation_axis {Independent_Clocks_Builtin_FIFO} \
CONFIG.FIFO_Implementation_rach {Independent_Clocks_Distributed_RAM} \
CONFIG.FIFO_Implementation_rdch {Independent_Clocks_Builtin_FIFO} \
CONFIG.FIFO_Implementation_wach {Independent_Clocks_Distributed_RAM} \
CONFIG.FIFO_Implementation_wdch {Independent_Clocks_Builtin_FIFO} \
CONFIG.FIFO_Implementation_wrch {Independent_Clocks_Distributed_RAM} \
CONFIG.Full_Threshold_Assert_Value_rach {15} \
CONFIG.Full_Threshold_Assert_Value_wach {15} \
CONFIG.Full_Threshold_Assert_Value_wrch {15} \
CONFIG.INTERFACE_TYPE {AXI_MEMORY_MAPPED} \
CONFIG.PROTOCOL {AXI4_Lite} \
CONFIG.Reset_Type {Asynchronous_Reset} \
 ] $fifo_generator_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_register_slice_0/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI [get_bd_intf_pins axi_register_slice_0/M_AXI] [get_bd_intf_pins axi_register_slice_2/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_1_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_register_slice_1/M_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_2_M_AXI [get_bd_intf_pins axi_register_slice_2/M_AXI] [get_bd_intf_pins fifo_generator_0/S_AXI]
  connect_bd_intf_net -intf_net fifo_generator_0_M_AXI [get_bd_intf_pins axi_register_slice_1/S_AXI] [get_bd_intf_pins fifo_generator_0/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins axi_register_slice_2/aclk] [get_bd_pins fifo_generator_0/s_aclk]
  connect_bd_net -net aresetn1_1 [get_bd_pins aresetn1] [get_bd_pins axi_register_slice_1/aresetn]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins axi_register_slice_2/aresetn] [get_bd_pins fifo_generator_0/s_aresetn]
  connect_bd_net -net m_aclk_1 [get_bd_pins m_aclk] [get_bd_pins axi_register_slice_1/aclk] [get_bd_pins fifo_generator_0/m_aclk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXI_TO_STATIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_TO_STATIC ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
CONFIG.DATA_WIDTH {512} \
CONFIG.FREQ_HZ {250000000} \
CONFIG.PROTOCOL {AXI4} \
 ] $M_AXI_TO_STATIC
  set S_AXI_LITE_FROM_STATIC [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE_FROM_STATIC ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
CONFIG.DATA_WIDTH {32} \
CONFIG.FREQ_HZ {250000000} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S_AXI_LITE_FROM_STATIC

  # Create ports
  set AXI_RESET_N [ create_bd_port -dir I -type rst AXI_RESET_N ]
  set CLK_IN_125M [ create_bd_port -dir I -type clk CLK_IN_125M ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {S_AXI_LITE_FROM_STATIC} \
CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
CONFIG.FREQ_HZ {250000000} \
 ] $CLK_IN_125M
  set CLK_IN_250 [ create_bd_port -dir I -type clk CLK_IN_250 ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {M_AXI_TO_STATIC} \
CONFIG.ASSOCIATED_RESET {AXI_RESET_N} \
CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
CONFIG.FREQ_HZ {250000000} \
 ] $CLK_IN_250
  set CLK_IN_62_5M [ create_bd_port -dir I -type clk CLK_IN_62_5M ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk} \
CONFIG.FREQ_HZ {250000000} \
 ] $CLK_IN_62_5M

  # Create instance: AXI_LITE_3Stage_reg
  create_hier_cell_AXI_LITE_3Stage_reg [current_bd_instance .] AXI_LITE_3Stage_reg

  # Create instance: AXI_MM_3_stage_reg
  create_hier_cell_AXI_MM_3_stage_reg [current_bd_instance .] AXI_MM_3_stage_reg

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: sdx_cppKernel_top_0, and set properties
  set sdx_cppKernel_top_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sdx_cppKernel_top:1.0 sdx_cppKernel_top_0 ]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /sdx_cppKernel_top_0/s_axi_control]

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_LITE_3Stage_reg_M_AXI [get_bd_intf_pins AXI_LITE_3Stage_reg/M_AXI] [get_bd_intf_pins sdx_cppKernel_top_0/s_axi_control]
  connect_bd_intf_net -intf_net AXI_MM_3_stage_reg_M_AXI [get_bd_intf_ports M_AXI_TO_STATIC] [get_bd_intf_pins AXI_MM_3_stage_reg/M_AXI]
  connect_bd_intf_net -intf_net S_AXI_2 [get_bd_intf_pins AXI_MM_3_stage_reg/S_AXI] [get_bd_intf_pins sdx_cppKernel_top_0/m_axi_gmem]
  connect_bd_intf_net -intf_net S_AXI_LITE_FROM_STATIC_1 [get_bd_intf_ports S_AXI_LITE_FROM_STATIC] [get_bd_intf_pins AXI_LITE_3Stage_reg/S_AXI]

  # Create port connections
  connect_bd_net -net AXI_RESET_N_1 [get_bd_ports AXI_RESET_N] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net CLK_IN_125M_1 [get_bd_ports CLK_IN_125M] [get_bd_pins AXI_LITE_3Stage_reg/aclk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net aclk_1 [get_bd_ports CLK_IN_250] [get_bd_pins AXI_LITE_3Stage_reg/m_aclk] [get_bd_pins AXI_MM_3_stage_reg/aclk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins sdx_cppKernel_top_0/ap_clk]
  connect_bd_net -net aresetn_1 [get_bd_pins AXI_LITE_3Stage_reg/aresetn1] [get_bd_pins AXI_MM_3_stage_reg/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins sdx_cppKernel_top_0/ap_rst_n]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins AXI_LITE_3Stage_reg/aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces sdx_cppKernel_top_0/Data_m_axi_gmem] [get_bd_addr_segs M_AXI_TO_STATIC/Reg] SEG_M_AXI_TO_STATIC_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_LITE_FROM_STATIC] [get_bd_addr_segs sdx_cppKernel_top_0/s_axi_control/Reg] SEG_sdx_cppKernel_top_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


