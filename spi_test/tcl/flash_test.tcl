######################## JATG TO AXI ########################
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
######################## Read Identification ########################
proc RDID {byte_num} {
    WriteReg 0x40 0xa
    WriteReg 0x28 0x3fff
    WriteReg 0x1c 0x80000000
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = 9F, 读 FLASH ID
    WriteReg 0x68 0x9f
    # 要读多少个数据就写几个 dummy 数据
    set num 0
    while {$num < $byte_num} {
        WriteReg 0x68 0x00
        incr num 1
    }
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186

    set num 0
    set id_data "RDID is "
    while {$num < $byte_num + 1} {
        if {$num >= 1} {
            append id_data [string range [ReadReg 0x6c] end-1 end]
        } else {
            ReadReg 0x6c
        }
        incr num 1
    }
    return $id_data
}
######################## Write Enable ########################
proc WREN {} {
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = 06, 写使能
    WriteReg 0x68 0x06
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186
    return "Write Enable!"
}
######################## Sector Erase 64KByte/Sector ########################
proc SE {Sector_Num} {
    WREN
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = d8, 扇区擦除
    WriteReg 0x68 0xd8
    # Write Address
    WriteReg 0x68 $Sector_Num
    WriteReg 0x68 0x00
    WriteReg 0x68 0x00
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186
    return "Sector Erase Done!"
}
######################## Bulk Erase ########################
proc BE {} {
    WREN
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = c7, 整片擦除
    WriteReg 0x68 0xc7
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186
    return "Bulk Erase Done!"
}
######################## Page Program 256Byte/Page ########################
proc PP {address} {
    WREN
# 先写前 128 Byte, 因为FIFO深度256, 但是cmd+地址占用4Byte, 所以实际使用不足256Byte可用
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = 02, 页写
    WriteReg 0x68 0x02
    # Write Address
    WriteReg 0x68 [expr ($address >> 16)]
    WriteReg 0x68 [expr ($address % (2**16)) >> 8]
    WriteReg 0x68 [expr ($address % (2**8))]
    # Write Data
    set num 0
    while {$num < 128} {
        WriteReg 0x68 $num
        incr num 1
    }
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186
# 再写后 128 Byte
    # 每次写操作之前需要重新开启写使能
    WREN
    set address [expr {$address + 128}]
    puts [ format 0x%08x $address]
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = 02, 页写
    WriteReg 0x68 0x02
    # Write Address
    WriteReg 0x68 [expr ($address >> 16)]
    WriteReg 0x68 [expr ($address % (2**16)) >> 8]
    WriteReg 0x68 [expr ($address % (2**8))]
    # Write Data
    while {$num < 256} {
        WriteReg 0x68 $num
        incr num 1
    }
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186
    return "Page Program Done!"
}
######################## Read Data Byte ########################
proc READ {address number} {
    # 复位 tx rx fifo
    WriteReg 0x60 0x1e6
    # 释放 fifo 复位
    WriteReg 0x60 0x186
    # CMD = 03, 按字节读数据
    WriteReg 0x68 0x03
    # Read Address
    WriteReg 0x68 [expr ($address >> 16)]
    WriteReg 0x68 [expr ($address % (2**16)) >> 8]
    WriteReg 0x68 [expr ($address % (2**8))]
    # 要读多少个数据就写几个 dummy 数据
    set num 0
    while {$num < $number} {
        WriteReg 0x68 0x00
        incr num 1
    }
    # 选择 0 通道CS
    WriteReg 0x70 0x00
    # 使能 master, 开始发数据
    WriteReg 0x60 0x86
    # 选择 0 通道CS 拉高
    WriteReg 0x70 0x1
    # 禁用 master
    WriteReg 0x60 0x186

    ######################## 写文件 ########################
    set fn "./rd_data.txt"
    set fid [open $fn w+]
    set num 0
    puts $fid "Number   Address   Data"
    while {$num < $number + 4} {
        if {$num >= 4} {
            puts $fid [format "%-8d %#0-8x   0x%s" [expr {$num-3}] [expr {$address + $num - 3}] [string range [ReadReg 0x6c] end-1 end]]
        } else {
            ReadReg 0x6c
        }
        incr num 1
    }
    close $fid
    ######################## 读文件到变量 line ########################
    # 命令eof, 一旦读取到文件末尾, 该命令就返回 1
    set fid [open $fn r+]
    while {[eof $fid] != 1} {
        gets $fid line
        puts $line
    }
    close $fid
    puts "Read Done!"
    # set num 0
    # set read_data "ReadData is "
    # while {$num < $number + 4} {
    #     if {$num >= 4} {
    #         append read_data [string range [ReadReg 0x6c] end-1 end]
    #     } else {
    #         ReadReg 0x6c
    #     }
    #     incr num 1
    # }
    # return $read_data
}