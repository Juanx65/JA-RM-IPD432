# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\ricar\Desktop\super_digitales\Tarea4\JA-RM-IPD432\zybo16_vitis_concat\euc16concat_system\_ide\scripts\debugger_euc16concat-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\ricar\Desktop\super_digitales\Tarea4\JA-RM-IPD432\zybo16_vitis_concat\euc16concat_system\_ide\scripts\debugger_euc16concat-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279778070A" && level==0 && jtag_device_ctx=="jsn-Zybo-210279778070A-13722093-0"}
fpga -file C:/Users/ricar/Desktop/super_digitales/Tarea4/JA-RM-IPD432/zybo16_vitis_concat/euc16concat/_ide/bitstream/zybo16_concat.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/ricar/Desktop/super_digitales/Tarea4/JA-RM-IPD432/zybo16_vitis_concat/zybo16_concat/export/zybo16_concat/hw/zybo16_concat.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/ricar/Desktop/super_digitales/Tarea4/JA-RM-IPD432/zybo16_vitis_concat/euc16concat/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/ricar/Desktop/super_digitales/Tarea4/JA-RM-IPD432/zybo16_vitis_concat/euc16concat/Debug/euc16concat.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
