vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/eucHW_flow_control_loop_pipe.v" \
"../../../ipstatic/hdl/verilog/eucHW_mac_muladd_9s_9s_18s_18_4_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_mul_9s_9s_18_1_1.v" \
"../../../ipstatic/hdl/verilog/eucHW_sub_8192ns_8192ns_8192_2_1.v" \
"../../../ipstatic/hdl/verilog/eucHW.v" \
"../../../../T3_PRO_OP_PIPE.gen/sources_1/ip/eucHW1/sim/eucHW1.v" \


vlog -work xil_defaultlib \
"glbl.v"

