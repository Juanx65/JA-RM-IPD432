############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS-EucDist_128
set_top eucHW
add_files EucHW.h
add_files HLS-EucDist_128/EucHW_RC.cpp
add_files HLS-EucDist_128/specs.h
add_files -tb EucTB.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb EucSW.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb EucSW.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010i-clg400-1L}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/juan_/Documents/FPGA/IPs/euc16_concatenado.zip -rtl verilog
source "./HLS-EucDist_128/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/ricar/Desktop/super_digitales/Tarea4/JA-RM-IPD432/euc128_concat/eucHW.zip
