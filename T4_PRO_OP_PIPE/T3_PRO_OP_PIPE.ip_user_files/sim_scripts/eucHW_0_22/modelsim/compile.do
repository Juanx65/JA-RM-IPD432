vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../ipstatic/hdl/verilog/eucHW_RC_mac_muladd_9s_9s_18s_18_4_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_RC_mul_9s_9s_18_1_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_RC_sqrt_fixed_32_32_s.v" \
"../../../ipstatic/hdl/verilog/eucHW_RC.v" \
"../../../../../../IP/eucHW_0_22/sim/eucHW_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

