//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  3 18:48:02 2023
//Host        : DESKTOP-VU123TF running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (SPI_0_0_io0_io,
    SPI_0_0_io1_io,
    SPI_0_0_io2_io,
    SPI_0_0_io3_io,
    SPI_0_0_ss_io,
    ip2intc_irpt_0,
    rst_n,
    spi_clk,
    sys_clk);
  inout SPI_0_0_io0_io;
  inout SPI_0_0_io1_io;
  inout SPI_0_0_io2_io;
  inout SPI_0_0_io3_io;
  inout [0:0]SPI_0_0_ss_io;
  output ip2intc_irpt_0;
  input rst_n;
  output spi_clk;
  input sys_clk;

  wire SPI_0_0_io0_i;
  wire SPI_0_0_io0_io;
  wire SPI_0_0_io0_o;
  wire SPI_0_0_io0_t;
  wire SPI_0_0_io1_i;
  wire SPI_0_0_io1_io;
  wire SPI_0_0_io1_o;
  wire SPI_0_0_io1_t;
  wire SPI_0_0_io2_i;
  wire SPI_0_0_io2_io;
  wire SPI_0_0_io2_o;
  wire SPI_0_0_io2_t;
  wire SPI_0_0_io3_i;
  wire SPI_0_0_io3_io;
  wire SPI_0_0_io3_o;
  wire SPI_0_0_io3_t;
  wire [0:0]SPI_0_0_ss_i_0;
  wire [0:0]SPI_0_0_ss_io_0;
  wire [0:0]SPI_0_0_ss_o_0;
  wire SPI_0_0_ss_t;
  wire ip2intc_irpt_0;
  wire rst_n;
  wire spi_clk;
  wire sys_clk;

  IOBUF SPI_0_0_io0_iobuf
       (.I(SPI_0_0_io0_o),
        .IO(SPI_0_0_io0_io),
        .O(SPI_0_0_io0_i),
        .T(SPI_0_0_io0_t));
  IOBUF SPI_0_0_io1_iobuf
       (.I(SPI_0_0_io1_o),
        .IO(SPI_0_0_io1_io),
        .O(SPI_0_0_io1_i),
        .T(SPI_0_0_io1_t));
  IOBUF SPI_0_0_io2_iobuf
       (.I(SPI_0_0_io2_o),
        .IO(SPI_0_0_io2_io),
        .O(SPI_0_0_io2_i),
        .T(SPI_0_0_io2_t));
  IOBUF SPI_0_0_io3_iobuf
       (.I(SPI_0_0_io3_o),
        .IO(SPI_0_0_io3_io),
        .O(SPI_0_0_io3_i),
        .T(SPI_0_0_io3_t));
  IOBUF SPI_0_0_ss_iobuf_0
       (.I(SPI_0_0_ss_o_0),
        .IO(SPI_0_0_ss_io[0]),
        .O(SPI_0_0_ss_i_0),
        .T(SPI_0_0_ss_t));
  design_1 design_1_i
       (.SPI_0_0_io0_i(SPI_0_0_io0_i),
        .SPI_0_0_io0_o(SPI_0_0_io0_o),
        .SPI_0_0_io0_t(SPI_0_0_io0_t),
        .SPI_0_0_io1_i(SPI_0_0_io1_i),
        .SPI_0_0_io1_o(SPI_0_0_io1_o),
        .SPI_0_0_io1_t(SPI_0_0_io1_t),
        .SPI_0_0_io2_i(SPI_0_0_io2_i),
        .SPI_0_0_io2_o(SPI_0_0_io2_o),
        .SPI_0_0_io2_t(SPI_0_0_io2_t),
        .SPI_0_0_io3_i(SPI_0_0_io3_i),
        .SPI_0_0_io3_o(SPI_0_0_io3_o),
        .SPI_0_0_io3_t(SPI_0_0_io3_t),
        .SPI_0_0_ss_i(SPI_0_0_ss_i_0),
        .SPI_0_0_ss_o(SPI_0_0_ss_o_0),
        .SPI_0_0_ss_t(SPI_0_0_ss_t),
        .ip2intc_irpt_0(ip2intc_irpt_0),
        .rst_n(rst_n),
        .spi_clk(spi_clk),
        .sys_clk(sys_clk));
endmodule
