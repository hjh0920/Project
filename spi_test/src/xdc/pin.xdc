############## NET - IOSTANDARD ##################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design] 
############# clock #########################
create_clock -period 20 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]
set_property PACKAGE_PIN Y18 [get_ports {sys_clk}]
############# reset ##########################
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN F20 [get_ports {rst_n}]
############# LED ###########################
## PIN
set_property PACKAGE_PIN F19 [get_ports {LED1}]
# set_property PACKAGE_PIN F19 [get_ports {LED2}]
# set_property PACKAGE_PIN F19 [get_ports {LED3}]
# set_property PACKAGE_PIN F19 [get_ports {LED4}]
## IOSTANDARD
set_property IOSTANDARD LVCMOS33 [get_ports {LED1}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED2}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED3}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED4}]

############# QSPI-FLASH ###########################
## PIN
set_property PACKAGE_PIN T19 [get_ports {QSPI_CS}]
set_property PACKAGE_PIN P22 [get_ports {QSPI_DQ0}]
set_property PACKAGE_PIN R22 [get_ports {QSPI_DQ1}]
set_property PACKAGE_PIN P21 [get_ports {QSPI_DQ2}]
set_property PACKAGE_PIN R21 [get_ports {QSPI_DQ3}]
## IOSTANDARD
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_CS}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_DQ0}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_DQ1}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_DQ2}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_DQ3}]



