vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/eucHW_RC_mac_muladd_9s_9s_18s_18_4_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_RC_mul_9s_9s_18_1_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_RC_sqrt_fixed_32_32_s.v" \
"../../../ipstatic/hdl/verilog/eucHW_RC.v" \
"../../../../../../IP/eucHW_0_20/sim/eucHW_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

