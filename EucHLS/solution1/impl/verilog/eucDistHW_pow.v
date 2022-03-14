// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module eucDistHW_pow (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        base_r,
        ap_return
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_state20 = 27'd524288;
parameter    ap_ST_fsm_state21 = 27'd1048576;
parameter    ap_ST_fsm_state22 = 27'd2097152;
parameter    ap_ST_fsm_state23 = 27'd4194304;
parameter    ap_ST_fsm_state24 = 27'd8388608;
parameter    ap_ST_fsm_state25 = 27'd16777216;
parameter    ap_ST_fsm_state26 = 27'd33554432;
parameter    ap_ST_fsm_state27 = 27'd67108864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] base_r;
output  [30:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[30:0] ap_return;

(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln1505_fu_108_p2;
reg   [0:0] icmp_ln1505_reg_169;
wire   [32:0] select_ln180_fu_142_p3;
reg   [32:0] select_ln180_reg_173;
wire   [98:0] x_l_V_fu_150_p3;
reg   [98:0] x_l_V_reg_178;
wire    ap_CS_fsm_state2;
wire    grp_log_99_33_s_fu_73_ap_start;
wire    grp_log_99_33_s_fu_73_ap_done;
wire    grp_log_99_33_s_fu_73_ap_idle;
wire    grp_log_99_33_s_fu_73_ap_ready;
wire   [71:0] grp_log_99_33_s_fu_73_ap_return;
wire    grp_exp_core_32_32_66_s_fu_92_ap_start;
wire    grp_exp_core_32_32_66_s_fu_92_ap_done;
wire    grp_exp_core_32_32_66_s_fu_92_ap_idle;
wire    grp_exp_core_32_32_66_s_fu_92_ap_ready;
wire   [40:0] grp_exp_core_32_32_66_s_fu_92_x;
wire   [30:0] grp_exp_core_32_32_66_s_fu_92_ap_return;
reg   [30:0] ap_phi_mux_ret_phi_fu_66_p4;
reg   [30:0] ret_reg_62;
wire    ap_CS_fsm_state27;
reg    grp_log_99_33_s_fu_73_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_exp_core_32_32_66_s_fu_92_ap_start_reg;
reg   [26:0] ap_NS_fsm;
wire    ap_NS_fsm_state3;
wire  signed [31:0] icmp_ln1505_fu_108_p0;
wire  signed [31:0] p_Result_s_fu_114_p1;
wire  signed [31:0] sext_ln666_fu_122_p0;
wire  signed [32:0] sext_ln666_fu_122_p1;
wire   [32:0] p_Val2_s_fu_126_p2;
wire   [0:0] p_Result_s_fu_114_p3;
wire   [32:0] p_Result_97_fu_132_p4;
reg   [30:0] ap_return_preg;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
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
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
#0 grp_log_99_33_s_fu_73_ap_start_reg = 1'b0;
#0 grp_exp_core_32_32_66_s_fu_92_ap_start_reg = 1'b0;
#0 ap_return_preg = 31'd0;
end

eucDistHW_log_99_33_s grp_log_99_33_s_fu_73(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_log_99_33_s_fu_73_ap_start),
    .ap_done(grp_log_99_33_s_fu_73_ap_done),
    .ap_idle(grp_log_99_33_s_fu_73_ap_idle),
    .ap_ready(grp_log_99_33_s_fu_73_ap_ready),
    .x(x_l_V_reg_178),
    .ap_return(grp_log_99_33_s_fu_73_ap_return)
);

eucDistHW_exp_core_32_32_66_s grp_exp_core_32_32_66_s_fu_92(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_exp_core_32_32_66_s_fu_92_ap_start),
    .ap_done(grp_exp_core_32_32_66_s_fu_92_ap_done),
    .ap_idle(grp_exp_core_32_32_66_s_fu_92_ap_idle),
    .ap_ready(grp_exp_core_32_32_66_s_fu_92_ap_ready),
    .x(grp_exp_core_32_32_66_s_fu_92_x),
    .ap_return(grp_exp_core_32_32_66_s_fu_92_ap_return)
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
        ap_return_preg <= 31'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_preg <= ap_phi_mux_ret_phi_fu_66_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_exp_core_32_32_66_s_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_NS_fsm_state3))) begin
            grp_exp_core_32_32_66_s_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_exp_core_32_32_66_s_fu_92_ap_ready == 1'b1)) begin
            grp_exp_core_32_32_66_s_fu_92_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_log_99_33_s_fu_73_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_log_99_33_s_fu_73_ap_start_reg <= 1'b1;
        end else if ((grp_log_99_33_s_fu_73_ap_ready == 1'b1)) begin
            grp_log_99_33_s_fu_73_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1505_fu_108_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ret_reg_62 <= 31'd0;
    end else if (((icmp_ln1505_reg_169 == 1'd0) & (1'b1 == ap_CS_fsm_state27))) begin
        ret_reg_62 <= grp_exp_core_32_32_66_s_fu_92_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln1505_reg_169 <= icmp_ln1505_fu_108_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1505_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        select_ln180_reg_173 <= select_ln180_fu_142_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_l_V_reg_178[98 : 66] <= x_l_V_fu_150_p3[98 : 66];
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

assign ap_ST_fsm_state19_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

assign ap_ST_fsm_state21_blk = 1'b0;

assign ap_ST_fsm_state22_blk = 1'b0;

assign ap_ST_fsm_state23_blk = 1'b0;

assign ap_ST_fsm_state24_blk = 1'b0;

assign ap_ST_fsm_state25_blk = 1'b0;

assign ap_ST_fsm_state26_blk = 1'b0;

assign ap_ST_fsm_state27_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_log_99_33_s_fu_73_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln1505_reg_169 == 1'd0) & (1'b1 == ap_CS_fsm_state27))) begin
        ap_phi_mux_ret_phi_fu_66_p4 = grp_exp_core_32_32_66_s_fu_92_ap_return;
    end else begin
        ap_phi_mux_ret_phi_fu_66_p4 = ret_reg_62;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return = ap_phi_mux_ret_phi_fu_66_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln1505_fu_108_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else if (((icmp_ln1505_fu_108_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_log_99_33_s_fu_73_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
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
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_NS_fsm_state3 = ap_NS_fsm[32'd2];

assign grp_exp_core_32_32_66_s_fu_92_ap_start = grp_exp_core_32_32_66_s_fu_92_ap_start_reg;

assign grp_exp_core_32_32_66_s_fu_92_x = {{grp_log_99_33_s_fu_73_ap_return[71:31]}};

assign grp_log_99_33_s_fu_73_ap_start = grp_log_99_33_s_fu_73_ap_start_reg;

assign icmp_ln1505_fu_108_p0 = base_r;

assign icmp_ln1505_fu_108_p2 = ((icmp_ln1505_fu_108_p0 == 32'd0) ? 1'b1 : 1'b0);

assign p_Result_97_fu_132_p4 = {|(1'd0), p_Val2_s_fu_126_p2[32 - 1:0]};

assign p_Result_s_fu_114_p1 = base_r;

assign p_Result_s_fu_114_p3 = p_Result_s_fu_114_p1[32'd31];

assign p_Val2_s_fu_126_p2 = ($signed(33'd0) - $signed(sext_ln666_fu_122_p1));

assign select_ln180_fu_142_p3 = ((p_Result_s_fu_114_p3[0:0] == 1'b1) ? p_Result_97_fu_132_p4 : sext_ln666_fu_122_p1);

assign sext_ln666_fu_122_p0 = base_r;

assign sext_ln666_fu_122_p1 = sext_ln666_fu_122_p0;

assign x_l_V_fu_150_p3 = {{select_ln180_reg_173}, {66'd0}};

always @ (posedge ap_clk) begin
    x_l_V_reg_178[65:0] <= 66'b000000000000000000000000000000000000000000000000000000000000000000;
end

endmodule //eucDistHW_pow
