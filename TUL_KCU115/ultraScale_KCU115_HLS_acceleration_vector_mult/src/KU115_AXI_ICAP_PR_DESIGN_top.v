// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module KU115_AXI_ICAP_PR_DESIGN_top (
  input c0_sys_clk_n,
  input c0_sys_clk_p,
  output c0_ddr4_act_n,
  output [16:0]c0_ddr4_adr,
  output [1:0]c0_ddr4_ba,
  output [0:0]c0_ddr4_bg,
  output [0:0]c0_ddr4_ck_c,
  output [0:0]c0_ddr4_ck_t,
  output [0:0]c0_ddr4_cke,
  output [0:0]c0_ddr4_cs_n,
  inout [8:0]c0_ddr4_dm_n,
  inout [71:0]c0_ddr4_dq,
  inout [8:0]c0_ddr4_dqs_c,
  inout [8:0]c0_ddr4_dqs_t,
  output [0:0]c0_ddr4_odt,
  output c0_ddr4_reset_n,
  input [7:0]pcie_mgt_rxn,
  input [7:0]pcie_mgt_rxp,
  output [7:0]pcie_mgt_txn,
  output [7:0]pcie_mgt_txp,
  input         sys_clk_p,
  input         sys_clk_n,
  input         sys_rst_n );

  wire sys_rst_n_c;
  wire sys_clk;
  wire sys_clk_gt;
  wire clk_out_125M;
  wire clk_out_250M;
  wire clk_out_62_5M;
  wire axi_reset_n_out;
  wire [7:0] LED_out;

  wire [31:0]M_AXI_LITE_TO_HLS_PR_0_araddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_0_arprot;
  wire M_AXI_LITE_TO_HLS_PR_0_arready;
  wire M_AXI_LITE_TO_HLS_PR_0_arvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_0_awaddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_0_awprot;
  wire M_AXI_LITE_TO_HLS_PR_0_awready;
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


  IBUF   sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));
  IBUFDS_GTE3 refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));

 //BUFGCE_DIV #(.BUFGCE_DIVIDE(4)) u_icap_clk_62_5M (.I(clk_out_250M), .O(clk_out_62_5M), .CLR(1'b0), .CE(1'b1));
 //BUFGCE_DIV #(.BUFGCE_DIVIDE(2)) u_icap_clk_125M (.I(clk_out_250M), .O(clk_out_125M), .CLR(1'b0), .CE(1'b1));

vio_x8 u_vio_x8 (
  .clk(clk_out_62_5M), // input wire clk
  .probe_in0(LED_out)  // input wire [7 : 0] probe_in0
);



  PCIe_Bridge_ICAP_complex PCIe_Bridge_ICAP_complex_i (
        .C0_SYS_CLK_clk_n(c0_sys_clk_n),
        .C0_SYS_CLK_clk_p(c0_sys_clk_p),
        .M_AXI_LITE_TO_HLS_PR_0_araddr(M_AXI_LITE_TO_HLS_PR_0_araddr),
        .M_AXI_LITE_TO_HLS_PR_0_arprot(M_AXI_LITE_TO_HLS_PR_0_arprot),
        .M_AXI_LITE_TO_HLS_PR_0_arready(M_AXI_LITE_TO_HLS_PR_0_arready),
        .M_AXI_LITE_TO_HLS_PR_0_arvalid(M_AXI_LITE_TO_HLS_PR_0_arvalid),
        .M_AXI_LITE_TO_HLS_PR_0_awaddr(M_AXI_LITE_TO_HLS_PR_0_awaddr),
        .M_AXI_LITE_TO_HLS_PR_0_awprot(M_AXI_LITE_TO_HLS_PR_0_awprot),
        .M_AXI_LITE_TO_HLS_PR_0_awready(M_AXI_LITE_TO_HLS_PR_0_awready),
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
        .DDR4_sys_rst(1'b0),
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
        .sys_rst_n(sys_rst_n_c));


  HLS_PR_0 HLS_PR_0_i
       (.AXI_RESET_N(axi_reset_n_out),
        .CLK_IN_250(clk_out_250M),
        .CLK_IN_125M(clk_out_125M),
        .CLK_IN_62_5M(clk_out_62_5M),
        .M_AXI_TO_STATIC_araddr(M_AXI_MM_FROM_HLS_PR_0_araddr),
        .M_AXI_TO_STATIC_arburst(M_AXI_MM_FROM_HLS_PR_0_arburst),
        .M_AXI_TO_STATIC_arcache(M_AXI_MM_FROM_HLS_PR_0_arcache),
        .M_AXI_TO_STATIC_arlen(M_AXI_MM_FROM_HLS_PR_0_arlen),
        .M_AXI_TO_STATIC_arlock(M_AXI_MM_FROM_HLS_PR_0_arlock),
        .M_AXI_TO_STATIC_arprot(M_AXI_MM_FROM_HLS_PR_0_arprot),
        .M_AXI_TO_STATIC_arqos(M_AXI_MM_FROM_HLS_PR_0_arqos),
        .M_AXI_TO_STATIC_arready(M_AXI_MM_FROM_HLS_PR_0_arready),
        .M_AXI_TO_STATIC_arregion(M_AXI_MM_FROM_HLS_PR_0_arregion),
        .M_AXI_TO_STATIC_arsize(M_AXI_MM_FROM_HLS_PR_0_arsize),
        .M_AXI_TO_STATIC_arvalid(M_AXI_MM_FROM_HLS_PR_0_arvalid),
        .M_AXI_TO_STATIC_awaddr(M_AXI_MM_FROM_HLS_PR_0_awaddr),
        .M_AXI_TO_STATIC_awburst(M_AXI_MM_FROM_HLS_PR_0_awburst),
        .M_AXI_TO_STATIC_awcache(M_AXI_MM_FROM_HLS_PR_0_awcache),
        .M_AXI_TO_STATIC_awlen(M_AXI_MM_FROM_HLS_PR_0_awlen),
        .M_AXI_TO_STATIC_awlock(M_AXI_MM_FROM_HLS_PR_0_awlock),
        .M_AXI_TO_STATIC_awprot(M_AXI_MM_FROM_HLS_PR_0_awprot),
        .M_AXI_TO_STATIC_awqos(M_AXI_MM_FROM_HLS_PR_0_awqos),
        .M_AXI_TO_STATIC_awready(M_AXI_MM_FROM_HLS_PR_0_awready),
        .M_AXI_TO_STATIC_awregion(M_AXI_MM_FROM_HLS_PR_0_awregion),
        .M_AXI_TO_STATIC_awsize(M_AXI_MM_FROM_HLS_PR_0_awsize),
        .M_AXI_TO_STATIC_awvalid(M_AXI_MM_FROM_HLS_PR_0_awvalid),
        .M_AXI_TO_STATIC_bready(M_AXI_MM_FROM_HLS_PR_0_bready),
        .M_AXI_TO_STATIC_bresp(M_AXI_MM_FROM_HLS_PR_0_bresp),
        .M_AXI_TO_STATIC_bvalid(M_AXI_MM_FROM_HLS_PR_0_bvalid),
        .M_AXI_TO_STATIC_rdata(M_AXI_MM_FROM_HLS_PR_0_rdata),
        .M_AXI_TO_STATIC_rlast(M_AXI_MM_FROM_HLS_PR_0_rlast),
        .M_AXI_TO_STATIC_rready(M_AXI_MM_FROM_HLS_PR_0_rready),
        .M_AXI_TO_STATIC_rresp(M_AXI_MM_FROM_HLS_PR_0_rresp),
        .M_AXI_TO_STATIC_rvalid(M_AXI_MM_FROM_HLS_PR_0_rvalid),
        .M_AXI_TO_STATIC_wdata(M_AXI_MM_FROM_HLS_PR_0_wdata),
        .M_AXI_TO_STATIC_wlast(M_AXI_MM_FROM_HLS_PR_0_wlast),
        .M_AXI_TO_STATIC_wready(M_AXI_MM_FROM_HLS_PR_0_wready),
        .M_AXI_TO_STATIC_wstrb(M_AXI_MM_FROM_HLS_PR_0_wstrb),
        .M_AXI_TO_STATIC_wvalid(M_AXI_MM_FROM_HLS_PR_0_wvalid),
        .S_AXI_LITE_FROM_STATIC_araddr(M_AXI_LITE_TO_HLS_PR_0_araddr),
        .S_AXI_LITE_FROM_STATIC_arprot(M_AXI_LITE_TO_HLS_PR_0_arprot),
        .S_AXI_LITE_FROM_STATIC_arready(M_AXI_LITE_TO_HLS_PR_0_arready),
        .S_AXI_LITE_FROM_STATIC_arvalid(M_AXI_LITE_TO_HLS_PR_0_arvalid),
        .S_AXI_LITE_FROM_STATIC_awaddr(M_AXI_LITE_TO_HLS_PR_0_awaddr),
        .S_AXI_LITE_FROM_STATIC_awprot(M_AXI_LITE_TO_HLS_PR_0_awprot),
        .S_AXI_LITE_FROM_STATIC_awready(M_AXI_LITE_TO_HLS_PR_0_awready),
        .S_AXI_LITE_FROM_STATIC_awvalid(M_AXI_LITE_TO_HLS_PR_0_awvalid),
        .S_AXI_LITE_FROM_STATIC_bready(M_AXI_LITE_TO_HLS_PR_0_bready),
        .S_AXI_LITE_FROM_STATIC_bresp(M_AXI_LITE_TO_HLS_PR_0_bresp),
        .S_AXI_LITE_FROM_STATIC_bvalid(M_AXI_LITE_TO_HLS_PR_0_bvalid),
        .S_AXI_LITE_FROM_STATIC_rdata(M_AXI_LITE_TO_HLS_PR_0_rdata),
        .S_AXI_LITE_FROM_STATIC_rready(M_AXI_LITE_TO_HLS_PR_0_rready),
        .S_AXI_LITE_FROM_STATIC_rresp(M_AXI_LITE_TO_HLS_PR_0_rresp),
        .S_AXI_LITE_FROM_STATIC_rvalid(M_AXI_LITE_TO_HLS_PR_0_rvalid),
        .S_AXI_LITE_FROM_STATIC_wdata(M_AXI_LITE_TO_HLS_PR_0_wdata),
        .S_AXI_LITE_FROM_STATIC_wready(M_AXI_LITE_TO_HLS_PR_0_wready),
        .S_AXI_LITE_FROM_STATIC_wstrb(M_AXI_LITE_TO_HLS_PR_0_wstrb),
        .S_AXI_LITE_FROM_STATIC_wvalid(M_AXI_LITE_TO_HLS_PR_0_wvalid));


PR_module U_PR_module (
    .clk(clk_out_62_5M),
    .reset_n(sys_rst_n_c),
    .LED_out(LED_out));

endmodule
