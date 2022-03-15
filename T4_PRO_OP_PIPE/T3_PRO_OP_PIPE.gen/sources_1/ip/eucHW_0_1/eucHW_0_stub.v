// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 14 17:45:26 2022
// Host        : LAPTOP-R5U6T19K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/ricar/Desktop/super_digitales/Tarea
//               4/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.gen/sources_1/ip/eucHW_0_1/eucHW_0_stub.v}
// Design      : eucHW_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "eucHW,Vivado 2021.1" *)
module eucHW_0(C_ap_vld, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, A, B, C)
/* synthesis syn_black_box black_box_pad_pin="C_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A[8191:0],B[8191:0],C[31:0]" */;
  output C_ap_vld;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [8191:0]A;
  input [8191:0]B;
  output [31:0]C;
endmodule
