`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/22 11:44:25
// Design Name: 
// Module Name: delay_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input   sys_clk,
    input   rst_n,

    //***************** QSPI-FLASH *****************
    inout   QSPI_CS,
    inout   QSPI_DQ0,
    inout   QSPI_DQ1,
    inout   QSPI_DQ2,
    inout   QSPI_DQ3,

    //***************** LED (ACTIVE LOW) *****************
    output  LED1
    // output  LED2,
    // output  LED3,
    // output  LED4
    );

  wire SPI_0_0_io0_i;
  wire SPI_0_0_io0_o;
  wire SPI_0_0_io0_t;
  wire SPI_0_0_io1_i;
  wire SPI_0_0_io1_o;
  wire SPI_0_0_io1_t;
  wire SPI_0_0_io2_i;
  wire SPI_0_0_io2_o;
  wire SPI_0_0_io2_t;
  wire SPI_0_0_io3_i;
  wire SPI_0_0_io3_o;
  wire SPI_0_0_io3_t;

  wire [0:0]SPI_0_0_ss_i_0;
  wire [0:0]SPI_0_0_ss_o_0;
  wire SPI_0_0_ss_t;
  wire ip2intc_irpt_0;
  wire spi_clk;


assign LED1 = ~ip2intc_irpt_0;

  IOBUF SPI_0_0_io0_iobuf
       (.I(SPI_0_0_io0_o),
        .IO(QSPI_DQ0),
        .O(SPI_0_0_io0_i),
        .T(SPI_0_0_io0_t));
  IOBUF SPI_0_0_io1_iobuf
       (.I(SPI_0_0_io1_o),
        .IO(QSPI_DQ1),
        .O(SPI_0_0_io1_i),
        .T(SPI_0_0_io1_t));
  IOBUF SPI_0_0_io2_iobuf
       (.I(SPI_0_0_io2_o),
        .IO(QSPI_DQ2),
        .O(SPI_0_0_io2_i),
        .T(SPI_0_0_io2_t));
  IOBUF SPI_0_0_io3_iobuf
       (.I(SPI_0_0_io3_o),
        .IO(QSPI_DQ3),
        .O(SPI_0_0_io3_i),
        .T(SPI_0_0_io3_t));
  IOBUF SPI_0_0_ss_iobuf_0
       (.I(SPI_0_0_ss_o_0),
        .IO(QSPI_CS),
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
