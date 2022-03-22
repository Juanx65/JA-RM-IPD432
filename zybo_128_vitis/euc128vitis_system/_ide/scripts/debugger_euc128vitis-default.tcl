# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\juan_\Desktop\zybo_128_vitis\euc128vitis_system\_ide\scripts\debugger_euc128vitis-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\juan_\Desktop\zybo_128_vitis\euc128vitis_system\_ide\scripts\debugger_euc128vitis-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279A427BAA" && level==0 && jtag_device_ctx=="jsn-Zybo-210279A427BAA-13722093-0"}
fpga -file C:/Users/juan_/Desktop/zybo_128_vitis/euc128vitis/_ide/bitstream/euc128.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/juan_/Desktop/zybo_128_vitis/euc128/export/euc128/hw/euc128.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/juan_/Desktop/zybo_128_vitis/euc128vitis/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/juan_/Desktop/zybo_128_vitis/euc128vitis/Debug/euc128vitis.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
