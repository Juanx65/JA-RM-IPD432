############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project EucHLS
set_top eucDistHW
add_files src/specs.h
add_files src/EucHW.h
add_files src/EucHW.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7a12ti-csg325-1L}
create_clock -period 10 -name default
config_export -format sysgen -ip_xdc_file C:/Users/juan_/Documents/FPGA/constraints/Nexys-4-DDR-Master.xdc -ip_xdc_ooc_file C:/Users/juan_/Documents/FPGA/constraints/Nexys-4-DDR-Master.xdc -output C:/Users/juan_/Documents/FPGA/IPs/eucDistHW.zip -rtl verilog
source "./EucHLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/juan_/Documents/FPGA/IPs/eucDistHW.zip
