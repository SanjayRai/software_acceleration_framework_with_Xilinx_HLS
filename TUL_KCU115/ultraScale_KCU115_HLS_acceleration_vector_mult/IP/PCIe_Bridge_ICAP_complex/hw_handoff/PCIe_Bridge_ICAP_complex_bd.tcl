
################################################################
# This is a generated script based on design: PCIe_Bridge_ICAP_complex
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
# source PCIe_Bridge_ICAP_complex_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flvb2104-2-i
}


# CHANGE DESIGN NAME HERE
set design_name PCIe_Bridge_ICAP_complex

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

  # Create instance: axi_register_slice_0, and set properties
  set axi_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0 ]

  # Create instance: axi_register_slice_1, and set properties
  set axi_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_1 ]

  # Create instance: axi_register_slice_2, and set properties
  set axi_register_slice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_2 ]

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_register_slice_0/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI [get_bd_intf_pins axi_register_slice_0/M_AXI] [get_bd_intf_pins axi_register_slice_1/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_1_M_AXI [get_bd_intf_pins axi_register_slice_1/M_AXI] [get_bd_intf_pins axi_register_slice_2/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_2_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_register_slice_2/M_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins axi_register_slice_1/aclk] [get_bd_pins axi_register_slice_2/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins axi_register_slice_1/aresetn] [get_bd_pins axi_register_slice_2/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TO_SH_AXI_MM
proc create_hier_cell_TO_SH_AXI_MM { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TO_SH_AXI_MM() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 rp_AXI_MM_FROM_HLS_PR_0

  # Create pins
  create_bd_pin -dir O AXI_MM_FROM_HLS_PR_0_decouple_status
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I decouple
  create_bd_pin -dir I -type clk m_aclk

  # Create instance: AXI_MM_3_stage_reg
  create_hier_cell_AXI_MM_3_stage_reg $hier_obj AXI_MM_3_stage_reg

  # Create instance: AXI_MM_FROM_HLS_PR_0_DECOUPLE, and set properties
  set AXI_MM_FROM_HLS_PR_0_DECOUPLE [ create_bd_cell -type ip -vlnv xilinx.com:ip:pr_decoupler:1.0 AXI_MM_FROM_HLS_PR_0_DECOUPLE ]
  set_property -dict [ list \
CONFIG.ALL_PARAMS {HAS_SIGNAL_CONTROL 1 HAS_SIGNAL_STATUS 0 INTF {AXI_MM_FROM_HLS_PR_0 {ID 0 VLNV xilinx.com:interface:aximm_rtl:1.0 CDC_STAGES 4 SIGNALS {ARVALID {PRESENT 1 WIDTH 1} ARREADY {PRESENT 1 WIDTH 1} AWVALID {PRESENT 1 WIDTH 1} AWREADY {PRESENT 1 WIDTH 1} BVALID {PRESENT 1 WIDTH 1} BREADY {PRESENT 1 WIDTH 1} RVALID {PRESENT 1 WIDTH 1} RREADY {PRESENT 1 WIDTH 1} WVALID {PRESENT 1 WIDTH 1} WREADY {PRESENT 1 WIDTH 1} AWID {PRESENT 0 WIDTH 0} AWADDR {PRESENT 1 WIDTH 32} AWLEN {PRESENT 1 WIDTH 8} AWSIZE {PRESENT 1 WIDTH 3} AWBURST {PRESENT 1 WIDTH 2} AWLOCK {PRESENT 1 WIDTH 1} AWCACHE {PRESENT 1 WIDTH 4} AWPROT {PRESENT 1 WIDTH 3} AWREGION {PRESENT 1 WIDTH 4} AWQOS {PRESENT 1 WIDTH 4} AWUSER {PRESENT 0 WIDTH 0} WID {PRESENT 0 WIDTH 0} WDATA {PRESENT 1 WIDTH 512} WSTRB {PRESENT 1 WIDTH 64} WLAST {PRESENT 1 WIDTH 1} WUSER {PRESENT 0 WIDTH 0} BID {PRESENT 0 WIDTH 0} BRESP {PRESENT 1 WIDTH 2} BUSER {PRESENT 0 WIDTH 0} ARID {PRESENT 0 WIDTH 0} ARADDR {PRESENT 1 WIDTH 32} ARLEN {PRESENT 1 WIDTH 8} ARSIZE {PRESENT 1 WIDTH 3} ARBURST {PRESENT 1 WIDTH 2} ARLOCK {PRESENT 1 WIDTH 1} ARCACHE {PRESENT 1 WIDTH 4} ARPROT {PRESENT 1 WIDTH 3} ARREGION {PRESENT 1 WIDTH 4} ARQOS {PRESENT 1 WIDTH 4} ARUSER {PRESENT 0 WIDTH 0} RID {PRESENT 0 WIDTH 0} RDATA {PRESENT 1 WIDTH 512} RRESP {PRESENT 1 WIDTH 2} RLAST {PRESENT 1 WIDTH 1} RUSER {PRESENT 0 WIDTH 0}}}} IPI_PROP_COUNT 0} \
CONFIG.GUI_HAS_SIGNAL_CONTROL {1} \
CONFIG.GUI_HAS_SIGNAL_STATUS {false} \
CONFIG.GUI_INTERFACE_NAME {AXI_MM_FROM_HLS_PR_0} \
CONFIG.GUI_INTERFACE_PROTOCOL {axi4} \
CONFIG.GUI_SELECT_CDC_STAGES {4} \
CONFIG.GUI_SELECT_INTERFACE {0} \
CONFIG.GUI_SELECT_VLNV {xilinx.com:interface:aximm_rtl:1.0} \
CONFIG.GUI_SIGNAL_DECOUPLED_0 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_1 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_2 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_3 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_4 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_5 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_6 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_7 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_8 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_9 {true} \
CONFIG.GUI_SIGNAL_PRESENT_0 {true} \
CONFIG.GUI_SIGNAL_PRESENT_1 {true} \
CONFIG.GUI_SIGNAL_PRESENT_2 {true} \
CONFIG.GUI_SIGNAL_PRESENT_3 {true} \
CONFIG.GUI_SIGNAL_PRESENT_4 {true} \
CONFIG.GUI_SIGNAL_PRESENT_5 {true} \
CONFIG.GUI_SIGNAL_PRESENT_6 {true} \
CONFIG.GUI_SIGNAL_PRESENT_7 {true} \
CONFIG.GUI_SIGNAL_PRESENT_8 {true} \
CONFIG.GUI_SIGNAL_PRESENT_9 {true} \
CONFIG.GUI_SIGNAL_SELECT_0 {ARVALID} \
CONFIG.GUI_SIGNAL_SELECT_1 {ARREADY} \
CONFIG.GUI_SIGNAL_SELECT_2 {AWVALID} \
CONFIG.GUI_SIGNAL_SELECT_3 {AWREADY} \
CONFIG.GUI_SIGNAL_SELECT_4 {BVALID} \
CONFIG.GUI_SIGNAL_SELECT_5 {BREADY} \
CONFIG.GUI_SIGNAL_SELECT_6 {RVALID} \
CONFIG.GUI_SIGNAL_SELECT_7 {RREADY} \
CONFIG.GUI_SIGNAL_SELECT_8 {WVALID} \
CONFIG.GUI_SIGNAL_SELECT_9 {WREADY} \
 ] $AXI_MM_FROM_HLS_PR_0_DECOUPLE

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_1 ]
  set_property -dict [ list \
CONFIG.Clock_Type_AXI {Independent_Clock} \
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
CONFIG.PROTOCOL {AXI4} \
CONFIG.Reset_Type {Asynchronous_Reset} \
 ] $fifo_generator_1

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_MM_3_stage_reg_M_AXI [get_bd_intf_pins AXI_MM_3_stage_reg/M_AXI] [get_bd_intf_pins fifo_generator_1/S_AXI]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins rp_AXI_MM_FROM_HLS_PR_0] [get_bd_intf_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE/rp_AXI_MM_FROM_HLS_PR_0]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins AXI_MM_3_stage_reg/S_AXI] [get_bd_intf_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE/s_AXI_MM_FROM_HLS_PR_0]
  connect_bd_intf_net -intf_net fifo_generator_1_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins fifo_generator_1/M_AXI]

  # Create port connections
  connect_bd_net -net AXI_MM_FROM_HLS_PR_0_DECOUPLE_AXI_MM_FROM_HLS_PR_0_decouple_status [get_bd_pins AXI_MM_FROM_HLS_PR_0_decouple_status] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE/AXI_MM_FROM_HLS_PR_0_decouple_status]
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_pins m_aclk] [get_bd_pins fifo_generator_1/m_aclk]
  connect_bd_net -net clk_wiz_0_clk_out_125M [get_bd_pins aclk] [get_bd_pins AXI_MM_3_stage_reg/aclk] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE/AXI_MM_FROM_HLS_PR_0_ref_clk] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE/decouple_ref_clk] [get_bd_pins fifo_generator_1/s_aclk]
  connect_bd_net -net decouple_1 [get_bd_pins decouple] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE/decouple]
  connect_bd_net -net rst_ddr4_0_300M1_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins AXI_MM_3_stage_reg/aresetn] [get_bd_pins fifo_generator_1/s_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: FROM_SH_AXI_LITE
proc create_hier_cell_FROM_SH_AXI_LITE { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_FROM_SH_AXI_LITE() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 rp_AXI_LITE_TO_HLS_PR_0

  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I decouple
  create_bd_pin -dir I -type clk s_aclk
  create_bd_pin -dir I -type rst s_aresetn

  # Create instance: AXI_LITE_3Stage_reg
  create_hier_cell_AXI_LITE_3Stage_reg $hier_obj AXI_LITE_3Stage_reg

  # Create instance: AXI_MM_FROM_HLS_PR_0_DECOUPLE1, and set properties
  set AXI_MM_FROM_HLS_PR_0_DECOUPLE1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pr_decoupler:1.0 AXI_MM_FROM_HLS_PR_0_DECOUPLE1 ]
  set_property -dict [ list \
CONFIG.ALL_PARAMS {HAS_SIGNAL_CONTROL 1 HAS_SIGNAL_STATUS 0 INTF {AXI_LITE_TO_HLS_PR_0 {ID 0 VLNV xilinx.com:interface:aximm_rtl:1.0 CDC_STAGES 4 MODE slave PROTOCOL axi4lite SIGNALS {ARVALID {PRESENT 1 WIDTH 1} ARREADY {PRESENT 1 WIDTH 1} AWVALID {PRESENT 1 WIDTH 1} AWREADY {PRESENT 1 WIDTH 1} BVALID {PRESENT 1 WIDTH 1} BREADY {PRESENT 1 WIDTH 1} RVALID {PRESENT 1 WIDTH 1} RREADY {PRESENT 1 WIDTH 1} WVALID {PRESENT 1 WIDTH 1} WREADY {PRESENT 1 WIDTH 1} AWADDR {PRESENT 1 WIDTH 32} AWLEN {PRESENT 0 WIDTH 8} AWSIZE {PRESENT 0 WIDTH 3} AWBURST {PRESENT 0 WIDTH 2} AWLOCK {PRESENT 0 WIDTH 1} AWCACHE {PRESENT 0 WIDTH 4} AWPROT {PRESENT 1 WIDTH 3} WDATA {PRESENT 1 WIDTH 32} WSTRB {PRESENT 1 WIDTH 4} WLAST {PRESENT 0 WIDTH 1} BRESP {PRESENT 1 WIDTH 2} ARADDR {PRESENT 1 WIDTH 32} ARLEN {PRESENT 0 WIDTH 8} ARSIZE {PRESENT 0 WIDTH 3} ARBURST {PRESENT 0 WIDTH 2} ARLOCK {PRESENT 0 WIDTH 1} ARCACHE {PRESENT 0 WIDTH 4} ARPROT {PRESENT 1 WIDTH 3} RDATA {PRESENT 1 WIDTH 32} RRESP {PRESENT 1 WIDTH 2} RLAST {PRESENT 0 WIDTH 1} AWID {PRESENT 0 WIDTH 0} AWREGION {PRESENT 1 WIDTH 4} AWQOS {PRESENT 1 WIDTH 4} AWUSER {PRESENT 0 WIDTH 0} WID {PRESENT 0 WIDTH 0} WUSER {PRESENT 0 WIDTH 0} BID {PRESENT 0 WIDTH 0} BUSER {PRESENT 0 WIDTH 0} ARID {PRESENT 0 WIDTH 0} ARREGION {PRESENT 1 WIDTH 4} ARQOS {PRESENT 1 WIDTH 4} ARUSER {PRESENT 0 WIDTH 0} RID {PRESENT 0 WIDTH 0} RUSER {PRESENT 0 WIDTH 0}}}} IPI_PROP_COUNT 1} \
CONFIG.GUI_HAS_SIGNAL_CONTROL {1} \
CONFIG.GUI_HAS_SIGNAL_STATUS {0} \
CONFIG.GUI_INTERFACE_NAME {AXI_LITE_TO_HLS_PR_0} \
CONFIG.GUI_INTERFACE_PROTOCOL {axi4lite} \
CONFIG.GUI_SELECT_CDC_STAGES {4} \
CONFIG.GUI_SELECT_INTERFACE {0} \
CONFIG.GUI_SELECT_MODE {slave} \
CONFIG.GUI_SELECT_VLNV {xilinx.com:interface:aximm_rtl:1.0} \
CONFIG.GUI_SIGNAL_DECOUPLED_0 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_1 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_2 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_3 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_4 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_5 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_6 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_7 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_8 {true} \
CONFIG.GUI_SIGNAL_DECOUPLED_9 {true} \
CONFIG.GUI_SIGNAL_PRESENT_0 {true} \
CONFIG.GUI_SIGNAL_PRESENT_1 {true} \
CONFIG.GUI_SIGNAL_PRESENT_2 {true} \
CONFIG.GUI_SIGNAL_PRESENT_3 {true} \
CONFIG.GUI_SIGNAL_PRESENT_4 {true} \
CONFIG.GUI_SIGNAL_PRESENT_5 {true} \
CONFIG.GUI_SIGNAL_PRESENT_6 {true} \
CONFIG.GUI_SIGNAL_PRESENT_7 {true} \
CONFIG.GUI_SIGNAL_PRESENT_8 {true} \
CONFIG.GUI_SIGNAL_PRESENT_9 {true} \
CONFIG.GUI_SIGNAL_SELECT_0 {ARVALID} \
CONFIG.GUI_SIGNAL_SELECT_1 {ARREADY} \
CONFIG.GUI_SIGNAL_SELECT_2 {AWVALID} \
CONFIG.GUI_SIGNAL_SELECT_3 {AWREADY} \
CONFIG.GUI_SIGNAL_SELECT_4 {BVALID} \
CONFIG.GUI_SIGNAL_SELECT_5 {BREADY} \
CONFIG.GUI_SIGNAL_SELECT_6 {RVALID} \
CONFIG.GUI_SIGNAL_SELECT_7 {RREADY} \
CONFIG.GUI_SIGNAL_SELECT_8 {WVALID} \
CONFIG.GUI_SIGNAL_SELECT_9 {WREADY} \
 ] $AXI_MM_FROM_HLS_PR_0_DECOUPLE1

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_0 ]
  set_property -dict [ list \
CONFIG.Clock_Type_AXI {Independent_Clock} \
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
  connect_bd_intf_net -intf_net AXI_LITE_3Stage_reg_M_AXI [get_bd_intf_pins AXI_LITE_3Stage_reg/M_AXI] [get_bd_intf_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE1/s_AXI_LITE_TO_HLS_PR_0]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins rp_AXI_LITE_TO_HLS_PR_0] [get_bd_intf_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE1/rp_AXI_LITE_TO_HLS_PR_0]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M01_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins fifo_generator_0/S_AXI]
  connect_bd_intf_net -intf_net fifo_generator_0_M_AXI [get_bd_intf_pins AXI_LITE_3Stage_reg/S_AXI] [get_bd_intf_pins fifo_generator_0/M_AXI]

  # Create port connections
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_pins s_aclk] [get_bd_pins fifo_generator_0/s_aclk]
  connect_bd_net -net axi_pcie3_0_axi_aresetn [get_bd_pins s_aresetn] [get_bd_pins fifo_generator_0/s_aresetn]
  connect_bd_net -net clk_wiz_0_clk_out_125M [get_bd_pins aclk] [get_bd_pins AXI_LITE_3Stage_reg/aclk] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE1/AXI_LITE_TO_HLS_PR_0_ref_clk] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE1/decouple_ref_clk] [get_bd_pins fifo_generator_0/m_aclk]
  connect_bd_net -net decouple_1 [get_bd_pins decouple] [get_bd_pins AXI_MM_FROM_HLS_PR_0_DECOUPLE1/decouple]
  connect_bd_net -net rst_ddr4_0_300M1_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins AXI_LITE_3Stage_reg/aresetn]

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
  set C0_SYS_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $C0_SYS_CLK
  set M_AXI_LITE_TO_HLS_PR_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_LITE_TO_HLS_PR_0 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.DATA_WIDTH {32} \
CONFIG.FREQ_HZ {125000000} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.PROTOCOL {AXI4LITE} \
 ] $M_AXI_LITE_TO_HLS_PR_0
  set M_AXI_MM_FROM_HLS_PR_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_MM_FROM_HLS_PR_0 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {512} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {1} \
CONFIG.HAS_CACHE {1} \
CONFIG.HAS_LOCK {1} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {1} \
CONFIG.HAS_REGION {1} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {256} \
CONFIG.NUM_READ_OUTSTANDING {32} \
CONFIG.NUM_READ_THREADS {1} \
CONFIG.NUM_WRITE_OUTSTANDING {32} \
CONFIG.NUM_WRITE_THREADS {1} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_BITS_PER_BYTE {0} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {1} \
CONFIG.WUSER_BITS_PER_BYTE {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $M_AXI_MM_FROM_HLS_PR_0
  set c0_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c0_ddr4 ]
  set pcie_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt ]

  # Create ports
  set DDR4_sys_rst [ create_bd_port -dir I -type rst DDR4_sys_rst ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $DDR4_sys_rst
  set axi_reset_n_out [ create_bd_port -dir O -type rst axi_reset_n_out ]
  set clk_out_125M [ create_bd_port -dir O -type clk clk_out_125M ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {M_AXI_LITE_TO_HLS_PR_0} \
CONFIG.FREQ_HZ {125000000} \
 ] $clk_out_125M
  set clk_out_250M [ create_bd_port -dir O -type clk clk_out_250M ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {M_AXI_MM_FROM_HLS_PR_0} \
 ] $clk_out_250M
  set clk_out_62_5M [ create_bd_port -dir O -type clk clk_out_62_5M ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {62500000} \
 ] $clk_out_62_5M
  set sys_clk [ create_bd_port -dir I -type clk sys_clk ]
  set sys_clk_gt [ create_bd_port -dir I -type clk sys_clk_gt ]
  set sys_rst_n [ create_bd_port -dir I -type rst sys_rst_n ]

  # Create instance: FROM_SH_AXI_LITE
  create_hier_cell_FROM_SH_AXI_LITE [current_bd_instance .] FROM_SH_AXI_LITE

  # Create instance: TO_SH_AXI_MM
  create_hier_cell_TO_SH_AXI_MM [current_bd_instance .] TO_SH_AXI_MM

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
 ] $axi_gpio_0

  # Create instance: axi_hwicap_0, and set properties
  set axi_hwicap_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hwicap:3.0 axi_hwicap_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.M00_HAS_DATA_FIFO {0} \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {3} \
CONFIG.S00_HAS_DATA_FIFO {1} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_DATA_FIFO {1} \
CONFIG.S01_HAS_REGSLICE {4} \
CONFIG.S02_HAS_DATA_FIFO {1} \
CONFIG.S02_HAS_REGSLICE {4} \
 ] $axi_interconnect_0

  # Create instance: axi_pcie3_0_axi_periph, and set properties
  set axi_pcie3_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_pcie3_0_axi_periph ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.M01_HAS_REGSLICE {4} \
CONFIG.M02_HAS_REGSLICE {4} \
CONFIG.NUM_MI {5} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_pcie3_0_axi_periph

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {92.747} \
CONFIG.CLKOUT1_PHASE_ERROR {73.217} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.000} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT2_JITTER {106.166} \
CONFIG.CLKOUT2_PHASE_ERROR {73.217} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {62.5} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.CLK_OUT1_PORT {clk_out_125M} \
CONFIG.CLK_OUT2_PORT {clk_out_62_5M} \
CONFIG.JITTER_SEL {Min_O_Jitter} \
CONFIG.MMCM_BANDWIDTH {HIGH} \
CONFIG.MMCM_CLKFBOUT_MULT_F {5.750} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {11.500} \
CONFIG.MMCM_CLKOUT1_DIVIDE {23} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.PRIM_SOURCE {No_buffer} \
CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
CONFIG.USE_FREQ_SYNTH {true} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_PHASE_ALIGNMENT {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
CONFIG.C0.BANK_GROUP_WIDTH {1} \
CONFIG.C0.DDR4_AxiAddressWidth {31} \
CONFIG.C0.DDR4_AxiDataWidth {512} \
CONFIG.C0.DDR4_CLKFBOUT_MULT {9} \
CONFIG.C0.DDR4_CLKOUT0_DIVIDE {6} \
CONFIG.C0.DDR4_CasLatency {13} \
CONFIG.C0.DDR4_CasWriteLatency {12} \
CONFIG.C0.DDR4_DIVCLK_DIVIDE {2} \
CONFIG.C0.DDR4_DataMask {NO_DM_NO_DBI} \
CONFIG.C0.DDR4_DataWidth {72} \
CONFIG.C0.DDR4_Ecc {true} \
CONFIG.C0.DDR4_InputClockPeriod {3330} \
CONFIG.C0.DDR4_MemoryPart {EDY4016AABG-DR-F} \
CONFIG.C0.DDR4_TimePeriod {1110} \
 ] $ddr4_0

  # Create instance: rst_125M, and set properties
  set rst_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_125M ]

  # Create instance: rst_ddr4_0_300M, and set properties
  set rst_ddr4_0_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M ]

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.0 system_ila_0 ]
  set_property -dict [ list \
CONFIG.ALL_PROBE_SAME_MU {true} \
CONFIG.C_BRAM_CNT {34.5} \
CONFIG.C_INPUT_PIPE_STAGES {4} \
CONFIG.C_SLOT_0_AXI_B_SEL_TRIG {0} \
CONFIG.C_SLOT_0_AXI_R_SEL_TRIG {0} \
CONFIG.C_SLOT_0_AXI_W_SEL_TRIG {0} \
CONFIG.C_SLOT_0_MAX_RD_BURSTS {32} \
CONFIG.C_SLOT_0_MAX_WR_BURSTS {32} \
CONFIG.C_SLOT_0_TXN_CNTR_EN {0} \
 ] $system_ila_0

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:3.1 xdma_0 ]
  set_property -dict [ list \
CONFIG.axi_data_width {256_bit} \
CONFIG.axilite_master_en {true} \
CONFIG.axilite_master_scale {Megabytes} \
CONFIG.axilite_master_size {512} \
CONFIG.axisten_freq {250} \
CONFIG.cfg_mgmt_if {false} \
CONFIG.coreclk_freq {500} \
CONFIG.mode_selection {Advanced} \
CONFIG.pf0_device_id {8038} \
CONFIG.pf0_msix_cap_pba_bir {BAR_1} \
CONFIG.pf0_msix_cap_table_bir {BAR_1} \
CONFIG.pipe_sim {true} \
CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
CONFIG.pl_link_cap_max_link_width {X8} \
CONFIG.plltype {QPLL1} \
 ] $xdma_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {1} \
CONFIG.DIN_TO {1} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create interface connections
connect_bd_intf_net -intf_net C0_SYS_CLK_1 [get_bd_intf_ports C0_SYS_CLK] [get_bd_intf_pins ddr4_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0 [get_bd_intf_ports M_AXI_LITE_TO_HLS_PR_0] [get_bd_intf_pins FROM_SH_AXI_LITE/rp_AXI_LITE_TO_HLS_PR_0]
  connect_bd_intf_net -intf_net M_AXI_MM_FROM_HLS_PR_0_1 [get_bd_intf_ports M_AXI_MM_FROM_HLS_PR_0] [get_bd_intf_pins TO_SH_AXI_MM/rp_AXI_MM_FROM_HLS_PR_0]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_pcie3_0_axi_periph/S00_AXI] [get_bd_intf_pins xdma_0/M_AXI_LITE]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M01_AXI [get_bd_intf_pins FROM_SH_AXI_LITE/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M02_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/M02_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M03_AXI [get_bd_intf_pins axi_hwicap_0/S_AXI_LITE] [get_bd_intf_pins axi_pcie3_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M04_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ddr4_0_C0_DDR4 [get_bd_intf_ports c0_ddr4] [get_bd_intf_pins ddr4_0/C0_DDR4]
  connect_bd_intf_net -intf_net fifo_generator_1_M_AXI [get_bd_intf_pins TO_SH_AXI_MM/M_AXI] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets fifo_generator_1_M_AXI] [get_bd_intf_pins TO_SH_AXI_MM/M_AXI] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pcie_mgt] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net TO_SH_AXI_MM_AXI_MM_FROM_HLS_PR_0_decouple_status [get_bd_pins TO_SH_AXI_MM/AXI_MM_FROM_HLS_PR_0_decouple_status] [get_bd_pins vio_0/probe_in0]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_ports clk_out_250M] [get_bd_pins FROM_SH_AXI_LITE/s_aclk] [get_bd_pins TO_SH_AXI_MM/aclk] [get_bd_pins TO_SH_AXI_MM/m_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_hwicap_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M00_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M01_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M03_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M04_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/S00_ACLK] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins system_ila_0/clk] [get_bd_pins vio_0/clk] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net axi_pcie3_0_axi_aresetn [get_bd_ports axi_reset_n_out] [get_bd_pins FROM_SH_AXI_LITE/s_aresetn] [get_bd_pins TO_SH_AXI_MM/aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_hwicap_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M00_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M01_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M03_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M04_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/S00_ARESETN] [get_bd_pins system_ila_0/resetn] [get_bd_pins xdma_0/axi_aresetn]
  connect_bd_net -net clk_wiz_0_clk_out_125M [get_bd_ports clk_out_125M] [get_bd_pins FROM_SH_AXI_LITE/aclk] [get_bd_pins clk_wiz_0/clk_out_125M] [get_bd_pins rst_125M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out_62_5M [get_bd_ports clk_out_62_5M] [get_bd_pins axi_hwicap_0/icap_clk] [get_bd_pins clk_wiz_0/clk_out_62_5M]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M02_ACLK] [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins rst_ddr4_0_300M/slowest_sync_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins rst_ddr4_0_300M/ext_reset_in]
  connect_bd_net -net rst_ddr4_0_300M1_peripheral_aresetn [get_bd_pins FROM_SH_AXI_LITE/aresetn] [get_bd_pins rst_125M/peripheral_aresetn]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M02_ARESETN] [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins rst_125M/ext_reset_in] [get_bd_pins rst_ddr4_0_300M/peripheral_aresetn]
  connect_bd_net -net sys_clk_1 [get_bd_ports sys_clk] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net sys_clk_gt_1 [get_bd_ports sys_clk_gt] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net sys_rst_1 [get_bd_ports DDR4_sys_rst] [get_bd_pins ddr4_0/sys_rst]
  connect_bd_net -net sys_rst_n_1 [get_bd_ports sys_rst_n] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins rst_125M/mb_debug_sys_rst] [get_bd_pins rst_ddr4_0_300M/mb_debug_sys_rst] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xdma_0/usr_irq_req] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins TO_SH_AXI_MM/decouple] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins FROM_SH_AXI_LITE/decouple] [get_bd_pins xlslice_1/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x10010000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs M_AXI_LITE_TO_HLS_PR_0/Reg] SEG_M_AXI_LITE_TO_HLS_PR_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x10030000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x10000000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_hwicap_0/S_AXI_LITE/Reg] SEG_axi_hwicap_0_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces xdma_0/M_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x10000000 -offset 0x00000000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x10020000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] SEG_ddr4_0_C0_REG
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces M_AXI_MM_FROM_HLS_PR_0] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


