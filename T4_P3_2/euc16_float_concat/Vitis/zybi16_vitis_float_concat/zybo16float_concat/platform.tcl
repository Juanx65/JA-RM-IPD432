# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\zybi16_vitis_float_concat\zybo16float_concat\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\zybi16_vitis_float_concat\zybo16float_concat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zybo16float_concat}\
-hw {C:\Users\juan_\Documents\FPGA\JA-RM-IPD432\zybi16_vitis_float_concat\zybo16float_concat.xsa}\
-out {C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/zybi16_vitis_float_concat}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {zybo16float_concat}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
