vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../ipstatic/hdl/verilog/eucHW_mac_muladd_17s_17s_32s_32_4_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_mul_mul_17s_17s_32_4_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_sqrt_fixed_32_32_s.v" \
"../../../ipstatic/hdl/verilog/eucHW.v" \
"../../../../../../IP/eucHW_0_10/sim/eucHW_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

