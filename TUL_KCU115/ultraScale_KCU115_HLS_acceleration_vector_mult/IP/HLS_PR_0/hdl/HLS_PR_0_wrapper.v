//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
//Date        : Mon Jul 24 16:01:39 2017
//Host        : MC32GBLNX running 64-bit CentOS release 6.9 (Final)
//Command     : generate_target HLS_PR_0_wrapper.bd
//Design      : HLS_PR_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module HLS_PR_0_wrapper
   (AXI_RESET_N,
    CLK_IN_125M,
    CLK_IN_250,
    CLK_IN_62_5M,
    M_AXI_TO_STATIC_araddr,
    M_AXI_TO_STATIC_arburst,
    M_AXI_TO_STATIC_arcache,
    M_AXI_TO_STATIC_arlen,
    M_AXI_TO_STATIC_arlock,
    M_AXI_TO_STATIC_arprot,
    M_AXI_TO_STATIC_arqos,
    M_AXI_TO_STATIC_arready,
    M_AXI_TO_STATIC_arregion,
    M_AXI_TO_STATIC_arsize,
    M_AXI_TO_STATIC_arvalid,
    M_AXI_TO_STATIC_awaddr,
    M_AXI_TO_STATIC_awburst,
    M_AXI_TO_STATIC_awcache,
    M_AXI_TO_STATIC_awlen,
    M_AXI_TO_STATIC_awlock,
    M_AXI_TO_STATIC_awprot,
    M_AXI_TO_STATIC_awqos,
    M_AXI_TO_STATIC_awready,
    M_AXI_TO_STATIC_awregion,
    M_AXI_TO_STATIC_awsize,
    M_AXI_TO_STATIC_awvalid,
    M_AXI_TO_STATIC_bready,
    M_AXI_TO_STATIC_bresp,
    M_AXI_TO_STATIC_bvalid,
    M_AXI_TO_STATIC_rdata,
    M_AXI_TO_STATIC_rlast,
    M_AXI_TO_STATIC_rready,
    M_AXI_TO_STATIC_rresp,
    M_AXI_TO_STATIC_rvalid,
    M_AXI_TO_STATIC_wdata,
    M_AXI_TO_STATIC_wlast,
    M_AXI_TO_STATIC_wready,
    M_AXI_TO_STATIC_wstrb,
    M_AXI_TO_STATIC_wvalid,
    S_AXI_LITE_FROM_STATIC_araddr,
    S_AXI_LITE_FROM_STATIC_arprot,
    S_AXI_LITE_FROM_STATIC_arready,
    S_AXI_LITE_FROM_STATIC_arvalid,
    S_AXI_LITE_FROM_STATIC_awaddr,
    S_AXI_LITE_FROM_STATIC_awprot,
    S_AXI_LITE_FROM_STATIC_awready,
    S_AXI_LITE_FROM_STATIC_awvalid,
    S_AXI_LITE_FROM_STATIC_bready,
    S_AXI_LITE_FROM_STATIC_bresp,
    S_AXI_LITE_FROM_STATIC_bvalid,
    S_AXI_LITE_FROM_STATIC_rdata,
    S_AXI_LITE_FROM_STATIC_rready,
    S_AXI_LITE_FROM_STATIC_rresp,
    S_AXI_LITE_FROM_STATIC_rvalid,
    S_AXI_LITE_FROM_STATIC_wdata,
    S_AXI_LITE_FROM_STATIC_wready,
    S_AXI_LITE_FROM_STATIC_wstrb,
    S_AXI_LITE_FROM_STATIC_wvalid);
  input AXI_RESET_N;
  input CLK_IN_125M;
  input CLK_IN_250;
  input CLK_IN_62_5M;
  output [31:0]M_AXI_TO_STATIC_araddr;
  output [1:0]M_AXI_TO_STATIC_arburst;
  output [3:0]M_AXI_TO_STATIC_arcache;
  output [7:0]M_AXI_TO_STATIC_arlen;
  output [0:0]M_AXI_TO_STATIC_arlock;
  output [2:0]M_AXI_TO_STATIC_arprot;
  output [3:0]M_AXI_TO_STATIC_arqos;
  input M_AXI_TO_STATIC_arready;
  output [3:0]M_AXI_TO_STATIC_arregion;
  output [2:0]M_AXI_TO_STATIC_arsize;
  output M_AXI_TO_STATIC_arvalid;
  output [31:0]M_AXI_TO_STATIC_awaddr;
  output [1:0]M_AXI_TO_STATIC_awburst;
  output [3:0]M_AXI_TO_STATIC_awcache;
  output [7:0]M_AXI_TO_STATIC_awlen;
  output [0:0]M_AXI_TO_STATIC_awlock;
  output [2:0]M_AXI_TO_STATIC_awprot;
  output [3:0]M_AXI_TO_STATIC_awqos;
  input M_AXI_TO_STATIC_awready;
  output [3:0]M_AXI_TO_STATIC_awregion;
  output [2:0]M_AXI_TO_STATIC_awsize;
  output M_AXI_TO_STATIC_awvalid;
  output M_AXI_TO_STATIC_bready;
  input [1:0]M_AXI_TO_STATIC_bresp;
  input M_AXI_TO_STATIC_bvalid;
  input [511:0]M_AXI_TO_STATIC_rdata;
  input M_AXI_TO_STATIC_rlast;
  output M_AXI_TO_STATIC_rready;
  input [1:0]M_AXI_TO_STATIC_rresp;
  input M_AXI_TO_STATIC_rvalid;
  output [511:0]M_AXI_TO_STATIC_wdata;
  output M_AXI_TO_STATIC_wlast;
  input M_AXI_TO_STATIC_wready;
  output [63:0]M_AXI_TO_STATIC_wstrb;
  output M_AXI_TO_STATIC_wvalid;
  input [31:0]S_AXI_LITE_FROM_STATIC_araddr;
  input [2:0]S_AXI_LITE_FROM_STATIC_arprot;
  output S_AXI_LITE_FROM_STATIC_arready;
  input S_AXI_LITE_FROM_STATIC_arvalid;
  input [31:0]S_AXI_LITE_FROM_STATIC_awaddr;
  input [2:0]S_AXI_LITE_FROM_STATIC_awprot;
  output S_AXI_LITE_FROM_STATIC_awready;
  input S_AXI_LITE_FROM_STATIC_awvalid;
  input S_AXI_LITE_FROM_STATIC_bready;
  output [1:0]S_AXI_LITE_FROM_STATIC_bresp;
  output S_AXI_LITE_FROM_STATIC_bvalid;
  output [31:0]S_AXI_LITE_FROM_STATIC_rdata;
  input S_AXI_LITE_FROM_STATIC_rready;
  output [1:0]S_AXI_LITE_FROM_STATIC_rresp;
  output S_AXI_LITE_FROM_STATIC_rvalid;
  input [31:0]S_AXI_LITE_FROM_STATIC_wdata;
  output S_AXI_LITE_FROM_STATIC_wready;
  input [3:0]S_AXI_LITE_FROM_STATIC_wstrb;
  input S_AXI_LITE_FROM_STATIC_wvalid;

  wire AXI_RESET_N;
  wire CLK_IN_125M;
  wire CLK_IN_250;
  wire CLK_IN_62_5M;
  wire [31:0]M_AXI_TO_STATIC_araddr;
  wire [1:0]M_AXI_TO_STATIC_arburst;
  wire [3:0]M_AXI_TO_STATIC_arcache;
  wire [7:0]M_AXI_TO_STATIC_arlen;
  wire [0:0]M_AXI_TO_STATIC_arlock;
  wire [2:0]M_AXI_TO_STATIC_arprot;
  wire [3:0]M_AXI_TO_STATIC_arqos;
  wire M_AXI_TO_STATIC_arready;
  wire [3:0]M_AXI_TO_STATIC_arregion;
  wire [2:0]M_AXI_TO_STATIC_arsize;
  wire M_AXI_TO_STATIC_arvalid;
  wire [31:0]M_AXI_TO_STATIC_awaddr;
  wire [1:0]M_AXI_TO_STATIC_awburst;
  wire [3:0]M_AXI_TO_STATIC_awcache;
  wire [7:0]M_AXI_TO_STATIC_awlen;
  wire [0:0]M_AXI_TO_STATIC_awlock;
  wire [2:0]M_AXI_TO_STATIC_awprot;
  wire [3:0]M_AXI_TO_STATIC_awqos;
  wire M_AXI_TO_STATIC_awready;
  wire [3:0]M_AXI_TO_STATIC_awregion;
  wire [2:0]M_AXI_TO_STATIC_awsize;
  wire M_AXI_TO_STATIC_awvalid;
  wire M_AXI_TO_STATIC_bready;
  wire [1:0]M_AXI_TO_STATIC_bresp;
  wire M_AXI_TO_STATIC_bvalid;
  wire [511:0]M_AXI_TO_STATIC_rdata;
  wire M_AXI_TO_STATIC_rlast;
  wire M_AXI_TO_STATIC_rready;
  wire [1:0]M_AXI_TO_STATIC_rresp;
  wire M_AXI_TO_STATIC_rvalid;
  wire [511:0]M_AXI_TO_STATIC_wdata;
  wire M_AXI_TO_STATIC_wlast;
  wire M_AXI_TO_STATIC_wready;
  wire [63:0]M_AXI_TO_STATIC_wstrb;
  wire M_AXI_TO_STATIC_wvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_araddr;
  wire [2:0]S_AXI_LITE_FROM_STATIC_arprot;
  wire S_AXI_LITE_FROM_STATIC_arready;
  wire S_AXI_LITE_FROM_STATIC_arvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_awaddr;
  wire [2:0]S_AXI_LITE_FROM_STATIC_awprot;
  wire S_AXI_LITE_FROM_STATIC_awready;
  wire S_AXI_LITE_FROM_STATIC_awvalid;
  wire S_AXI_LITE_FROM_STATIC_bready;
  wire [1:0]S_AXI_LITE_FROM_STATIC_bresp;
  wire S_AXI_LITE_FROM_STATIC_bvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_rdata;
  wire S_AXI_LITE_FROM_STATIC_rready;
  wire [1:0]S_AXI_LITE_FROM_STATIC_rresp;
  wire S_AXI_LITE_FROM_STATIC_rvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_wdata;
  wire S_AXI_LITE_FROM_STATIC_wready;
  wire [3:0]S_AXI_LITE_FROM_STATIC_wstrb;
  wire S_AXI_LITE_FROM_STATIC_wvalid;

  HLS_PR_0 HLS_PR_0_i
       (.AXI_RESET_N(AXI_RESET_N),
        .CLK_IN_125M(CLK_IN_125M),
        .CLK_IN_250(CLK_IN_250),
        .CLK_IN_62_5M(CLK_IN_62_5M),
        .M_AXI_TO_STATIC_araddr(M_AXI_TO_STATIC_araddr),
        .M_AXI_TO_STATIC_arburst(M_AXI_TO_STATIC_arburst),
        .M_AXI_TO_STATIC_arcache(M_AXI_TO_STATIC_arcache),
        .M_AXI_TO_STATIC_arlen(M_AXI_TO_STATIC_arlen),
        .M_AXI_TO_STATIC_arlock(M_AXI_TO_STATIC_arlock),
        .M_AXI_TO_STATIC_arprot(M_AXI_TO_STATIC_arprot),
        .M_AXI_TO_STATIC_arqos(M_AXI_TO_STATIC_arqos),
        .M_AXI_TO_STATIC_arready(M_AXI_TO_STATIC_arready),
        .M_AXI_TO_STATIC_arregion(M_AXI_TO_STATIC_arregion),
        .M_AXI_TO_STATIC_arsize(M_AXI_TO_STATIC_arsize),
        .M_AXI_TO_STATIC_arvalid(M_AXI_TO_STATIC_arvalid),
        .M_AXI_TO_STATIC_awaddr(M_AXI_TO_STATIC_awaddr),
        .M_AXI_TO_STATIC_awburst(M_AXI_TO_STATIC_awburst),
        .M_AXI_TO_STATIC_awcache(M_AXI_TO_STATIC_awcache),
        .M_AXI_TO_STATIC_awlen(M_AXI_TO_STATIC_awlen),
        .M_AXI_TO_STATIC_awlock(M_AXI_TO_STATIC_awlock),
        .M_AXI_TO_STATIC_awprot(M_AXI_TO_STATIC_awprot),
        .M_AXI_TO_STATIC_awqos(M_AXI_TO_STATIC_awqos),
        .M_AXI_TO_STATIC_awready(M_AXI_TO_STATIC_awready),
        .M_AXI_TO_STATIC_awregion(M_AXI_TO_STATIC_awregion),
        .M_AXI_TO_STATIC_awsize(M_AXI_TO_STATIC_awsize),
        .M_AXI_TO_STATIC_awvalid(M_AXI_TO_STATIC_awvalid),
        .M_AXI_TO_STATIC_bready(M_AXI_TO_STATIC_bready),
        .M_AXI_TO_STATIC_bresp(M_AXI_TO_STATIC_bresp),
        .M_AXI_TO_STATIC_bvalid(M_AXI_TO_STATIC_bvalid),
        .M_AXI_TO_STATIC_rdata(M_AXI_TO_STATIC_rdata),
        .M_AXI_TO_STATIC_rlast(M_AXI_TO_STATIC_rlast),
        .M_AXI_TO_STATIC_rready(M_AXI_TO_STATIC_rready),
        .M_AXI_TO_STATIC_rresp(M_AXI_TO_STATIC_rresp),
        .M_AXI_TO_STATIC_rvalid(M_AXI_TO_STATIC_rvalid),
        .M_AXI_TO_STATIC_wdata(M_AXI_TO_STATIC_wdata),
        .M_AXI_TO_STATIC_wlast(M_AXI_TO_STATIC_wlast),
        .M_AXI_TO_STATIC_wready(M_AXI_TO_STATIC_wready),
        .M_AXI_TO_STATIC_wstrb(M_AXI_TO_STATIC_wstrb),
        .M_AXI_TO_STATIC_wvalid(M_AXI_TO_STATIC_wvalid),
        .S_AXI_LITE_FROM_STATIC_araddr(S_AXI_LITE_FROM_STATIC_araddr),
        .S_AXI_LITE_FROM_STATIC_arprot(S_AXI_LITE_FROM_STATIC_arprot),
        .S_AXI_LITE_FROM_STATIC_arready(S_AXI_LITE_FROM_STATIC_arready),
        .S_AXI_LITE_FROM_STATIC_arvalid(S_AXI_LITE_FROM_STATIC_arvalid),
        .S_AXI_LITE_FROM_STATIC_awaddr(S_AXI_LITE_FROM_STATIC_awaddr),
        .S_AXI_LITE_FROM_STATIC_awprot(S_AXI_LITE_FROM_STATIC_awprot),
        .S_AXI_LITE_FROM_STATIC_awready(S_AXI_LITE_FROM_STATIC_awready),
        .S_AXI_LITE_FROM_STATIC_awvalid(S_AXI_LITE_FROM_STATIC_awvalid),
        .S_AXI_LITE_FROM_STATIC_bready(S_AXI_LITE_FROM_STATIC_bready),
        .S_AXI_LITE_FROM_STATIC_bresp(S_AXI_LITE_FROM_STATIC_bresp),
        .S_AXI_LITE_FROM_STATIC_bvalid(S_AXI_LITE_FROM_STATIC_bvalid),
        .S_AXI_LITE_FROM_STATIC_rdata(S_AXI_LITE_FROM_STATIC_rdata),
        .S_AXI_LITE_FROM_STATIC_rready(S_AXI_LITE_FROM_STATIC_rready),
        .S_AXI_LITE_FROM_STATIC_rresp(S_AXI_LITE_FROM_STATIC_rresp),
        .S_AXI_LITE_FROM_STATIC_rvalid(S_AXI_LITE_FROM_STATIC_rvalid),
        .S_AXI_LITE_FROM_STATIC_wdata(S_AXI_LITE_FROM_STATIC_wdata),
        .S_AXI_LITE_FROM_STATIC_wready(S_AXI_LITE_FROM_STATIC_wready),
        .S_AXI_LITE_FROM_STATIC_wstrb(S_AXI_LITE_FROM_STATIC_wstrb),
        .S_AXI_LITE_FROM_STATIC_wvalid(S_AXI_LITE_FROM_STATIC_wvalid));
endmodule
