############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project EucHLS
set_top eucHW
add_files src/EucHW.h
add_files src/EucHW_RC.cpp
add_files src/specs.h
add_files -tb src/EucSW.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/EucSW.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/EucTB.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010i-clg400-1L}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_P3_2/euc64_int/IP/eucHW.zip -rtl verilog
source "./EucHLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_P3_2/euc1025_int_concat/IP/eucHW.zip
