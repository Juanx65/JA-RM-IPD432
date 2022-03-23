# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\zybi16_vitis_float_concat\euc16float_concat_system\_ide\scripts\debugger_euc16float_concat-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\zybi16_vitis_float_concat\euc16float_concat_system\_ide\scripts\debugger_euc16float_concat-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279A427BAA" && level==0 && jtag_device_ctx=="jsn-Zybo-210279A427BAA-13722093-0"}
fpga -file C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/zybi16_vitis_float_concat/euc16float_concat/_ide/bitstream/zybo16float_concat.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/zybi16_vitis_float_concat/zybo16float_concat/export/zybo16float_concat/hw/zybo16float_concat.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/zybi16_vitis_float_concat/euc16float_concat/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/zybi16_vitis_float_concat/euc16float_concat/Debug/euc16float_concat.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
