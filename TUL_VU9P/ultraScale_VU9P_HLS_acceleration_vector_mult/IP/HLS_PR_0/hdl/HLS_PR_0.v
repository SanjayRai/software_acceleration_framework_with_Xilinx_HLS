//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
//Date        : Fri Jul 28 14:22:49 2017
//Host        : MC32GBLNX running 64-bit CentOS release 6.9 (Final)
//Command     : generate_target HLS_PR_0.bd
//Design      : HLS_PR_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_LITE_3Stage_reg_imp_153MQIK
   (M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn,
    aresetn1,
    m_aclk);
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;
  input aresetn1;
  input m_aclk;

  wire [31:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire aclk_1;
  wire aresetn1_1;
  wire aresetn_1;
  wire [31:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [31:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [3:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [31:0]axi_register_slice_1_M_AXI_ARADDR;
  wire axi_register_slice_1_M_AXI_ARREADY;
  wire axi_register_slice_1_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_1_M_AXI_AWADDR;
  wire axi_register_slice_1_M_AXI_AWREADY;
  wire axi_register_slice_1_M_AXI_AWVALID;
  wire axi_register_slice_1_M_AXI_BREADY;
  wire [1:0]axi_register_slice_1_M_AXI_BRESP;
  wire axi_register_slice_1_M_AXI_BVALID;
  wire [31:0]axi_register_slice_1_M_AXI_RDATA;
  wire axi_register_slice_1_M_AXI_RREADY;
  wire [1:0]axi_register_slice_1_M_AXI_RRESP;
  wire axi_register_slice_1_M_AXI_RVALID;
  wire [31:0]axi_register_slice_1_M_AXI_WDATA;
  wire axi_register_slice_1_M_AXI_WREADY;
  wire [3:0]axi_register_slice_1_M_AXI_WSTRB;
  wire axi_register_slice_1_M_AXI_WVALID;
  wire [31:0]axi_register_slice_2_M_AXI_ARADDR;
  wire [2:0]axi_register_slice_2_M_AXI_ARPROT;
  wire axi_register_slice_2_M_AXI_ARREADY;
  wire axi_register_slice_2_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_2_M_AXI_AWADDR;
  wire [2:0]axi_register_slice_2_M_AXI_AWPROT;
  wire axi_register_slice_2_M_AXI_AWREADY;
  wire axi_register_slice_2_M_AXI_AWVALID;
  wire axi_register_slice_2_M_AXI_BREADY;
  wire [1:0]axi_register_slice_2_M_AXI_BRESP;
  wire axi_register_slice_2_M_AXI_BVALID;
  wire [31:0]axi_register_slice_2_M_AXI_RDATA;
  wire axi_register_slice_2_M_AXI_RREADY;
  wire [1:0]axi_register_slice_2_M_AXI_RRESP;
  wire axi_register_slice_2_M_AXI_RVALID;
  wire [31:0]axi_register_slice_2_M_AXI_WDATA;
  wire axi_register_slice_2_M_AXI_WREADY;
  wire [3:0]axi_register_slice_2_M_AXI_WSTRB;
  wire axi_register_slice_2_M_AXI_WVALID;
  wire [31:0]fifo_generator_0_M_AXI_ARADDR;
  wire [2:0]fifo_generator_0_M_AXI_ARPROT;
  wire fifo_generator_0_M_AXI_ARREADY;
  wire fifo_generator_0_M_AXI_ARVALID;
  wire [31:0]fifo_generator_0_M_AXI_AWADDR;
  wire [2:0]fifo_generator_0_M_AXI_AWPROT;
  wire fifo_generator_0_M_AXI_AWREADY;
  wire fifo_generator_0_M_AXI_AWVALID;
  wire fifo_generator_0_M_AXI_BREADY;
  wire [1:0]fifo_generator_0_M_AXI_BRESP;
  wire fifo_generator_0_M_AXI_BVALID;
  wire [31:0]fifo_generator_0_M_AXI_RDATA;
  wire fifo_generator_0_M_AXI_RREADY;
  wire [1:0]fifo_generator_0_M_AXI_RRESP;
  wire fifo_generator_0_M_AXI_RVALID;
  wire [31:0]fifo_generator_0_M_AXI_WDATA;
  wire fifo_generator_0_M_AXI_WREADY;
  wire [3:0]fifo_generator_0_M_AXI_WSTRB;
  wire fifo_generator_0_M_AXI_WVALID;
  wire m_aclk_1;

  assign M_AXI_araddr[31:0] = axi_register_slice_1_M_AXI_ARADDR;
  assign M_AXI_arvalid = axi_register_slice_1_M_AXI_ARVALID;
  assign M_AXI_awaddr[31:0] = axi_register_slice_1_M_AXI_AWADDR;
  assign M_AXI_awvalid = axi_register_slice_1_M_AXI_AWVALID;
  assign M_AXI_bready = axi_register_slice_1_M_AXI_BREADY;
  assign M_AXI_rready = axi_register_slice_1_M_AXI_RREADY;
  assign M_AXI_wdata[31:0] = axi_register_slice_1_M_AXI_WDATA;
  assign M_AXI_wstrb[3:0] = axi_register_slice_1_M_AXI_WSTRB;
  assign M_AXI_wvalid = axi_register_slice_1_M_AXI_WVALID;
  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn1_1 = aresetn1;
  assign aresetn_1 = aresetn;
  assign axi_register_slice_1_M_AXI_ARREADY = M_AXI_arready;
  assign axi_register_slice_1_M_AXI_AWREADY = M_AXI_awready;
  assign axi_register_slice_1_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign axi_register_slice_1_M_AXI_BVALID = M_AXI_bvalid;
  assign axi_register_slice_1_M_AXI_RDATA = M_AXI_rdata[31:0];
  assign axi_register_slice_1_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign axi_register_slice_1_M_AXI_RVALID = M_AXI_rvalid;
  assign axi_register_slice_1_M_AXI_WREADY = M_AXI_wready;
  assign m_aclk_1 = m_aclk;
  HLS_PR_0_axi_register_slice_0_2 axi_register_slice_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  HLS_PR_0_axi_register_slice_0_3 axi_register_slice_1
       (.aclk(m_aclk_1),
        .aresetn(aresetn1_1),
        .m_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axi_araddr(fifo_generator_0_M_AXI_ARADDR),
        .s_axi_arprot(fifo_generator_0_M_AXI_ARPROT),
        .s_axi_arready(fifo_generator_0_M_AXI_ARREADY),
        .s_axi_arvalid(fifo_generator_0_M_AXI_ARVALID),
        .s_axi_awaddr(fifo_generator_0_M_AXI_AWADDR),
        .s_axi_awprot(fifo_generator_0_M_AXI_AWPROT),
        .s_axi_awready(fifo_generator_0_M_AXI_AWREADY),
        .s_axi_awvalid(fifo_generator_0_M_AXI_AWVALID),
        .s_axi_bready(fifo_generator_0_M_AXI_BREADY),
        .s_axi_bresp(fifo_generator_0_M_AXI_BRESP),
        .s_axi_bvalid(fifo_generator_0_M_AXI_BVALID),
        .s_axi_rdata(fifo_generator_0_M_AXI_RDATA),
        .s_axi_rready(fifo_generator_0_M_AXI_RREADY),
        .s_axi_rresp(fifo_generator_0_M_AXI_RRESP),
        .s_axi_rvalid(fifo_generator_0_M_AXI_RVALID),
        .s_axi_wdata(fifo_generator_0_M_AXI_WDATA),
        .s_axi_wready(fifo_generator_0_M_AXI_WREADY),
        .s_axi_wstrb(fifo_generator_0_M_AXI_WSTRB),
        .s_axi_wvalid(fifo_generator_0_M_AXI_WVALID));
  HLS_PR_0_axi_register_slice_1_2 axi_register_slice_2
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(axi_register_slice_2_M_AXI_ARADDR),
        .m_axi_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .m_axi_arready(axi_register_slice_2_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_2_M_AXI_AWADDR),
        .m_axi_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .m_axi_awready(axi_register_slice_2_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_2_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_2_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_2_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_2_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_2_M_AXI_WVALID),
        .s_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .s_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .s_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI_WVALID));
  HLS_PR_0_fifo_generator_0_0 fifo_generator_0
       (.m_aclk(m_aclk_1),
        .m_axi_araddr(fifo_generator_0_M_AXI_ARADDR),
        .m_axi_arprot(fifo_generator_0_M_AXI_ARPROT),
        .m_axi_arready(fifo_generator_0_M_AXI_ARREADY),
        .m_axi_arvalid(fifo_generator_0_M_AXI_ARVALID),
        .m_axi_awaddr(fifo_generator_0_M_AXI_AWADDR),
        .m_axi_awprot(fifo_generator_0_M_AXI_AWPROT),
        .m_axi_awready(fifo_generator_0_M_AXI_AWREADY),
        .m_axi_awvalid(fifo_generator_0_M_AXI_AWVALID),
        .m_axi_bready(fifo_generator_0_M_AXI_BREADY),
        .m_axi_bresp(fifo_generator_0_M_AXI_BRESP),
        .m_axi_bvalid(fifo_generator_0_M_AXI_BVALID),
        .m_axi_rdata(fifo_generator_0_M_AXI_RDATA),
        .m_axi_rready(fifo_generator_0_M_AXI_RREADY),
        .m_axi_rresp(fifo_generator_0_M_AXI_RRESP),
        .m_axi_rvalid(fifo_generator_0_M_AXI_RVALID),
        .m_axi_wdata(fifo_generator_0_M_AXI_WDATA),
        .m_axi_wready(fifo_generator_0_M_AXI_WREADY),
        .m_axi_wstrb(fifo_generator_0_M_AXI_WSTRB),
        .m_axi_wvalid(fifo_generator_0_M_AXI_WVALID),
        .s_aclk(aclk_1),
        .s_aresetn(aresetn_1),
        .s_axi_araddr(axi_register_slice_2_M_AXI_ARADDR),
        .s_axi_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .s_axi_arready(axi_register_slice_2_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_2_M_AXI_AWADDR),
        .s_axi_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .s_axi_awready(axi_register_slice_2_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_2_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_2_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_2_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_2_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_2_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_2_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_2_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_2_M_AXI_WVALID));
endmodule

module AXI_MM_3_stage_reg_imp_K8N1Z8
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn);
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;

  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [3:0]Conn1_ARREGION;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [3:0]Conn1_AWREGION;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [511:0]Conn1_RDATA;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]M_AXI_MM_FROM_HLS_PR_0_1_ARADDR;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_ARBURST;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_ARCACHE;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_0_1_ARLEN;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_ARLOCK;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_ARPROT;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_ARQOS;
  wire M_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_ARREGION;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_ARSIZE;
  wire M_AXI_MM_FROM_HLS_PR_0_1_ARVALID;
  wire [31:0]M_AXI_MM_FROM_HLS_PR_0_1_AWADDR;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_AWBURST;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_AWCACHE;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_0_1_AWLEN;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_AWLOCK;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_AWPROT;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_AWQOS;
  wire M_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_AWREGION;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_AWSIZE;
  wire M_AXI_MM_FROM_HLS_PR_0_1_AWVALID;
  wire M_AXI_MM_FROM_HLS_PR_0_1_BREADY;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  wire M_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  wire M_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  wire M_AXI_MM_FROM_HLS_PR_0_1_RREADY;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  wire M_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_0_1_WDATA;
  wire M_AXI_MM_FROM_HLS_PR_0_1_WLAST;
  wire M_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_0_1_WSTRB;
  wire M_AXI_MM_FROM_HLS_PR_0_1_WVALID;
  wire axi_pcie3_0_axi_aclk;
  wire axi_pcie3_0_axi_aresetn;
  wire [31:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_0_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_0_M_AXI_ARCACHE;
  wire [7:0]axi_register_slice_0_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_0_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_0_M_AXI_ARQOS;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_0_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_0_M_AXI_ARSIZE;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_0_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_0_M_AXI_AWCACHE;
  wire [7:0]axi_register_slice_0_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_0_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_0_M_AXI_AWQOS;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_0_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_0_M_AXI_AWSIZE;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [511:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RLAST;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [511:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WLAST;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [63:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [31:0]axi_register_slice_1_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_1_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_1_M_AXI_ARCACHE;
  wire [7:0]axi_register_slice_1_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_1_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_1_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_1_M_AXI_ARQOS;
  wire axi_register_slice_1_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_1_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_1_M_AXI_ARSIZE;
  wire axi_register_slice_1_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_1_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_1_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_1_M_AXI_AWCACHE;
  wire [7:0]axi_register_slice_1_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_1_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_1_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_1_M_AXI_AWQOS;
  wire axi_register_slice_1_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_1_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_1_M_AXI_AWSIZE;
  wire axi_register_slice_1_M_AXI_AWVALID;
  wire axi_register_slice_1_M_AXI_BREADY;
  wire [1:0]axi_register_slice_1_M_AXI_BRESP;
  wire axi_register_slice_1_M_AXI_BVALID;
  wire [511:0]axi_register_slice_1_M_AXI_RDATA;
  wire axi_register_slice_1_M_AXI_RLAST;
  wire axi_register_slice_1_M_AXI_RREADY;
  wire [1:0]axi_register_slice_1_M_AXI_RRESP;
  wire axi_register_slice_1_M_AXI_RVALID;
  wire [511:0]axi_register_slice_1_M_AXI_WDATA;
  wire axi_register_slice_1_M_AXI_WLAST;
  wire axi_register_slice_1_M_AXI_WREADY;
  wire [63:0]axi_register_slice_1_M_AXI_WSTRB;
  wire axi_register_slice_1_M_AXI_WVALID;

  assign Conn1_ARREADY = M_AXI_arready;
  assign Conn1_AWREADY = M_AXI_awready;
  assign Conn1_BRESP = M_AXI_bresp[1:0];
  assign Conn1_BVALID = M_AXI_bvalid;
  assign Conn1_RDATA = M_AXI_rdata[511:0];
  assign Conn1_RLAST = M_AXI_rlast;
  assign Conn1_RRESP = M_AXI_rresp[1:0];
  assign Conn1_RVALID = M_AXI_rvalid;
  assign Conn1_WREADY = M_AXI_wready;
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARADDR = S_AXI_araddr[31:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARBURST = S_AXI_arburst[1:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARCACHE = S_AXI_arcache[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARLEN = S_AXI_arlen[7:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARLOCK = S_AXI_arlock[1:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARPROT = S_AXI_arprot[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARQOS = S_AXI_arqos[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARREGION = S_AXI_arregion[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARSIZE = S_AXI_arsize[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARVALID = S_AXI_arvalid;
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWADDR = S_AXI_awaddr[31:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWBURST = S_AXI_awburst[1:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWCACHE = S_AXI_awcache[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWLEN = S_AXI_awlen[7:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWLOCK = S_AXI_awlock[1:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWPROT = S_AXI_awprot[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWQOS = S_AXI_awqos[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWREGION = S_AXI_awregion[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWSIZE = S_AXI_awsize[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWVALID = S_AXI_awvalid;
  assign M_AXI_MM_FROM_HLS_PR_0_1_BREADY = S_AXI_bready;
  assign M_AXI_MM_FROM_HLS_PR_0_1_RREADY = S_AXI_rready;
  assign M_AXI_MM_FROM_HLS_PR_0_1_WDATA = S_AXI_wdata[511:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_WLAST = S_AXI_wlast;
  assign M_AXI_MM_FROM_HLS_PR_0_1_WSTRB = S_AXI_wstrb[63:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_WVALID = S_AXI_wvalid;
  assign M_AXI_araddr[31:0] = Conn1_ARADDR;
  assign M_AXI_arburst[1:0] = Conn1_ARBURST;
  assign M_AXI_arcache[3:0] = Conn1_ARCACHE;
  assign M_AXI_arlen[7:0] = Conn1_ARLEN;
  assign M_AXI_arlock[0] = Conn1_ARLOCK;
  assign M_AXI_arprot[2:0] = Conn1_ARPROT;
  assign M_AXI_arqos[3:0] = Conn1_ARQOS;
  assign M_AXI_arregion[3:0] = Conn1_ARREGION;
  assign M_AXI_arsize[2:0] = Conn1_ARSIZE;
  assign M_AXI_arvalid = Conn1_ARVALID;
  assign M_AXI_awaddr[31:0] = Conn1_AWADDR;
  assign M_AXI_awburst[1:0] = Conn1_AWBURST;
  assign M_AXI_awcache[3:0] = Conn1_AWCACHE;
  assign M_AXI_awlen[7:0] = Conn1_AWLEN;
  assign M_AXI_awlock[0] = Conn1_AWLOCK;
  assign M_AXI_awprot[2:0] = Conn1_AWPROT;
  assign M_AXI_awqos[3:0] = Conn1_AWQOS;
  assign M_AXI_awregion[3:0] = Conn1_AWREGION;
  assign M_AXI_awsize[2:0] = Conn1_AWSIZE;
  assign M_AXI_awvalid = Conn1_AWVALID;
  assign M_AXI_bready = Conn1_BREADY;
  assign M_AXI_rready = Conn1_RREADY;
  assign M_AXI_wdata[511:0] = Conn1_WDATA;
  assign M_AXI_wlast = Conn1_WLAST;
  assign M_AXI_wstrb[63:0] = Conn1_WSTRB;
  assign M_AXI_wvalid = Conn1_WVALID;
  assign S_AXI_arready = M_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  assign S_AXI_awready = M_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  assign S_AXI_bresp[1:0] = M_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  assign S_AXI_bvalid = M_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  assign S_AXI_rdata[511:0] = M_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  assign S_AXI_rlast = M_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  assign S_AXI_rresp[1:0] = M_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  assign S_AXI_rvalid = M_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  assign S_AXI_wready = M_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  assign axi_pcie3_0_axi_aclk = aclk;
  assign axi_pcie3_0_axi_aresetn = aresetn;
  HLS_PR_0_axi_register_slice_0_1 axi_register_slice_0
       (.aclk(axi_pcie3_0_axi_aclk),
        .aresetn(axi_pcie3_0_axi_aresetn),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(M_AXI_MM_FROM_HLS_PR_0_1_ARADDR),
        .s_axi_arburst(M_AXI_MM_FROM_HLS_PR_0_1_ARBURST),
        .s_axi_arcache(M_AXI_MM_FROM_HLS_PR_0_1_ARCACHE),
        .s_axi_arlen(M_AXI_MM_FROM_HLS_PR_0_1_ARLEN),
        .s_axi_arlock(M_AXI_MM_FROM_HLS_PR_0_1_ARLOCK[0]),
        .s_axi_arprot(M_AXI_MM_FROM_HLS_PR_0_1_ARPROT),
        .s_axi_arqos(M_AXI_MM_FROM_HLS_PR_0_1_ARQOS),
        .s_axi_arready(M_AXI_MM_FROM_HLS_PR_0_1_ARREADY),
        .s_axi_arregion(M_AXI_MM_FROM_HLS_PR_0_1_ARREGION),
        .s_axi_arsize(M_AXI_MM_FROM_HLS_PR_0_1_ARSIZE),
        .s_axi_arvalid(M_AXI_MM_FROM_HLS_PR_0_1_ARVALID),
        .s_axi_awaddr(M_AXI_MM_FROM_HLS_PR_0_1_AWADDR),
        .s_axi_awburst(M_AXI_MM_FROM_HLS_PR_0_1_AWBURST),
        .s_axi_awcache(M_AXI_MM_FROM_HLS_PR_0_1_AWCACHE),
        .s_axi_awlen(M_AXI_MM_FROM_HLS_PR_0_1_AWLEN),
        .s_axi_awlock(M_AXI_MM_FROM_HLS_PR_0_1_AWLOCK[0]),
        .s_axi_awprot(M_AXI_MM_FROM_HLS_PR_0_1_AWPROT),
        .s_axi_awqos(M_AXI_MM_FROM_HLS_PR_0_1_AWQOS),
        .s_axi_awready(M_AXI_MM_FROM_HLS_PR_0_1_AWREADY),
        .s_axi_awregion(M_AXI_MM_FROM_HLS_PR_0_1_AWREGION),
        .s_axi_awsize(M_AXI_MM_FROM_HLS_PR_0_1_AWSIZE),
        .s_axi_awvalid(M_AXI_MM_FROM_HLS_PR_0_1_AWVALID),
        .s_axi_bready(M_AXI_MM_FROM_HLS_PR_0_1_BREADY),
        .s_axi_bresp(M_AXI_MM_FROM_HLS_PR_0_1_BRESP),
        .s_axi_bvalid(M_AXI_MM_FROM_HLS_PR_0_1_BVALID),
        .s_axi_rdata(M_AXI_MM_FROM_HLS_PR_0_1_RDATA),
        .s_axi_rlast(M_AXI_MM_FROM_HLS_PR_0_1_RLAST),
        .s_axi_rready(M_AXI_MM_FROM_HLS_PR_0_1_RREADY),
        .s_axi_rresp(M_AXI_MM_FROM_HLS_PR_0_1_RRESP),
        .s_axi_rvalid(M_AXI_MM_FROM_HLS_PR_0_1_RVALID),
        .s_axi_wdata(M_AXI_MM_FROM_HLS_PR_0_1_WDATA),
        .s_axi_wlast(M_AXI_MM_FROM_HLS_PR_0_1_WLAST),
        .s_axi_wready(M_AXI_MM_FROM_HLS_PR_0_1_WREADY),
        .s_axi_wstrb(M_AXI_MM_FROM_HLS_PR_0_1_WSTRB),
        .s_axi_wvalid(M_AXI_MM_FROM_HLS_PR_0_1_WVALID));
  HLS_PR_0_axi_register_slice_1_1 axi_register_slice_1
       (.aclk(axi_pcie3_0_axi_aclk),
        .aresetn(axi_pcie3_0_axi_aresetn),
        .m_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_1_M_AXI_ARCACHE),
        .m_axi_arlen(axi_register_slice_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_1_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_1_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_1_M_AXI_AWCACHE),
        .m_axi_awlen(axi_register_slice_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_1_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_1_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .m_axi_rlast(axi_register_slice_1_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_1_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .s_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .s_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .s_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_arregion(axi_register_slice_0_M_AXI_ARREGION),
        .s_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .s_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .s_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .s_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_awregion(axi_register_slice_0_M_AXI_AWREGION),
        .s_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .s_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .s_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI_WVALID));
  HLS_PR_0_axi_register_slice_2_1 axi_register_slice_2
       (.aclk(axi_pcie3_0_axi_aclk),
        .aresetn(axi_pcie3_0_axi_aresetn),
        .m_axi_araddr(Conn1_ARADDR),
        .m_axi_arburst(Conn1_ARBURST),
        .m_axi_arcache(Conn1_ARCACHE),
        .m_axi_arlen(Conn1_ARLEN),
        .m_axi_arlock(Conn1_ARLOCK),
        .m_axi_arprot(Conn1_ARPROT),
        .m_axi_arqos(Conn1_ARQOS),
        .m_axi_arready(Conn1_ARREADY),
        .m_axi_arregion(Conn1_ARREGION),
        .m_axi_arsize(Conn1_ARSIZE),
        .m_axi_arvalid(Conn1_ARVALID),
        .m_axi_awaddr(Conn1_AWADDR),
        .m_axi_awburst(Conn1_AWBURST),
        .m_axi_awcache(Conn1_AWCACHE),
        .m_axi_awlen(Conn1_AWLEN),
        .m_axi_awlock(Conn1_AWLOCK),
        .m_axi_awprot(Conn1_AWPROT),
        .m_axi_awqos(Conn1_AWQOS),
        .m_axi_awready(Conn1_AWREADY),
        .m_axi_awregion(Conn1_AWREGION),
        .m_axi_awsize(Conn1_AWSIZE),
        .m_axi_awvalid(Conn1_AWVALID),
        .m_axi_bready(Conn1_BREADY),
        .m_axi_bresp(Conn1_BRESP),
        .m_axi_bvalid(Conn1_BVALID),
        .m_axi_rdata(Conn1_RDATA),
        .m_axi_rlast(Conn1_RLAST),
        .m_axi_rready(Conn1_RREADY),
        .m_axi_rresp(Conn1_RRESP),
        .m_axi_rvalid(Conn1_RVALID),
        .m_axi_wdata(Conn1_WDATA),
        .m_axi_wlast(Conn1_WLAST),
        .m_axi_wready(Conn1_WREADY),
        .m_axi_wstrb(Conn1_WSTRB),
        .m_axi_wvalid(Conn1_WVALID),
        .s_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .s_axi_arburst(axi_register_slice_1_M_AXI_ARBURST),
        .s_axi_arcache(axi_register_slice_1_M_AXI_ARCACHE),
        .s_axi_arlen(axi_register_slice_1_M_AXI_ARLEN),
        .s_axi_arlock(axi_register_slice_1_M_AXI_ARLOCK),
        .s_axi_arprot(axi_register_slice_1_M_AXI_ARPROT),
        .s_axi_arqos(axi_register_slice_1_M_AXI_ARQOS),
        .s_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .s_axi_arregion(axi_register_slice_1_M_AXI_ARREGION),
        .s_axi_arsize(axi_register_slice_1_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .s_axi_awburst(axi_register_slice_1_M_AXI_AWBURST),
        .s_axi_awcache(axi_register_slice_1_M_AXI_AWCACHE),
        .s_axi_awlen(axi_register_slice_1_M_AXI_AWLEN),
        .s_axi_awlock(axi_register_slice_1_M_AXI_AWLOCK),
        .s_axi_awprot(axi_register_slice_1_M_AXI_AWPROT),
        .s_axi_awqos(axi_register_slice_1_M_AXI_AWQOS),
        .s_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .s_axi_awregion(axi_register_slice_1_M_AXI_AWREGION),
        .s_axi_awsize(axi_register_slice_1_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .s_axi_rlast(axi_register_slice_1_M_AXI_RLAST),
        .s_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .s_axi_wlast(axi_register_slice_1_M_AXI_WLAST),
        .s_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_1_M_AXI_WVALID));
endmodule

(* CORE_GENERATION_INFO = "HLS_PR_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=HLS_PR_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "HLS_PR_0.hwdef" *) 
module HLS_PR_0
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

  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_ARADDR;
  wire AXI_LITE_3Stage_reg_M_AXI_ARREADY;
  wire AXI_LITE_3Stage_reg_M_AXI_ARVALID;
  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_AWADDR;
  wire AXI_LITE_3Stage_reg_M_AXI_AWREADY;
  wire AXI_LITE_3Stage_reg_M_AXI_AWVALID;
  wire AXI_LITE_3Stage_reg_M_AXI_BREADY;
  wire [1:0]AXI_LITE_3Stage_reg_M_AXI_BRESP;
  wire AXI_LITE_3Stage_reg_M_AXI_BVALID;
  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_RDATA;
  wire AXI_LITE_3Stage_reg_M_AXI_RREADY;
  wire [1:0]AXI_LITE_3Stage_reg_M_AXI_RRESP;
  wire AXI_LITE_3Stage_reg_M_AXI_RVALID;
  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_WDATA;
  wire AXI_LITE_3Stage_reg_M_AXI_WREADY;
  wire [3:0]AXI_LITE_3Stage_reg_M_AXI_WSTRB;
  wire AXI_LITE_3Stage_reg_M_AXI_WVALID;
  wire [31:0]AXI_MM_3_stage_reg_M_AXI_ARADDR;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_ARBURST;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_ARCACHE;
  wire [7:0]AXI_MM_3_stage_reg_M_AXI_ARLEN;
  wire [0:0]AXI_MM_3_stage_reg_M_AXI_ARLOCK;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_ARPROT;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_ARQOS;
  wire AXI_MM_3_stage_reg_M_AXI_ARREADY;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_ARREGION;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_ARSIZE;
  wire AXI_MM_3_stage_reg_M_AXI_ARVALID;
  wire [31:0]AXI_MM_3_stage_reg_M_AXI_AWADDR;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_AWBURST;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_AWCACHE;
  wire [7:0]AXI_MM_3_stage_reg_M_AXI_AWLEN;
  wire [0:0]AXI_MM_3_stage_reg_M_AXI_AWLOCK;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_AWPROT;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_AWQOS;
  wire AXI_MM_3_stage_reg_M_AXI_AWREADY;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_AWREGION;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_AWSIZE;
  wire AXI_MM_3_stage_reg_M_AXI_AWVALID;
  wire AXI_MM_3_stage_reg_M_AXI_BREADY;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_BRESP;
  wire AXI_MM_3_stage_reg_M_AXI_BVALID;
  wire [511:0]AXI_MM_3_stage_reg_M_AXI_RDATA;
  wire AXI_MM_3_stage_reg_M_AXI_RLAST;
  wire AXI_MM_3_stage_reg_M_AXI_RREADY;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_RRESP;
  wire AXI_MM_3_stage_reg_M_AXI_RVALID;
  wire [511:0]AXI_MM_3_stage_reg_M_AXI_WDATA;
  wire AXI_MM_3_stage_reg_M_AXI_WLAST;
  wire AXI_MM_3_stage_reg_M_AXI_WREADY;
  wire [63:0]AXI_MM_3_stage_reg_M_AXI_WSTRB;
  wire AXI_MM_3_stage_reg_M_AXI_WVALID;
  wire AXI_RESET_N_1;
  wire CLK_IN_125M_1;
  wire [31:0]S_AXI_2_ARADDR;
  wire [1:0]S_AXI_2_ARBURST;
  wire [3:0]S_AXI_2_ARCACHE;
  wire [7:0]S_AXI_2_ARLEN;
  wire [1:0]S_AXI_2_ARLOCK;
  wire [2:0]S_AXI_2_ARPROT;
  wire [3:0]S_AXI_2_ARQOS;
  wire S_AXI_2_ARREADY;
  wire [3:0]S_AXI_2_ARREGION;
  wire [2:0]S_AXI_2_ARSIZE;
  wire S_AXI_2_ARVALID;
  wire [31:0]S_AXI_2_AWADDR;
  wire [1:0]S_AXI_2_AWBURST;
  wire [3:0]S_AXI_2_AWCACHE;
  wire [7:0]S_AXI_2_AWLEN;
  wire [1:0]S_AXI_2_AWLOCK;
  wire [2:0]S_AXI_2_AWPROT;
  wire [3:0]S_AXI_2_AWQOS;
  wire S_AXI_2_AWREADY;
  wire [3:0]S_AXI_2_AWREGION;
  wire [2:0]S_AXI_2_AWSIZE;
  wire S_AXI_2_AWVALID;
  wire S_AXI_2_BREADY;
  wire [1:0]S_AXI_2_BRESP;
  wire S_AXI_2_BVALID;
  wire [511:0]S_AXI_2_RDATA;
  wire S_AXI_2_RLAST;
  wire S_AXI_2_RREADY;
  wire [1:0]S_AXI_2_RRESP;
  wire S_AXI_2_RVALID;
  wire [511:0]S_AXI_2_WDATA;
  wire S_AXI_2_WLAST;
  wire S_AXI_2_WREADY;
  wire [63:0]S_AXI_2_WSTRB;
  wire S_AXI_2_WVALID;
  wire [31:0]S_AXI_LITE_FROM_STATIC_1_ARADDR;
  wire [2:0]S_AXI_LITE_FROM_STATIC_1_ARPROT;
  wire S_AXI_LITE_FROM_STATIC_1_ARREADY;
  wire S_AXI_LITE_FROM_STATIC_1_ARVALID;
  wire [31:0]S_AXI_LITE_FROM_STATIC_1_AWADDR;
  wire [2:0]S_AXI_LITE_FROM_STATIC_1_AWPROT;
  wire S_AXI_LITE_FROM_STATIC_1_AWREADY;
  wire S_AXI_LITE_FROM_STATIC_1_AWVALID;
  wire S_AXI_LITE_FROM_STATIC_1_BREADY;
  wire [1:0]S_AXI_LITE_FROM_STATIC_1_BRESP;
  wire S_AXI_LITE_FROM_STATIC_1_BVALID;
  wire [31:0]S_AXI_LITE_FROM_STATIC_1_RDATA;
  wire S_AXI_LITE_FROM_STATIC_1_RREADY;
  wire [1:0]S_AXI_LITE_FROM_STATIC_1_RRESP;
  wire S_AXI_LITE_FROM_STATIC_1_RVALID;
  wire [31:0]S_AXI_LITE_FROM_STATIC_1_WDATA;
  wire S_AXI_LITE_FROM_STATIC_1_WREADY;
  wire [3:0]S_AXI_LITE_FROM_STATIC_1_WSTRB;
  wire S_AXI_LITE_FROM_STATIC_1_WVALID;
  wire aclk_1;
  wire [0:0]aresetn_1;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;

  assign AXI_MM_3_stage_reg_M_AXI_ARREADY = M_AXI_TO_STATIC_arready;
  assign AXI_MM_3_stage_reg_M_AXI_AWREADY = M_AXI_TO_STATIC_awready;
  assign AXI_MM_3_stage_reg_M_AXI_BRESP = M_AXI_TO_STATIC_bresp[1:0];
  assign AXI_MM_3_stage_reg_M_AXI_BVALID = M_AXI_TO_STATIC_bvalid;
  assign AXI_MM_3_stage_reg_M_AXI_RDATA = M_AXI_TO_STATIC_rdata[511:0];
  assign AXI_MM_3_stage_reg_M_AXI_RLAST = M_AXI_TO_STATIC_rlast;
  assign AXI_MM_3_stage_reg_M_AXI_RRESP = M_AXI_TO_STATIC_rresp[1:0];
  assign AXI_MM_3_stage_reg_M_AXI_RVALID = M_AXI_TO_STATIC_rvalid;
  assign AXI_MM_3_stage_reg_M_AXI_WREADY = M_AXI_TO_STATIC_wready;
  assign AXI_RESET_N_1 = AXI_RESET_N;
  assign CLK_IN_125M_1 = CLK_IN_125M;
  assign M_AXI_TO_STATIC_araddr[31:0] = AXI_MM_3_stage_reg_M_AXI_ARADDR;
  assign M_AXI_TO_STATIC_arburst[1:0] = AXI_MM_3_stage_reg_M_AXI_ARBURST;
  assign M_AXI_TO_STATIC_arcache[3:0] = AXI_MM_3_stage_reg_M_AXI_ARCACHE;
  assign M_AXI_TO_STATIC_arlen[7:0] = AXI_MM_3_stage_reg_M_AXI_ARLEN;
  assign M_AXI_TO_STATIC_arlock[0] = AXI_MM_3_stage_reg_M_AXI_ARLOCK;
  assign M_AXI_TO_STATIC_arprot[2:0] = AXI_MM_3_stage_reg_M_AXI_ARPROT;
  assign M_AXI_TO_STATIC_arqos[3:0] = AXI_MM_3_stage_reg_M_AXI_ARQOS;
  assign M_AXI_TO_STATIC_arregion[3:0] = AXI_MM_3_stage_reg_M_AXI_ARREGION;
  assign M_AXI_TO_STATIC_arsize[2:0] = AXI_MM_3_stage_reg_M_AXI_ARSIZE;
  assign M_AXI_TO_STATIC_arvalid = AXI_MM_3_stage_reg_M_AXI_ARVALID;
  assign M_AXI_TO_STATIC_awaddr[31:0] = AXI_MM_3_stage_reg_M_AXI_AWADDR;
  assign M_AXI_TO_STATIC_awburst[1:0] = AXI_MM_3_stage_reg_M_AXI_AWBURST;
  assign M_AXI_TO_STATIC_awcache[3:0] = AXI_MM_3_stage_reg_M_AXI_AWCACHE;
  assign M_AXI_TO_STATIC_awlen[7:0] = AXI_MM_3_stage_reg_M_AXI_AWLEN;
  assign M_AXI_TO_STATIC_awlock[0] = AXI_MM_3_stage_reg_M_AXI_AWLOCK;
  assign M_AXI_TO_STATIC_awprot[2:0] = AXI_MM_3_stage_reg_M_AXI_AWPROT;
  assign M_AXI_TO_STATIC_awqos[3:0] = AXI_MM_3_stage_reg_M_AXI_AWQOS;
  assign M_AXI_TO_STATIC_awregion[3:0] = AXI_MM_3_stage_reg_M_AXI_AWREGION;
  assign M_AXI_TO_STATIC_awsize[2:0] = AXI_MM_3_stage_reg_M_AXI_AWSIZE;
  assign M_AXI_TO_STATIC_awvalid = AXI_MM_3_stage_reg_M_AXI_AWVALID;
  assign M_AXI_TO_STATIC_bready = AXI_MM_3_stage_reg_M_AXI_BREADY;
  assign M_AXI_TO_STATIC_rready = AXI_MM_3_stage_reg_M_AXI_RREADY;
  assign M_AXI_TO_STATIC_wdata[511:0] = AXI_MM_3_stage_reg_M_AXI_WDATA;
  assign M_AXI_TO_STATIC_wlast = AXI_MM_3_stage_reg_M_AXI_WLAST;
  assign M_AXI_TO_STATIC_wstrb[63:0] = AXI_MM_3_stage_reg_M_AXI_WSTRB;
  assign M_AXI_TO_STATIC_wvalid = AXI_MM_3_stage_reg_M_AXI_WVALID;
  assign S_AXI_LITE_FROM_STATIC_1_ARADDR = S_AXI_LITE_FROM_STATIC_araddr[31:0];
  assign S_AXI_LITE_FROM_STATIC_1_ARPROT = S_AXI_LITE_FROM_STATIC_arprot[2:0];
  assign S_AXI_LITE_FROM_STATIC_1_ARVALID = S_AXI_LITE_FROM_STATIC_arvalid;
  assign S_AXI_LITE_FROM_STATIC_1_AWADDR = S_AXI_LITE_FROM_STATIC_awaddr[31:0];
  assign S_AXI_LITE_FROM_STATIC_1_AWPROT = S_AXI_LITE_FROM_STATIC_awprot[2:0];
  assign S_AXI_LITE_FROM_STATIC_1_AWVALID = S_AXI_LITE_FROM_STATIC_awvalid;
  assign S_AXI_LITE_FROM_STATIC_1_BREADY = S_AXI_LITE_FROM_STATIC_bready;
  assign S_AXI_LITE_FROM_STATIC_1_RREADY = S_AXI_LITE_FROM_STATIC_rready;
  assign S_AXI_LITE_FROM_STATIC_1_WDATA = S_AXI_LITE_FROM_STATIC_wdata[31:0];
  assign S_AXI_LITE_FROM_STATIC_1_WSTRB = S_AXI_LITE_FROM_STATIC_wstrb[3:0];
  assign S_AXI_LITE_FROM_STATIC_1_WVALID = S_AXI_LITE_FROM_STATIC_wvalid;
  assign S_AXI_LITE_FROM_STATIC_arready = S_AXI_LITE_FROM_STATIC_1_ARREADY;
  assign S_AXI_LITE_FROM_STATIC_awready = S_AXI_LITE_FROM_STATIC_1_AWREADY;
  assign S_AXI_LITE_FROM_STATIC_bresp[1:0] = S_AXI_LITE_FROM_STATIC_1_BRESP;
  assign S_AXI_LITE_FROM_STATIC_bvalid = S_AXI_LITE_FROM_STATIC_1_BVALID;
  assign S_AXI_LITE_FROM_STATIC_rdata[31:0] = S_AXI_LITE_FROM_STATIC_1_RDATA;
  assign S_AXI_LITE_FROM_STATIC_rresp[1:0] = S_AXI_LITE_FROM_STATIC_1_RRESP;
  assign S_AXI_LITE_FROM_STATIC_rvalid = S_AXI_LITE_FROM_STATIC_1_RVALID;
  assign S_AXI_LITE_FROM_STATIC_wready = S_AXI_LITE_FROM_STATIC_1_WREADY;
  assign aclk_1 = CLK_IN_250;
  AXI_LITE_3Stage_reg_imp_153MQIK AXI_LITE_3Stage_reg
       (.M_AXI_araddr(AXI_LITE_3Stage_reg_M_AXI_ARADDR),
        .M_AXI_arready(AXI_LITE_3Stage_reg_M_AXI_ARREADY),
        .M_AXI_arvalid(AXI_LITE_3Stage_reg_M_AXI_ARVALID),
        .M_AXI_awaddr(AXI_LITE_3Stage_reg_M_AXI_AWADDR),
        .M_AXI_awready(AXI_LITE_3Stage_reg_M_AXI_AWREADY),
        .M_AXI_awvalid(AXI_LITE_3Stage_reg_M_AXI_AWVALID),
        .M_AXI_bready(AXI_LITE_3Stage_reg_M_AXI_BREADY),
        .M_AXI_bresp(AXI_LITE_3Stage_reg_M_AXI_BRESP),
        .M_AXI_bvalid(AXI_LITE_3Stage_reg_M_AXI_BVALID),
        .M_AXI_rdata(AXI_LITE_3Stage_reg_M_AXI_RDATA),
        .M_AXI_rready(AXI_LITE_3Stage_reg_M_AXI_RREADY),
        .M_AXI_rresp(AXI_LITE_3Stage_reg_M_AXI_RRESP),
        .M_AXI_rvalid(AXI_LITE_3Stage_reg_M_AXI_RVALID),
        .M_AXI_wdata(AXI_LITE_3Stage_reg_M_AXI_WDATA),
        .M_AXI_wready(AXI_LITE_3Stage_reg_M_AXI_WREADY),
        .M_AXI_wstrb(AXI_LITE_3Stage_reg_M_AXI_WSTRB),
        .M_AXI_wvalid(AXI_LITE_3Stage_reg_M_AXI_WVALID),
        .S_AXI_araddr(S_AXI_LITE_FROM_STATIC_1_ARADDR),
        .S_AXI_arprot(S_AXI_LITE_FROM_STATIC_1_ARPROT),
        .S_AXI_arready(S_AXI_LITE_FROM_STATIC_1_ARREADY),
        .S_AXI_arvalid(S_AXI_LITE_FROM_STATIC_1_ARVALID),
        .S_AXI_awaddr(S_AXI_LITE_FROM_STATIC_1_AWADDR),
        .S_AXI_awprot(S_AXI_LITE_FROM_STATIC_1_AWPROT),
        .S_AXI_awready(S_AXI_LITE_FROM_STATIC_1_AWREADY),
        .S_AXI_awvalid(S_AXI_LITE_FROM_STATIC_1_AWVALID),
        .S_AXI_bready(S_AXI_LITE_FROM_STATIC_1_BREADY),
        .S_AXI_bresp(S_AXI_LITE_FROM_STATIC_1_BRESP),
        .S_AXI_bvalid(S_AXI_LITE_FROM_STATIC_1_BVALID),
        .S_AXI_rdata(S_AXI_LITE_FROM_STATIC_1_RDATA),
        .S_AXI_rready(S_AXI_LITE_FROM_STATIC_1_RREADY),
        .S_AXI_rresp(S_AXI_LITE_FROM_STATIC_1_RRESP),
        .S_AXI_rvalid(S_AXI_LITE_FROM_STATIC_1_RVALID),
        .S_AXI_wdata(S_AXI_LITE_FROM_STATIC_1_WDATA),
        .S_AXI_wready(S_AXI_LITE_FROM_STATIC_1_WREADY),
        .S_AXI_wstrb(S_AXI_LITE_FROM_STATIC_1_WSTRB),
        .S_AXI_wvalid(S_AXI_LITE_FROM_STATIC_1_WVALID),
        .aclk(CLK_IN_125M_1),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .aresetn1(aresetn_1),
        .m_aclk(aclk_1));
  AXI_MM_3_stage_reg_imp_K8N1Z8 AXI_MM_3_stage_reg
       (.M_AXI_araddr(AXI_MM_3_stage_reg_M_AXI_ARADDR),
        .M_AXI_arburst(AXI_MM_3_stage_reg_M_AXI_ARBURST),
        .M_AXI_arcache(AXI_MM_3_stage_reg_M_AXI_ARCACHE),
        .M_AXI_arlen(AXI_MM_3_stage_reg_M_AXI_ARLEN),
        .M_AXI_arlock(AXI_MM_3_stage_reg_M_AXI_ARLOCK),
        .M_AXI_arprot(AXI_MM_3_stage_reg_M_AXI_ARPROT),
        .M_AXI_arqos(AXI_MM_3_stage_reg_M_AXI_ARQOS),
        .M_AXI_arready(AXI_MM_3_stage_reg_M_AXI_ARREADY),
        .M_AXI_arregion(AXI_MM_3_stage_reg_M_AXI_ARREGION),
        .M_AXI_arsize(AXI_MM_3_stage_reg_M_AXI_ARSIZE),
        .M_AXI_arvalid(AXI_MM_3_stage_reg_M_AXI_ARVALID),
        .M_AXI_awaddr(AXI_MM_3_stage_reg_M_AXI_AWADDR),
        .M_AXI_awburst(AXI_MM_3_stage_reg_M_AXI_AWBURST),
        .M_AXI_awcache(AXI_MM_3_stage_reg_M_AXI_AWCACHE),
        .M_AXI_awlen(AXI_MM_3_stage_reg_M_AXI_AWLEN),
        .M_AXI_awlock(AXI_MM_3_stage_reg_M_AXI_AWLOCK),
        .M_AXI_awprot(AXI_MM_3_stage_reg_M_AXI_AWPROT),
        .M_AXI_awqos(AXI_MM_3_stage_reg_M_AXI_AWQOS),
        .M_AXI_awready(AXI_MM_3_stage_reg_M_AXI_AWREADY),
        .M_AXI_awregion(AXI_MM_3_stage_reg_M_AXI_AWREGION),
        .M_AXI_awsize(AXI_MM_3_stage_reg_M_AXI_AWSIZE),
        .M_AXI_awvalid(AXI_MM_3_stage_reg_M_AXI_AWVALID),
        .M_AXI_bready(AXI_MM_3_stage_reg_M_AXI_BREADY),
        .M_AXI_bresp(AXI_MM_3_stage_reg_M_AXI_BRESP),
        .M_AXI_bvalid(AXI_MM_3_stage_reg_M_AXI_BVALID),
        .M_AXI_rdata(AXI_MM_3_stage_reg_M_AXI_RDATA),
        .M_AXI_rlast(AXI_MM_3_stage_reg_M_AXI_RLAST),
        .M_AXI_rready(AXI_MM_3_stage_reg_M_AXI_RREADY),
        .M_AXI_rresp(AXI_MM_3_stage_reg_M_AXI_RRESP),
        .M_AXI_rvalid(AXI_MM_3_stage_reg_M_AXI_RVALID),
        .M_AXI_wdata(AXI_MM_3_stage_reg_M_AXI_WDATA),
        .M_AXI_wlast(AXI_MM_3_stage_reg_M_AXI_WLAST),
        .M_AXI_wready(AXI_MM_3_stage_reg_M_AXI_WREADY),
        .M_AXI_wstrb(AXI_MM_3_stage_reg_M_AXI_WSTRB),
        .M_AXI_wvalid(AXI_MM_3_stage_reg_M_AXI_WVALID),
        .S_AXI_araddr(S_AXI_2_ARADDR),
        .S_AXI_arburst(S_AXI_2_ARBURST),
        .S_AXI_arcache(S_AXI_2_ARCACHE),
        .S_AXI_arlen(S_AXI_2_ARLEN),
        .S_AXI_arlock(S_AXI_2_ARLOCK),
        .S_AXI_arprot(S_AXI_2_ARPROT),
        .S_AXI_arqos(S_AXI_2_ARQOS),
        .S_AXI_arready(S_AXI_2_ARREADY),
        .S_AXI_arregion(S_AXI_2_ARREGION),
        .S_AXI_arsize(S_AXI_2_ARSIZE),
        .S_AXI_arvalid(S_AXI_2_ARVALID),
        .S_AXI_awaddr(S_AXI_2_AWADDR),
        .S_AXI_awburst(S_AXI_2_AWBURST),
        .S_AXI_awcache(S_AXI_2_AWCACHE),
        .S_AXI_awlen(S_AXI_2_AWLEN),
        .S_AXI_awlock(S_AXI_2_AWLOCK),
        .S_AXI_awprot(S_AXI_2_AWPROT),
        .S_AXI_awqos(S_AXI_2_AWQOS),
        .S_AXI_awready(S_AXI_2_AWREADY),
        .S_AXI_awregion(S_AXI_2_AWREGION),
        .S_AXI_awsize(S_AXI_2_AWSIZE),
        .S_AXI_awvalid(S_AXI_2_AWVALID),
        .S_AXI_bready(S_AXI_2_BREADY),
        .S_AXI_bresp(S_AXI_2_BRESP),
        .S_AXI_bvalid(S_AXI_2_BVALID),
        .S_AXI_rdata(S_AXI_2_RDATA),
        .S_AXI_rlast(S_AXI_2_RLAST),
        .S_AXI_rready(S_AXI_2_RREADY),
        .S_AXI_rresp(S_AXI_2_RRESP),
        .S_AXI_rvalid(S_AXI_2_RVALID),
        .S_AXI_wdata(S_AXI_2_WDATA),
        .S_AXI_wlast(S_AXI_2_WLAST),
        .S_AXI_wready(S_AXI_2_WREADY),
        .S_AXI_wstrb(S_AXI_2_WSTRB),
        .S_AXI_wvalid(S_AXI_2_WVALID),
        .aclk(aclk_1),
        .aresetn(aresetn_1));
  HLS_PR_0_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(AXI_RESET_N_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(aresetn_1),
        .slowest_sync_clk(aclk_1));
  HLS_PR_0_proc_sys_reset_0_1 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(AXI_RESET_N_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(CLK_IN_125M_1));
  HLS_PR_0_sdx_cppKernel_top_0_0 sdx_cppKernel_top_0
       (.ap_clk(aclk_1),
        .ap_rst_n(aresetn_1),
        .m_axi_gmem_ARADDR(S_AXI_2_ARADDR),
        .m_axi_gmem_ARBURST(S_AXI_2_ARBURST),
        .m_axi_gmem_ARCACHE(S_AXI_2_ARCACHE),
        .m_axi_gmem_ARLEN(S_AXI_2_ARLEN),
        .m_axi_gmem_ARLOCK(S_AXI_2_ARLOCK),
        .m_axi_gmem_ARPROT(S_AXI_2_ARPROT),
        .m_axi_gmem_ARQOS(S_AXI_2_ARQOS),
        .m_axi_gmem_ARREADY(S_AXI_2_ARREADY),
        .m_axi_gmem_ARREGION(S_AXI_2_ARREGION),
        .m_axi_gmem_ARSIZE(S_AXI_2_ARSIZE),
        .m_axi_gmem_ARVALID(S_AXI_2_ARVALID),
        .m_axi_gmem_AWADDR(S_AXI_2_AWADDR),
        .m_axi_gmem_AWBURST(S_AXI_2_AWBURST),
        .m_axi_gmem_AWCACHE(S_AXI_2_AWCACHE),
        .m_axi_gmem_AWLEN(S_AXI_2_AWLEN),
        .m_axi_gmem_AWLOCK(S_AXI_2_AWLOCK),
        .m_axi_gmem_AWPROT(S_AXI_2_AWPROT),
        .m_axi_gmem_AWQOS(S_AXI_2_AWQOS),
        .m_axi_gmem_AWREADY(S_AXI_2_AWREADY),
        .m_axi_gmem_AWREGION(S_AXI_2_AWREGION),
        .m_axi_gmem_AWSIZE(S_AXI_2_AWSIZE),
        .m_axi_gmem_AWVALID(S_AXI_2_AWVALID),
        .m_axi_gmem_BREADY(S_AXI_2_BREADY),
        .m_axi_gmem_BRESP(S_AXI_2_BRESP),
        .m_axi_gmem_BVALID(S_AXI_2_BVALID),
        .m_axi_gmem_RDATA(S_AXI_2_RDATA),
        .m_axi_gmem_RLAST(S_AXI_2_RLAST),
        .m_axi_gmem_RREADY(S_AXI_2_RREADY),
        .m_axi_gmem_RRESP(S_AXI_2_RRESP),
        .m_axi_gmem_RVALID(S_AXI_2_RVALID),
        .m_axi_gmem_WDATA(S_AXI_2_WDATA),
        .m_axi_gmem_WLAST(S_AXI_2_WLAST),
        .m_axi_gmem_WREADY(S_AXI_2_WREADY),
        .m_axi_gmem_WSTRB(S_AXI_2_WSTRB),
        .m_axi_gmem_WVALID(S_AXI_2_WVALID),
        .s_axi_control_ARADDR(AXI_LITE_3Stage_reg_M_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(AXI_LITE_3Stage_reg_M_AXI_ARREADY),
        .s_axi_control_ARVALID(AXI_LITE_3Stage_reg_M_AXI_ARVALID),
        .s_axi_control_AWADDR(AXI_LITE_3Stage_reg_M_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(AXI_LITE_3Stage_reg_M_AXI_AWREADY),
        .s_axi_control_AWVALID(AXI_LITE_3Stage_reg_M_AXI_AWVALID),
        .s_axi_control_BREADY(AXI_LITE_3Stage_reg_M_AXI_BREADY),
        .s_axi_control_BRESP(AXI_LITE_3Stage_reg_M_AXI_BRESP),
        .s_axi_control_BVALID(AXI_LITE_3Stage_reg_M_AXI_BVALID),
        .s_axi_control_RDATA(AXI_LITE_3Stage_reg_M_AXI_RDATA),
        .s_axi_control_RREADY(AXI_LITE_3Stage_reg_M_AXI_RREADY),
        .s_axi_control_RRESP(AXI_LITE_3Stage_reg_M_AXI_RRESP),
        .s_axi_control_RVALID(AXI_LITE_3Stage_reg_M_AXI_RVALID),
        .s_axi_control_WDATA(AXI_LITE_3Stage_reg_M_AXI_WDATA),
        .s_axi_control_WREADY(AXI_LITE_3Stage_reg_M_AXI_WREADY),
        .s_axi_control_WSTRB(AXI_LITE_3Stage_reg_M_AXI_WSTRB),
        .s_axi_control_WVALID(AXI_LITE_3Stage_reg_M_AXI_WVALID));
endmodule
