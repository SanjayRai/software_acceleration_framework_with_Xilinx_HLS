//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
//Date        : Fri Jul 28 14:23:09 2017
//Host        : MC32GBLNX running 64-bit CentOS release 6.9 (Final)
//Command     : generate_target PCIe_Bridge_ICAP_complex_wrapper.bd
//Design      : PCIe_Bridge_ICAP_complex_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_Bridge_ICAP_complex_wrapper
   (C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    DDR4_sys_rst,
    M_AXI_LITE_TO_HLS_PR_0_araddr,
    M_AXI_LITE_TO_HLS_PR_0_arprot,
    M_AXI_LITE_TO_HLS_PR_0_arqos,
    M_AXI_LITE_TO_HLS_PR_0_arready,
    M_AXI_LITE_TO_HLS_PR_0_arregion,
    M_AXI_LITE_TO_HLS_PR_0_arvalid,
    M_AXI_LITE_TO_HLS_PR_0_awaddr,
    M_AXI_LITE_TO_HLS_PR_0_awprot,
    M_AXI_LITE_TO_HLS_PR_0_awqos,
    M_AXI_LITE_TO_HLS_PR_0_awready,
    M_AXI_LITE_TO_HLS_PR_0_awregion,
    M_AXI_LITE_TO_HLS_PR_0_awvalid,
    M_AXI_LITE_TO_HLS_PR_0_bready,
    M_AXI_LITE_TO_HLS_PR_0_bresp,
    M_AXI_LITE_TO_HLS_PR_0_bvalid,
    M_AXI_LITE_TO_HLS_PR_0_rdata,
    M_AXI_LITE_TO_HLS_PR_0_rready,
    M_AXI_LITE_TO_HLS_PR_0_rresp,
    M_AXI_LITE_TO_HLS_PR_0_rvalid,
    M_AXI_LITE_TO_HLS_PR_0_wdata,
    M_AXI_LITE_TO_HLS_PR_0_wready,
    M_AXI_LITE_TO_HLS_PR_0_wstrb,
    M_AXI_LITE_TO_HLS_PR_0_wvalid,
    M_AXI_MM_FROM_HLS_PR_0_araddr,
    M_AXI_MM_FROM_HLS_PR_0_arburst,
    M_AXI_MM_FROM_HLS_PR_0_arcache,
    M_AXI_MM_FROM_HLS_PR_0_arlen,
    M_AXI_MM_FROM_HLS_PR_0_arlock,
    M_AXI_MM_FROM_HLS_PR_0_arprot,
    M_AXI_MM_FROM_HLS_PR_0_arqos,
    M_AXI_MM_FROM_HLS_PR_0_arready,
    M_AXI_MM_FROM_HLS_PR_0_arregion,
    M_AXI_MM_FROM_HLS_PR_0_arsize,
    M_AXI_MM_FROM_HLS_PR_0_arvalid,
    M_AXI_MM_FROM_HLS_PR_0_awaddr,
    M_AXI_MM_FROM_HLS_PR_0_awburst,
    M_AXI_MM_FROM_HLS_PR_0_awcache,
    M_AXI_MM_FROM_HLS_PR_0_awlen,
    M_AXI_MM_FROM_HLS_PR_0_awlock,
    M_AXI_MM_FROM_HLS_PR_0_awprot,
    M_AXI_MM_FROM_HLS_PR_0_awqos,
    M_AXI_MM_FROM_HLS_PR_0_awready,
    M_AXI_MM_FROM_HLS_PR_0_awregion,
    M_AXI_MM_FROM_HLS_PR_0_awsize,
    M_AXI_MM_FROM_HLS_PR_0_awvalid,
    M_AXI_MM_FROM_HLS_PR_0_bready,
    M_AXI_MM_FROM_HLS_PR_0_bresp,
    M_AXI_MM_FROM_HLS_PR_0_bvalid,
    M_AXI_MM_FROM_HLS_PR_0_rdata,
    M_AXI_MM_FROM_HLS_PR_0_rlast,
    M_AXI_MM_FROM_HLS_PR_0_rready,
    M_AXI_MM_FROM_HLS_PR_0_rresp,
    M_AXI_MM_FROM_HLS_PR_0_rvalid,
    M_AXI_MM_FROM_HLS_PR_0_wdata,
    M_AXI_MM_FROM_HLS_PR_0_wlast,
    M_AXI_MM_FROM_HLS_PR_0_wready,
    M_AXI_MM_FROM_HLS_PR_0_wstrb,
    M_AXI_MM_FROM_HLS_PR_0_wvalid,
    axi_reset_n_out,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    clk_out_125M,
    clk_out_250M,
    clk_out_62_5M,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_clk,
    sys_clk_gt,
    sys_rst_n);
  input C0_SYS_CLK_clk_n;
  input C0_SYS_CLK_clk_p;
  input DDR4_sys_rst;
  output [31:0]M_AXI_LITE_TO_HLS_PR_0_araddr;
  output [2:0]M_AXI_LITE_TO_HLS_PR_0_arprot;
  output [3:0]M_AXI_LITE_TO_HLS_PR_0_arqos;
  input M_AXI_LITE_TO_HLS_PR_0_arready;
  output [3:0]M_AXI_LITE_TO_HLS_PR_0_arregion;
  output M_AXI_LITE_TO_HLS_PR_0_arvalid;
  output [31:0]M_AXI_LITE_TO_HLS_PR_0_awaddr;
  output [2:0]M_AXI_LITE_TO_HLS_PR_0_awprot;
  output [3:0]M_AXI_LITE_TO_HLS_PR_0_awqos;
  input M_AXI_LITE_TO_HLS_PR_0_awready;
  output [3:0]M_AXI_LITE_TO_HLS_PR_0_awregion;
  output M_AXI_LITE_TO_HLS_PR_0_awvalid;
  output M_AXI_LITE_TO_HLS_PR_0_bready;
  input [1:0]M_AXI_LITE_TO_HLS_PR_0_bresp;
  input M_AXI_LITE_TO_HLS_PR_0_bvalid;
  input [31:0]M_AXI_LITE_TO_HLS_PR_0_rdata;
  output M_AXI_LITE_TO_HLS_PR_0_rready;
  input [1:0]M_AXI_LITE_TO_HLS_PR_0_rresp;
  input M_AXI_LITE_TO_HLS_PR_0_rvalid;
  output [31:0]M_AXI_LITE_TO_HLS_PR_0_wdata;
  input M_AXI_LITE_TO_HLS_PR_0_wready;
  output [3:0]M_AXI_LITE_TO_HLS_PR_0_wstrb;
  output M_AXI_LITE_TO_HLS_PR_0_wvalid;
  input [31:0]M_AXI_MM_FROM_HLS_PR_0_araddr;
  input [1:0]M_AXI_MM_FROM_HLS_PR_0_arburst;
  input [3:0]M_AXI_MM_FROM_HLS_PR_0_arcache;
  input [7:0]M_AXI_MM_FROM_HLS_PR_0_arlen;
  input [0:0]M_AXI_MM_FROM_HLS_PR_0_arlock;
  input [2:0]M_AXI_MM_FROM_HLS_PR_0_arprot;
  input [3:0]M_AXI_MM_FROM_HLS_PR_0_arqos;
  output M_AXI_MM_FROM_HLS_PR_0_arready;
  input [3:0]M_AXI_MM_FROM_HLS_PR_0_arregion;
  input [2:0]M_AXI_MM_FROM_HLS_PR_0_arsize;
  input M_AXI_MM_FROM_HLS_PR_0_arvalid;
  input [31:0]M_AXI_MM_FROM_HLS_PR_0_awaddr;
  input [1:0]M_AXI_MM_FROM_HLS_PR_0_awburst;
  input [3:0]M_AXI_MM_FROM_HLS_PR_0_awcache;
  input [7:0]M_AXI_MM_FROM_HLS_PR_0_awlen;
  input [0:0]M_AXI_MM_FROM_HLS_PR_0_awlock;
  input [2:0]M_AXI_MM_FROM_HLS_PR_0_awprot;
  input [3:0]M_AXI_MM_FROM_HLS_PR_0_awqos;
  output M_AXI_MM_FROM_HLS_PR_0_awready;
  input [3:0]M_AXI_MM_FROM_HLS_PR_0_awregion;
  input [2:0]M_AXI_MM_FROM_HLS_PR_0_awsize;
  input M_AXI_MM_FROM_HLS_PR_0_awvalid;
  input M_AXI_MM_FROM_HLS_PR_0_bready;
  output [1:0]M_AXI_MM_FROM_HLS_PR_0_bresp;
  output M_AXI_MM_FROM_HLS_PR_0_bvalid;
  output [511:0]M_AXI_MM_FROM_HLS_PR_0_rdata;
  output M_AXI_MM_FROM_HLS_PR_0_rlast;
  input M_AXI_MM_FROM_HLS_PR_0_rready;
  output [1:0]M_AXI_MM_FROM_HLS_PR_0_rresp;
  output M_AXI_MM_FROM_HLS_PR_0_rvalid;
  input [511:0]M_AXI_MM_FROM_HLS_PR_0_wdata;
  input M_AXI_MM_FROM_HLS_PR_0_wlast;
  output M_AXI_MM_FROM_HLS_PR_0_wready;
  input [63:0]M_AXI_MM_FROM_HLS_PR_0_wstrb;
  input M_AXI_MM_FROM_HLS_PR_0_wvalid;
  output axi_reset_n_out;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [7:0]c0_ddr4_dm_n;
  inout [63:0]c0_ddr4_dq;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  output clk_out_125M;
  output clk_out_250M;
  output clk_out_62_5M;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;

  wire C0_SYS_CLK_clk_n;
  wire C0_SYS_CLK_clk_p;
  wire DDR4_sys_rst;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_0_araddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_0_arprot;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_0_arqos;
  wire M_AXI_LITE_TO_HLS_PR_0_arready;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_0_arregion;
  wire M_AXI_LITE_TO_HLS_PR_0_arvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_0_awaddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_0_awprot;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_0_awqos;
  wire M_AXI_LITE_TO_HLS_PR_0_awready;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_0_awregion;
  wire M_AXI_LITE_TO_HLS_PR_0_awvalid;
  wire M_AXI_LITE_TO_HLS_PR_0_bready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_0_bresp;
  wire M_AXI_LITE_TO_HLS_PR_0_bvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_0_rdata;
  wire M_AXI_LITE_TO_HLS_PR_0_rready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_0_rresp;
  wire M_AXI_LITE_TO_HLS_PR_0_rvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_0_wdata;
  wire M_AXI_LITE_TO_HLS_PR_0_wready;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_0_wstrb;
  wire M_AXI_LITE_TO_HLS_PR_0_wvalid;
  wire [31:0]M_AXI_MM_FROM_HLS_PR_0_araddr;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_arburst;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_arcache;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_0_arlen;
  wire [0:0]M_AXI_MM_FROM_HLS_PR_0_arlock;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_arprot;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_arqos;
  wire M_AXI_MM_FROM_HLS_PR_0_arready;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_arregion;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_arsize;
  wire M_AXI_MM_FROM_HLS_PR_0_arvalid;
  wire [31:0]M_AXI_MM_FROM_HLS_PR_0_awaddr;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_awburst;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_awcache;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_0_awlen;
  wire [0:0]M_AXI_MM_FROM_HLS_PR_0_awlock;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_awprot;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_awqos;
  wire M_AXI_MM_FROM_HLS_PR_0_awready;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_awregion;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_awsize;
  wire M_AXI_MM_FROM_HLS_PR_0_awvalid;
  wire M_AXI_MM_FROM_HLS_PR_0_bready;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_bresp;
  wire M_AXI_MM_FROM_HLS_PR_0_bvalid;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_0_rdata;
  wire M_AXI_MM_FROM_HLS_PR_0_rlast;
  wire M_AXI_MM_FROM_HLS_PR_0_rready;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_rresp;
  wire M_AXI_MM_FROM_HLS_PR_0_rvalid;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_0_wdata;
  wire M_AXI_MM_FROM_HLS_PR_0_wlast;
  wire M_AXI_MM_FROM_HLS_PR_0_wready;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_0_wstrb;
  wire M_AXI_MM_FROM_HLS_PR_0_wvalid;
  wire axi_reset_n_out;
  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire [1:0]c0_ddr4_ba;
  wire [0:0]c0_ddr4_bg;
  wire [0:0]c0_ddr4_ck_c;
  wire [0:0]c0_ddr4_ck_t;
  wire [0:0]c0_ddr4_cke;
  wire [0:0]c0_ddr4_cs_n;
  wire [7:0]c0_ddr4_dm_n;
  wire [63:0]c0_ddr4_dq;
  wire [7:0]c0_ddr4_dqs_c;
  wire [7:0]c0_ddr4_dqs_t;
  wire [0:0]c0_ddr4_odt;
  wire c0_ddr4_reset_n;
  wire clk_out_125M;
  wire clk_out_250M;
  wire clk_out_62_5M;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire sys_clk;
  wire sys_clk_gt;
  wire sys_rst_n;

  PCIe_Bridge_ICAP_complex PCIe_Bridge_ICAP_complex_i
       (.C0_SYS_CLK_clk_n(C0_SYS_CLK_clk_n),
        .C0_SYS_CLK_clk_p(C0_SYS_CLK_clk_p),
        .DDR4_sys_rst(DDR4_sys_rst),
        .M_AXI_LITE_TO_HLS_PR_0_araddr(M_AXI_LITE_TO_HLS_PR_0_araddr),
        .M_AXI_LITE_TO_HLS_PR_0_arprot(M_AXI_LITE_TO_HLS_PR_0_arprot),
        .M_AXI_LITE_TO_HLS_PR_0_arqos(M_AXI_LITE_TO_HLS_PR_0_arqos),
        .M_AXI_LITE_TO_HLS_PR_0_arready(M_AXI_LITE_TO_HLS_PR_0_arready),
        .M_AXI_LITE_TO_HLS_PR_0_arregion(M_AXI_LITE_TO_HLS_PR_0_arregion),
        .M_AXI_LITE_TO_HLS_PR_0_arvalid(M_AXI_LITE_TO_HLS_PR_0_arvalid),
        .M_AXI_LITE_TO_HLS_PR_0_awaddr(M_AXI_LITE_TO_HLS_PR_0_awaddr),
        .M_AXI_LITE_TO_HLS_PR_0_awprot(M_AXI_LITE_TO_HLS_PR_0_awprot),
        .M_AXI_LITE_TO_HLS_PR_0_awqos(M_AXI_LITE_TO_HLS_PR_0_awqos),
        .M_AXI_LITE_TO_HLS_PR_0_awready(M_AXI_LITE_TO_HLS_PR_0_awready),
        .M_AXI_LITE_TO_HLS_PR_0_awregion(M_AXI_LITE_TO_HLS_PR_0_awregion),
        .M_AXI_LITE_TO_HLS_PR_0_awvalid(M_AXI_LITE_TO_HLS_PR_0_awvalid),
        .M_AXI_LITE_TO_HLS_PR_0_bready(M_AXI_LITE_TO_HLS_PR_0_bready),
        .M_AXI_LITE_TO_HLS_PR_0_bresp(M_AXI_LITE_TO_HLS_PR_0_bresp),
        .M_AXI_LITE_TO_HLS_PR_0_bvalid(M_AXI_LITE_TO_HLS_PR_0_bvalid),
        .M_AXI_LITE_TO_HLS_PR_0_rdata(M_AXI_LITE_TO_HLS_PR_0_rdata),
        .M_AXI_LITE_TO_HLS_PR_0_rready(M_AXI_LITE_TO_HLS_PR_0_rready),
        .M_AXI_LITE_TO_HLS_PR_0_rresp(M_AXI_LITE_TO_HLS_PR_0_rresp),
        .M_AXI_LITE_TO_HLS_PR_0_rvalid(M_AXI_LITE_TO_HLS_PR_0_rvalid),
        .M_AXI_LITE_TO_HLS_PR_0_wdata(M_AXI_LITE_TO_HLS_PR_0_wdata),
        .M_AXI_LITE_TO_HLS_PR_0_wready(M_AXI_LITE_TO_HLS_PR_0_wready),
        .M_AXI_LITE_TO_HLS_PR_0_wstrb(M_AXI_LITE_TO_HLS_PR_0_wstrb),
        .M_AXI_LITE_TO_HLS_PR_0_wvalid(M_AXI_LITE_TO_HLS_PR_0_wvalid),
        .M_AXI_MM_FROM_HLS_PR_0_araddr(M_AXI_MM_FROM_HLS_PR_0_araddr),
        .M_AXI_MM_FROM_HLS_PR_0_arburst(M_AXI_MM_FROM_HLS_PR_0_arburst),
        .M_AXI_MM_FROM_HLS_PR_0_arcache(M_AXI_MM_FROM_HLS_PR_0_arcache),
        .M_AXI_MM_FROM_HLS_PR_0_arlen(M_AXI_MM_FROM_HLS_PR_0_arlen),
        .M_AXI_MM_FROM_HLS_PR_0_arlock(M_AXI_MM_FROM_HLS_PR_0_arlock),
        .M_AXI_MM_FROM_HLS_PR_0_arprot(M_AXI_MM_FROM_HLS_PR_0_arprot),
        .M_AXI_MM_FROM_HLS_PR_0_arqos(M_AXI_MM_FROM_HLS_PR_0_arqos),
        .M_AXI_MM_FROM_HLS_PR_0_arready(M_AXI_MM_FROM_HLS_PR_0_arready),
        .M_AXI_MM_FROM_HLS_PR_0_arregion(M_AXI_MM_FROM_HLS_PR_0_arregion),
        .M_AXI_MM_FROM_HLS_PR_0_arsize(M_AXI_MM_FROM_HLS_PR_0_arsize),
        .M_AXI_MM_FROM_HLS_PR_0_arvalid(M_AXI_MM_FROM_HLS_PR_0_arvalid),
        .M_AXI_MM_FROM_HLS_PR_0_awaddr(M_AXI_MM_FROM_HLS_PR_0_awaddr),
        .M_AXI_MM_FROM_HLS_PR_0_awburst(M_AXI_MM_FROM_HLS_PR_0_awburst),
        .M_AXI_MM_FROM_HLS_PR_0_awcache(M_AXI_MM_FROM_HLS_PR_0_awcache),
        .M_AXI_MM_FROM_HLS_PR_0_awlen(M_AXI_MM_FROM_HLS_PR_0_awlen),
        .M_AXI_MM_FROM_HLS_PR_0_awlock(M_AXI_MM_FROM_HLS_PR_0_awlock),
        .M_AXI_MM_FROM_HLS_PR_0_awprot(M_AXI_MM_FROM_HLS_PR_0_awprot),
        .M_AXI_MM_FROM_HLS_PR_0_awqos(M_AXI_MM_FROM_HLS_PR_0_awqos),
        .M_AXI_MM_FROM_HLS_PR_0_awready(M_AXI_MM_FROM_HLS_PR_0_awready),
        .M_AXI_MM_FROM_HLS_PR_0_awregion(M_AXI_MM_FROM_HLS_PR_0_awregion),
        .M_AXI_MM_FROM_HLS_PR_0_awsize(M_AXI_MM_FROM_HLS_PR_0_awsize),
        .M_AXI_MM_FROM_HLS_PR_0_awvalid(M_AXI_MM_FROM_HLS_PR_0_awvalid),
        .M_AXI_MM_FROM_HLS_PR_0_bready(M_AXI_MM_FROM_HLS_PR_0_bready),
        .M_AXI_MM_FROM_HLS_PR_0_bresp(M_AXI_MM_FROM_HLS_PR_0_bresp),
        .M_AXI_MM_FROM_HLS_PR_0_bvalid(M_AXI_MM_FROM_HLS_PR_0_bvalid),
        .M_AXI_MM_FROM_HLS_PR_0_rdata(M_AXI_MM_FROM_HLS_PR_0_rdata),
        .M_AXI_MM_FROM_HLS_PR_0_rlast(M_AXI_MM_FROM_HLS_PR_0_rlast),
        .M_AXI_MM_FROM_HLS_PR_0_rready(M_AXI_MM_FROM_HLS_PR_0_rready),
        .M_AXI_MM_FROM_HLS_PR_0_rresp(M_AXI_MM_FROM_HLS_PR_0_rresp),
        .M_AXI_MM_FROM_HLS_PR_0_rvalid(M_AXI_MM_FROM_HLS_PR_0_rvalid),
        .M_AXI_MM_FROM_HLS_PR_0_wdata(M_AXI_MM_FROM_HLS_PR_0_wdata),
        .M_AXI_MM_FROM_HLS_PR_0_wlast(M_AXI_MM_FROM_HLS_PR_0_wlast),
        .M_AXI_MM_FROM_HLS_PR_0_wready(M_AXI_MM_FROM_HLS_PR_0_wready),
        .M_AXI_MM_FROM_HLS_PR_0_wstrb(M_AXI_MM_FROM_HLS_PR_0_wstrb),
        .M_AXI_MM_FROM_HLS_PR_0_wvalid(M_AXI_MM_FROM_HLS_PR_0_wvalid),
        .axi_reset_n_out(axi_reset_n_out),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dm_n(c0_ddr4_dm_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .clk_out_125M(clk_out_125M),
        .clk_out_250M(clk_out_250M),
        .clk_out_62_5M(clk_out_62_5M),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .sys_clk(sys_clk),
        .sys_clk_gt(sys_clk_gt),
        .sys_rst_n(sys_rst_n));
endmodule
