vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../ipstatic/hdl/verilog/eucHW_mac_muladd_9s_9s_21s_21_4_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_sqrt_fixed_32_32_s.v" \
"../../../ipstatic/hdl/verilog/eucHW.v" \
"../../../../../../IP/eucHW_0_4/sim/eucHW_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

