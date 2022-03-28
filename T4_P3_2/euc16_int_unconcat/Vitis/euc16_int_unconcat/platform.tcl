# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\euc16_int_unconcat\Vitis\euc16_int_unconcat\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\euc16_int_unconcat\Vitis\euc16_int_unconcat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {euc16_int_unconcat}\
-hw {C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\euc16_int_unconcat\Vitis\euc16_int_unconcat.xsa}\
-out {C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/euc16_int_unconcat/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {euc16_int_unconcat}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
