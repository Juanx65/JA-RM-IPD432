// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="eucHW_eucHW,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a12ti-csg325-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.207000,HLS_SYN_LAT=15,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=4493,HLS_SYN_LUT=3405,HLS_VERSION=2021_1}" *)

module eucHW (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_0,
        A_1,
        A_2,
        A_3,
        A_4,
        A_5,
        A_6,
        A_7,
        A_8,
        A_9,
        A_10,
        A_11,
        A_12,
        A_13,
        A_14,
        A_15,
        B_0,
        B_1,
        B_2,
        B_3,
        B_4,
        B_5,
        B_6,
        B_7,
        B_8,
        B_9,
        B_10,
        B_11,
        B_12,
        B_13,
        B_14,
        B_15,
        C,
        C_ap_vld
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_0;
input  [31:0] A_1;
input  [31:0] A_2;
input  [31:0] A_3;
input  [31:0] A_4;
input  [31:0] A_5;
input  [31:0] A_6;
input  [31:0] A_7;
input  [31:0] A_8;
input  [31:0] A_9;
input  [31:0] A_10;
input  [31:0] A_11;
input  [31:0] A_12;
input  [31:0] A_13;
input  [31:0] A_14;
input  [31:0] A_15;
input  [31:0] B_0;
input  [31:0] B_1;
input  [31:0] B_2;
input  [31:0] B_3;
input  [31:0] B_4;
input  [31:0] B_5;
input  [31:0] B_6;
input  [31:0] B_7;
input  [31:0] B_8;
input  [31:0] B_9;
input  [31:0] B_10;
input  [31:0] B_11;
input  [31:0] B_12;
input  [31:0] B_13;
input  [31:0] B_14;
input  [31:0] B_15;
output  [31:0] C;
output   C_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg C_ap_vld;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [31:0] sub_ln15_12_fu_292_p2;
reg  signed [31:0] sub_ln15_12_reg_527;
wire  signed [31:0] sub_ln15_13_fu_298_p2;
reg  signed [31:0] sub_ln15_13_reg_533;
wire  signed [31:0] sub_ln15_14_fu_304_p2;
reg  signed [31:0] sub_ln15_14_reg_539;
wire  signed [31:0] sub_ln15_15_fu_310_p2;
reg  signed [31:0] sub_ln15_15_reg_545;
wire  signed [31:0] sub_ln15_fu_316_p2;
reg  signed [31:0] sub_ln15_reg_551;
wire    ap_CS_fsm_state2;
wire  signed [31:0] sub_ln15_1_fu_322_p2;
reg  signed [31:0] sub_ln15_1_reg_557;
wire  signed [31:0] sub_ln15_2_fu_328_p2;
reg  signed [31:0] sub_ln15_2_reg_563;
wire  signed [31:0] sub_ln15_3_fu_334_p2;
reg  signed [31:0] sub_ln15_3_reg_569;
wire  signed [31:0] sub_ln15_4_fu_340_p2;
reg  signed [31:0] sub_ln15_4_reg_575;
wire  signed [31:0] sub_ln15_5_fu_346_p2;
reg  signed [31:0] sub_ln15_5_reg_581;
wire  signed [31:0] sub_ln15_6_fu_352_p2;
reg  signed [31:0] sub_ln15_6_reg_587;
wire  signed [31:0] sub_ln15_7_fu_358_p2;
reg  signed [31:0] sub_ln15_7_reg_593;
wire  signed [31:0] sub_ln15_8_fu_364_p2;
reg  signed [31:0] sub_ln15_8_reg_599;
wire  signed [31:0] sub_ln15_9_fu_370_p2;
reg  signed [31:0] sub_ln15_9_reg_605;
wire  signed [31:0] sub_ln15_10_fu_376_p2;
reg  signed [31:0] sub_ln15_10_reg_611;
wire  signed [31:0] sub_ln15_11_fu_382_p2;
reg  signed [31:0] sub_ln15_11_reg_617;
wire   [31:0] grp_fu_388_p2;
reg   [31:0] mul_ln15_12_reg_623;
wire    ap_CS_fsm_state3;
wire   [31:0] grp_fu_392_p2;
reg   [31:0] mul_ln15_13_reg_628;
wire   [31:0] grp_fu_396_p2;
reg   [31:0] mul_ln15_14_reg_633;
wire   [31:0] grp_fu_400_p2;
reg   [31:0] mul_ln15_15_reg_638;
wire   [31:0] grp_fu_404_p2;
reg   [31:0] mul_ln15_reg_643;
wire    ap_CS_fsm_state4;
wire   [31:0] grp_fu_408_p2;
reg   [31:0] mul_ln15_1_reg_648;
wire   [31:0] grp_fu_412_p2;
reg   [31:0] mul_ln15_2_reg_653;
wire   [31:0] grp_fu_416_p2;
reg   [31:0] mul_ln15_3_reg_658;
wire   [31:0] grp_fu_420_p2;
reg   [31:0] mul_ln15_4_reg_663;
wire   [31:0] grp_fu_424_p2;
reg   [31:0] mul_ln15_5_reg_668;
wire   [31:0] grp_fu_428_p2;
reg   [31:0] mul_ln15_6_reg_673;
wire   [31:0] grp_fu_432_p2;
reg   [31:0] mul_ln15_7_reg_678;
wire   [31:0] grp_fu_436_p2;
reg   [31:0] mul_ln15_8_reg_683;
wire   [31:0] grp_fu_440_p2;
reg   [31:0] mul_ln15_9_reg_688;
wire   [31:0] grp_fu_444_p2;
reg   [31:0] mul_ln15_10_reg_693;
wire   [31:0] grp_fu_448_p2;
reg   [31:0] mul_ln15_11_reg_698;
wire   [31:0] add_ln15_12_fu_460_p2;
reg   [31:0] add_ln15_12_reg_703;
wire   [31:0] add_ln15_2_fu_474_p2;
reg   [31:0] add_ln15_2_reg_708;
wire    ap_CS_fsm_state5;
wire   [31:0] add_ln15_5_fu_488_p2;
reg   [31:0] add_ln15_5_reg_713;
wire   [31:0] add_ln15_13_fu_508_p2;
reg   [31:0] add_ln15_13_reg_718;
wire   [31:0] xf_V_fu_517_p2;
reg   [31:0] xf_V_reg_723;
wire    ap_CS_fsm_state6;
wire   [15:0] grp_sqrt_fixed_32_32_s_fu_287_ap_return;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state16;
wire   [31:0] add_ln15_11_fu_456_p2;
wire   [31:0] add_ln15_10_fu_452_p2;
wire   [31:0] add_ln15_1_fu_470_p2;
wire   [31:0] add_ln15_fu_466_p2;
wire   [31:0] add_ln15_4_fu_484_p2;
wire   [31:0] add_ln15_3_fu_480_p2;
wire   [31:0] add_ln15_8_fu_498_p2;
wire   [31:0] add_ln15_7_fu_494_p2;
wire   [31:0] add_ln15_9_fu_502_p2;
wire   [31:0] add_ln15_6_fu_513_p2;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

eucHW_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_287(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .x(xf_V_reg_723),
    .ap_return(grp_sqrt_fixed_32_32_s_fu_287_ap_return)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_12_reg_527),
    .din1(sub_ln15_12_reg_527),
    .ce(1'b1),
    .dout(grp_fu_388_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_13_reg_533),
    .din1(sub_ln15_13_reg_533),
    .ce(1'b1),
    .dout(grp_fu_392_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_14_reg_539),
    .din1(sub_ln15_14_reg_539),
    .ce(1'b1),
    .dout(grp_fu_396_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_15_reg_545),
    .din1(sub_ln15_15_reg_545),
    .ce(1'b1),
    .dout(grp_fu_400_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_reg_551),
    .din1(sub_ln15_reg_551),
    .ce(1'b1),
    .dout(grp_fu_404_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_1_reg_557),
    .din1(sub_ln15_1_reg_557),
    .ce(1'b1),
    .dout(grp_fu_408_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_2_reg_563),
    .din1(sub_ln15_2_reg_563),
    .ce(1'b1),
    .dout(grp_fu_412_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_3_reg_569),
    .din1(sub_ln15_3_reg_569),
    .ce(1'b1),
    .dout(grp_fu_416_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_4_reg_575),
    .din1(sub_ln15_4_reg_575),
    .ce(1'b1),
    .dout(grp_fu_420_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_5_reg_581),
    .din1(sub_ln15_5_reg_581),
    .ce(1'b1),
    .dout(grp_fu_424_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_6_reg_587),
    .din1(sub_ln15_6_reg_587),
    .ce(1'b1),
    .dout(grp_fu_428_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_7_reg_593),
    .din1(sub_ln15_7_reg_593),
    .ce(1'b1),
    .dout(grp_fu_432_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_8_reg_599),
    .din1(sub_ln15_8_reg_599),
    .ce(1'b1),
    .dout(grp_fu_436_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_9_reg_605),
    .din1(sub_ln15_9_reg_605),
    .ce(1'b1),
    .dout(grp_fu_440_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_10_reg_611),
    .din1(sub_ln15_10_reg_611),
    .ce(1'b1),
    .dout(grp_fu_444_p2)
);

eucHW_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_ln15_11_reg_617),
    .din1(sub_ln15_11_reg_617),
    .ce(1'b1),
    .dout(grp_fu_448_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln15_12_reg_703 <= add_ln15_12_fu_460_p2;
        mul_ln15_10_reg_693 <= grp_fu_444_p2;
        mul_ln15_11_reg_698 <= grp_fu_448_p2;
        mul_ln15_1_reg_648 <= grp_fu_408_p2;
        mul_ln15_2_reg_653 <= grp_fu_412_p2;
        mul_ln15_3_reg_658 <= grp_fu_416_p2;
        mul_ln15_4_reg_663 <= grp_fu_420_p2;
        mul_ln15_5_reg_668 <= grp_fu_424_p2;
        mul_ln15_6_reg_673 <= grp_fu_428_p2;
        mul_ln15_7_reg_678 <= grp_fu_432_p2;
        mul_ln15_8_reg_683 <= grp_fu_436_p2;
        mul_ln15_9_reg_688 <= grp_fu_440_p2;
        mul_ln15_reg_643 <= grp_fu_404_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln15_13_reg_718 <= add_ln15_13_fu_508_p2;
        add_ln15_2_reg_708 <= add_ln15_2_fu_474_p2;
        add_ln15_5_reg_713 <= add_ln15_5_fu_488_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln15_12_reg_623 <= grp_fu_388_p2;
        mul_ln15_13_reg_628 <= grp_fu_392_p2;
        mul_ln15_14_reg_633 <= grp_fu_396_p2;
        mul_ln15_15_reg_638 <= grp_fu_400_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sub_ln15_10_reg_611 <= sub_ln15_10_fu_376_p2;
        sub_ln15_11_reg_617 <= sub_ln15_11_fu_382_p2;
        sub_ln15_1_reg_557 <= sub_ln15_1_fu_322_p2;
        sub_ln15_2_reg_563 <= sub_ln15_2_fu_328_p2;
        sub_ln15_3_reg_569 <= sub_ln15_3_fu_334_p2;
        sub_ln15_4_reg_575 <= sub_ln15_4_fu_340_p2;
        sub_ln15_5_reg_581 <= sub_ln15_5_fu_346_p2;
        sub_ln15_6_reg_587 <= sub_ln15_6_fu_352_p2;
        sub_ln15_7_reg_593 <= sub_ln15_7_fu_358_p2;
        sub_ln15_8_reg_599 <= sub_ln15_8_fu_364_p2;
        sub_ln15_9_reg_605 <= sub_ln15_9_fu_370_p2;
        sub_ln15_reg_551 <= sub_ln15_fu_316_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sub_ln15_12_reg_527 <= sub_ln15_12_fu_292_p2;
        sub_ln15_13_reg_533 <= sub_ln15_13_fu_298_p2;
        sub_ln15_14_reg_539 <= sub_ln15_14_fu_304_p2;
        sub_ln15_15_reg_545 <= sub_ln15_15_fu_310_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        xf_V_reg_723 <= xf_V_fu_517_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        C_ap_vld = 1'b1;
    end else begin
        C_ap_vld = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C = grp_sqrt_fixed_32_32_s_fu_287_ap_return;

assign add_ln15_10_fu_452_p2 = (mul_ln15_12_reg_623 + mul_ln15_13_reg_628);

assign add_ln15_11_fu_456_p2 = (mul_ln15_14_reg_633 + mul_ln15_15_reg_638);

assign add_ln15_12_fu_460_p2 = (add_ln15_11_fu_456_p2 + add_ln15_10_fu_452_p2);

assign add_ln15_13_fu_508_p2 = (add_ln15_12_reg_703 + add_ln15_9_fu_502_p2);

assign add_ln15_1_fu_470_p2 = (mul_ln15_2_reg_653 + mul_ln15_3_reg_658);

assign add_ln15_2_fu_474_p2 = (add_ln15_1_fu_470_p2 + add_ln15_fu_466_p2);

assign add_ln15_3_fu_480_p2 = (mul_ln15_4_reg_663 + mul_ln15_5_reg_668);

assign add_ln15_4_fu_484_p2 = (mul_ln15_6_reg_673 + mul_ln15_7_reg_678);

assign add_ln15_5_fu_488_p2 = (add_ln15_4_fu_484_p2 + add_ln15_3_fu_480_p2);

assign add_ln15_6_fu_513_p2 = (add_ln15_5_reg_713 + add_ln15_2_reg_708);

assign add_ln15_7_fu_494_p2 = (mul_ln15_8_reg_683 + mul_ln15_9_reg_688);

assign add_ln15_8_fu_498_p2 = (mul_ln15_10_reg_693 + mul_ln15_11_reg_698);

assign add_ln15_9_fu_502_p2 = (add_ln15_8_fu_498_p2 + add_ln15_7_fu_494_p2);

assign add_ln15_fu_466_p2 = (mul_ln15_1_reg_648 + mul_ln15_reg_643);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign sub_ln15_10_fu_376_p2 = (A_10 - B_10);

assign sub_ln15_11_fu_382_p2 = (A_11 - B_11);

assign sub_ln15_12_fu_292_p2 = (A_12 - B_12);

assign sub_ln15_13_fu_298_p2 = (A_13 - B_13);

assign sub_ln15_14_fu_304_p2 = (A_14 - B_14);

assign sub_ln15_15_fu_310_p2 = (A_15 - B_15);

assign sub_ln15_1_fu_322_p2 = (A_1 - B_1);

assign sub_ln15_2_fu_328_p2 = (A_2 - B_2);

assign sub_ln15_3_fu_334_p2 = (A_3 - B_3);

assign sub_ln15_4_fu_340_p2 = (A_4 - B_4);

assign sub_ln15_5_fu_346_p2 = (A_5 - B_5);

assign sub_ln15_6_fu_352_p2 = (A_6 - B_6);

assign sub_ln15_7_fu_358_p2 = (A_7 - B_7);

assign sub_ln15_8_fu_364_p2 = (A_8 - B_8);

assign sub_ln15_9_fu_370_p2 = (A_9 - B_9);

assign sub_ln15_fu_316_p2 = (A_0 - B_0);

assign xf_V_fu_517_p2 = (add_ln15_13_reg_718 + add_ln15_6_fu_513_p2);

endmodule //eucHW