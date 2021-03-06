create_clock -name sys_clk -period 10 [get_ports sys_clk_p]

set_false_path -from [get_ports sys_rst_n]

set_property LOC [get_package_pins -filter {PIN_FUNC == IO_T3U_N12_PERSTN0_65}] [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS12 [get_ports sys_rst_n]


##### REFCLK_IBUF###########
#set_property LOC AB6 [get_cells refclk_ibuf]
set_property LOC AT11  [get_ports sys_clk_p]
set_property LOC AT10  [get_ports sys_clk_n]

create_pblock pblock_U_HLS_PR_module
add_cells_to_pblock [get_pblocks pblock_U_HLS_PR_module] [get_cells HLS_PR_0_i]
# (__SRAI /Prev)resize_pblock [get_pblocks pblock_U_HLS_PR_module] -add {CLOCKREGION_X0Y5:CLOCKREGION_X5Y9}
resize_pblock [get_pblocks pblock_U_HLS_PR_module] -add {CLOCKREGION_X0Y3:CLOCKREGION_X5Y9}
set_property HD.RECONFIGURABLE 1 [get_cells HLS_PR_0_i]


set_property LOC AP2   [get_ports pcie_mgt_rxp[0]]
set_property LOC AR4   [get_ports pcie_mgt_rxp[1]]
set_property LOC AT2   [get_ports pcie_mgt_rxp[2]]
set_property LOC AU4   [get_ports pcie_mgt_rxp[3]]
set_property LOC AV2   [get_ports pcie_mgt_rxp[4]]
set_property LOC AW4   [get_ports pcie_mgt_rxp[5]]
set_property LOC BA2   [get_ports pcie_mgt_rxp[6]]
set_property LOC BC2   [get_ports pcie_mgt_rxp[7]]

set_property LOC AP7   [get_ports pcie_mgt_txp[0]]
set_property LOC AR9   [get_ports pcie_mgt_txp[1]]
set_property LOC AT7   [get_ports pcie_mgt_txp[2]]
set_property LOC AU9   [get_ports pcie_mgt_txp[3]]
set_property LOC AV7   [get_ports pcie_mgt_txp[4]]
set_property LOC BB5   [get_ports pcie_mgt_txp[5]]
set_property LOC BD5   [get_ports pcie_mgt_txp[6]]
set_property LOC BF5   [get_ports pcie_mgt_txp[7]]



#DDR4_ C0 controller:
set_property PACKAGE_PIN BA34       [get_ports c0_sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports c0_sys_clk_p]
set_property PACKAGE_PIN BB34       [get_ports c0_sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports c0_sys_clk_n]
set_property PACKAGE_PIN BA33       [get_ports c0_ddr4_act_n]
set_property PACKAGE_PIN AM34       [get_ports {c0_ddr4_adr[0]}]
set_property PACKAGE_PIN AM32       [get_ports {c0_ddr4_adr[10]}]
set_property PACKAGE_PIN AN33       [get_ports {c0_ddr4_adr[11]}]
set_property PACKAGE_PIN AT33       [get_ports {c0_ddr4_adr[12]}]
set_property PACKAGE_PIN AP34       [get_ports {c0_ddr4_adr[13]}]
set_property PACKAGE_PIN AL34       [get_ports {c0_ddr4_adr[14]}]
set_property PACKAGE_PIN AN34       [get_ports {c0_ddr4_adr[15]}]
set_property PACKAGE_PIN AN32       [get_ports {c0_ddr4_adr[16]}]
set_property PACKAGE_PIN AW33       [get_ports {c0_ddr4_adr[1]}]
set_property PACKAGE_PIN AL33       [get_ports {c0_ddr4_adr[2]}]
set_property PACKAGE_PIN AR33       [get_ports {c0_ddr4_adr[3]}]
set_property PACKAGE_PIN AV33       [get_ports {c0_ddr4_adr[4]}]
set_property PACKAGE_PIN AW34       [get_ports {c0_ddr4_adr[5]}]
set_property PACKAGE_PIN AV34       [get_ports {c0_ddr4_adr[6]}]
set_property PACKAGE_PIN AT34       [get_ports {c0_ddr4_adr[7]}]
set_property PACKAGE_PIN AL32       [get_ports {c0_ddr4_adr[8]}]
set_property PACKAGE_PIN AP33       [get_ports {c0_ddr4_adr[9]}]
set_property PACKAGE_PIN AY35       [get_ports {c0_ddr4_ba[0]}]
set_property PACKAGE_PIN AY36       [get_ports {c0_ddr4_ba[1]}]
set_property PACKAGE_PIN AY33       [get_ports {c0_ddr4_bg[0]}]
set_property PACKAGE_PIN AW35       [get_ports {c0_ddr4_ck_t[0]}]
set_property PACKAGE_PIN AW36       [get_ports {c0_ddr4_ck_c[0]}]
set_property PACKAGE_PIN BF35       [get_ports {c0_ddr4_cke[0]}]
set_property PACKAGE_PIN BB38       [get_ports {c0_ddr4_cs_n[0]}]
set_property PACKAGE_PIN BF32       [get_ports {c0_ddr4_dm_n[0]}]
set_property PACKAGE_PIN BC31       [get_ports {c0_ddr4_dm_n[1]}]
set_property PACKAGE_PIN AW29       [get_ports {c0_ddr4_dm_n[2]}]
set_property PACKAGE_PIN AP31       [get_ports {c0_ddr4_dm_n[3]}]
set_property PACKAGE_PIN AJ27       [get_ports {c0_ddr4_dm_n[4]}]
set_property PACKAGE_PIN AH34       [get_ports {c0_ddr4_dm_n[5]}]
set_property PACKAGE_PIN AE31       [get_ports {c0_ddr4_dm_n[6]}]
set_property PACKAGE_PIN AA32       [get_ports {c0_ddr4_dm_n[7]}]
set_property PACKAGE_PIN BC34       [get_ports {c0_ddr4_dm_n[8]}]
set_property PACKAGE_PIN BE32       [get_ports {c0_ddr4_dq[0]}]
set_property PACKAGE_PIN BA29       [get_ports {c0_ddr4_dq[10]}]
set_property PACKAGE_PIN AY30       [get_ports {c0_ddr4_dq[11]}]
set_property PACKAGE_PIN BA30       [get_ports {c0_ddr4_dq[12]}]
set_property PACKAGE_PIN BB31       [get_ports {c0_ddr4_dq[13]}]
set_property PACKAGE_PIN AY31       [get_ports {c0_ddr4_dq[14]}]
set_property PACKAGE_PIN BB30       [get_ports {c0_ddr4_dq[15]}]
set_property PACKAGE_PIN AU30       [get_ports {c0_ddr4_dq[16]}]
set_property PACKAGE_PIN AT30       [get_ports {c0_ddr4_dq[17]}]
set_property PACKAGE_PIN AV31       [get_ports {c0_ddr4_dq[18]}]
set_property PACKAGE_PIN AU32       [get_ports {c0_ddr4_dq[19]}]
set_property PACKAGE_PIN BF30       [get_ports {c0_ddr4_dq[1]}]
set_property PACKAGE_PIN AT29       [get_ports {c0_ddr4_dq[20]}]
set_property PACKAGE_PIN AU31       [get_ports {c0_ddr4_dq[21]}]
set_property PACKAGE_PIN AW31       [get_ports {c0_ddr4_dq[22]}]
set_property PACKAGE_PIN AV32       [get_ports {c0_ddr4_dq[23]}]
set_property PACKAGE_PIN AN29       [get_ports {c0_ddr4_dq[24]}]
set_property PACKAGE_PIN AR30       [get_ports {c0_ddr4_dq[25]}]
set_property PACKAGE_PIN AP29       [get_ports {c0_ddr4_dq[26]}]
set_property PACKAGE_PIN AP30       [get_ports {c0_ddr4_dq[27]}]
set_property PACKAGE_PIN AN31       [get_ports {c0_ddr4_dq[28]}]
set_property PACKAGE_PIN AL29       [get_ports {c0_ddr4_dq[29]}]
set_property PACKAGE_PIN BE31       [get_ports {c0_ddr4_dq[2]}]
set_property PACKAGE_PIN AM31       [get_ports {c0_ddr4_dq[30]}]
set_property PACKAGE_PIN AL30       [get_ports {c0_ddr4_dq[31]}]
set_property PACKAGE_PIN AK28       [get_ports {c0_ddr4_dq[32]}]
set_property PACKAGE_PIN AJ31       [get_ports {c0_ddr4_dq[33]}]
set_property PACKAGE_PIN AJ29       [get_ports {c0_ddr4_dq[34]}]
set_property PACKAGE_PIN AG30       [get_ports {c0_ddr4_dq[35]}]
set_property PACKAGE_PIN AJ28       [get_ports {c0_ddr4_dq[36]}]
set_property PACKAGE_PIN AG29       [get_ports {c0_ddr4_dq[37]}]
set_property PACKAGE_PIN AK31       [get_ports {c0_ddr4_dq[38]}]
set_property PACKAGE_PIN AJ30       [get_ports {c0_ddr4_dq[39]}]
set_property PACKAGE_PIN BE33       [get_ports {c0_ddr4_dq[3]}]
set_property PACKAGE_PIN AH33       [get_ports {c0_ddr4_dq[40]}]
set_property PACKAGE_PIN AJ33       [get_ports {c0_ddr4_dq[41]}]
set_property PACKAGE_PIN AF33       [get_ports {c0_ddr4_dq[42]}]
set_property PACKAGE_PIN AG34       [get_ports {c0_ddr4_dq[43]}]
set_property PACKAGE_PIN AG31       [get_ports {c0_ddr4_dq[44]}]
set_property PACKAGE_PIN AG32       [get_ports {c0_ddr4_dq[45]}]
set_property PACKAGE_PIN AF34       [get_ports {c0_ddr4_dq[46]}]
set_property PACKAGE_PIN AF32       [get_ports {c0_ddr4_dq[47]}]
set_property PACKAGE_PIN AC32       [get_ports {c0_ddr4_dq[48]}]
set_property PACKAGE_PIN AF30       [get_ports {c0_ddr4_dq[49]}]
set_property PACKAGE_PIN BD29       [get_ports {c0_ddr4_dq[4]}]
set_property PACKAGE_PIN AD34       [get_ports {c0_ddr4_dq[50]}]
set_property PACKAGE_PIN AC34       [get_ports {c0_ddr4_dq[51]}]
set_property PACKAGE_PIN AC33       [get_ports {c0_ddr4_dq[52]}]
set_property PACKAGE_PIN AE30       [get_ports {c0_ddr4_dq[53]}]
set_property PACKAGE_PIN AD33       [get_ports {c0_ddr4_dq[54]}]
set_property PACKAGE_PIN AE33       [get_ports {c0_ddr4_dq[55]}]
set_property PACKAGE_PIN W33        [get_ports {c0_ddr4_dq[56]}]
set_property PACKAGE_PIN Y32        [get_ports {c0_ddr4_dq[57]}]
set_property PACKAGE_PIN Y33        [get_ports {c0_ddr4_dq[58]}]
set_property PACKAGE_PIN AA34       [get_ports {c0_ddr4_dq[59]}]
set_property PACKAGE_PIN BD33       [get_ports {c0_ddr4_dq[5]}]
set_property PACKAGE_PIN W30        [get_ports {c0_ddr4_dq[60]}]
set_property PACKAGE_PIN Y30        [get_ports {c0_ddr4_dq[61]}]
set_property PACKAGE_PIN AB34       [get_ports {c0_ddr4_dq[62]}]
set_property PACKAGE_PIN W34        [get_ports {c0_ddr4_dq[63]}]
set_property PACKAGE_PIN BA35       [get_ports {c0_ddr4_dq[64]}]
set_property PACKAGE_PIN BB35       [get_ports {c0_ddr4_dq[65]}]
set_property PACKAGE_PIN BB36       [get_ports {c0_ddr4_dq[66]}]
set_property PACKAGE_PIN BC36       [get_ports {c0_ddr4_dq[67]}]
set_property PACKAGE_PIN BD36       [get_ports {c0_ddr4_dq[68]}]
set_property PACKAGE_PIN BE36       [get_ports {c0_ddr4_dq[69]}]
set_property PACKAGE_PIN BE30       [get_ports {c0_ddr4_dq[6]}]
set_property PACKAGE_PIN BD35       [get_ports {c0_ddr4_dq[70]}]
set_property PACKAGE_PIN BE35       [get_ports {c0_ddr4_dq[71]}]
set_property PACKAGE_PIN BC29       [get_ports {c0_ddr4_dq[7]}]
set_property PACKAGE_PIN BB29       [get_ports {c0_ddr4_dq[8]}]
set_property PACKAGE_PIN AY32       [get_ports {c0_ddr4_dq[9]}]
set_property PACKAGE_PIN BD30       [get_ports {c0_ddr4_dqs_t[0]}]
set_property PACKAGE_PIN BD31       [get_ports {c0_ddr4_dqs_c[0]}]
set_property PACKAGE_PIN BA32       [get_ports {c0_ddr4_dqs_t[1]}]
set_property PACKAGE_PIN BB32       [get_ports {c0_ddr4_dqs_c[1]}]
set_property PACKAGE_PIN AU29       [get_ports {c0_ddr4_dqs_t[2]}]
set_property PACKAGE_PIN AV29       [get_ports {c0_ddr4_dqs_c[2]}]
set_property PACKAGE_PIN AM29       [get_ports {c0_ddr4_dqs_t[3]}]
set_property PACKAGE_PIN AM30       [get_ports {c0_ddr4_dqs_c[3]}]
set_property PACKAGE_PIN AH28       [get_ports {c0_ddr4_dqs_t[4]}]
set_property PACKAGE_PIN AH29       [get_ports {c0_ddr4_dqs_c[4]}]
set_property PACKAGE_PIN AH31       [get_ports {c0_ddr4_dqs_t[5]}]
set_property PACKAGE_PIN AH32       [get_ports {c0_ddr4_dqs_c[5]}]
set_property PACKAGE_PIN AC31       [get_ports {c0_ddr4_dqs_t[6]}]
set_property PACKAGE_PIN AD31       [get_ports {c0_ddr4_dqs_c[6]}]
set_property PACKAGE_PIN W31        [get_ports {c0_ddr4_dqs_t[7]}]
set_property PACKAGE_PIN Y31        [get_ports {c0_ddr4_dqs_c[7]}]
set_property PACKAGE_PIN BB37       [get_ports {c0_ddr4_dqs_t[8]}]
set_property PACKAGE_PIN BC37       [get_ports {c0_ddr4_dqs_c[8]}]
set_property PACKAGE_PIN BD34       [get_ports {c0_ddr4_odt[0]}]
set_property PACKAGE_PIN AJ34       [get_ports c0_ddr4_reset_n]

