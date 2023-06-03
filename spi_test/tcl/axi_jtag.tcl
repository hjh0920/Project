# Read Register
proc ReadReg {address} {
    set address [format 0x%08x $address]
    create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -address $address -type read
    run_hw_axi rd_txn
    set read_value [lindex [report_hw_axi_txn rd_txn] 1]
    delete_hw_axi_txn rd_txn
    return $read_value
}
# Write Register
proc WriteReg {address data} {
    set address [format 0x%08x $address]
    set data [format 0x%08x $data]
    create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -type write -address $address -data $data
    run_hw_axi wr_txn
    set write_value [lindex [report_hw_axi_txn wr_txn] 1]
    delete_hw_axi_txn wr_txn
    return $write_value
}