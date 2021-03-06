// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="eucHW_RC_eucHW_RC,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a12ti-csg325-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.078750,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1574,HLS_SYN_LUT=2434,HLS_VERSION=2021_1}" *)

module eucHW_RC (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A,
        B,
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
input  [63:0] A;
input  [63:0] B;
output  [31:0] C;
output   C_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg C_ap_vld;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] sub_ln14_fu_521_p2;
reg   [8:0] sub_ln14_reg_1042;
wire   [8:0] sub_ln14_1_fu_555_p2;
reg   [8:0] sub_ln14_1_reg_1047;
wire   [8:0] sub_ln14_2_fu_589_p2;
reg   [8:0] sub_ln14_2_reg_1052;
wire   [8:0] sub_ln14_3_fu_623_p2;
reg   [8:0] sub_ln14_3_reg_1057;
wire   [8:0] sub_ln14_4_fu_657_p2;
reg   [8:0] sub_ln14_4_reg_1062;
wire   [8:0] sub_ln14_5_fu_691_p2;
reg   [8:0] sub_ln14_5_reg_1067;
wire   [8:0] sub_ln14_6_fu_725_p2;
reg   [8:0] sub_ln14_6_reg_1072;
wire   [8:0] sub_ln14_7_fu_759_p2;
reg   [8:0] sub_ln14_7_reg_1077;
wire  signed [31:0] sext_ln14_5_fu_805_p1;
wire    ap_CS_fsm_state2;
wire  signed [31:0] sext_ln14_7_fu_818_p1;
wire  signed [31:0] sext_ln14_9_fu_831_p1;
wire  signed [31:0] sext_ln14_11_fu_844_p1;
wire  signed [31:0] sext_ln14_13_fu_857_p1;
wire  signed [31:0] sext_ln14_15_fu_870_p1;
wire   [2:0] trunc_ln32_fu_904_p1;
reg   [2:0] trunc_ln32_reg_1118;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln27_fu_898_p2;
wire   [31:0] xf_V_fu_914_p2;
reg   [31:0] xf_V_reg_1123;
wire   [27:0] add_ln30_fu_925_p2;
reg   [27:0] add_ln30_reg_1131;
wire    ap_CS_fsm_state4;
wire   [2:0] trunc_ln32_1_fu_931_p1;
reg   [2:0] trunc_ln32_1_reg_1136;
wire   [0:0] icmp_ln30_fu_920_p2;
wire   [31:0] out_array_2_3_fu_976_p2;
wire    ap_CS_fsm_state5;
wire   [15:0] grp_sqrt_fixed_32_32_s_fu_491_ap_return;
reg   [31:0] out_array_7_0_reg_145;
reg   [31:0] out_array_6_0_reg_155;
reg   [31:0] out_array_5_0_reg_165;
reg   [31:0] out_array_4_0_reg_175;
reg   [31:0] out_array_3_0_reg_185;
reg   [31:0] out_array_2_0_reg_195;
reg   [31:0] out_array_7_18_reg_205;
wire    ap_CS_fsm_state6;
reg   [31:0] out_array_6_17_reg_217;
reg   [31:0] out_array_5_16_reg_229;
reg   [31:0] out_array_4_15_reg_241;
reg   [31:0] out_array_3_14_reg_253;
reg   [31:0] out_array_2_13_reg_265;
reg   [27:0] i_reg_277;
reg   [31:0] phi_ln32_reg_288;
wire   [2:0] add_ln32_fu_935_p2;
reg   [31:0] out_array_7_2_reg_311;
reg   [31:0] out_array_6_2_reg_341;
reg   [31:0] out_array_5_2_reg_371;
reg   [31:0] out_array_4_2_reg_401;
reg   [31:0] out_array_3_2_reg_431;
reg   [31:0] out_array_2_2_reg_461;
wire    ap_CS_fsm_state7;
reg   [27:0] idx_fu_106;
wire   [27:0] idx_3_fu_940_p1;
reg   [31:0] out_array_7_1_fu_110;
wire  signed [31:0] sext_ln14_1_fu_779_p1;
reg   [31:0] out_array_7_3_fu_114;
wire  signed [31:0] sext_ln14_3_fu_792_p1;
reg   [31:0] out_array_7_4_fu_118;
reg   [31:0] out_array_7_5_fu_122;
wire    ap_CS_fsm_state16;
wire   [7:0] trunc_ln14_fu_505_p1;
wire   [7:0] trunc_ln14_1_fu_513_p1;
wire   [8:0] zext_ln14_fu_509_p1;
wire   [8:0] zext_ln14_1_fu_517_p1;
wire   [7:0] tmp_s_fu_527_p4;
wire   [7:0] tmp_15_fu_541_p4;
wire   [8:0] zext_ln14_4_fu_537_p1;
wire   [8:0] zext_ln14_5_fu_551_p1;
wire   [7:0] tmp_16_fu_561_p4;
wire   [7:0] tmp_17_fu_575_p4;
wire   [8:0] zext_ln14_6_fu_571_p1;
wire   [8:0] zext_ln14_7_fu_585_p1;
wire   [7:0] tmp_18_fu_595_p4;
wire   [7:0] tmp_19_fu_609_p4;
wire   [8:0] zext_ln14_8_fu_605_p1;
wire   [8:0] zext_ln14_9_fu_619_p1;
wire   [7:0] tmp_20_fu_629_p4;
wire   [7:0] tmp_21_fu_643_p4;
wire   [8:0] zext_ln14_10_fu_639_p1;
wire   [8:0] zext_ln14_11_fu_653_p1;
wire   [7:0] tmp_22_fu_663_p4;
wire   [7:0] tmp_23_fu_677_p4;
wire   [8:0] zext_ln14_12_fu_673_p1;
wire   [8:0] zext_ln14_13_fu_687_p1;
wire   [7:0] tmp_24_fu_697_p4;
wire   [7:0] tmp_25_fu_711_p4;
wire   [8:0] zext_ln14_14_fu_707_p1;
wire   [8:0] zext_ln14_15_fu_721_p1;
wire   [7:0] trunc_ln14_s_fu_731_p4;
wire   [7:0] trunc_ln14_2_fu_745_p4;
wire   [8:0] zext_ln14_2_fu_741_p1;
wire   [8:0] zext_ln14_3_fu_755_p1;
wire  signed [8:0] out_array_0_fu_773_p0;
wire  signed [17:0] sext_ln14_fu_770_p1;
wire  signed [8:0] out_array_0_fu_773_p1;
wire   [17:0] out_array_0_fu_773_p2;
wire  signed [8:0] out_array_1_fu_786_p0;
wire  signed [17:0] sext_ln14_2_fu_783_p1;
wire  signed [8:0] out_array_1_fu_786_p1;
wire   [17:0] out_array_1_fu_786_p2;
wire  signed [8:0] out_array_2_fu_799_p0;
wire  signed [17:0] sext_ln14_4_fu_796_p1;
wire  signed [8:0] out_array_2_fu_799_p1;
wire   [17:0] out_array_2_fu_799_p2;
wire  signed [8:0] out_array_3_fu_812_p0;
wire  signed [17:0] sext_ln14_6_fu_809_p1;
wire  signed [8:0] out_array_3_fu_812_p1;
wire   [17:0] out_array_3_fu_812_p2;
wire  signed [8:0] out_array_4_fu_825_p0;
wire  signed [17:0] sext_ln14_8_fu_822_p1;
wire  signed [8:0] out_array_4_fu_825_p1;
wire   [17:0] out_array_4_fu_825_p2;
wire  signed [8:0] out_array_5_fu_838_p0;
wire  signed [17:0] sext_ln14_10_fu_835_p1;
wire  signed [8:0] out_array_5_fu_838_p1;
wire   [17:0] out_array_5_fu_838_p2;
wire  signed [8:0] out_array_6_fu_851_p0;
wire  signed [17:0] sext_ln14_12_fu_848_p1;
wire  signed [8:0] out_array_6_fu_851_p1;
wire   [17:0] out_array_6_fu_851_p2;
wire  signed [8:0] out_array_7_fu_864_p0;
wire  signed [17:0] sext_ln14_14_fu_861_p1;
wire  signed [8:0] out_array_7_fu_864_p1;
wire   [17:0] out_array_7_fu_864_p2;
wire   [26:0] grp_fu_496_p4;
wire   [31:0] tmp_fu_955_p10;
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
reg    ap_condition_639;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

eucHW_RC_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_491(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .x(xf_V_reg_1123),
    .ap_return(grp_sqrt_fixed_32_32_s_fu_491_ap_return)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U2(
    .din0(out_array_0_fu_773_p0),
    .din1(out_array_0_fu_773_p1),
    .dout(out_array_0_fu_773_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U3(
    .din0(out_array_1_fu_786_p0),
    .din1(out_array_1_fu_786_p1),
    .dout(out_array_1_fu_786_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U4(
    .din0(out_array_2_fu_799_p0),
    .din1(out_array_2_fu_799_p1),
    .dout(out_array_2_fu_799_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U5(
    .din0(out_array_3_fu_812_p0),
    .din1(out_array_3_fu_812_p1),
    .dout(out_array_3_fu_812_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U6(
    .din0(out_array_4_fu_825_p0),
    .din1(out_array_4_fu_825_p1),
    .dout(out_array_4_fu_825_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U7(
    .din0(out_array_5_fu_838_p0),
    .din1(out_array_5_fu_838_p1),
    .dout(out_array_5_fu_838_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U8(
    .din0(out_array_6_fu_851_p0),
    .din1(out_array_6_fu_851_p1),
    .dout(out_array_6_fu_851_p2)
);

eucHW_RC_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U9(
    .din0(out_array_7_fu_864_p0),
    .din1(out_array_7_fu_864_p1),
    .dout(out_array_7_fu_864_p2)
);

eucHW_RC_mux_83_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_83_32_1_1_U10(
    .din0(out_array_7_4_fu_118),
    .din1(out_array_7_5_fu_122),
    .din2(out_array_2_13_reg_265),
    .din3(out_array_3_14_reg_253),
    .din4(out_array_4_15_reg_241),
    .din5(out_array_5_16_reg_229),
    .din6(out_array_6_17_reg_217),
    .din7(out_array_7_18_reg_205),
    .din8(trunc_ln32_1_reg_1136),
    .dout(tmp_fu_955_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_277 <= add_ln30_reg_1131;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_277 <= 28'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                idx_fu_106[0] <= 1'b0;
        idx_fu_106[1] <= 1'b0;
        idx_fu_106[2] <= 1'b1;
    end else if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                idx_fu_106[2 : 0] <= idx_3_fu_940_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_array_2_0_reg_195 <= out_array_2_13_reg_265;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_2_0_reg_195 <= sext_ln14_5_fu_805_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_array_2_13_reg_265 <= out_array_2_2_reg_461;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_array_2_13_reg_265 <= out_array_2_0_reg_195;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln32_1_reg_1136 == 3'd2) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_2_2_reg_461 <= out_array_2_3_fu_976_p2;
    end else if ((((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd3) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd4) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd5) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd6) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd7) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_array_2_2_reg_461 <= out_array_2_13_reg_265;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_array_3_0_reg_185 <= out_array_3_14_reg_253;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_3_0_reg_185 <= sext_ln14_7_fu_818_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_array_3_14_reg_253 <= out_array_3_2_reg_431;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_array_3_14_reg_253 <= out_array_3_0_reg_185;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln32_1_reg_1136 == 3'd3) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_3_2_reg_431 <= out_array_2_3_fu_976_p2;
    end else if ((((trunc_ln32_1_reg_1136 == 3'd2) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd4) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd5) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd6) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd7) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_array_3_2_reg_431 <= out_array_3_14_reg_253;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_array_4_0_reg_175 <= out_array_4_15_reg_241;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_4_0_reg_175 <= sext_ln14_9_fu_831_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_array_4_15_reg_241 <= out_array_4_2_reg_401;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_array_4_15_reg_241 <= out_array_4_0_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln32_1_reg_1136 == 3'd4) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_4_2_reg_401 <= out_array_2_3_fu_976_p2;
    end else if ((((trunc_ln32_1_reg_1136 == 3'd2) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd3) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd5) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd6) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd7) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_array_4_2_reg_401 <= out_array_4_15_reg_241;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_array_5_0_reg_165 <= out_array_5_16_reg_229;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_5_0_reg_165 <= sext_ln14_11_fu_844_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_array_5_16_reg_229 <= out_array_5_2_reg_371;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_array_5_16_reg_229 <= out_array_5_0_reg_165;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln32_1_reg_1136 == 3'd5) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_5_2_reg_371 <= out_array_2_3_fu_976_p2;
    end else if ((((trunc_ln32_1_reg_1136 == 3'd2) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd3) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd4) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd6) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd7) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_array_5_2_reg_371 <= out_array_5_16_reg_229;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_array_6_0_reg_155 <= out_array_6_17_reg_217;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_6_0_reg_155 <= sext_ln14_13_fu_857_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_array_6_17_reg_217 <= out_array_6_2_reg_341;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_array_6_17_reg_217 <= out_array_6_0_reg_155;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln32_1_reg_1136 == 3'd6) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_6_2_reg_341 <= out_array_2_3_fu_976_p2;
    end else if ((((trunc_ln32_1_reg_1136 == 3'd2) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd3) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd4) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd5) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd7) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_array_6_2_reg_341 <= out_array_6_17_reg_217;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_array_7_0_reg_145 <= out_array_7_18_reg_205;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_7_0_reg_145 <= sext_ln14_15_fu_870_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_array_7_18_reg_205 <= out_array_7_2_reg_311;
    end else if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_array_7_18_reg_205 <= out_array_7_0_reg_145;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_7_1_fu_110 <= sext_ln14_1_fu_779_p1;
    end else if (((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_7_1_fu_110 <= out_array_2_3_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((trunc_ln32_1_reg_1136 == 3'd2) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd3) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd4) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd5) & (1'b1 == ap_CS_fsm_state5)) | ((trunc_ln32_1_reg_1136 == 3'd6) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_array_7_2_reg_311 <= out_array_7_18_reg_205;
    end else if (((trunc_ln32_1_reg_1136 == 3'd7) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_7_2_reg_311 <= out_array_2_3_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_7_3_fu_114 <= sext_ln14_3_fu_792_p1;
    end else if (((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_7_3_fu_114 <= out_array_2_3_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_7_4_fu_118 <= sext_ln14_1_fu_779_p1;
    end else if (((trunc_ln32_1_reg_1136 == 3'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_7_4_fu_118 <= out_array_2_3_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_array_7_5_fu_122 <= sext_ln14_3_fu_792_p1;
    end else if (((trunc_ln32_1_reg_1136 == 3'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_array_7_5_fu_122 <= out_array_2_3_fu_976_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        if ((3'd2 == add_ln32_fu_935_p2)) begin
            phi_ln32_reg_288 <= out_array_2_13_reg_265;
        end else if ((1'b1 == ap_condition_639)) begin
            phi_ln32_reg_288 <= out_array_7_18_reg_205;
        end else if ((3'd6 == add_ln32_fu_935_p2)) begin
            phi_ln32_reg_288 <= out_array_6_17_reg_217;
        end else if ((3'd5 == add_ln32_fu_935_p2)) begin
            phi_ln32_reg_288 <= out_array_5_16_reg_229;
        end else if ((3'd4 == add_ln32_fu_935_p2)) begin
            phi_ln32_reg_288 <= out_array_4_15_reg_241;
        end else if ((3'd3 == add_ln32_fu_935_p2)) begin
            phi_ln32_reg_288 <= out_array_3_14_reg_253;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln30_reg_1131 <= add_ln30_fu_925_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sub_ln14_1_reg_1047 <= sub_ln14_1_fu_555_p2;
        sub_ln14_2_reg_1052 <= sub_ln14_2_fu_589_p2;
        sub_ln14_3_reg_1057 <= sub_ln14_3_fu_623_p2;
        sub_ln14_4_reg_1062 <= sub_ln14_4_fu_657_p2;
        sub_ln14_5_reg_1067 <= sub_ln14_5_fu_691_p2;
        sub_ln14_6_reg_1072 <= sub_ln14_6_fu_725_p2;
        sub_ln14_7_reg_1077 <= sub_ln14_7_fu_759_p2;
        sub_ln14_reg_1042 <= sub_ln14_fu_521_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_920_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        trunc_ln32_1_reg_1136 <= trunc_ln32_1_fu_931_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        trunc_ln32_reg_1118 <= trunc_ln32_fu_904_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln27_fu_898_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        xf_V_reg_1123 <= xf_V_fu_914_p2;
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
            if (((icmp_ln27_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln30_fu_920_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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

assign C = grp_sqrt_fixed_32_32_s_fu_491_ap_return;

assign add_ln30_fu_925_p2 = (i_reg_277 + 28'd1);

assign add_ln32_fu_935_p2 = (trunc_ln32_1_fu_931_p1 + trunc_ln32_reg_1118);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_condition_639 = (~(3'd2 == add_ln32_fu_935_p2) & ~(3'd6 == add_ln32_fu_935_p2) & ~(3'd5 == add_ln32_fu_935_p2) & ~(3'd4 == add_ln32_fu_935_p2) & ~(3'd3 == add_ln32_fu_935_p2));
end

assign grp_fu_496_p4 = {{idx_fu_106[27:1]}};

assign icmp_ln27_fu_898_p2 = ((grp_fu_496_p4 == 27'd0) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_920_p2 = ((i_reg_277 == idx_fu_106) ? 1'b1 : 1'b0);

assign idx_3_fu_940_p1 = grp_fu_496_p4;

assign out_array_0_fu_773_p0 = sext_ln14_fu_770_p1;

assign out_array_0_fu_773_p1 = sext_ln14_fu_770_p1;

assign out_array_1_fu_786_p0 = sext_ln14_2_fu_783_p1;

assign out_array_1_fu_786_p1 = sext_ln14_2_fu_783_p1;

assign out_array_2_3_fu_976_p2 = (tmp_fu_955_p10 + phi_ln32_reg_288);

assign out_array_2_fu_799_p0 = sext_ln14_4_fu_796_p1;

assign out_array_2_fu_799_p1 = sext_ln14_4_fu_796_p1;

assign out_array_3_fu_812_p0 = sext_ln14_6_fu_809_p1;

assign out_array_3_fu_812_p1 = sext_ln14_6_fu_809_p1;

assign out_array_4_fu_825_p0 = sext_ln14_8_fu_822_p1;

assign out_array_4_fu_825_p1 = sext_ln14_8_fu_822_p1;

assign out_array_5_fu_838_p0 = sext_ln14_10_fu_835_p1;

assign out_array_5_fu_838_p1 = sext_ln14_10_fu_835_p1;

assign out_array_6_fu_851_p0 = sext_ln14_12_fu_848_p1;

assign out_array_6_fu_851_p1 = sext_ln14_12_fu_848_p1;

assign out_array_7_fu_864_p0 = sext_ln14_14_fu_861_p1;

assign out_array_7_fu_864_p1 = sext_ln14_14_fu_861_p1;

assign sext_ln14_10_fu_835_p1 = $signed(sub_ln14_5_reg_1067);

assign sext_ln14_11_fu_844_p1 = $signed(out_array_5_fu_838_p2);

assign sext_ln14_12_fu_848_p1 = $signed(sub_ln14_6_reg_1072);

assign sext_ln14_13_fu_857_p1 = $signed(out_array_6_fu_851_p2);

assign sext_ln14_14_fu_861_p1 = $signed(sub_ln14_7_reg_1077);

assign sext_ln14_15_fu_870_p1 = $signed(out_array_7_fu_864_p2);

assign sext_ln14_1_fu_779_p1 = $signed(out_array_0_fu_773_p2);

assign sext_ln14_2_fu_783_p1 = $signed(sub_ln14_1_reg_1047);

assign sext_ln14_3_fu_792_p1 = $signed(out_array_1_fu_786_p2);

assign sext_ln14_4_fu_796_p1 = $signed(sub_ln14_2_reg_1052);

assign sext_ln14_5_fu_805_p1 = $signed(out_array_2_fu_799_p2);

assign sext_ln14_6_fu_809_p1 = $signed(sub_ln14_3_reg_1057);

assign sext_ln14_7_fu_818_p1 = $signed(out_array_3_fu_812_p2);

assign sext_ln14_8_fu_822_p1 = $signed(sub_ln14_4_reg_1062);

assign sext_ln14_9_fu_831_p1 = $signed(out_array_4_fu_825_p2);

assign sext_ln14_fu_770_p1 = $signed(sub_ln14_reg_1042);

assign sub_ln14_1_fu_555_p2 = (zext_ln14_4_fu_537_p1 - zext_ln14_5_fu_551_p1);

assign sub_ln14_2_fu_589_p2 = (zext_ln14_6_fu_571_p1 - zext_ln14_7_fu_585_p1);

assign sub_ln14_3_fu_623_p2 = (zext_ln14_8_fu_605_p1 - zext_ln14_9_fu_619_p1);

assign sub_ln14_4_fu_657_p2 = (zext_ln14_10_fu_639_p1 - zext_ln14_11_fu_653_p1);

assign sub_ln14_5_fu_691_p2 = (zext_ln14_12_fu_673_p1 - zext_ln14_13_fu_687_p1);

assign sub_ln14_6_fu_725_p2 = (zext_ln14_14_fu_707_p1 - zext_ln14_15_fu_721_p1);

assign sub_ln14_7_fu_759_p2 = (zext_ln14_2_fu_741_p1 - zext_ln14_3_fu_755_p1);

assign sub_ln14_fu_521_p2 = (zext_ln14_fu_509_p1 - zext_ln14_1_fu_517_p1);

assign tmp_15_fu_541_p4 = {{B[15:8]}};

assign tmp_16_fu_561_p4 = {{A[23:16]}};

assign tmp_17_fu_575_p4 = {{B[23:16]}};

assign tmp_18_fu_595_p4 = {{A[31:24]}};

assign tmp_19_fu_609_p4 = {{B[31:24]}};

assign tmp_20_fu_629_p4 = {{A[39:32]}};

assign tmp_21_fu_643_p4 = {{B[39:32]}};

assign tmp_22_fu_663_p4 = {{A[47:40]}};

assign tmp_23_fu_677_p4 = {{B[47:40]}};

assign tmp_24_fu_697_p4 = {{A[55:48]}};

assign tmp_25_fu_711_p4 = {{B[55:48]}};

assign tmp_s_fu_527_p4 = {{A[15:8]}};

assign trunc_ln14_1_fu_513_p1 = B[7:0];

assign trunc_ln14_2_fu_745_p4 = {{B[63:56]}};

assign trunc_ln14_fu_505_p1 = A[7:0];

assign trunc_ln14_s_fu_731_p4 = {{A[63:56]}};

assign trunc_ln32_1_fu_931_p1 = i_reg_277[2:0];

assign trunc_ln32_fu_904_p1 = idx_fu_106[2:0];

assign xf_V_fu_914_p2 = (out_array_7_3_fu_114 + out_array_7_1_fu_110);

assign zext_ln14_10_fu_639_p1 = tmp_20_fu_629_p4;

assign zext_ln14_11_fu_653_p1 = tmp_21_fu_643_p4;

assign zext_ln14_12_fu_673_p1 = tmp_22_fu_663_p4;

assign zext_ln14_13_fu_687_p1 = tmp_23_fu_677_p4;

assign zext_ln14_14_fu_707_p1 = tmp_24_fu_697_p4;

assign zext_ln14_15_fu_721_p1 = tmp_25_fu_711_p4;

assign zext_ln14_1_fu_517_p1 = trunc_ln14_1_fu_513_p1;

assign zext_ln14_2_fu_741_p1 = trunc_ln14_s_fu_731_p4;

assign zext_ln14_3_fu_755_p1 = trunc_ln14_2_fu_745_p4;

assign zext_ln14_4_fu_537_p1 = tmp_s_fu_527_p4;

assign zext_ln14_5_fu_551_p1 = tmp_15_fu_541_p4;

assign zext_ln14_6_fu_571_p1 = tmp_16_fu_561_p4;

assign zext_ln14_7_fu_585_p1 = tmp_17_fu_575_p4;

assign zext_ln14_8_fu_605_p1 = tmp_18_fu_595_p4;

assign zext_ln14_9_fu_619_p1 = tmp_19_fu_609_p4;

assign zext_ln14_fu_509_p1 = trunc_ln14_fu_505_p1;

always @ (posedge ap_clk) begin
    idx_fu_106[27:3] <= 25'b0000000000000000000000000;
end

endmodule //eucHW_RC
