// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="eucHW_eucHW,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a12ti-csg325-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.006625,HLS_SYN_LAT=528,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=26557,HLS_SYN_LUT=37773,HLS_VERSION=2021_1}" *)

module eucHW (
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

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_pp0_stage0 = 12'd2;
parameter    ap_ST_fsm_state9 = 12'd4;
parameter    ap_ST_fsm_state10 = 12'd8;
parameter    ap_ST_fsm_state11 = 12'd16;
parameter    ap_ST_fsm_state12 = 12'd32;
parameter    ap_ST_fsm_state13 = 12'd64;
parameter    ap_ST_fsm_state14 = 12'd128;
parameter    ap_ST_fsm_state15 = 12'd256;
parameter    ap_ST_fsm_state16 = 12'd512;
parameter    ap_ST_fsm_state17 = 12'd1024;
parameter    ap_ST_fsm_state18 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] A;
input  [8191:0] B;
output  [31:0] C;
output   C_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg C_ap_vld;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [12:0] shl_ln_fu_133_p3;
reg   [12:0] shl_ln_reg_413;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_121_p3;
reg   [12:0] shl_ln_reg_413_pp0_iter1_reg;
reg   [12:0] shl_ln_reg_413_pp0_iter2_reg;
wire   [13:0] add_ln22_fu_151_p2;
reg   [13:0] add_ln22_reg_420;
wire   [8191:0] select_ln22_fu_191_p3;
reg   [8191:0] select_ln22_reg_425;
wire   [8191:0] zext_ln22_2_fu_243_p1;
reg   [8191:0] zext_ln22_2_reg_440;
reg   [8191:0] zext_ln22_2_reg_440_pp0_iter2_reg;
wire   [8191:0] grp_fu_232_p2;
reg   [8191:0] sub_ln22_reg_451;
wire   [8191:0] grp_fu_253_p2;
reg   [8191:0] sub_ln22_2_reg_457;
wire  signed [17:0] sext_ln22_2_fu_303_p1;
wire   [8:0] sub_ln22_3_fu_341_p2;
reg   [8:0] sub_ln22_3_reg_469;
reg   [8:0] sub_ln22_3_reg_469_pp0_iter4_reg;
wire  signed [17:0] mul_ln22_1_fu_350_p2;
wire    ap_CS_fsm_state9;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
wire   [15:0] grp_sqrt_fixed_32_32_s_fu_99_ap_return;
reg   [26:0] result_fu_72;
wire   [26:0] result_1_fu_359_p2;
wire    ap_block_pp0_stage0;
reg   [10:0] i_fu_76;
wire   [10:0] add_ln16_fu_199_p2;
wire    ap_CS_fsm_state18;
wire   [9:0] trunc_ln22_fu_129_p1;
wire   [12:0] or_ln22_fu_141_p2;
wire   [13:0] zext_ln22_3_fu_147_p1;
wire   [12:0] or_ln22_2_fu_157_p2;
wire   [13:0] zext_ln22_6_fu_163_p1;
wire   [13:0] add_ln22_1_fu_167_p2;
wire   [8191:0] zext_ln22_7_fu_173_p1;
wire   [0:0] tmp_33_fu_183_p3;
wire   [8191:0] shl_ln22_2_fu_177_p2;
wire   [8191:0] zext_ln22_4_fu_213_p1;
wire   [8184:0] zext_ln22_1_fu_210_p1;
wire   [8184:0] shl_ln22_1_fu_222_p2;
wire   [8191:0] grp_fu_232_p0;
wire   [8191:0] grp_fu_232_p1;
wire   [12:0] or_ln22_1_fu_238_p2;
wire   [8191:0] grp_fu_253_p1;
wire   [8191:0] and_ln22_fu_261_p2;
wire   [8191:0] zext_ln22_fu_258_p1;
wire   [8191:0] lshr_ln22_fu_265_p2;
wire   [7:0] trunc_ln22_1_fu_271_p1;
wire   [8191:0] and_ln22_1_fu_279_p2;
wire   [8191:0] lshr_ln22_1_fu_283_p2;
wire   [7:0] trunc_ln22_2_fu_289_p1;
wire  signed [8:0] sext_ln22_fu_275_p1;
wire  signed [8:0] sext_ln22_1_fu_293_p1;
wire   [8:0] sub_ln22_1_fu_297_p2;
wire   [8191:0] and_ln22_2_fu_307_p2;
wire   [8191:0] lshr_ln22_2_fu_311_p2;
wire   [7:0] trunc_ln22_3_fu_316_p1;
wire   [8191:0] and_ln22_3_fu_324_p2;
wire   [8191:0] lshr_ln22_3_fu_328_p2;
wire   [7:0] trunc_ln22_4_fu_333_p1;
wire  signed [8:0] sext_ln22_3_fu_320_p1;
wire  signed [8:0] sext_ln22_4_fu_337_p1;
wire  signed [8:0] mul_ln22_1_fu_350_p0;
wire  signed [17:0] sext_ln22_5_fu_347_p1;
wire  signed [8:0] mul_ln22_1_fu_350_p1;
wire  signed [17:0] grp_fu_375_p3;
wire  signed [26:0] sext_ln22_6_fu_356_p1;
wire  signed [8:0] grp_fu_375_p0;
wire  signed [8:0] grp_fu_375_p1;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
end

eucHW_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_99(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .x(result_fu_72),
    .ap_return(grp_sqrt_fixed_32_32_s_fu_99_ap_return)
);

eucHW_sub_8192ns_8192ns_8192_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 8192 ),
    .din1_WIDTH( 8192 ),
    .dout_WIDTH( 8192 ))
sub_8192ns_8192ns_8192_2_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_232_p0),
    .din1(grp_fu_232_p1),
    .ce(1'b1),
    .dout(grp_fu_232_p2)
);

eucHW_sub_8192ns_8192ns_8192_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 8192 ),
    .din1_WIDTH( 8192 ),
    .dout_WIDTH( 8192 ))
sub_8192ns_8192ns_8192_2_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(select_ln22_reg_425),
    .din1(grp_fu_253_p1),
    .ce(1'b1),
    .dout(grp_fu_253_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U4(
    .din0(mul_ln22_1_fu_350_p0),
    .din1(mul_ln22_1_fu_350_p1),
    .dout(mul_ln22_1_fu_350_p2)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_375_p0),
    .din1(grp_fu_375_p1),
    .din2(mul_ln22_1_fu_350_p2),
    .ce(1'b1),
    .dout(grp_fu_375_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_76 <= 11'd0;
    end else if (((tmp_fu_121_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_fu_76 <= add_ln16_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        result_fu_72 <= 27'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        result_fu_72 <= result_1_fu_359_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_121_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln22_reg_420[13 : 3] <= add_ln22_fu_151_p2[13 : 3];
        select_ln22_reg_425 <= select_ln22_fu_191_p3;
        shl_ln_reg_413[12 : 3] <= shl_ln_fu_133_p3[12 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shl_ln_reg_413_pp0_iter1_reg[12 : 3] <= shl_ln_reg_413[12 : 3];
        zext_ln22_2_reg_440[12 : 4] <= zext_ln22_2_fu_243_p1[12 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        shl_ln_reg_413_pp0_iter2_reg[12 : 3] <= shl_ln_reg_413_pp0_iter1_reg[12 : 3];
        sub_ln22_2_reg_457 <= grp_fu_253_p2;
        sub_ln22_3_reg_469 <= sub_ln22_3_fu_341_p2;
        sub_ln22_3_reg_469_pp0_iter4_reg <= sub_ln22_3_reg_469;
        sub_ln22_reg_451 <= grp_fu_232_p2;
        zext_ln22_2_reg_440_pp0_iter2_reg[12 : 4] <= zext_ln22_2_reg_440[12 : 4];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
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

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((tmp_fu_121_p3 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((tmp_fu_121_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((tmp_fu_121_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
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
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C = grp_sqrt_fixed_32_32_s_fu_99_ap_return;

assign add_ln16_fu_199_p2 = (i_fu_76 + 11'd2);

assign add_ln22_1_fu_167_p2 = (zext_ln22_6_fu_163_p1 + 14'd1);

assign add_ln22_fu_151_p2 = (zext_ln22_3_fu_147_p1 + 14'd1);

assign and_ln22_1_fu_279_p2 = (sub_ln22_reg_451 & B);

assign and_ln22_2_fu_307_p2 = (sub_ln22_2_reg_457 & A);

assign and_ln22_3_fu_324_p2 = (sub_ln22_2_reg_457 & B);

assign and_ln22_fu_261_p2 = (sub_ln22_reg_451 & A);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_232_p0 = 8192'd1 << zext_ln22_4_fu_213_p1;

assign grp_fu_232_p1 = shl_ln22_1_fu_222_p2;

assign grp_fu_253_p1 = 8192'd1 << zext_ln22_2_fu_243_p1;

assign grp_fu_375_p0 = sext_ln22_2_fu_303_p1;

assign grp_fu_375_p1 = sext_ln22_2_fu_303_p1;

assign lshr_ln22_1_fu_283_p2 = and_ln22_1_fu_279_p2 >> zext_ln22_fu_258_p1;

assign lshr_ln22_2_fu_311_p2 = and_ln22_2_fu_307_p2 >> zext_ln22_2_reg_440_pp0_iter2_reg;

assign lshr_ln22_3_fu_328_p2 = and_ln22_3_fu_324_p2 >> zext_ln22_2_reg_440_pp0_iter2_reg;

assign lshr_ln22_fu_265_p2 = and_ln22_fu_261_p2 >> zext_ln22_fu_258_p1;

assign mul_ln22_1_fu_350_p0 = sext_ln22_5_fu_347_p1;

assign mul_ln22_1_fu_350_p1 = sext_ln22_5_fu_347_p1;

assign or_ln22_1_fu_238_p2 = (shl_ln_reg_413 | 13'd8);

assign or_ln22_2_fu_157_p2 = (shl_ln_fu_133_p3 | 13'd15);

assign or_ln22_fu_141_p2 = (shl_ln_fu_133_p3 | 13'd7);

assign result_1_fu_359_p2 = ($signed(result_fu_72) + $signed(sext_ln22_6_fu_356_p1));

assign select_ln22_fu_191_p3 = ((tmp_33_fu_183_p3[0:0] == 1'b1) ? 8192'd0 : shl_ln22_2_fu_177_p2);

assign sext_ln22_1_fu_293_p1 = $signed(trunc_ln22_2_fu_289_p1);

assign sext_ln22_2_fu_303_p1 = $signed(sub_ln22_1_fu_297_p2);

assign sext_ln22_3_fu_320_p1 = $signed(trunc_ln22_3_fu_316_p1);

assign sext_ln22_4_fu_337_p1 = $signed(trunc_ln22_4_fu_333_p1);

assign sext_ln22_5_fu_347_p1 = $signed(sub_ln22_3_reg_469_pp0_iter4_reg);

assign sext_ln22_6_fu_356_p1 = grp_fu_375_p3;

assign sext_ln22_fu_275_p1 = $signed(trunc_ln22_1_fu_271_p1);

assign shl_ln22_1_fu_222_p2 = 8185'd1 << zext_ln22_1_fu_210_p1;

assign shl_ln22_2_fu_177_p2 = 8192'd1 << zext_ln22_7_fu_173_p1;

assign shl_ln_fu_133_p3 = {{trunc_ln22_fu_129_p1}, {3'd0}};

assign sub_ln22_1_fu_297_p2 = ($signed(sext_ln22_fu_275_p1) - $signed(sext_ln22_1_fu_293_p1));

assign sub_ln22_3_fu_341_p2 = ($signed(sext_ln22_3_fu_320_p1) - $signed(sext_ln22_4_fu_337_p1));

assign tmp_33_fu_183_p3 = add_ln22_1_fu_167_p2[32'd13];

assign tmp_fu_121_p3 = i_fu_76[32'd10];

assign trunc_ln22_1_fu_271_p1 = lshr_ln22_fu_265_p2[7:0];

assign trunc_ln22_2_fu_289_p1 = lshr_ln22_1_fu_283_p2[7:0];

assign trunc_ln22_3_fu_316_p1 = lshr_ln22_2_fu_311_p2[7:0];

assign trunc_ln22_4_fu_333_p1 = lshr_ln22_3_fu_328_p2[7:0];

assign trunc_ln22_fu_129_p1 = i_fu_76[9:0];

assign zext_ln22_1_fu_210_p1 = shl_ln_reg_413;

assign zext_ln22_2_fu_243_p1 = or_ln22_1_fu_238_p2;

assign zext_ln22_3_fu_147_p1 = or_ln22_fu_141_p2;

assign zext_ln22_4_fu_213_p1 = add_ln22_reg_420;

assign zext_ln22_6_fu_163_p1 = or_ln22_2_fu_157_p2;

assign zext_ln22_7_fu_173_p1 = add_ln22_1_fu_167_p2;

assign zext_ln22_fu_258_p1 = shl_ln_reg_413_pp0_iter2_reg;

always @ (posedge ap_clk) begin
    shl_ln_reg_413[2:0] <= 3'b000;
    shl_ln_reg_413_pp0_iter1_reg[2:0] <= 3'b000;
    shl_ln_reg_413_pp0_iter2_reg[2:0] <= 3'b000;
    add_ln22_reg_420[2:0] <= 3'b000;
    zext_ln22_2_reg_440[3:0] <= 4'b1000;
    zext_ln22_2_reg_440[8191:13] <= 8179'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    zext_ln22_2_reg_440_pp0_iter2_reg[3:0] <= 4'b1000;
    zext_ln22_2_reg_440_pp0_iter2_reg[8191:13] <= 8179'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end

endmodule //eucHW
