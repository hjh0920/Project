//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  3 18:48:02 2023
//Host        : DESKTOP-VU123TF running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (SPI_0_0_io0_i,
    SPI_0_0_io0_o,
    SPI_0_0_io0_t,
    SPI_0_0_io1_i,
    SPI_0_0_io1_o,
    SPI_0_0_io1_t,
    SPI_0_0_io2_i,
    SPI_0_0_io2_o,
    SPI_0_0_io2_t,
    SPI_0_0_io3_i,
    SPI_0_0_io3_o,
    SPI_0_0_io3_t,
    SPI_0_0_ss_i,
    SPI_0_0_ss_o,
    SPI_0_0_ss_t,
    ip2intc_irpt_0,
    rst_n,
    spi_clk,
    sys_clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I" *) input SPI_0_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O" *) output SPI_0_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T" *) output SPI_0_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I" *) input SPI_0_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O" *) output SPI_0_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T" *) output SPI_0_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO2_I" *) input SPI_0_0_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO2_O" *) output SPI_0_0_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO2_T" *) output SPI_0_0_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO3_I" *) input SPI_0_0_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO3_O" *) output SPI_0_0_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO3_T" *) output SPI_0_0_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I" *) input [0:0]SPI_0_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O" *) output [0:0]SPI_0_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T" *) output SPI_0_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output ip2intc_irpt_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SPI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SPI_CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.0" *) output spi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clk;

  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_100m;
  wire clk_wiz_0_clk_50m;
  wire clk_wiz_0_locked;
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
  wire resetn_0_1;

  assign SPI_0_0_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign SPI_0_0_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign SPI_0_0_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign SPI_0_0_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign SPI_0_0_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign SPI_0_0_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign SPI_0_0_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign SPI_0_0_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign SPI_0_0_ss_o[0] = axi_quad_spi_0_SPI_0_SS_O;
  assign SPI_0_0_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign axi_quad_spi_0_SPI_0_IO0_I = SPI_0_0_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = SPI_0_0_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = SPI_0_0_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = SPI_0_0_io3_i;
  assign axi_quad_spi_0_SPI_0_SS_I = SPI_0_0_ss_i[0];
  assign clk_in1_0_1 = sys_clk;
  assign ip2intc_irpt_0 = axi_quad_spi_0_ip2intc_irpt;
  assign resetn_0_1 = rst_n;
  assign spi_clk = clk_wiz_0_clk_50m;
  design_1_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(clk_wiz_0_clk_50m),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_100m),
        .s_axi_araddr(jtag_axi_0_M_AXI_ARADDR[6:0]),
        .s_axi_aresetn(clk_wiz_0_locked),
        .s_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .s_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .s_axi_awaddr(jtag_axi_0_M_AXI_AWADDR[6:0]),
        .s_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .s_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .s_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .s_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .s_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .s_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .s_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .s_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .s_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .s_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .s_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .s_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .s_axi_wvalid(jtag_axi_0_M_AXI_WVALID),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_100m(clk_wiz_0_clk_100m),
        .clk_50m(clk_wiz_0_clk_50m),
        .clk_in1(clk_in1_0_1),
        .locked(clk_wiz_0_locked),
        .resetn(resetn_0_1));
  design_1_jtag_axi_0_0 jtag_axi_0
       (.aclk(clk_wiz_0_clk_100m),
        .aresetn(clk_wiz_0_locked),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
endmodule
