############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project EucHLS
add_files src/EucHW.cpp
add_files src/EucHW.h
add_files src/specs.h
open_solution "solution1" -flow_target vivado
set_part {xc7a12ticsg325-1L}
create_clock -period 10 -name default
source "./EucHLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
