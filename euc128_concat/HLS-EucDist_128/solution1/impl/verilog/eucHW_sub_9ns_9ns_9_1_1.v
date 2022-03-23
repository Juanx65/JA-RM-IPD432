// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module eucHW_sub_9ns_9ns_9_1_1_AddSub_DSP_0(a, b, s);

input [9 - 1 : 0] a;
input [9 - 1 : 0] b;
(* USE_DSP = "YES" *) output [9 - 1 : 0] s;

assign s = a - b;

endmodule
`timescale 1 ns / 1 ps
module eucHW_sub_9ns_9ns_9_1_1(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



eucHW_sub_9ns_9ns_9_1_1_AddSub_DSP_0 eucHW_sub_9ns_9ns_9_1_1_AddSub_DSP_0_U(
    .a( din0 ),
    .b( din1 ),
    .s( dout ));

endmodule

