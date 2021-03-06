-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:pr_decoupler:1.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY PCIe_Bridge_ICAP_complex_pr_decoupler_0_0 IS
  PORT (
    s_AXI_MM_FROM_HLS_PR_0_ARVALID : OUT STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_ARVALID : IN STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_ARREADY : IN STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_ARREADY : OUT STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_AWVALID : OUT STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_AWVALID : IN STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_AWREADY : IN STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_AWREADY : OUT STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_BVALID : IN STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_BVALID : OUT STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_BREADY : OUT STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_BREADY : IN STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_RVALID : IN STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_RVALID : OUT STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_RREADY : OUT STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_RREADY : IN STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_WVALID : OUT STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_WVALID : IN STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_WREADY : IN STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_WREADY : OUT STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_WDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_WDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_WSTRB : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_WSTRB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_WLAST : OUT STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_WLAST : IN STD_LOGIC;
    s_AXI_MM_FROM_HLS_PR_0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_RDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_RDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_AXI_MM_FROM_HLS_PR_0_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_AXI_MM_FROM_HLS_PR_0_RLAST : IN STD_LOGIC;
    rp_AXI_MM_FROM_HLS_PR_0_RLAST : OUT STD_LOGIC;
    AXI_MM_FROM_HLS_PR_0_ref_clk : IN STD_LOGIC;
    AXI_MM_FROM_HLS_PR_0_decouple_status : OUT STD_LOGIC;
    decouple : IN STD_LOGIC;
    decouple_ref_clk : IN STD_LOGIC
  );
END PCIe_Bridge_ICAP_complex_pr_decoupler_0_0;

ARCHITECTURE PCIe_Bridge_ICAP_complex_pr_decoupler_0_0_arch OF PCIe_Bridge_ICAP_complex_pr_decoupler_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF PCIe_Bridge_ICAP_complex_pr_decoupler_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT prd_PCIe_Bridge_ICAP_complex_pr_decoupler_0_0 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING
    );
    PORT (
      s_AXI_MM_FROM_HLS_PR_0_ARVALID : OUT STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_ARVALID : IN STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_ARREADY : IN STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_ARREADY : OUT STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_AWVALID : OUT STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_AWVALID : IN STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_AWREADY : IN STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_AWREADY : OUT STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_BVALID : IN STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_BVALID : OUT STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_BREADY : OUT STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_BREADY : IN STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_RVALID : IN STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_RVALID : OUT STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_RREADY : OUT STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_RREADY : IN STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_WVALID : OUT STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_WVALID : IN STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_WREADY : IN STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_WREADY : OUT STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_WDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_WDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_WSTRB : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_WSTRB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_WLAST : OUT STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_WLAST : IN STD_LOGIC;
      s_AXI_MM_FROM_HLS_PR_0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_RDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_RDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_AXI_MM_FROM_HLS_PR_0_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_AXI_MM_FROM_HLS_PR_0_RLAST : IN STD_LOGIC;
      rp_AXI_MM_FROM_HLS_PR_0_RLAST : OUT STD_LOGIC;
      AXI_MM_FROM_HLS_PR_0_ref_clk : IN STD_LOGIC;
      AXI_MM_FROM_HLS_PR_0_decouple_status : OUT STD_LOGIC;
      decouple : IN STD_LOGIC;
      decouple_ref_clk : IN STD_LOGIC
    );
  END COMPONENT prd_PCIe_Bridge_ICAP_complex_pr_decoupler_0_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_AXI_MM_FROM_HLS_PR_0_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_AXI_MM_FROM_HLS_PR_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_AXI_MM_FROM_HLS_PR_0_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_AXI_MM_FROM_HLS_PR_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF AXI_MM_FROM_HLS_PR_0_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXI_MM_FROM_HLS_PR_0_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF decouple_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 decouple_ref_clk_CLOCK CLK";
BEGIN
  U0 : prd_PCIe_Bridge_ICAP_complex_pr_decoupler_0_0
    GENERIC MAP (
      C_XDEVICEFAMILY => "kintexu"
    )
    PORT MAP (
      s_AXI_MM_FROM_HLS_PR_0_ARVALID => s_AXI_MM_FROM_HLS_PR_0_ARVALID,
      rp_AXI_MM_FROM_HLS_PR_0_ARVALID => rp_AXI_MM_FROM_HLS_PR_0_ARVALID,
      s_AXI_MM_FROM_HLS_PR_0_ARREADY => s_AXI_MM_FROM_HLS_PR_0_ARREADY,
      rp_AXI_MM_FROM_HLS_PR_0_ARREADY => rp_AXI_MM_FROM_HLS_PR_0_ARREADY,
      s_AXI_MM_FROM_HLS_PR_0_AWVALID => s_AXI_MM_FROM_HLS_PR_0_AWVALID,
      rp_AXI_MM_FROM_HLS_PR_0_AWVALID => rp_AXI_MM_FROM_HLS_PR_0_AWVALID,
      s_AXI_MM_FROM_HLS_PR_0_AWREADY => s_AXI_MM_FROM_HLS_PR_0_AWREADY,
      rp_AXI_MM_FROM_HLS_PR_0_AWREADY => rp_AXI_MM_FROM_HLS_PR_0_AWREADY,
      s_AXI_MM_FROM_HLS_PR_0_BVALID => s_AXI_MM_FROM_HLS_PR_0_BVALID,
      rp_AXI_MM_FROM_HLS_PR_0_BVALID => rp_AXI_MM_FROM_HLS_PR_0_BVALID,
      s_AXI_MM_FROM_HLS_PR_0_BREADY => s_AXI_MM_FROM_HLS_PR_0_BREADY,
      rp_AXI_MM_FROM_HLS_PR_0_BREADY => rp_AXI_MM_FROM_HLS_PR_0_BREADY,
      s_AXI_MM_FROM_HLS_PR_0_RVALID => s_AXI_MM_FROM_HLS_PR_0_RVALID,
      rp_AXI_MM_FROM_HLS_PR_0_RVALID => rp_AXI_MM_FROM_HLS_PR_0_RVALID,
      s_AXI_MM_FROM_HLS_PR_0_RREADY => s_AXI_MM_FROM_HLS_PR_0_RREADY,
      rp_AXI_MM_FROM_HLS_PR_0_RREADY => rp_AXI_MM_FROM_HLS_PR_0_RREADY,
      s_AXI_MM_FROM_HLS_PR_0_WVALID => s_AXI_MM_FROM_HLS_PR_0_WVALID,
      rp_AXI_MM_FROM_HLS_PR_0_WVALID => rp_AXI_MM_FROM_HLS_PR_0_WVALID,
      s_AXI_MM_FROM_HLS_PR_0_WREADY => s_AXI_MM_FROM_HLS_PR_0_WREADY,
      rp_AXI_MM_FROM_HLS_PR_0_WREADY => rp_AXI_MM_FROM_HLS_PR_0_WREADY,
      s_AXI_MM_FROM_HLS_PR_0_AWADDR => s_AXI_MM_FROM_HLS_PR_0_AWADDR,
      rp_AXI_MM_FROM_HLS_PR_0_AWADDR => rp_AXI_MM_FROM_HLS_PR_0_AWADDR,
      s_AXI_MM_FROM_HLS_PR_0_AWLEN => s_AXI_MM_FROM_HLS_PR_0_AWLEN,
      rp_AXI_MM_FROM_HLS_PR_0_AWLEN => rp_AXI_MM_FROM_HLS_PR_0_AWLEN,
      s_AXI_MM_FROM_HLS_PR_0_AWSIZE => s_AXI_MM_FROM_HLS_PR_0_AWSIZE,
      rp_AXI_MM_FROM_HLS_PR_0_AWSIZE => rp_AXI_MM_FROM_HLS_PR_0_AWSIZE,
      s_AXI_MM_FROM_HLS_PR_0_AWBURST => s_AXI_MM_FROM_HLS_PR_0_AWBURST,
      rp_AXI_MM_FROM_HLS_PR_0_AWBURST => rp_AXI_MM_FROM_HLS_PR_0_AWBURST,
      s_AXI_MM_FROM_HLS_PR_0_AWLOCK => s_AXI_MM_FROM_HLS_PR_0_AWLOCK,
      rp_AXI_MM_FROM_HLS_PR_0_AWLOCK => rp_AXI_MM_FROM_HLS_PR_0_AWLOCK,
      s_AXI_MM_FROM_HLS_PR_0_AWCACHE => s_AXI_MM_FROM_HLS_PR_0_AWCACHE,
      rp_AXI_MM_FROM_HLS_PR_0_AWCACHE => rp_AXI_MM_FROM_HLS_PR_0_AWCACHE,
      s_AXI_MM_FROM_HLS_PR_0_AWPROT => s_AXI_MM_FROM_HLS_PR_0_AWPROT,
      rp_AXI_MM_FROM_HLS_PR_0_AWPROT => rp_AXI_MM_FROM_HLS_PR_0_AWPROT,
      s_AXI_MM_FROM_HLS_PR_0_AWREGION => s_AXI_MM_FROM_HLS_PR_0_AWREGION,
      rp_AXI_MM_FROM_HLS_PR_0_AWREGION => rp_AXI_MM_FROM_HLS_PR_0_AWREGION,
      s_AXI_MM_FROM_HLS_PR_0_AWQOS => s_AXI_MM_FROM_HLS_PR_0_AWQOS,
      rp_AXI_MM_FROM_HLS_PR_0_AWQOS => rp_AXI_MM_FROM_HLS_PR_0_AWQOS,
      s_AXI_MM_FROM_HLS_PR_0_WDATA => s_AXI_MM_FROM_HLS_PR_0_WDATA,
      rp_AXI_MM_FROM_HLS_PR_0_WDATA => rp_AXI_MM_FROM_HLS_PR_0_WDATA,
      s_AXI_MM_FROM_HLS_PR_0_WSTRB => s_AXI_MM_FROM_HLS_PR_0_WSTRB,
      rp_AXI_MM_FROM_HLS_PR_0_WSTRB => rp_AXI_MM_FROM_HLS_PR_0_WSTRB,
      s_AXI_MM_FROM_HLS_PR_0_WLAST => s_AXI_MM_FROM_HLS_PR_0_WLAST,
      rp_AXI_MM_FROM_HLS_PR_0_WLAST => rp_AXI_MM_FROM_HLS_PR_0_WLAST,
      s_AXI_MM_FROM_HLS_PR_0_BRESP => s_AXI_MM_FROM_HLS_PR_0_BRESP,
      rp_AXI_MM_FROM_HLS_PR_0_BRESP => rp_AXI_MM_FROM_HLS_PR_0_BRESP,
      s_AXI_MM_FROM_HLS_PR_0_ARADDR => s_AXI_MM_FROM_HLS_PR_0_ARADDR,
      rp_AXI_MM_FROM_HLS_PR_0_ARADDR => rp_AXI_MM_FROM_HLS_PR_0_ARADDR,
      s_AXI_MM_FROM_HLS_PR_0_ARLEN => s_AXI_MM_FROM_HLS_PR_0_ARLEN,
      rp_AXI_MM_FROM_HLS_PR_0_ARLEN => rp_AXI_MM_FROM_HLS_PR_0_ARLEN,
      s_AXI_MM_FROM_HLS_PR_0_ARSIZE => s_AXI_MM_FROM_HLS_PR_0_ARSIZE,
      rp_AXI_MM_FROM_HLS_PR_0_ARSIZE => rp_AXI_MM_FROM_HLS_PR_0_ARSIZE,
      s_AXI_MM_FROM_HLS_PR_0_ARBURST => s_AXI_MM_FROM_HLS_PR_0_ARBURST,
      rp_AXI_MM_FROM_HLS_PR_0_ARBURST => rp_AXI_MM_FROM_HLS_PR_0_ARBURST,
      s_AXI_MM_FROM_HLS_PR_0_ARLOCK => s_AXI_MM_FROM_HLS_PR_0_ARLOCK,
      rp_AXI_MM_FROM_HLS_PR_0_ARLOCK => rp_AXI_MM_FROM_HLS_PR_0_ARLOCK,
      s_AXI_MM_FROM_HLS_PR_0_ARCACHE => s_AXI_MM_FROM_HLS_PR_0_ARCACHE,
      rp_AXI_MM_FROM_HLS_PR_0_ARCACHE => rp_AXI_MM_FROM_HLS_PR_0_ARCACHE,
      s_AXI_MM_FROM_HLS_PR_0_ARPROT => s_AXI_MM_FROM_HLS_PR_0_ARPROT,
      rp_AXI_MM_FROM_HLS_PR_0_ARPROT => rp_AXI_MM_FROM_HLS_PR_0_ARPROT,
      s_AXI_MM_FROM_HLS_PR_0_ARREGION => s_AXI_MM_FROM_HLS_PR_0_ARREGION,
      rp_AXI_MM_FROM_HLS_PR_0_ARREGION => rp_AXI_MM_FROM_HLS_PR_0_ARREGION,
      s_AXI_MM_FROM_HLS_PR_0_ARQOS => s_AXI_MM_FROM_HLS_PR_0_ARQOS,
      rp_AXI_MM_FROM_HLS_PR_0_ARQOS => rp_AXI_MM_FROM_HLS_PR_0_ARQOS,
      s_AXI_MM_FROM_HLS_PR_0_RDATA => s_AXI_MM_FROM_HLS_PR_0_RDATA,
      rp_AXI_MM_FROM_HLS_PR_0_RDATA => rp_AXI_MM_FROM_HLS_PR_0_RDATA,
      s_AXI_MM_FROM_HLS_PR_0_RRESP => s_AXI_MM_FROM_HLS_PR_0_RRESP,
      rp_AXI_MM_FROM_HLS_PR_0_RRESP => rp_AXI_MM_FROM_HLS_PR_0_RRESP,
      s_AXI_MM_FROM_HLS_PR_0_RLAST => s_AXI_MM_FROM_HLS_PR_0_RLAST,
      rp_AXI_MM_FROM_HLS_PR_0_RLAST => rp_AXI_MM_FROM_HLS_PR_0_RLAST,
      AXI_MM_FROM_HLS_PR_0_ref_clk => AXI_MM_FROM_HLS_PR_0_ref_clk,
      AXI_MM_FROM_HLS_PR_0_decouple_status => AXI_MM_FROM_HLS_PR_0_decouple_status,
      decouple => decouple,
      decouple_ref_clk => decouple_ref_clk
    );
END PCIe_Bridge_ICAP_complex_pr_decoupler_0_0_arch;
