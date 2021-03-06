// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="eucHW_eucHW,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010i-clg400-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.154625,HLS_SYN_LAT=14,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1259,HLS_SYN_LUT=2836,HLS_VERSION=2021_1}" *)

module eucHW (
        ap_clk,
        ap_rst_n,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 9;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [7:0] A_0;
wire   [7:0] A_1;
wire   [7:0] A_2;
wire   [7:0] A_3;
wire   [7:0] A_4;
wire   [7:0] A_5;
wire   [7:0] A_6;
wire   [7:0] A_7;
wire   [7:0] A_8;
wire   [7:0] A_9;
wire   [7:0] A_10;
wire   [7:0] A_11;
wire   [7:0] A_12;
wire   [7:0] A_13;
wire   [7:0] A_14;
wire   [7:0] A_15;
wire   [7:0] B_0;
wire   [7:0] B_1;
wire   [7:0] B_2;
wire   [7:0] B_3;
wire   [7:0] B_4;
wire   [7:0] B_5;
wire   [7:0] B_6;
wire   [7:0] B_7;
wire   [7:0] B_8;
wire   [7:0] B_9;
wire   [7:0] B_10;
wire   [7:0] B_11;
wire   [7:0] B_12;
wire   [7:0] B_13;
wire   [7:0] B_14;
wire   [7:0] B_15;
wire   [31:0] C;
reg    C_ap_vld;
wire  signed [17:0] sext_ln37_fu_372_p1;
wire   [8:0] sub_ln37_1_fu_384_p2;
reg   [8:0] sub_ln37_1_reg_856;
wire   [8:0] sub_ln37_2_fu_398_p2;
reg   [8:0] sub_ln37_2_reg_861;
wire  signed [17:0] sext_ln37_3_fu_418_p1;
wire   [8:0] sub_ln37_4_fu_430_p2;
reg   [8:0] sub_ln37_4_reg_872;
wire  signed [17:0] sext_ln37_5_fu_450_p1;
wire   [8:0] sub_ln37_6_fu_462_p2;
reg   [8:0] sub_ln37_6_reg_883;
wire  signed [17:0] sext_ln37_7_fu_482_p1;
wire   [8:0] sub_ln37_8_fu_494_p2;
reg   [8:0] sub_ln37_8_reg_894;
wire  signed [17:0] sext_ln37_9_fu_514_p1;
wire   [8:0] sub_ln37_10_fu_526_p2;
reg   [8:0] sub_ln37_10_reg_905;
wire  signed [17:0] sext_ln37_11_fu_546_p1;
wire   [8:0] sub_ln37_12_fu_558_p2;
reg   [8:0] sub_ln37_12_reg_916;
wire  signed [17:0] sext_ln37_13_fu_578_p1;
wire   [8:0] sub_ln37_14_fu_590_p2;
reg   [8:0] sub_ln37_14_reg_927;
wire  signed [17:0] sext_ln37_15_fu_610_p1;
wire  signed [17:0] mul_ln37_fu_617_p2;
wire    ap_CS_fsm_state3;
wire  signed [17:0] mul_ln37_1_fu_626_p2;
wire  signed [17:0] mul_ln37_3_fu_635_p2;
wire  signed [17:0] mul_ln37_5_fu_644_p2;
wire  signed [17:0] mul_ln37_7_fu_653_p2;
wire  signed [17:0] mul_ln37_9_fu_662_p2;
wire  signed [17:0] mul_ln37_11_fu_671_p2;
wire  signed [17:0] mul_ln37_13_fu_680_p2;
wire   [19:0] add_ln37_6_fu_718_p2;
reg   [19:0] add_ln37_6_reg_978;
wire    ap_CS_fsm_state4;
wire   [19:0] add_ln37_13_fu_756_p2;
reg   [19:0] add_ln37_13_reg_983;
wire   [20:0] result_2_fu_768_p2;
reg   [20:0] result_2_reg_988;
wire    ap_CS_fsm_state5;
wire   [15:0] grp_sqrt_fixed_32_32_s_fu_353_ap_return;
reg   [15:0] p_Val2_s_reg_993;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state15;
wire   [8:0] zext_ln37_fu_358_p1;
wire   [8:0] zext_ln37_1_fu_362_p1;
wire   [8:0] sub_ln37_fu_366_p2;
wire   [8:0] zext_ln37_2_fu_376_p1;
wire   [8:0] zext_ln37_3_fu_380_p1;
wire   [8:0] zext_ln37_4_fu_390_p1;
wire   [8:0] zext_ln37_5_fu_394_p1;
wire   [8:0] zext_ln37_6_fu_404_p1;
wire   [8:0] zext_ln37_7_fu_408_p1;
wire   [8:0] sub_ln37_3_fu_412_p2;
wire   [8:0] zext_ln37_8_fu_422_p1;
wire   [8:0] zext_ln37_9_fu_426_p1;
wire   [8:0] zext_ln37_10_fu_436_p1;
wire   [8:0] zext_ln37_11_fu_440_p1;
wire   [8:0] sub_ln37_5_fu_444_p2;
wire   [8:0] zext_ln37_12_fu_454_p1;
wire   [8:0] zext_ln37_13_fu_458_p1;
wire   [8:0] zext_ln37_14_fu_468_p1;
wire   [8:0] zext_ln37_15_fu_472_p1;
wire   [8:0] sub_ln37_7_fu_476_p2;
wire   [8:0] zext_ln37_16_fu_486_p1;
wire   [8:0] zext_ln37_17_fu_490_p1;
wire   [8:0] zext_ln37_18_fu_500_p1;
wire   [8:0] zext_ln37_19_fu_504_p1;
wire   [8:0] sub_ln37_9_fu_508_p2;
wire   [8:0] zext_ln37_20_fu_518_p1;
wire   [8:0] zext_ln37_21_fu_522_p1;
wire   [8:0] zext_ln37_22_fu_532_p1;
wire   [8:0] zext_ln37_23_fu_536_p1;
wire   [8:0] sub_ln37_11_fu_540_p2;
wire   [8:0] zext_ln37_24_fu_550_p1;
wire   [8:0] zext_ln37_25_fu_554_p1;
wire   [8:0] zext_ln37_26_fu_564_p1;
wire   [8:0] zext_ln37_27_fu_568_p1;
wire   [8:0] sub_ln37_13_fu_572_p2;
wire   [8:0] zext_ln37_28_fu_582_p1;
wire   [8:0] zext_ln37_29_fu_586_p1;
wire   [8:0] zext_ln37_30_fu_596_p1;
wire   [8:0] zext_ln37_31_fu_600_p1;
wire   [8:0] sub_ln37_15_fu_604_p2;
wire  signed [8:0] mul_ln37_fu_617_p0;
wire  signed [17:0] sext_ln37_1_fu_614_p1;
wire  signed [8:0] mul_ln37_fu_617_p1;
wire  signed [8:0] mul_ln37_1_fu_626_p0;
wire  signed [17:0] sext_ln37_2_fu_623_p1;
wire  signed [8:0] mul_ln37_1_fu_626_p1;
wire  signed [8:0] mul_ln37_3_fu_635_p0;
wire  signed [17:0] sext_ln37_4_fu_632_p1;
wire  signed [8:0] mul_ln37_3_fu_635_p1;
wire  signed [8:0] mul_ln37_5_fu_644_p0;
wire  signed [17:0] sext_ln37_6_fu_641_p1;
wire  signed [8:0] mul_ln37_5_fu_644_p1;
wire  signed [8:0] mul_ln37_7_fu_653_p0;
wire  signed [17:0] sext_ln37_8_fu_650_p1;
wire  signed [8:0] mul_ln37_7_fu_653_p1;
wire  signed [8:0] mul_ln37_9_fu_662_p0;
wire  signed [17:0] sext_ln37_10_fu_659_p1;
wire  signed [8:0] mul_ln37_9_fu_662_p1;
wire  signed [8:0] mul_ln37_11_fu_671_p0;
wire  signed [17:0] sext_ln37_12_fu_668_p1;
wire  signed [8:0] mul_ln37_11_fu_671_p1;
wire  signed [8:0] mul_ln37_13_fu_680_p0;
wire  signed [17:0] sext_ln37_14_fu_677_p1;
wire  signed [8:0] mul_ln37_13_fu_680_p1;
wire  signed [17:0] grp_fu_778_p3;
wire  signed [17:0] grp_fu_787_p3;
wire  signed [18:0] sext_ln37_17_fu_689_p1;
wire  signed [18:0] sext_ln37_16_fu_686_p1;
wire   [18:0] add_ln37_2_fu_692_p2;
wire  signed [17:0] grp_fu_796_p3;
wire  signed [17:0] grp_fu_805_p3;
wire  signed [18:0] sext_ln37_20_fu_705_p1;
wire  signed [18:0] sext_ln37_19_fu_702_p1;
wire   [18:0] add_ln37_5_fu_708_p2;
wire  signed [19:0] sext_ln37_21_fu_714_p1;
wire  signed [19:0] sext_ln37_18_fu_698_p1;
wire  signed [17:0] grp_fu_814_p3;
wire  signed [17:0] grp_fu_823_p3;
wire  signed [18:0] sext_ln37_24_fu_727_p1;
wire  signed [18:0] sext_ln37_23_fu_724_p1;
wire   [18:0] add_ln37_9_fu_730_p2;
wire  signed [17:0] grp_fu_832_p3;
wire  signed [17:0] grp_fu_841_p3;
wire  signed [18:0] sext_ln37_27_fu_743_p1;
wire  signed [18:0] sext_ln37_26_fu_740_p1;
wire   [18:0] add_ln37_12_fu_746_p2;
wire  signed [19:0] sext_ln37_28_fu_752_p1;
wire  signed [19:0] sext_ln37_25_fu_736_p1;
wire  signed [20:0] sext_ln37_29_fu_765_p1;
wire  signed [20:0] sext_ln37_22_fu_762_p1;
wire  signed [8:0] grp_fu_778_p0;
wire  signed [8:0] grp_fu_778_p1;
wire  signed [8:0] grp_fu_787_p0;
wire  signed [8:0] grp_fu_787_p1;
wire  signed [8:0] grp_fu_796_p0;
wire  signed [8:0] grp_fu_796_p1;
wire  signed [8:0] grp_fu_805_p0;
wire  signed [8:0] grp_fu_805_p1;
wire  signed [8:0] grp_fu_814_p0;
wire  signed [8:0] grp_fu_814_p1;
wire  signed [8:0] grp_fu_823_p0;
wire  signed [8:0] grp_fu_823_p1;
wire  signed [8:0] grp_fu_832_p0;
wire  signed [8:0] grp_fu_832_p1;
wire  signed [8:0] grp_fu_841_p0;
wire  signed [8:0] grp_fu_841_p1;
reg   [14:0] ap_NS_fsm;
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
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
end

eucHW_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_353(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .x(result_2_reg_988),
    .ap_return(grp_sqrt_fixed_32_32_s_fu_353_ap_return)
);

eucHW_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .A_0(A_0),
    .A_1(A_1),
    .A_2(A_2),
    .A_3(A_3),
    .A_4(A_4),
    .A_5(A_5),
    .A_6(A_6),
    .A_7(A_7),
    .A_8(A_8),
    .A_9(A_9),
    .A_10(A_10),
    .A_11(A_11),
    .A_12(A_12),
    .A_13(A_13),
    .A_14(A_14),
    .A_15(A_15),
    .B_0(B_0),
    .B_1(B_1),
    .B_2(B_2),
    .B_3(B_3),
    .B_4(B_4),
    .B_5(B_5),
    .B_6(B_6),
    .B_7(B_7),
    .B_8(B_8),
    .B_9(B_9),
    .B_10(B_10),
    .B_11(B_11),
    .B_12(B_12),
    .B_13(B_13),
    .B_14(B_14),
    .B_15(B_15),
    .C(C),
    .C_ap_vld(C_ap_vld),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U2(
    .din0(mul_ln37_fu_617_p0),
    .din1(mul_ln37_fu_617_p1),
    .dout(mul_ln37_fu_617_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U3(
    .din0(mul_ln37_1_fu_626_p0),
    .din1(mul_ln37_1_fu_626_p1),
    .dout(mul_ln37_1_fu_626_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U4(
    .din0(mul_ln37_3_fu_635_p0),
    .din1(mul_ln37_3_fu_635_p1),
    .dout(mul_ln37_3_fu_635_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U5(
    .din0(mul_ln37_5_fu_644_p0),
    .din1(mul_ln37_5_fu_644_p1),
    .dout(mul_ln37_5_fu_644_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U6(
    .din0(mul_ln37_7_fu_653_p0),
    .din1(mul_ln37_7_fu_653_p1),
    .dout(mul_ln37_7_fu_653_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U7(
    .din0(mul_ln37_9_fu_662_p0),
    .din1(mul_ln37_9_fu_662_p1),
    .dout(mul_ln37_9_fu_662_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U8(
    .din0(mul_ln37_11_fu_671_p0),
    .din1(mul_ln37_11_fu_671_p1),
    .dout(mul_ln37_11_fu_671_p2)
);

eucHW_mul_9s_9s_18_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 18 ))
mul_9s_9s_18_1_1_U9(
    .din0(mul_ln37_13_fu_680_p0),
    .din1(mul_ln37_13_fu_680_p1),
    .dout(mul_ln37_13_fu_680_p2)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U10(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_778_p0),
    .din1(grp_fu_778_p1),
    .din2(mul_ln37_fu_617_p2),
    .ce(1'b1),
    .dout(grp_fu_778_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U11(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_787_p0),
    .din1(grp_fu_787_p1),
    .din2(mul_ln37_1_fu_626_p2),
    .ce(1'b1),
    .dout(grp_fu_787_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U12(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_796_p0),
    .din1(grp_fu_796_p1),
    .din2(mul_ln37_3_fu_635_p2),
    .ce(1'b1),
    .dout(grp_fu_796_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U13(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_805_p0),
    .din1(grp_fu_805_p1),
    .din2(mul_ln37_5_fu_644_p2),
    .ce(1'b1),
    .dout(grp_fu_805_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U14(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_814_p0),
    .din1(grp_fu_814_p1),
    .din2(mul_ln37_7_fu_653_p2),
    .ce(1'b1),
    .dout(grp_fu_814_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U15(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_823_p0),
    .din1(grp_fu_823_p1),
    .din2(mul_ln37_9_fu_662_p2),
    .ce(1'b1),
    .dout(grp_fu_823_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U16(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_832_p0),
    .din1(grp_fu_832_p1),
    .din2(mul_ln37_11_fu_671_p2),
    .ce(1'b1),
    .dout(grp_fu_832_p3)
);

eucHW_mac_muladd_9s_9s_18s_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 18 ),
    .dout_WIDTH( 18 ))
mac_muladd_9s_9s_18s_18_4_1_U17(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_841_p0),
    .din1(grp_fu_841_p1),
    .din2(mul_ln37_13_fu_680_p2),
    .ce(1'b1),
    .dout(grp_fu_841_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln37_13_reg_983 <= add_ln37_13_fu_756_p2;
        add_ln37_6_reg_978 <= add_ln37_6_fu_718_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_Val2_s_reg_993 <= grp_sqrt_fixed_32_32_s_fu_353_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        result_2_reg_988 <= result_2_fu_768_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sub_ln37_10_reg_905 <= sub_ln37_10_fu_526_p2;
        sub_ln37_12_reg_916 <= sub_ln37_12_fu_558_p2;
        sub_ln37_14_reg_927 <= sub_ln37_14_fu_590_p2;
        sub_ln37_1_reg_856 <= sub_ln37_1_fu_384_p2;
        sub_ln37_2_reg_861 <= sub_ln37_2_fu_398_p2;
        sub_ln37_4_reg_872 <= sub_ln37_4_fu_430_p2;
        sub_ln37_6_reg_883 <= sub_ln37_6_fu_462_p2;
        sub_ln37_8_reg_894 <= sub_ln37_8_fu_494_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C = p_Val2_s_reg_993;

assign add_ln37_12_fu_746_p2 = ($signed(sext_ln37_27_fu_743_p1) + $signed(sext_ln37_26_fu_740_p1));

assign add_ln37_13_fu_756_p2 = ($signed(sext_ln37_28_fu_752_p1) + $signed(sext_ln37_25_fu_736_p1));

assign add_ln37_2_fu_692_p2 = ($signed(sext_ln37_17_fu_689_p1) + $signed(sext_ln37_16_fu_686_p1));

assign add_ln37_5_fu_708_p2 = ($signed(sext_ln37_20_fu_705_p1) + $signed(sext_ln37_19_fu_702_p1));

assign add_ln37_6_fu_718_p2 = ($signed(sext_ln37_21_fu_714_p1) + $signed(sext_ln37_18_fu_698_p1));

assign add_ln37_9_fu_730_p2 = ($signed(sext_ln37_24_fu_727_p1) + $signed(sext_ln37_23_fu_724_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_fu_778_p0 = sext_ln37_fu_372_p1;

assign grp_fu_778_p1 = sext_ln37_fu_372_p1;

assign grp_fu_787_p0 = sext_ln37_3_fu_418_p1;

assign grp_fu_787_p1 = sext_ln37_3_fu_418_p1;

assign grp_fu_796_p0 = sext_ln37_5_fu_450_p1;

assign grp_fu_796_p1 = sext_ln37_5_fu_450_p1;

assign grp_fu_805_p0 = sext_ln37_7_fu_482_p1;

assign grp_fu_805_p1 = sext_ln37_7_fu_482_p1;

assign grp_fu_814_p0 = sext_ln37_9_fu_514_p1;

assign grp_fu_814_p1 = sext_ln37_9_fu_514_p1;

assign grp_fu_823_p0 = sext_ln37_11_fu_546_p1;

assign grp_fu_823_p1 = sext_ln37_11_fu_546_p1;

assign grp_fu_832_p0 = sext_ln37_13_fu_578_p1;

assign grp_fu_832_p1 = sext_ln37_13_fu_578_p1;

assign grp_fu_841_p0 = sext_ln37_15_fu_610_p1;

assign grp_fu_841_p1 = sext_ln37_15_fu_610_p1;

assign mul_ln37_11_fu_671_p0 = sext_ln37_12_fu_668_p1;

assign mul_ln37_11_fu_671_p1 = sext_ln37_12_fu_668_p1;

assign mul_ln37_13_fu_680_p0 = sext_ln37_14_fu_677_p1;

assign mul_ln37_13_fu_680_p1 = sext_ln37_14_fu_677_p1;

assign mul_ln37_1_fu_626_p0 = sext_ln37_2_fu_623_p1;

assign mul_ln37_1_fu_626_p1 = sext_ln37_2_fu_623_p1;

assign mul_ln37_3_fu_635_p0 = sext_ln37_4_fu_632_p1;

assign mul_ln37_3_fu_635_p1 = sext_ln37_4_fu_632_p1;

assign mul_ln37_5_fu_644_p0 = sext_ln37_6_fu_641_p1;

assign mul_ln37_5_fu_644_p1 = sext_ln37_6_fu_641_p1;

assign mul_ln37_7_fu_653_p0 = sext_ln37_8_fu_650_p1;

assign mul_ln37_7_fu_653_p1 = sext_ln37_8_fu_650_p1;

assign mul_ln37_9_fu_662_p0 = sext_ln37_10_fu_659_p1;

assign mul_ln37_9_fu_662_p1 = sext_ln37_10_fu_659_p1;

assign mul_ln37_fu_617_p0 = sext_ln37_1_fu_614_p1;

assign mul_ln37_fu_617_p1 = sext_ln37_1_fu_614_p1;

assign result_2_fu_768_p2 = ($signed(sext_ln37_29_fu_765_p1) + $signed(sext_ln37_22_fu_762_p1));

assign sext_ln37_10_fu_659_p1 = $signed(sub_ln37_10_reg_905);

assign sext_ln37_11_fu_546_p1 = $signed(sub_ln37_11_fu_540_p2);

assign sext_ln37_12_fu_668_p1 = $signed(sub_ln37_12_reg_916);

assign sext_ln37_13_fu_578_p1 = $signed(sub_ln37_13_fu_572_p2);

assign sext_ln37_14_fu_677_p1 = $signed(sub_ln37_14_reg_927);

assign sext_ln37_15_fu_610_p1 = $signed(sub_ln37_15_fu_604_p2);

assign sext_ln37_16_fu_686_p1 = grp_fu_778_p3;

assign sext_ln37_17_fu_689_p1 = grp_fu_787_p3;

assign sext_ln37_18_fu_698_p1 = $signed(add_ln37_2_fu_692_p2);

assign sext_ln37_19_fu_702_p1 = grp_fu_796_p3;

assign sext_ln37_1_fu_614_p1 = $signed(sub_ln37_1_reg_856);

assign sext_ln37_20_fu_705_p1 = grp_fu_805_p3;

assign sext_ln37_21_fu_714_p1 = $signed(add_ln37_5_fu_708_p2);

assign sext_ln37_22_fu_762_p1 = $signed(add_ln37_6_reg_978);

assign sext_ln37_23_fu_724_p1 = grp_fu_814_p3;

assign sext_ln37_24_fu_727_p1 = grp_fu_823_p3;

assign sext_ln37_25_fu_736_p1 = $signed(add_ln37_9_fu_730_p2);

assign sext_ln37_26_fu_740_p1 = grp_fu_832_p3;

assign sext_ln37_27_fu_743_p1 = grp_fu_841_p3;

assign sext_ln37_28_fu_752_p1 = $signed(add_ln37_12_fu_746_p2);

assign sext_ln37_29_fu_765_p1 = $signed(add_ln37_13_reg_983);

assign sext_ln37_2_fu_623_p1 = $signed(sub_ln37_2_reg_861);

assign sext_ln37_3_fu_418_p1 = $signed(sub_ln37_3_fu_412_p2);

assign sext_ln37_4_fu_632_p1 = $signed(sub_ln37_4_reg_872);

assign sext_ln37_5_fu_450_p1 = $signed(sub_ln37_5_fu_444_p2);

assign sext_ln37_6_fu_641_p1 = $signed(sub_ln37_6_reg_883);

assign sext_ln37_7_fu_482_p1 = $signed(sub_ln37_7_fu_476_p2);

assign sext_ln37_8_fu_650_p1 = $signed(sub_ln37_8_reg_894);

assign sext_ln37_9_fu_514_p1 = $signed(sub_ln37_9_fu_508_p2);

assign sext_ln37_fu_372_p1 = $signed(sub_ln37_fu_366_p2);

assign sub_ln37_10_fu_526_p2 = (zext_ln37_20_fu_518_p1 - zext_ln37_21_fu_522_p1);

assign sub_ln37_11_fu_540_p2 = (zext_ln37_22_fu_532_p1 - zext_ln37_23_fu_536_p1);

assign sub_ln37_12_fu_558_p2 = (zext_ln37_24_fu_550_p1 - zext_ln37_25_fu_554_p1);

assign sub_ln37_13_fu_572_p2 = (zext_ln37_26_fu_564_p1 - zext_ln37_27_fu_568_p1);

assign sub_ln37_14_fu_590_p2 = (zext_ln37_28_fu_582_p1 - zext_ln37_29_fu_586_p1);

assign sub_ln37_15_fu_604_p2 = (zext_ln37_30_fu_596_p1 - zext_ln37_31_fu_600_p1);

assign sub_ln37_1_fu_384_p2 = (zext_ln37_2_fu_376_p1 - zext_ln37_3_fu_380_p1);

assign sub_ln37_2_fu_398_p2 = (zext_ln37_4_fu_390_p1 - zext_ln37_5_fu_394_p1);

assign sub_ln37_3_fu_412_p2 = (zext_ln37_6_fu_404_p1 - zext_ln37_7_fu_408_p1);

assign sub_ln37_4_fu_430_p2 = (zext_ln37_8_fu_422_p1 - zext_ln37_9_fu_426_p1);

assign sub_ln37_5_fu_444_p2 = (zext_ln37_10_fu_436_p1 - zext_ln37_11_fu_440_p1);

assign sub_ln37_6_fu_462_p2 = (zext_ln37_12_fu_454_p1 - zext_ln37_13_fu_458_p1);

assign sub_ln37_7_fu_476_p2 = (zext_ln37_14_fu_468_p1 - zext_ln37_15_fu_472_p1);

assign sub_ln37_8_fu_494_p2 = (zext_ln37_16_fu_486_p1 - zext_ln37_17_fu_490_p1);

assign sub_ln37_9_fu_508_p2 = (zext_ln37_18_fu_500_p1 - zext_ln37_19_fu_504_p1);

assign sub_ln37_fu_366_p2 = (zext_ln37_fu_358_p1 - zext_ln37_1_fu_362_p1);

assign zext_ln37_10_fu_436_p1 = A_5;

assign zext_ln37_11_fu_440_p1 = B_5;

assign zext_ln37_12_fu_454_p1 = A_6;

assign zext_ln37_13_fu_458_p1 = B_6;

assign zext_ln37_14_fu_468_p1 = A_7;

assign zext_ln37_15_fu_472_p1 = B_7;

assign zext_ln37_16_fu_486_p1 = A_8;

assign zext_ln37_17_fu_490_p1 = B_8;

assign zext_ln37_18_fu_500_p1 = A_9;

assign zext_ln37_19_fu_504_p1 = B_9;

assign zext_ln37_1_fu_362_p1 = B_0;

assign zext_ln37_20_fu_518_p1 = A_10;

assign zext_ln37_21_fu_522_p1 = B_10;

assign zext_ln37_22_fu_532_p1 = A_11;

assign zext_ln37_23_fu_536_p1 = B_11;

assign zext_ln37_24_fu_550_p1 = A_12;

assign zext_ln37_25_fu_554_p1 = B_12;

assign zext_ln37_26_fu_564_p1 = A_13;

assign zext_ln37_27_fu_568_p1 = B_13;

assign zext_ln37_28_fu_582_p1 = A_14;

assign zext_ln37_29_fu_586_p1 = B_14;

assign zext_ln37_2_fu_376_p1 = A_1;

assign zext_ln37_30_fu_596_p1 = A_15;

assign zext_ln37_31_fu_600_p1 = B_15;

assign zext_ln37_3_fu_380_p1 = B_1;

assign zext_ln37_4_fu_390_p1 = A_2;

assign zext_ln37_5_fu_394_p1 = B_2;

assign zext_ln37_6_fu_404_p1 = A_3;

assign zext_ln37_7_fu_408_p1 = B_3;

assign zext_ln37_8_fu_422_p1 = A_4;

assign zext_ln37_9_fu_426_p1 = B_4;

assign zext_ln37_fu_358_p1 = A_0;

endmodule //eucHW
