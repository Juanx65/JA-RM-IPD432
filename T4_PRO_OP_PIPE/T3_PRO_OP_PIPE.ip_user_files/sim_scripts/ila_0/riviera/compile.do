vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../IP/ila_0/hdl/verilog" \
"../../../../../../IP/ila_0/sim/ila_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

