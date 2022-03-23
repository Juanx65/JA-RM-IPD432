// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module eucHW_eucHW_Pipeline_loopManDist (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_load,
        B_load,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] A_load;
input  [63:0] B_load;
output  [2:0] res_address0;
output   res_ce0;
output   res_we0;
output  [7:0] res_d0;

reg ap_idle;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20_fu_85_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] i_1_reg_233;
reg   [3:0] i_1_reg_233_pp0_iter1_reg;
wire   [5:0] shl_ln_fu_101_p3;
reg   [5:0] shl_ln_reg_242;
wire   [63:0] sub_ln24_fu_159_p2;
reg   [63:0] sub_ln24_reg_247;
wire  signed [7:0] sub_ln24_1_fu_201_p2;
reg  signed [7:0] sub_ln24_1_reg_253;
wire   [63:0] i_cast2_fu_207_p1;
wire    ap_block_pp0_stage0;
reg   [3:0] i_fu_48;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_1;
wire   [3:0] add_ln20_fu_91_p2;
wire   [7:0] mul_ln24_fu_211_p2;
wire   [2:0] trunc_ln24_fu_97_p1;
wire   [6:0] zext_ln24_2_fu_113_p1;
wire   [6:0] add_ln24_fu_117_p2;
wire   [63:0] zext_ln24_3_fu_123_p1;
wire   [0:0] tmp_fu_133_p3;
wire   [63:0] shl_ln24_fu_127_p2;
wire   [56:0] zext_ln24_1_fu_109_p1;
wire   [56:0] shl_ln24_1_fu_149_p2;
wire   [63:0] select_ln24_fu_141_p3;
wire   [63:0] zext_ln24_4_fu_155_p1;
wire   [63:0] and_ln24_fu_173_p2;
wire   [63:0] zext_ln24_fu_170_p1;
wire   [63:0] lshr_ln24_fu_177_p2;
wire   [63:0] and_ln24_1_fu_187_p2;
wire   [63:0] lshr_ln24_1_fu_191_p2;
wire   [7:0] trunc_ln24_1_fu_183_p1;
wire   [7:0] trunc_ln24_2_fu_197_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

eucHW_mul_8s_8s_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U1(
    .din0(sub_ln24_1_reg_253),
    .din1(sub_ln24_1_reg_253),
    .dout(mul_ln24_fu_211_p2)
);

eucHW_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln20_fu_85_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_48 <= add_ln20_fu_91_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_1_reg_233 <= ap_sig_allocacmp_i_1;
        i_1_reg_233_pp0_iter1_reg <= i_1_reg_233;
        sub_ln24_1_reg_253 <= sub_ln24_1_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln20_fu_85_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shl_ln_reg_242[5 : 3] <= shl_ln_fu_101_p3[5 : 3];
        sub_ln24_reg_247 <= sub_ln24_fu_159_p2;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_85_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_48;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln20_fu_91_p2 = (ap_sig_allocacmp_i_1 + 4'd1);

assign add_ln24_fu_117_p2 = (zext_ln24_2_fu_113_p1 + 7'd8);

assign and_ln24_1_fu_187_p2 = (sub_ln24_reg_247 & B_load);

assign and_ln24_fu_173_p2 = (sub_ln24_reg_247 & A_load);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_cast2_fu_207_p1 = i_1_reg_233_pp0_iter1_reg;

assign icmp_ln20_fu_85_p2 = ((ap_sig_allocacmp_i_1 == 4'd8) ? 1'b1 : 1'b0);

assign lshr_ln24_1_fu_191_p2 = and_ln24_1_fu_187_p2 >> zext_ln24_fu_170_p1;

assign lshr_ln24_fu_177_p2 = and_ln24_fu_173_p2 >> zext_ln24_fu_170_p1;

assign res_address0 = i_cast2_fu_207_p1;

assign res_d0 = mul_ln24_fu_211_p2;

assign select_ln24_fu_141_p3 = ((tmp_fu_133_p3[0:0] == 1'b1) ? 64'd0 : shl_ln24_fu_127_p2);

assign shl_ln24_1_fu_149_p2 = 57'd1 << zext_ln24_1_fu_109_p1;

assign shl_ln24_fu_127_p2 = 64'd1 << zext_ln24_3_fu_123_p1;

assign shl_ln_fu_101_p3 = {{trunc_ln24_fu_97_p1}, {3'd0}};

assign sub_ln24_1_fu_201_p2 = (trunc_ln24_1_fu_183_p1 - trunc_ln24_2_fu_197_p1);

assign sub_ln24_fu_159_p2 = (select_ln24_fu_141_p3 - zext_ln24_4_fu_155_p1);

assign tmp_fu_133_p3 = add_ln24_fu_117_p2[32'd6];

assign trunc_ln24_1_fu_183_p1 = lshr_ln24_fu_177_p2[7:0];

assign trunc_ln24_2_fu_197_p1 = lshr_ln24_1_fu_191_p2[7:0];

assign trunc_ln24_fu_97_p1 = ap_sig_allocacmp_i_1[2:0];

assign zext_ln24_1_fu_109_p1 = shl_ln_fu_101_p3;

assign zext_ln24_2_fu_113_p1 = shl_ln_fu_101_p3;

assign zext_ln24_3_fu_123_p1 = add_ln24_fu_117_p2;

assign zext_ln24_4_fu_155_p1 = shl_ln24_1_fu_149_p2;

assign zext_ln24_fu_170_p1 = shl_ln_reg_242;

always @ (posedge ap_clk) begin
    shl_ln_reg_242[2:0] <= 3'b000;
end

endmodule //eucHW_eucHW_Pipeline_loopManDist
