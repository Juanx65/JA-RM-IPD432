// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module eucHW_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 11,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    input  wire [2:0]                    A_0_address0,
    input  wire                          A_0_ce0,
    output wire [7:0]                    A_0_q0,
    input  wire [2:0]                    A_1_address0,
    input  wire                          A_1_ce0,
    output wire [7:0]                    A_1_q0,
    input  wire [2:0]                    A_2_address0,
    input  wire                          A_2_ce0,
    output wire [7:0]                    A_2_q0,
    input  wire [2:0]                    A_3_address0,
    input  wire                          A_3_ce0,
    output wire [7:0]                    A_3_q0,
    input  wire [2:0]                    A_4_address0,
    input  wire                          A_4_ce0,
    output wire [7:0]                    A_4_q0,
    input  wire [2:0]                    A_5_address0,
    input  wire                          A_5_ce0,
    output wire [7:0]                    A_5_q0,
    input  wire [2:0]                    A_6_address0,
    input  wire                          A_6_ce0,
    output wire [7:0]                    A_6_q0,
    input  wire [2:0]                    A_7_address0,
    input  wire                          A_7_ce0,
    output wire [7:0]                    A_7_q0,
    input  wire [2:0]                    A_8_address0,
    input  wire                          A_8_ce0,
    output wire [7:0]                    A_8_q0,
    input  wire [2:0]                    A_9_address0,
    input  wire                          A_9_ce0,
    output wire [7:0]                    A_9_q0,
    input  wire [2:0]                    A_10_address0,
    input  wire                          A_10_ce0,
    output wire [7:0]                    A_10_q0,
    input  wire [2:0]                    A_11_address0,
    input  wire                          A_11_ce0,
    output wire [7:0]                    A_11_q0,
    input  wire [2:0]                    A_12_address0,
    input  wire                          A_12_ce0,
    output wire [7:0]                    A_12_q0,
    input  wire [2:0]                    A_13_address0,
    input  wire                          A_13_ce0,
    output wire [7:0]                    A_13_q0,
    input  wire [2:0]                    A_14_address0,
    input  wire                          A_14_ce0,
    output wire [7:0]                    A_14_q0,
    input  wire [2:0]                    A_15_address0,
    input  wire                          A_15_ce0,
    output wire [7:0]                    A_15_q0,
    input  wire [2:0]                    A_16_address0,
    input  wire                          A_16_ce0,
    output wire [7:0]                    A_16_q0,
    input  wire [2:0]                    A_17_address0,
    input  wire                          A_17_ce0,
    output wire [7:0]                    A_17_q0,
    input  wire [2:0]                    A_18_address0,
    input  wire                          A_18_ce0,
    output wire [7:0]                    A_18_q0,
    input  wire [2:0]                    A_19_address0,
    input  wire                          A_19_ce0,
    output wire [7:0]                    A_19_q0,
    input  wire [2:0]                    A_20_address0,
    input  wire                          A_20_ce0,
    output wire [7:0]                    A_20_q0,
    input  wire [2:0]                    A_21_address0,
    input  wire                          A_21_ce0,
    output wire [7:0]                    A_21_q0,
    input  wire [2:0]                    A_22_address0,
    input  wire                          A_22_ce0,
    output wire [7:0]                    A_22_q0,
    input  wire [2:0]                    A_23_address0,
    input  wire                          A_23_ce0,
    output wire [7:0]                    A_23_q0,
    input  wire [2:0]                    A_24_address0,
    input  wire                          A_24_ce0,
    output wire [7:0]                    A_24_q0,
    input  wire [2:0]                    A_25_address0,
    input  wire                          A_25_ce0,
    output wire [7:0]                    A_25_q0,
    input  wire [2:0]                    A_26_address0,
    input  wire                          A_26_ce0,
    output wire [7:0]                    A_26_q0,
    input  wire [2:0]                    A_27_address0,
    input  wire                          A_27_ce0,
    output wire [7:0]                    A_27_q0,
    input  wire [2:0]                    A_28_address0,
    input  wire                          A_28_ce0,
    output wire [7:0]                    A_28_q0,
    input  wire [2:0]                    A_29_address0,
    input  wire                          A_29_ce0,
    output wire [7:0]                    A_29_q0,
    input  wire [2:0]                    A_30_address0,
    input  wire                          A_30_ce0,
    output wire [7:0]                    A_30_q0,
    input  wire [2:0]                    A_31_address0,
    input  wire                          A_31_ce0,
    output wire [7:0]                    A_31_q0,
    input  wire [2:0]                    A_32_address0,
    input  wire                          A_32_ce0,
    output wire [7:0]                    A_32_q0,
    input  wire [2:0]                    A_33_address0,
    input  wire                          A_33_ce0,
    output wire [7:0]                    A_33_q0,
    input  wire [2:0]                    A_34_address0,
    input  wire                          A_34_ce0,
    output wire [7:0]                    A_34_q0,
    input  wire [2:0]                    A_35_address0,
    input  wire                          A_35_ce0,
    output wire [7:0]                    A_35_q0,
    input  wire [2:0]                    A_36_address0,
    input  wire                          A_36_ce0,
    output wire [7:0]                    A_36_q0,
    input  wire [2:0]                    A_37_address0,
    input  wire                          A_37_ce0,
    output wire [7:0]                    A_37_q0,
    input  wire [2:0]                    A_38_address0,
    input  wire                          A_38_ce0,
    output wire [7:0]                    A_38_q0,
    input  wire [2:0]                    A_39_address0,
    input  wire                          A_39_ce0,
    output wire [7:0]                    A_39_q0,
    input  wire [2:0]                    A_40_address0,
    input  wire                          A_40_ce0,
    output wire [7:0]                    A_40_q0,
    input  wire [2:0]                    A_41_address0,
    input  wire                          A_41_ce0,
    output wire [7:0]                    A_41_q0,
    input  wire [2:0]                    A_42_address0,
    input  wire                          A_42_ce0,
    output wire [7:0]                    A_42_q0,
    input  wire [2:0]                    A_43_address0,
    input  wire                          A_43_ce0,
    output wire [7:0]                    A_43_q0,
    input  wire [2:0]                    A_44_address0,
    input  wire                          A_44_ce0,
    output wire [7:0]                    A_44_q0,
    input  wire [2:0]                    A_45_address0,
    input  wire                          A_45_ce0,
    output wire [7:0]                    A_45_q0,
    input  wire [2:0]                    A_46_address0,
    input  wire                          A_46_ce0,
    output wire [7:0]                    A_46_q0,
    input  wire [2:0]                    A_47_address0,
    input  wire                          A_47_ce0,
    output wire [7:0]                    A_47_q0,
    input  wire [2:0]                    A_48_address0,
    input  wire                          A_48_ce0,
    output wire [7:0]                    A_48_q0,
    input  wire [2:0]                    A_49_address0,
    input  wire                          A_49_ce0,
    output wire [7:0]                    A_49_q0,
    input  wire [2:0]                    A_50_address0,
    input  wire                          A_50_ce0,
    output wire [7:0]                    A_50_q0,
    input  wire [2:0]                    A_51_address0,
    input  wire                          A_51_ce0,
    output wire [7:0]                    A_51_q0,
    input  wire [2:0]                    A_52_address0,
    input  wire                          A_52_ce0,
    output wire [7:0]                    A_52_q0,
    input  wire [2:0]                    A_53_address0,
    input  wire                          A_53_ce0,
    output wire [7:0]                    A_53_q0,
    input  wire [2:0]                    A_54_address0,
    input  wire                          A_54_ce0,
    output wire [7:0]                    A_54_q0,
    input  wire [2:0]                    A_55_address0,
    input  wire                          A_55_ce0,
    output wire [7:0]                    A_55_q0,
    input  wire [2:0]                    A_56_address0,
    input  wire                          A_56_ce0,
    output wire [7:0]                    A_56_q0,
    input  wire [2:0]                    A_57_address0,
    input  wire                          A_57_ce0,
    output wire [7:0]                    A_57_q0,
    input  wire [2:0]                    A_58_address0,
    input  wire                          A_58_ce0,
    output wire [7:0]                    A_58_q0,
    input  wire [2:0]                    A_59_address0,
    input  wire                          A_59_ce0,
    output wire [7:0]                    A_59_q0,
    input  wire [2:0]                    A_60_address0,
    input  wire                          A_60_ce0,
    output wire [7:0]                    A_60_q0,
    input  wire [2:0]                    A_61_address0,
    input  wire                          A_61_ce0,
    output wire [7:0]                    A_61_q0,
    input  wire [2:0]                    A_62_address0,
    input  wire                          A_62_ce0,
    output wire [7:0]                    A_62_q0,
    input  wire [2:0]                    A_63_address0,
    input  wire                          A_63_ce0,
    output wire [7:0]                    A_63_q0,
    input  wire [2:0]                    B_0_address0,
    input  wire                          B_0_ce0,
    output wire [7:0]                    B_0_q0,
    input  wire [2:0]                    B_1_address0,
    input  wire                          B_1_ce0,
    output wire [7:0]                    B_1_q0,
    input  wire [2:0]                    B_2_address0,
    input  wire                          B_2_ce0,
    output wire [7:0]                    B_2_q0,
    input  wire [2:0]                    B_3_address0,
    input  wire                          B_3_ce0,
    output wire [7:0]                    B_3_q0,
    input  wire [2:0]                    B_4_address0,
    input  wire                          B_4_ce0,
    output wire [7:0]                    B_4_q0,
    input  wire [2:0]                    B_5_address0,
    input  wire                          B_5_ce0,
    output wire [7:0]                    B_5_q0,
    input  wire [2:0]                    B_6_address0,
    input  wire                          B_6_ce0,
    output wire [7:0]                    B_6_q0,
    input  wire [2:0]                    B_7_address0,
    input  wire                          B_7_ce0,
    output wire [7:0]                    B_7_q0,
    input  wire [2:0]                    B_8_address0,
    input  wire                          B_8_ce0,
    output wire [7:0]                    B_8_q0,
    input  wire [2:0]                    B_9_address0,
    input  wire                          B_9_ce0,
    output wire [7:0]                    B_9_q0,
    input  wire [2:0]                    B_10_address0,
    input  wire                          B_10_ce0,
    output wire [7:0]                    B_10_q0,
    input  wire [2:0]                    B_11_address0,
    input  wire                          B_11_ce0,
    output wire [7:0]                    B_11_q0,
    input  wire [2:0]                    B_12_address0,
    input  wire                          B_12_ce0,
    output wire [7:0]                    B_12_q0,
    input  wire [2:0]                    B_13_address0,
    input  wire                          B_13_ce0,
    output wire [7:0]                    B_13_q0,
    input  wire [2:0]                    B_14_address0,
    input  wire                          B_14_ce0,
    output wire [7:0]                    B_14_q0,
    input  wire [2:0]                    B_15_address0,
    input  wire                          B_15_ce0,
    output wire [7:0]                    B_15_q0,
    input  wire [2:0]                    B_16_address0,
    input  wire                          B_16_ce0,
    output wire [7:0]                    B_16_q0,
    input  wire [2:0]                    B_17_address0,
    input  wire                          B_17_ce0,
    output wire [7:0]                    B_17_q0,
    input  wire [2:0]                    B_18_address0,
    input  wire                          B_18_ce0,
    output wire [7:0]                    B_18_q0,
    input  wire [2:0]                    B_19_address0,
    input  wire                          B_19_ce0,
    output wire [7:0]                    B_19_q0,
    input  wire [2:0]                    B_20_address0,
    input  wire                          B_20_ce0,
    output wire [7:0]                    B_20_q0,
    input  wire [2:0]                    B_21_address0,
    input  wire                          B_21_ce0,
    output wire [7:0]                    B_21_q0,
    input  wire [2:0]                    B_22_address0,
    input  wire                          B_22_ce0,
    output wire [7:0]                    B_22_q0,
    input  wire [2:0]                    B_23_address0,
    input  wire                          B_23_ce0,
    output wire [7:0]                    B_23_q0,
    input  wire [2:0]                    B_24_address0,
    input  wire                          B_24_ce0,
    output wire [7:0]                    B_24_q0,
    input  wire [2:0]                    B_25_address0,
    input  wire                          B_25_ce0,
    output wire [7:0]                    B_25_q0,
    input  wire [2:0]                    B_26_address0,
    input  wire                          B_26_ce0,
    output wire [7:0]                    B_26_q0,
    input  wire [2:0]                    B_27_address0,
    input  wire                          B_27_ce0,
    output wire [7:0]                    B_27_q0,
    input  wire [2:0]                    B_28_address0,
    input  wire                          B_28_ce0,
    output wire [7:0]                    B_28_q0,
    input  wire [2:0]                    B_29_address0,
    input  wire                          B_29_ce0,
    output wire [7:0]                    B_29_q0,
    input  wire [2:0]                    B_30_address0,
    input  wire                          B_30_ce0,
    output wire [7:0]                    B_30_q0,
    input  wire [2:0]                    B_31_address0,
    input  wire                          B_31_ce0,
    output wire [7:0]                    B_31_q0,
    input  wire [2:0]                    B_32_address0,
    input  wire                          B_32_ce0,
    output wire [7:0]                    B_32_q0,
    input  wire [2:0]                    B_33_address0,
    input  wire                          B_33_ce0,
    output wire [7:0]                    B_33_q0,
    input  wire [2:0]                    B_34_address0,
    input  wire                          B_34_ce0,
    output wire [7:0]                    B_34_q0,
    input  wire [2:0]                    B_35_address0,
    input  wire                          B_35_ce0,
    output wire [7:0]                    B_35_q0,
    input  wire [2:0]                    B_36_address0,
    input  wire                          B_36_ce0,
    output wire [7:0]                    B_36_q0,
    input  wire [2:0]                    B_37_address0,
    input  wire                          B_37_ce0,
    output wire [7:0]                    B_37_q0,
    input  wire [2:0]                    B_38_address0,
    input  wire                          B_38_ce0,
    output wire [7:0]                    B_38_q0,
    input  wire [2:0]                    B_39_address0,
    input  wire                          B_39_ce0,
    output wire [7:0]                    B_39_q0,
    input  wire [2:0]                    B_40_address0,
    input  wire                          B_40_ce0,
    output wire [7:0]                    B_40_q0,
    input  wire [2:0]                    B_41_address0,
    input  wire                          B_41_ce0,
    output wire [7:0]                    B_41_q0,
    input  wire [2:0]                    B_42_address0,
    input  wire                          B_42_ce0,
    output wire [7:0]                    B_42_q0,
    input  wire [2:0]                    B_43_address0,
    input  wire                          B_43_ce0,
    output wire [7:0]                    B_43_q0,
    input  wire [2:0]                    B_44_address0,
    input  wire                          B_44_ce0,
    output wire [7:0]                    B_44_q0,
    input  wire [2:0]                    B_45_address0,
    input  wire                          B_45_ce0,
    output wire [7:0]                    B_45_q0,
    input  wire [2:0]                    B_46_address0,
    input  wire                          B_46_ce0,
    output wire [7:0]                    B_46_q0,
    input  wire [2:0]                    B_47_address0,
    input  wire                          B_47_ce0,
    output wire [7:0]                    B_47_q0,
    input  wire [2:0]                    B_48_address0,
    input  wire                          B_48_ce0,
    output wire [7:0]                    B_48_q0,
    input  wire [2:0]                    B_49_address0,
    input  wire                          B_49_ce0,
    output wire [7:0]                    B_49_q0,
    input  wire [2:0]                    B_50_address0,
    input  wire                          B_50_ce0,
    output wire [7:0]                    B_50_q0,
    input  wire [2:0]                    B_51_address0,
    input  wire                          B_51_ce0,
    output wire [7:0]                    B_51_q0,
    input  wire [2:0]                    B_52_address0,
    input  wire                          B_52_ce0,
    output wire [7:0]                    B_52_q0,
    input  wire [2:0]                    B_53_address0,
    input  wire                          B_53_ce0,
    output wire [7:0]                    B_53_q0,
    input  wire [2:0]                    B_54_address0,
    input  wire                          B_54_ce0,
    output wire [7:0]                    B_54_q0,
    input  wire [2:0]                    B_55_address0,
    input  wire                          B_55_ce0,
    output wire [7:0]                    B_55_q0,
    input  wire [2:0]                    B_56_address0,
    input  wire                          B_56_ce0,
    output wire [7:0]                    B_56_q0,
    input  wire [2:0]                    B_57_address0,
    input  wire                          B_57_ce0,
    output wire [7:0]                    B_57_q0,
    input  wire [2:0]                    B_58_address0,
    input  wire                          B_58_ce0,
    output wire [7:0]                    B_58_q0,
    input  wire [2:0]                    B_59_address0,
    input  wire                          B_59_ce0,
    output wire [7:0]                    B_59_q0,
    input  wire [2:0]                    B_60_address0,
    input  wire                          B_60_ce0,
    output wire [7:0]                    B_60_q0,
    input  wire [2:0]                    B_61_address0,
    input  wire                          B_61_ce0,
    output wire [7:0]                    B_61_q0,
    input  wire [2:0]                    B_62_address0,
    input  wire                          B_62_ce0,
    output wire [7:0]                    B_62_q0,
    input  wire [2:0]                    B_63_address0,
    input  wire                          B_63_ce0,
    output wire [7:0]                    B_63_q0,
    input  wire [31:0]                   C,
    input  wire                          C_ap_vld,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - enable ap_done interrupt (Read/Write)
//         bit 1  - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - ap_done (COR/TOW)
//         bit 1  - ap_ready (COR/TOW)
//         others - reserved
// 0x410 : Data signal of C
//         bit 31~0 - C[31:0] (Read)
// 0x414 : Control signal of C
//         bit 0  - C_ap_vld (Read/COR)
//         others - reserved
// 0x010 ~
// 0x017 : Memory 'A_0' (8 * 8b)
//         Word n : bit [ 7: 0] - A_0[4n]
//                  bit [15: 8] - A_0[4n+1]
//                  bit [23:16] - A_0[4n+2]
//                  bit [31:24] - A_0[4n+3]
// 0x018 ~
// 0x01f : Memory 'A_1' (8 * 8b)
//         Word n : bit [ 7: 0] - A_1[4n]
//                  bit [15: 8] - A_1[4n+1]
//                  bit [23:16] - A_1[4n+2]
//                  bit [31:24] - A_1[4n+3]
// 0x020 ~
// 0x027 : Memory 'A_2' (8 * 8b)
//         Word n : bit [ 7: 0] - A_2[4n]
//                  bit [15: 8] - A_2[4n+1]
//                  bit [23:16] - A_2[4n+2]
//                  bit [31:24] - A_2[4n+3]
// 0x028 ~
// 0x02f : Memory 'A_3' (8 * 8b)
//         Word n : bit [ 7: 0] - A_3[4n]
//                  bit [15: 8] - A_3[4n+1]
//                  bit [23:16] - A_3[4n+2]
//                  bit [31:24] - A_3[4n+3]
// 0x030 ~
// 0x037 : Memory 'A_4' (8 * 8b)
//         Word n : bit [ 7: 0] - A_4[4n]
//                  bit [15: 8] - A_4[4n+1]
//                  bit [23:16] - A_4[4n+2]
//                  bit [31:24] - A_4[4n+3]
// 0x038 ~
// 0x03f : Memory 'A_5' (8 * 8b)
//         Word n : bit [ 7: 0] - A_5[4n]
//                  bit [15: 8] - A_5[4n+1]
//                  bit [23:16] - A_5[4n+2]
//                  bit [31:24] - A_5[4n+3]
// 0x040 ~
// 0x047 : Memory 'A_6' (8 * 8b)
//         Word n : bit [ 7: 0] - A_6[4n]
//                  bit [15: 8] - A_6[4n+1]
//                  bit [23:16] - A_6[4n+2]
//                  bit [31:24] - A_6[4n+3]
// 0x048 ~
// 0x04f : Memory 'A_7' (8 * 8b)
//         Word n : bit [ 7: 0] - A_7[4n]
//                  bit [15: 8] - A_7[4n+1]
//                  bit [23:16] - A_7[4n+2]
//                  bit [31:24] - A_7[4n+3]
// 0x050 ~
// 0x057 : Memory 'A_8' (8 * 8b)
//         Word n : bit [ 7: 0] - A_8[4n]
//                  bit [15: 8] - A_8[4n+1]
//                  bit [23:16] - A_8[4n+2]
//                  bit [31:24] - A_8[4n+3]
// 0x058 ~
// 0x05f : Memory 'A_9' (8 * 8b)
//         Word n : bit [ 7: 0] - A_9[4n]
//                  bit [15: 8] - A_9[4n+1]
//                  bit [23:16] - A_9[4n+2]
//                  bit [31:24] - A_9[4n+3]
// 0x060 ~
// 0x067 : Memory 'A_10' (8 * 8b)
//         Word n : bit [ 7: 0] - A_10[4n]
//                  bit [15: 8] - A_10[4n+1]
//                  bit [23:16] - A_10[4n+2]
//                  bit [31:24] - A_10[4n+3]
// 0x068 ~
// 0x06f : Memory 'A_11' (8 * 8b)
//         Word n : bit [ 7: 0] - A_11[4n]
//                  bit [15: 8] - A_11[4n+1]
//                  bit [23:16] - A_11[4n+2]
//                  bit [31:24] - A_11[4n+3]
// 0x070 ~
// 0x077 : Memory 'A_12' (8 * 8b)
//         Word n : bit [ 7: 0] - A_12[4n]
//                  bit [15: 8] - A_12[4n+1]
//                  bit [23:16] - A_12[4n+2]
//                  bit [31:24] - A_12[4n+3]
// 0x078 ~
// 0x07f : Memory 'A_13' (8 * 8b)
//         Word n : bit [ 7: 0] - A_13[4n]
//                  bit [15: 8] - A_13[4n+1]
//                  bit [23:16] - A_13[4n+2]
//                  bit [31:24] - A_13[4n+3]
// 0x080 ~
// 0x087 : Memory 'A_14' (8 * 8b)
//         Word n : bit [ 7: 0] - A_14[4n]
//                  bit [15: 8] - A_14[4n+1]
//                  bit [23:16] - A_14[4n+2]
//                  bit [31:24] - A_14[4n+3]
// 0x088 ~
// 0x08f : Memory 'A_15' (8 * 8b)
//         Word n : bit [ 7: 0] - A_15[4n]
//                  bit [15: 8] - A_15[4n+1]
//                  bit [23:16] - A_15[4n+2]
//                  bit [31:24] - A_15[4n+3]
// 0x090 ~
// 0x097 : Memory 'A_16' (8 * 8b)
//         Word n : bit [ 7: 0] - A_16[4n]
//                  bit [15: 8] - A_16[4n+1]
//                  bit [23:16] - A_16[4n+2]
//                  bit [31:24] - A_16[4n+3]
// 0x098 ~
// 0x09f : Memory 'A_17' (8 * 8b)
//         Word n : bit [ 7: 0] - A_17[4n]
//                  bit [15: 8] - A_17[4n+1]
//                  bit [23:16] - A_17[4n+2]
//                  bit [31:24] - A_17[4n+3]
// 0x0a0 ~
// 0x0a7 : Memory 'A_18' (8 * 8b)
//         Word n : bit [ 7: 0] - A_18[4n]
//                  bit [15: 8] - A_18[4n+1]
//                  bit [23:16] - A_18[4n+2]
//                  bit [31:24] - A_18[4n+3]
// 0x0a8 ~
// 0x0af : Memory 'A_19' (8 * 8b)
//         Word n : bit [ 7: 0] - A_19[4n]
//                  bit [15: 8] - A_19[4n+1]
//                  bit [23:16] - A_19[4n+2]
//                  bit [31:24] - A_19[4n+3]
// 0x0b0 ~
// 0x0b7 : Memory 'A_20' (8 * 8b)
//         Word n : bit [ 7: 0] - A_20[4n]
//                  bit [15: 8] - A_20[4n+1]
//                  bit [23:16] - A_20[4n+2]
//                  bit [31:24] - A_20[4n+3]
// 0x0b8 ~
// 0x0bf : Memory 'A_21' (8 * 8b)
//         Word n : bit [ 7: 0] - A_21[4n]
//                  bit [15: 8] - A_21[4n+1]
//                  bit [23:16] - A_21[4n+2]
//                  bit [31:24] - A_21[4n+3]
// 0x0c0 ~
// 0x0c7 : Memory 'A_22' (8 * 8b)
//         Word n : bit [ 7: 0] - A_22[4n]
//                  bit [15: 8] - A_22[4n+1]
//                  bit [23:16] - A_22[4n+2]
//                  bit [31:24] - A_22[4n+3]
// 0x0c8 ~
// 0x0cf : Memory 'A_23' (8 * 8b)
//         Word n : bit [ 7: 0] - A_23[4n]
//                  bit [15: 8] - A_23[4n+1]
//                  bit [23:16] - A_23[4n+2]
//                  bit [31:24] - A_23[4n+3]
// 0x0d0 ~
// 0x0d7 : Memory 'A_24' (8 * 8b)
//         Word n : bit [ 7: 0] - A_24[4n]
//                  bit [15: 8] - A_24[4n+1]
//                  bit [23:16] - A_24[4n+2]
//                  bit [31:24] - A_24[4n+3]
// 0x0d8 ~
// 0x0df : Memory 'A_25' (8 * 8b)
//         Word n : bit [ 7: 0] - A_25[4n]
//                  bit [15: 8] - A_25[4n+1]
//                  bit [23:16] - A_25[4n+2]
//                  bit [31:24] - A_25[4n+3]
// 0x0e0 ~
// 0x0e7 : Memory 'A_26' (8 * 8b)
//         Word n : bit [ 7: 0] - A_26[4n]
//                  bit [15: 8] - A_26[4n+1]
//                  bit [23:16] - A_26[4n+2]
//                  bit [31:24] - A_26[4n+3]
// 0x0e8 ~
// 0x0ef : Memory 'A_27' (8 * 8b)
//         Word n : bit [ 7: 0] - A_27[4n]
//                  bit [15: 8] - A_27[4n+1]
//                  bit [23:16] - A_27[4n+2]
//                  bit [31:24] - A_27[4n+3]
// 0x0f0 ~
// 0x0f7 : Memory 'A_28' (8 * 8b)
//         Word n : bit [ 7: 0] - A_28[4n]
//                  bit [15: 8] - A_28[4n+1]
//                  bit [23:16] - A_28[4n+2]
//                  bit [31:24] - A_28[4n+3]
// 0x0f8 ~
// 0x0ff : Memory 'A_29' (8 * 8b)
//         Word n : bit [ 7: 0] - A_29[4n]
//                  bit [15: 8] - A_29[4n+1]
//                  bit [23:16] - A_29[4n+2]
//                  bit [31:24] - A_29[4n+3]
// 0x100 ~
// 0x107 : Memory 'A_30' (8 * 8b)
//         Word n : bit [ 7: 0] - A_30[4n]
//                  bit [15: 8] - A_30[4n+1]
//                  bit [23:16] - A_30[4n+2]
//                  bit [31:24] - A_30[4n+3]
// 0x108 ~
// 0x10f : Memory 'A_31' (8 * 8b)
//         Word n : bit [ 7: 0] - A_31[4n]
//                  bit [15: 8] - A_31[4n+1]
//                  bit [23:16] - A_31[4n+2]
//                  bit [31:24] - A_31[4n+3]
// 0x110 ~
// 0x117 : Memory 'A_32' (8 * 8b)
//         Word n : bit [ 7: 0] - A_32[4n]
//                  bit [15: 8] - A_32[4n+1]
//                  bit [23:16] - A_32[4n+2]
//                  bit [31:24] - A_32[4n+3]
// 0x118 ~
// 0x11f : Memory 'A_33' (8 * 8b)
//         Word n : bit [ 7: 0] - A_33[4n]
//                  bit [15: 8] - A_33[4n+1]
//                  bit [23:16] - A_33[4n+2]
//                  bit [31:24] - A_33[4n+3]
// 0x120 ~
// 0x127 : Memory 'A_34' (8 * 8b)
//         Word n : bit [ 7: 0] - A_34[4n]
//                  bit [15: 8] - A_34[4n+1]
//                  bit [23:16] - A_34[4n+2]
//                  bit [31:24] - A_34[4n+3]
// 0x128 ~
// 0x12f : Memory 'A_35' (8 * 8b)
//         Word n : bit [ 7: 0] - A_35[4n]
//                  bit [15: 8] - A_35[4n+1]
//                  bit [23:16] - A_35[4n+2]
//                  bit [31:24] - A_35[4n+3]
// 0x130 ~
// 0x137 : Memory 'A_36' (8 * 8b)
//         Word n : bit [ 7: 0] - A_36[4n]
//                  bit [15: 8] - A_36[4n+1]
//                  bit [23:16] - A_36[4n+2]
//                  bit [31:24] - A_36[4n+3]
// 0x138 ~
// 0x13f : Memory 'A_37' (8 * 8b)
//         Word n : bit [ 7: 0] - A_37[4n]
//                  bit [15: 8] - A_37[4n+1]
//                  bit [23:16] - A_37[4n+2]
//                  bit [31:24] - A_37[4n+3]
// 0x140 ~
// 0x147 : Memory 'A_38' (8 * 8b)
//         Word n : bit [ 7: 0] - A_38[4n]
//                  bit [15: 8] - A_38[4n+1]
//                  bit [23:16] - A_38[4n+2]
//                  bit [31:24] - A_38[4n+3]
// 0x148 ~
// 0x14f : Memory 'A_39' (8 * 8b)
//         Word n : bit [ 7: 0] - A_39[4n]
//                  bit [15: 8] - A_39[4n+1]
//                  bit [23:16] - A_39[4n+2]
//                  bit [31:24] - A_39[4n+3]
// 0x150 ~
// 0x157 : Memory 'A_40' (8 * 8b)
//         Word n : bit [ 7: 0] - A_40[4n]
//                  bit [15: 8] - A_40[4n+1]
//                  bit [23:16] - A_40[4n+2]
//                  bit [31:24] - A_40[4n+3]
// 0x158 ~
// 0x15f : Memory 'A_41' (8 * 8b)
//         Word n : bit [ 7: 0] - A_41[4n]
//                  bit [15: 8] - A_41[4n+1]
//                  bit [23:16] - A_41[4n+2]
//                  bit [31:24] - A_41[4n+3]
// 0x160 ~
// 0x167 : Memory 'A_42' (8 * 8b)
//         Word n : bit [ 7: 0] - A_42[4n]
//                  bit [15: 8] - A_42[4n+1]
//                  bit [23:16] - A_42[4n+2]
//                  bit [31:24] - A_42[4n+3]
// 0x168 ~
// 0x16f : Memory 'A_43' (8 * 8b)
//         Word n : bit [ 7: 0] - A_43[4n]
//                  bit [15: 8] - A_43[4n+1]
//                  bit [23:16] - A_43[4n+2]
//                  bit [31:24] - A_43[4n+3]
// 0x170 ~
// 0x177 : Memory 'A_44' (8 * 8b)
//         Word n : bit [ 7: 0] - A_44[4n]
//                  bit [15: 8] - A_44[4n+1]
//                  bit [23:16] - A_44[4n+2]
//                  bit [31:24] - A_44[4n+3]
// 0x178 ~
// 0x17f : Memory 'A_45' (8 * 8b)
//         Word n : bit [ 7: 0] - A_45[4n]
//                  bit [15: 8] - A_45[4n+1]
//                  bit [23:16] - A_45[4n+2]
//                  bit [31:24] - A_45[4n+3]
// 0x180 ~
// 0x187 : Memory 'A_46' (8 * 8b)
//         Word n : bit [ 7: 0] - A_46[4n]
//                  bit [15: 8] - A_46[4n+1]
//                  bit [23:16] - A_46[4n+2]
//                  bit [31:24] - A_46[4n+3]
// 0x188 ~
// 0x18f : Memory 'A_47' (8 * 8b)
//         Word n : bit [ 7: 0] - A_47[4n]
//                  bit [15: 8] - A_47[4n+1]
//                  bit [23:16] - A_47[4n+2]
//                  bit [31:24] - A_47[4n+3]
// 0x190 ~
// 0x197 : Memory 'A_48' (8 * 8b)
//         Word n : bit [ 7: 0] - A_48[4n]
//                  bit [15: 8] - A_48[4n+1]
//                  bit [23:16] - A_48[4n+2]
//                  bit [31:24] - A_48[4n+3]
// 0x198 ~
// 0x19f : Memory 'A_49' (8 * 8b)
//         Word n : bit [ 7: 0] - A_49[4n]
//                  bit [15: 8] - A_49[4n+1]
//                  bit [23:16] - A_49[4n+2]
//                  bit [31:24] - A_49[4n+3]
// 0x1a0 ~
// 0x1a7 : Memory 'A_50' (8 * 8b)
//         Word n : bit [ 7: 0] - A_50[4n]
//                  bit [15: 8] - A_50[4n+1]
//                  bit [23:16] - A_50[4n+2]
//                  bit [31:24] - A_50[4n+3]
// 0x1a8 ~
// 0x1af : Memory 'A_51' (8 * 8b)
//         Word n : bit [ 7: 0] - A_51[4n]
//                  bit [15: 8] - A_51[4n+1]
//                  bit [23:16] - A_51[4n+2]
//                  bit [31:24] - A_51[4n+3]
// 0x1b0 ~
// 0x1b7 : Memory 'A_52' (8 * 8b)
//         Word n : bit [ 7: 0] - A_52[4n]
//                  bit [15: 8] - A_52[4n+1]
//                  bit [23:16] - A_52[4n+2]
//                  bit [31:24] - A_52[4n+3]
// 0x1b8 ~
// 0x1bf : Memory 'A_53' (8 * 8b)
//         Word n : bit [ 7: 0] - A_53[4n]
//                  bit [15: 8] - A_53[4n+1]
//                  bit [23:16] - A_53[4n+2]
//                  bit [31:24] - A_53[4n+3]
// 0x1c0 ~
// 0x1c7 : Memory 'A_54' (8 * 8b)
//         Word n : bit [ 7: 0] - A_54[4n]
//                  bit [15: 8] - A_54[4n+1]
//                  bit [23:16] - A_54[4n+2]
//                  bit [31:24] - A_54[4n+3]
// 0x1c8 ~
// 0x1cf : Memory 'A_55' (8 * 8b)
//         Word n : bit [ 7: 0] - A_55[4n]
//                  bit [15: 8] - A_55[4n+1]
//                  bit [23:16] - A_55[4n+2]
//                  bit [31:24] - A_55[4n+3]
// 0x1d0 ~
// 0x1d7 : Memory 'A_56' (8 * 8b)
//         Word n : bit [ 7: 0] - A_56[4n]
//                  bit [15: 8] - A_56[4n+1]
//                  bit [23:16] - A_56[4n+2]
//                  bit [31:24] - A_56[4n+3]
// 0x1d8 ~
// 0x1df : Memory 'A_57' (8 * 8b)
//         Word n : bit [ 7: 0] - A_57[4n]
//                  bit [15: 8] - A_57[4n+1]
//                  bit [23:16] - A_57[4n+2]
//                  bit [31:24] - A_57[4n+3]
// 0x1e0 ~
// 0x1e7 : Memory 'A_58' (8 * 8b)
//         Word n : bit [ 7: 0] - A_58[4n]
//                  bit [15: 8] - A_58[4n+1]
//                  bit [23:16] - A_58[4n+2]
//                  bit [31:24] - A_58[4n+3]
// 0x1e8 ~
// 0x1ef : Memory 'A_59' (8 * 8b)
//         Word n : bit [ 7: 0] - A_59[4n]
//                  bit [15: 8] - A_59[4n+1]
//                  bit [23:16] - A_59[4n+2]
//                  bit [31:24] - A_59[4n+3]
// 0x1f0 ~
// 0x1f7 : Memory 'A_60' (8 * 8b)
//         Word n : bit [ 7: 0] - A_60[4n]
//                  bit [15: 8] - A_60[4n+1]
//                  bit [23:16] - A_60[4n+2]
//                  bit [31:24] - A_60[4n+3]
// 0x1f8 ~
// 0x1ff : Memory 'A_61' (8 * 8b)
//         Word n : bit [ 7: 0] - A_61[4n]
//                  bit [15: 8] - A_61[4n+1]
//                  bit [23:16] - A_61[4n+2]
//                  bit [31:24] - A_61[4n+3]
// 0x200 ~
// 0x207 : Memory 'A_62' (8 * 8b)
//         Word n : bit [ 7: 0] - A_62[4n]
//                  bit [15: 8] - A_62[4n+1]
//                  bit [23:16] - A_62[4n+2]
//                  bit [31:24] - A_62[4n+3]
// 0x208 ~
// 0x20f : Memory 'A_63' (8 * 8b)
//         Word n : bit [ 7: 0] - A_63[4n]
//                  bit [15: 8] - A_63[4n+1]
//                  bit [23:16] - A_63[4n+2]
//                  bit [31:24] - A_63[4n+3]
// 0x210 ~
// 0x217 : Memory 'B_0' (8 * 8b)
//         Word n : bit [ 7: 0] - B_0[4n]
//                  bit [15: 8] - B_0[4n+1]
//                  bit [23:16] - B_0[4n+2]
//                  bit [31:24] - B_0[4n+3]
// 0x218 ~
// 0x21f : Memory 'B_1' (8 * 8b)
//         Word n : bit [ 7: 0] - B_1[4n]
//                  bit [15: 8] - B_1[4n+1]
//                  bit [23:16] - B_1[4n+2]
//                  bit [31:24] - B_1[4n+3]
// 0x220 ~
// 0x227 : Memory 'B_2' (8 * 8b)
//         Word n : bit [ 7: 0] - B_2[4n]
//                  bit [15: 8] - B_2[4n+1]
//                  bit [23:16] - B_2[4n+2]
//                  bit [31:24] - B_2[4n+3]
// 0x228 ~
// 0x22f : Memory 'B_3' (8 * 8b)
//         Word n : bit [ 7: 0] - B_3[4n]
//                  bit [15: 8] - B_3[4n+1]
//                  bit [23:16] - B_3[4n+2]
//                  bit [31:24] - B_3[4n+3]
// 0x230 ~
// 0x237 : Memory 'B_4' (8 * 8b)
//         Word n : bit [ 7: 0] - B_4[4n]
//                  bit [15: 8] - B_4[4n+1]
//                  bit [23:16] - B_4[4n+2]
//                  bit [31:24] - B_4[4n+3]
// 0x238 ~
// 0x23f : Memory 'B_5' (8 * 8b)
//         Word n : bit [ 7: 0] - B_5[4n]
//                  bit [15: 8] - B_5[4n+1]
//                  bit [23:16] - B_5[4n+2]
//                  bit [31:24] - B_5[4n+3]
// 0x240 ~
// 0x247 : Memory 'B_6' (8 * 8b)
//         Word n : bit [ 7: 0] - B_6[4n]
//                  bit [15: 8] - B_6[4n+1]
//                  bit [23:16] - B_6[4n+2]
//                  bit [31:24] - B_6[4n+3]
// 0x248 ~
// 0x24f : Memory 'B_7' (8 * 8b)
//         Word n : bit [ 7: 0] - B_7[4n]
//                  bit [15: 8] - B_7[4n+1]
//                  bit [23:16] - B_7[4n+2]
//                  bit [31:24] - B_7[4n+3]
// 0x250 ~
// 0x257 : Memory 'B_8' (8 * 8b)
//         Word n : bit [ 7: 0] - B_8[4n]
//                  bit [15: 8] - B_8[4n+1]
//                  bit [23:16] - B_8[4n+2]
//                  bit [31:24] - B_8[4n+3]
// 0x258 ~
// 0x25f : Memory 'B_9' (8 * 8b)
//         Word n : bit [ 7: 0] - B_9[4n]
//                  bit [15: 8] - B_9[4n+1]
//                  bit [23:16] - B_9[4n+2]
//                  bit [31:24] - B_9[4n+3]
// 0x260 ~
// 0x267 : Memory 'B_10' (8 * 8b)
//         Word n : bit [ 7: 0] - B_10[4n]
//                  bit [15: 8] - B_10[4n+1]
//                  bit [23:16] - B_10[4n+2]
//                  bit [31:24] - B_10[4n+3]
// 0x268 ~
// 0x26f : Memory 'B_11' (8 * 8b)
//         Word n : bit [ 7: 0] - B_11[4n]
//                  bit [15: 8] - B_11[4n+1]
//                  bit [23:16] - B_11[4n+2]
//                  bit [31:24] - B_11[4n+3]
// 0x270 ~
// 0x277 : Memory 'B_12' (8 * 8b)
//         Word n : bit [ 7: 0] - B_12[4n]
//                  bit [15: 8] - B_12[4n+1]
//                  bit [23:16] - B_12[4n+2]
//                  bit [31:24] - B_12[4n+3]
// 0x278 ~
// 0x27f : Memory 'B_13' (8 * 8b)
//         Word n : bit [ 7: 0] - B_13[4n]
//                  bit [15: 8] - B_13[4n+1]
//                  bit [23:16] - B_13[4n+2]
//                  bit [31:24] - B_13[4n+3]
// 0x280 ~
// 0x287 : Memory 'B_14' (8 * 8b)
//         Word n : bit [ 7: 0] - B_14[4n]
//                  bit [15: 8] - B_14[4n+1]
//                  bit [23:16] - B_14[4n+2]
//                  bit [31:24] - B_14[4n+3]
// 0x288 ~
// 0x28f : Memory 'B_15' (8 * 8b)
//         Word n : bit [ 7: 0] - B_15[4n]
//                  bit [15: 8] - B_15[4n+1]
//                  bit [23:16] - B_15[4n+2]
//                  bit [31:24] - B_15[4n+3]
// 0x290 ~
// 0x297 : Memory 'B_16' (8 * 8b)
//         Word n : bit [ 7: 0] - B_16[4n]
//                  bit [15: 8] - B_16[4n+1]
//                  bit [23:16] - B_16[4n+2]
//                  bit [31:24] - B_16[4n+3]
// 0x298 ~
// 0x29f : Memory 'B_17' (8 * 8b)
//         Word n : bit [ 7: 0] - B_17[4n]
//                  bit [15: 8] - B_17[4n+1]
//                  bit [23:16] - B_17[4n+2]
//                  bit [31:24] - B_17[4n+3]
// 0x2a0 ~
// 0x2a7 : Memory 'B_18' (8 * 8b)
//         Word n : bit [ 7: 0] - B_18[4n]
//                  bit [15: 8] - B_18[4n+1]
//                  bit [23:16] - B_18[4n+2]
//                  bit [31:24] - B_18[4n+3]
// 0x2a8 ~
// 0x2af : Memory 'B_19' (8 * 8b)
//         Word n : bit [ 7: 0] - B_19[4n]
//                  bit [15: 8] - B_19[4n+1]
//                  bit [23:16] - B_19[4n+2]
//                  bit [31:24] - B_19[4n+3]
// 0x2b0 ~
// 0x2b7 : Memory 'B_20' (8 * 8b)
//         Word n : bit [ 7: 0] - B_20[4n]
//                  bit [15: 8] - B_20[4n+1]
//                  bit [23:16] - B_20[4n+2]
//                  bit [31:24] - B_20[4n+3]
// 0x2b8 ~
// 0x2bf : Memory 'B_21' (8 * 8b)
//         Word n : bit [ 7: 0] - B_21[4n]
//                  bit [15: 8] - B_21[4n+1]
//                  bit [23:16] - B_21[4n+2]
//                  bit [31:24] - B_21[4n+3]
// 0x2c0 ~
// 0x2c7 : Memory 'B_22' (8 * 8b)
//         Word n : bit [ 7: 0] - B_22[4n]
//                  bit [15: 8] - B_22[4n+1]
//                  bit [23:16] - B_22[4n+2]
//                  bit [31:24] - B_22[4n+3]
// 0x2c8 ~
// 0x2cf : Memory 'B_23' (8 * 8b)
//         Word n : bit [ 7: 0] - B_23[4n]
//                  bit [15: 8] - B_23[4n+1]
//                  bit [23:16] - B_23[4n+2]
//                  bit [31:24] - B_23[4n+3]
// 0x2d0 ~
// 0x2d7 : Memory 'B_24' (8 * 8b)
//         Word n : bit [ 7: 0] - B_24[4n]
//                  bit [15: 8] - B_24[4n+1]
//                  bit [23:16] - B_24[4n+2]
//                  bit [31:24] - B_24[4n+3]
// 0x2d8 ~
// 0x2df : Memory 'B_25' (8 * 8b)
//         Word n : bit [ 7: 0] - B_25[4n]
//                  bit [15: 8] - B_25[4n+1]
//                  bit [23:16] - B_25[4n+2]
//                  bit [31:24] - B_25[4n+3]
// 0x2e0 ~
// 0x2e7 : Memory 'B_26' (8 * 8b)
//         Word n : bit [ 7: 0] - B_26[4n]
//                  bit [15: 8] - B_26[4n+1]
//                  bit [23:16] - B_26[4n+2]
//                  bit [31:24] - B_26[4n+3]
// 0x2e8 ~
// 0x2ef : Memory 'B_27' (8 * 8b)
//         Word n : bit [ 7: 0] - B_27[4n]
//                  bit [15: 8] - B_27[4n+1]
//                  bit [23:16] - B_27[4n+2]
//                  bit [31:24] - B_27[4n+3]
// 0x2f0 ~
// 0x2f7 : Memory 'B_28' (8 * 8b)
//         Word n : bit [ 7: 0] - B_28[4n]
//                  bit [15: 8] - B_28[4n+1]
//                  bit [23:16] - B_28[4n+2]
//                  bit [31:24] - B_28[4n+3]
// 0x2f8 ~
// 0x2ff : Memory 'B_29' (8 * 8b)
//         Word n : bit [ 7: 0] - B_29[4n]
//                  bit [15: 8] - B_29[4n+1]
//                  bit [23:16] - B_29[4n+2]
//                  bit [31:24] - B_29[4n+3]
// 0x300 ~
// 0x307 : Memory 'B_30' (8 * 8b)
//         Word n : bit [ 7: 0] - B_30[4n]
//                  bit [15: 8] - B_30[4n+1]
//                  bit [23:16] - B_30[4n+2]
//                  bit [31:24] - B_30[4n+3]
// 0x308 ~
// 0x30f : Memory 'B_31' (8 * 8b)
//         Word n : bit [ 7: 0] - B_31[4n]
//                  bit [15: 8] - B_31[4n+1]
//                  bit [23:16] - B_31[4n+2]
//                  bit [31:24] - B_31[4n+3]
// 0x310 ~
// 0x317 : Memory 'B_32' (8 * 8b)
//         Word n : bit [ 7: 0] - B_32[4n]
//                  bit [15: 8] - B_32[4n+1]
//                  bit [23:16] - B_32[4n+2]
//                  bit [31:24] - B_32[4n+3]
// 0x318 ~
// 0x31f : Memory 'B_33' (8 * 8b)
//         Word n : bit [ 7: 0] - B_33[4n]
//                  bit [15: 8] - B_33[4n+1]
//                  bit [23:16] - B_33[4n+2]
//                  bit [31:24] - B_33[4n+3]
// 0x320 ~
// 0x327 : Memory 'B_34' (8 * 8b)
//         Word n : bit [ 7: 0] - B_34[4n]
//                  bit [15: 8] - B_34[4n+1]
//                  bit [23:16] - B_34[4n+2]
//                  bit [31:24] - B_34[4n+3]
// 0x328 ~
// 0x32f : Memory 'B_35' (8 * 8b)
//         Word n : bit [ 7: 0] - B_35[4n]
//                  bit [15: 8] - B_35[4n+1]
//                  bit [23:16] - B_35[4n+2]
//                  bit [31:24] - B_35[4n+3]
// 0x330 ~
// 0x337 : Memory 'B_36' (8 * 8b)
//         Word n : bit [ 7: 0] - B_36[4n]
//                  bit [15: 8] - B_36[4n+1]
//                  bit [23:16] - B_36[4n+2]
//                  bit [31:24] - B_36[4n+3]
// 0x338 ~
// 0x33f : Memory 'B_37' (8 * 8b)
//         Word n : bit [ 7: 0] - B_37[4n]
//                  bit [15: 8] - B_37[4n+1]
//                  bit [23:16] - B_37[4n+2]
//                  bit [31:24] - B_37[4n+3]
// 0x340 ~
// 0x347 : Memory 'B_38' (8 * 8b)
//         Word n : bit [ 7: 0] - B_38[4n]
//                  bit [15: 8] - B_38[4n+1]
//                  bit [23:16] - B_38[4n+2]
//                  bit [31:24] - B_38[4n+3]
// 0x348 ~
// 0x34f : Memory 'B_39' (8 * 8b)
//         Word n : bit [ 7: 0] - B_39[4n]
//                  bit [15: 8] - B_39[4n+1]
//                  bit [23:16] - B_39[4n+2]
//                  bit [31:24] - B_39[4n+3]
// 0x350 ~
// 0x357 : Memory 'B_40' (8 * 8b)
//         Word n : bit [ 7: 0] - B_40[4n]
//                  bit [15: 8] - B_40[4n+1]
//                  bit [23:16] - B_40[4n+2]
//                  bit [31:24] - B_40[4n+3]
// 0x358 ~
// 0x35f : Memory 'B_41' (8 * 8b)
//         Word n : bit [ 7: 0] - B_41[4n]
//                  bit [15: 8] - B_41[4n+1]
//                  bit [23:16] - B_41[4n+2]
//                  bit [31:24] - B_41[4n+3]
// 0x360 ~
// 0x367 : Memory 'B_42' (8 * 8b)
//         Word n : bit [ 7: 0] - B_42[4n]
//                  bit [15: 8] - B_42[4n+1]
//                  bit [23:16] - B_42[4n+2]
//                  bit [31:24] - B_42[4n+3]
// 0x368 ~
// 0x36f : Memory 'B_43' (8 * 8b)
//         Word n : bit [ 7: 0] - B_43[4n]
//                  bit [15: 8] - B_43[4n+1]
//                  bit [23:16] - B_43[4n+2]
//                  bit [31:24] - B_43[4n+3]
// 0x370 ~
// 0x377 : Memory 'B_44' (8 * 8b)
//         Word n : bit [ 7: 0] - B_44[4n]
//                  bit [15: 8] - B_44[4n+1]
//                  bit [23:16] - B_44[4n+2]
//                  bit [31:24] - B_44[4n+3]
// 0x378 ~
// 0x37f : Memory 'B_45' (8 * 8b)
//         Word n : bit [ 7: 0] - B_45[4n]
//                  bit [15: 8] - B_45[4n+1]
//                  bit [23:16] - B_45[4n+2]
//                  bit [31:24] - B_45[4n+3]
// 0x380 ~
// 0x387 : Memory 'B_46' (8 * 8b)
//         Word n : bit [ 7: 0] - B_46[4n]
//                  bit [15: 8] - B_46[4n+1]
//                  bit [23:16] - B_46[4n+2]
//                  bit [31:24] - B_46[4n+3]
// 0x388 ~
// 0x38f : Memory 'B_47' (8 * 8b)
//         Word n : bit [ 7: 0] - B_47[4n]
//                  bit [15: 8] - B_47[4n+1]
//                  bit [23:16] - B_47[4n+2]
//                  bit [31:24] - B_47[4n+3]
// 0x390 ~
// 0x397 : Memory 'B_48' (8 * 8b)
//         Word n : bit [ 7: 0] - B_48[4n]
//                  bit [15: 8] - B_48[4n+1]
//                  bit [23:16] - B_48[4n+2]
//                  bit [31:24] - B_48[4n+3]
// 0x398 ~
// 0x39f : Memory 'B_49' (8 * 8b)
//         Word n : bit [ 7: 0] - B_49[4n]
//                  bit [15: 8] - B_49[4n+1]
//                  bit [23:16] - B_49[4n+2]
//                  bit [31:24] - B_49[4n+3]
// 0x3a0 ~
// 0x3a7 : Memory 'B_50' (8 * 8b)
//         Word n : bit [ 7: 0] - B_50[4n]
//                  bit [15: 8] - B_50[4n+1]
//                  bit [23:16] - B_50[4n+2]
//                  bit [31:24] - B_50[4n+3]
// 0x3a8 ~
// 0x3af : Memory 'B_51' (8 * 8b)
//         Word n : bit [ 7: 0] - B_51[4n]
//                  bit [15: 8] - B_51[4n+1]
//                  bit [23:16] - B_51[4n+2]
//                  bit [31:24] - B_51[4n+3]
// 0x3b0 ~
// 0x3b7 : Memory 'B_52' (8 * 8b)
//         Word n : bit [ 7: 0] - B_52[4n]
//                  bit [15: 8] - B_52[4n+1]
//                  bit [23:16] - B_52[4n+2]
//                  bit [31:24] - B_52[4n+3]
// 0x3b8 ~
// 0x3bf : Memory 'B_53' (8 * 8b)
//         Word n : bit [ 7: 0] - B_53[4n]
//                  bit [15: 8] - B_53[4n+1]
//                  bit [23:16] - B_53[4n+2]
//                  bit [31:24] - B_53[4n+3]
// 0x3c0 ~
// 0x3c7 : Memory 'B_54' (8 * 8b)
//         Word n : bit [ 7: 0] - B_54[4n]
//                  bit [15: 8] - B_54[4n+1]
//                  bit [23:16] - B_54[4n+2]
//                  bit [31:24] - B_54[4n+3]
// 0x3c8 ~
// 0x3cf : Memory 'B_55' (8 * 8b)
//         Word n : bit [ 7: 0] - B_55[4n]
//                  bit [15: 8] - B_55[4n+1]
//                  bit [23:16] - B_55[4n+2]
//                  bit [31:24] - B_55[4n+3]
// 0x3d0 ~
// 0x3d7 : Memory 'B_56' (8 * 8b)
//         Word n : bit [ 7: 0] - B_56[4n]
//                  bit [15: 8] - B_56[4n+1]
//                  bit [23:16] - B_56[4n+2]
//                  bit [31:24] - B_56[4n+3]
// 0x3d8 ~
// 0x3df : Memory 'B_57' (8 * 8b)
//         Word n : bit [ 7: 0] - B_57[4n]
//                  bit [15: 8] - B_57[4n+1]
//                  bit [23:16] - B_57[4n+2]
//                  bit [31:24] - B_57[4n+3]
// 0x3e0 ~
// 0x3e7 : Memory 'B_58' (8 * 8b)
//         Word n : bit [ 7: 0] - B_58[4n]
//                  bit [15: 8] - B_58[4n+1]
//                  bit [23:16] - B_58[4n+2]
//                  bit [31:24] - B_58[4n+3]
// 0x3e8 ~
// 0x3ef : Memory 'B_59' (8 * 8b)
//         Word n : bit [ 7: 0] - B_59[4n]
//                  bit [15: 8] - B_59[4n+1]
//                  bit [23:16] - B_59[4n+2]
//                  bit [31:24] - B_59[4n+3]
// 0x3f0 ~
// 0x3f7 : Memory 'B_60' (8 * 8b)
//         Word n : bit [ 7: 0] - B_60[4n]
//                  bit [15: 8] - B_60[4n+1]
//                  bit [23:16] - B_60[4n+2]
//                  bit [31:24] - B_60[4n+3]
// 0x3f8 ~
// 0x3ff : Memory 'B_61' (8 * 8b)
//         Word n : bit [ 7: 0] - B_61[4n]
//                  bit [15: 8] - B_61[4n+1]
//                  bit [23:16] - B_61[4n+2]
//                  bit [31:24] - B_61[4n+3]
// 0x400 ~
// 0x407 : Memory 'B_62' (8 * 8b)
//         Word n : bit [ 7: 0] - B_62[4n]
//                  bit [15: 8] - B_62[4n+1]
//                  bit [23:16] - B_62[4n+2]
//                  bit [31:24] - B_62[4n+3]
// 0x408 ~
// 0x40f : Memory 'B_63' (8 * 8b)
//         Word n : bit [ 7: 0] - B_63[4n]
//                  bit [15: 8] - B_63[4n+1]
//                  bit [23:16] - B_63[4n+2]
//                  bit [31:24] - B_63[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL   = 11'h000,
    ADDR_GIE       = 11'h004,
    ADDR_IER       = 11'h008,
    ADDR_ISR       = 11'h00c,
    ADDR_C_DATA_0  = 11'h410,
    ADDR_C_CTRL    = 11'h414,
    ADDR_A_0_BASE  = 11'h010,
    ADDR_A_0_HIGH  = 11'h017,
    ADDR_A_1_BASE  = 11'h018,
    ADDR_A_1_HIGH  = 11'h01f,
    ADDR_A_2_BASE  = 11'h020,
    ADDR_A_2_HIGH  = 11'h027,
    ADDR_A_3_BASE  = 11'h028,
    ADDR_A_3_HIGH  = 11'h02f,
    ADDR_A_4_BASE  = 11'h030,
    ADDR_A_4_HIGH  = 11'h037,
    ADDR_A_5_BASE  = 11'h038,
    ADDR_A_5_HIGH  = 11'h03f,
    ADDR_A_6_BASE  = 11'h040,
    ADDR_A_6_HIGH  = 11'h047,
    ADDR_A_7_BASE  = 11'h048,
    ADDR_A_7_HIGH  = 11'h04f,
    ADDR_A_8_BASE  = 11'h050,
    ADDR_A_8_HIGH  = 11'h057,
    ADDR_A_9_BASE  = 11'h058,
    ADDR_A_9_HIGH  = 11'h05f,
    ADDR_A_10_BASE = 11'h060,
    ADDR_A_10_HIGH = 11'h067,
    ADDR_A_11_BASE = 11'h068,
    ADDR_A_11_HIGH = 11'h06f,
    ADDR_A_12_BASE = 11'h070,
    ADDR_A_12_HIGH = 11'h077,
    ADDR_A_13_BASE = 11'h078,
    ADDR_A_13_HIGH = 11'h07f,
    ADDR_A_14_BASE = 11'h080,
    ADDR_A_14_HIGH = 11'h087,
    ADDR_A_15_BASE = 11'h088,
    ADDR_A_15_HIGH = 11'h08f,
    ADDR_A_16_BASE = 11'h090,
    ADDR_A_16_HIGH = 11'h097,
    ADDR_A_17_BASE = 11'h098,
    ADDR_A_17_HIGH = 11'h09f,
    ADDR_A_18_BASE = 11'h0a0,
    ADDR_A_18_HIGH = 11'h0a7,
    ADDR_A_19_BASE = 11'h0a8,
    ADDR_A_19_HIGH = 11'h0af,
    ADDR_A_20_BASE = 11'h0b0,
    ADDR_A_20_HIGH = 11'h0b7,
    ADDR_A_21_BASE = 11'h0b8,
    ADDR_A_21_HIGH = 11'h0bf,
    ADDR_A_22_BASE = 11'h0c0,
    ADDR_A_22_HIGH = 11'h0c7,
    ADDR_A_23_BASE = 11'h0c8,
    ADDR_A_23_HIGH = 11'h0cf,
    ADDR_A_24_BASE = 11'h0d0,
    ADDR_A_24_HIGH = 11'h0d7,
    ADDR_A_25_BASE = 11'h0d8,
    ADDR_A_25_HIGH = 11'h0df,
    ADDR_A_26_BASE = 11'h0e0,
    ADDR_A_26_HIGH = 11'h0e7,
    ADDR_A_27_BASE = 11'h0e8,
    ADDR_A_27_HIGH = 11'h0ef,
    ADDR_A_28_BASE = 11'h0f0,
    ADDR_A_28_HIGH = 11'h0f7,
    ADDR_A_29_BASE = 11'h0f8,
    ADDR_A_29_HIGH = 11'h0ff,
    ADDR_A_30_BASE = 11'h100,
    ADDR_A_30_HIGH = 11'h107,
    ADDR_A_31_BASE = 11'h108,
    ADDR_A_31_HIGH = 11'h10f,
    ADDR_A_32_BASE = 11'h110,
    ADDR_A_32_HIGH = 11'h117,
    ADDR_A_33_BASE = 11'h118,
    ADDR_A_33_HIGH = 11'h11f,
    ADDR_A_34_BASE = 11'h120,
    ADDR_A_34_HIGH = 11'h127,
    ADDR_A_35_BASE = 11'h128,
    ADDR_A_35_HIGH = 11'h12f,
    ADDR_A_36_BASE = 11'h130,
    ADDR_A_36_HIGH = 11'h137,
    ADDR_A_37_BASE = 11'h138,
    ADDR_A_37_HIGH = 11'h13f,
    ADDR_A_38_BASE = 11'h140,
    ADDR_A_38_HIGH = 11'h147,
    ADDR_A_39_BASE = 11'h148,
    ADDR_A_39_HIGH = 11'h14f,
    ADDR_A_40_BASE = 11'h150,
    ADDR_A_40_HIGH = 11'h157,
    ADDR_A_41_BASE = 11'h158,
    ADDR_A_41_HIGH = 11'h15f,
    ADDR_A_42_BASE = 11'h160,
    ADDR_A_42_HIGH = 11'h167,
    ADDR_A_43_BASE = 11'h168,
    ADDR_A_43_HIGH = 11'h16f,
    ADDR_A_44_BASE = 11'h170,
    ADDR_A_44_HIGH = 11'h177,
    ADDR_A_45_BASE = 11'h178,
    ADDR_A_45_HIGH = 11'h17f,
    ADDR_A_46_BASE = 11'h180,
    ADDR_A_46_HIGH = 11'h187,
    ADDR_A_47_BASE = 11'h188,
    ADDR_A_47_HIGH = 11'h18f,
    ADDR_A_48_BASE = 11'h190,
    ADDR_A_48_HIGH = 11'h197,
    ADDR_A_49_BASE = 11'h198,
    ADDR_A_49_HIGH = 11'h19f,
    ADDR_A_50_BASE = 11'h1a0,
    ADDR_A_50_HIGH = 11'h1a7,
    ADDR_A_51_BASE = 11'h1a8,
    ADDR_A_51_HIGH = 11'h1af,
    ADDR_A_52_BASE = 11'h1b0,
    ADDR_A_52_HIGH = 11'h1b7,
    ADDR_A_53_BASE = 11'h1b8,
    ADDR_A_53_HIGH = 11'h1bf,
    ADDR_A_54_BASE = 11'h1c0,
    ADDR_A_54_HIGH = 11'h1c7,
    ADDR_A_55_BASE = 11'h1c8,
    ADDR_A_55_HIGH = 11'h1cf,
    ADDR_A_56_BASE = 11'h1d0,
    ADDR_A_56_HIGH = 11'h1d7,
    ADDR_A_57_BASE = 11'h1d8,
    ADDR_A_57_HIGH = 11'h1df,
    ADDR_A_58_BASE = 11'h1e0,
    ADDR_A_58_HIGH = 11'h1e7,
    ADDR_A_59_BASE = 11'h1e8,
    ADDR_A_59_HIGH = 11'h1ef,
    ADDR_A_60_BASE = 11'h1f0,
    ADDR_A_60_HIGH = 11'h1f7,
    ADDR_A_61_BASE = 11'h1f8,
    ADDR_A_61_HIGH = 11'h1ff,
    ADDR_A_62_BASE = 11'h200,
    ADDR_A_62_HIGH = 11'h207,
    ADDR_A_63_BASE = 11'h208,
    ADDR_A_63_HIGH = 11'h20f,
    ADDR_B_0_BASE  = 11'h210,
    ADDR_B_0_HIGH  = 11'h217,
    ADDR_B_1_BASE  = 11'h218,
    ADDR_B_1_HIGH  = 11'h21f,
    ADDR_B_2_BASE  = 11'h220,
    ADDR_B_2_HIGH  = 11'h227,
    ADDR_B_3_BASE  = 11'h228,
    ADDR_B_3_HIGH  = 11'h22f,
    ADDR_B_4_BASE  = 11'h230,
    ADDR_B_4_HIGH  = 11'h237,
    ADDR_B_5_BASE  = 11'h238,
    ADDR_B_5_HIGH  = 11'h23f,
    ADDR_B_6_BASE  = 11'h240,
    ADDR_B_6_HIGH  = 11'h247,
    ADDR_B_7_BASE  = 11'h248,
    ADDR_B_7_HIGH  = 11'h24f,
    ADDR_B_8_BASE  = 11'h250,
    ADDR_B_8_HIGH  = 11'h257,
    ADDR_B_9_BASE  = 11'h258,
    ADDR_B_9_HIGH  = 11'h25f,
    ADDR_B_10_BASE = 11'h260,
    ADDR_B_10_HIGH = 11'h267,
    ADDR_B_11_BASE = 11'h268,
    ADDR_B_11_HIGH = 11'h26f,
    ADDR_B_12_BASE = 11'h270,
    ADDR_B_12_HIGH = 11'h277,
    ADDR_B_13_BASE = 11'h278,
    ADDR_B_13_HIGH = 11'h27f,
    ADDR_B_14_BASE = 11'h280,
    ADDR_B_14_HIGH = 11'h287,
    ADDR_B_15_BASE = 11'h288,
    ADDR_B_15_HIGH = 11'h28f,
    ADDR_B_16_BASE = 11'h290,
    ADDR_B_16_HIGH = 11'h297,
    ADDR_B_17_BASE = 11'h298,
    ADDR_B_17_HIGH = 11'h29f,
    ADDR_B_18_BASE = 11'h2a0,
    ADDR_B_18_HIGH = 11'h2a7,
    ADDR_B_19_BASE = 11'h2a8,
    ADDR_B_19_HIGH = 11'h2af,
    ADDR_B_20_BASE = 11'h2b0,
    ADDR_B_20_HIGH = 11'h2b7,
    ADDR_B_21_BASE = 11'h2b8,
    ADDR_B_21_HIGH = 11'h2bf,
    ADDR_B_22_BASE = 11'h2c0,
    ADDR_B_22_HIGH = 11'h2c7,
    ADDR_B_23_BASE = 11'h2c8,
    ADDR_B_23_HIGH = 11'h2cf,
    ADDR_B_24_BASE = 11'h2d0,
    ADDR_B_24_HIGH = 11'h2d7,
    ADDR_B_25_BASE = 11'h2d8,
    ADDR_B_25_HIGH = 11'h2df,
    ADDR_B_26_BASE = 11'h2e0,
    ADDR_B_26_HIGH = 11'h2e7,
    ADDR_B_27_BASE = 11'h2e8,
    ADDR_B_27_HIGH = 11'h2ef,
    ADDR_B_28_BASE = 11'h2f0,
    ADDR_B_28_HIGH = 11'h2f7,
    ADDR_B_29_BASE = 11'h2f8,
    ADDR_B_29_HIGH = 11'h2ff,
    ADDR_B_30_BASE = 11'h300,
    ADDR_B_30_HIGH = 11'h307,
    ADDR_B_31_BASE = 11'h308,
    ADDR_B_31_HIGH = 11'h30f,
    ADDR_B_32_BASE = 11'h310,
    ADDR_B_32_HIGH = 11'h317,
    ADDR_B_33_BASE = 11'h318,
    ADDR_B_33_HIGH = 11'h31f,
    ADDR_B_34_BASE = 11'h320,
    ADDR_B_34_HIGH = 11'h327,
    ADDR_B_35_BASE = 11'h328,
    ADDR_B_35_HIGH = 11'h32f,
    ADDR_B_36_BASE = 11'h330,
    ADDR_B_36_HIGH = 11'h337,
    ADDR_B_37_BASE = 11'h338,
    ADDR_B_37_HIGH = 11'h33f,
    ADDR_B_38_BASE = 11'h340,
    ADDR_B_38_HIGH = 11'h347,
    ADDR_B_39_BASE = 11'h348,
    ADDR_B_39_HIGH = 11'h34f,
    ADDR_B_40_BASE = 11'h350,
    ADDR_B_40_HIGH = 11'h357,
    ADDR_B_41_BASE = 11'h358,
    ADDR_B_41_HIGH = 11'h35f,
    ADDR_B_42_BASE = 11'h360,
    ADDR_B_42_HIGH = 11'h367,
    ADDR_B_43_BASE = 11'h368,
    ADDR_B_43_HIGH = 11'h36f,
    ADDR_B_44_BASE = 11'h370,
    ADDR_B_44_HIGH = 11'h377,
    ADDR_B_45_BASE = 11'h378,
    ADDR_B_45_HIGH = 11'h37f,
    ADDR_B_46_BASE = 11'h380,
    ADDR_B_46_HIGH = 11'h387,
    ADDR_B_47_BASE = 11'h388,
    ADDR_B_47_HIGH = 11'h38f,
    ADDR_B_48_BASE = 11'h390,
    ADDR_B_48_HIGH = 11'h397,
    ADDR_B_49_BASE = 11'h398,
    ADDR_B_49_HIGH = 11'h39f,
    ADDR_B_50_BASE = 11'h3a0,
    ADDR_B_50_HIGH = 11'h3a7,
    ADDR_B_51_BASE = 11'h3a8,
    ADDR_B_51_HIGH = 11'h3af,
    ADDR_B_52_BASE = 11'h3b0,
    ADDR_B_52_HIGH = 11'h3b7,
    ADDR_B_53_BASE = 11'h3b8,
    ADDR_B_53_HIGH = 11'h3bf,
    ADDR_B_54_BASE = 11'h3c0,
    ADDR_B_54_HIGH = 11'h3c7,
    ADDR_B_55_BASE = 11'h3c8,
    ADDR_B_55_HIGH = 11'h3cf,
    ADDR_B_56_BASE = 11'h3d0,
    ADDR_B_56_HIGH = 11'h3d7,
    ADDR_B_57_BASE = 11'h3d8,
    ADDR_B_57_HIGH = 11'h3df,
    ADDR_B_58_BASE = 11'h3e0,
    ADDR_B_58_HIGH = 11'h3e7,
    ADDR_B_59_BASE = 11'h3e8,
    ADDR_B_59_HIGH = 11'h3ef,
    ADDR_B_60_BASE = 11'h3f0,
    ADDR_B_60_HIGH = 11'h3f7,
    ADDR_B_61_BASE = 11'h3f8,
    ADDR_B_61_HIGH = 11'h3ff,
    ADDR_B_62_BASE = 11'h400,
    ADDR_B_62_HIGH = 11'h407,
    ADDR_B_63_BASE = 11'h408,
    ADDR_B_63_HIGH = 11'h40f,
    WRIDLE         = 2'd0,
    WRDATA         = 2'd1,
    WRRESP         = 2'd2,
    WRRESET        = 2'd3,
    RDIDLE         = 2'd0,
    RDDATA         = 2'd1,
    RDRESET        = 2'd2,
    ADDR_BITS                = 11;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg                           int_C_ap_vld;
    reg  [31:0]                   int_C = 'b0;
    // memory signals
    wire [0:0]                    int_A_0_address0;
    wire                          int_A_0_ce0;
    wire [31:0]                   int_A_0_q0;
    wire [0:0]                    int_A_0_address1;
    wire                          int_A_0_ce1;
    wire                          int_A_0_we1;
    wire [3:0]                    int_A_0_be1;
    wire [31:0]                   int_A_0_d1;
    wire [31:0]                   int_A_0_q1;
    reg                           int_A_0_read;
    reg                           int_A_0_write;
    reg  [1:0]                    int_A_0_shift0;
    wire [0:0]                    int_A_1_address0;
    wire                          int_A_1_ce0;
    wire [31:0]                   int_A_1_q0;
    wire [0:0]                    int_A_1_address1;
    wire                          int_A_1_ce1;
    wire                          int_A_1_we1;
    wire [3:0]                    int_A_1_be1;
    wire [31:0]                   int_A_1_d1;
    wire [31:0]                   int_A_1_q1;
    reg                           int_A_1_read;
    reg                           int_A_1_write;
    reg  [1:0]                    int_A_1_shift0;
    wire [0:0]                    int_A_2_address0;
    wire                          int_A_2_ce0;
    wire [31:0]                   int_A_2_q0;
    wire [0:0]                    int_A_2_address1;
    wire                          int_A_2_ce1;
    wire                          int_A_2_we1;
    wire [3:0]                    int_A_2_be1;
    wire [31:0]                   int_A_2_d1;
    wire [31:0]                   int_A_2_q1;
    reg                           int_A_2_read;
    reg                           int_A_2_write;
    reg  [1:0]                    int_A_2_shift0;
    wire [0:0]                    int_A_3_address0;
    wire                          int_A_3_ce0;
    wire [31:0]                   int_A_3_q0;
    wire [0:0]                    int_A_3_address1;
    wire                          int_A_3_ce1;
    wire                          int_A_3_we1;
    wire [3:0]                    int_A_3_be1;
    wire [31:0]                   int_A_3_d1;
    wire [31:0]                   int_A_3_q1;
    reg                           int_A_3_read;
    reg                           int_A_3_write;
    reg  [1:0]                    int_A_3_shift0;
    wire [0:0]                    int_A_4_address0;
    wire                          int_A_4_ce0;
    wire [31:0]                   int_A_4_q0;
    wire [0:0]                    int_A_4_address1;
    wire                          int_A_4_ce1;
    wire                          int_A_4_we1;
    wire [3:0]                    int_A_4_be1;
    wire [31:0]                   int_A_4_d1;
    wire [31:0]                   int_A_4_q1;
    reg                           int_A_4_read;
    reg                           int_A_4_write;
    reg  [1:0]                    int_A_4_shift0;
    wire [0:0]                    int_A_5_address0;
    wire                          int_A_5_ce0;
    wire [31:0]                   int_A_5_q0;
    wire [0:0]                    int_A_5_address1;
    wire                          int_A_5_ce1;
    wire                          int_A_5_we1;
    wire [3:0]                    int_A_5_be1;
    wire [31:0]                   int_A_5_d1;
    wire [31:0]                   int_A_5_q1;
    reg                           int_A_5_read;
    reg                           int_A_5_write;
    reg  [1:0]                    int_A_5_shift0;
    wire [0:0]                    int_A_6_address0;
    wire                          int_A_6_ce0;
    wire [31:0]                   int_A_6_q0;
    wire [0:0]                    int_A_6_address1;
    wire                          int_A_6_ce1;
    wire                          int_A_6_we1;
    wire [3:0]                    int_A_6_be1;
    wire [31:0]                   int_A_6_d1;
    wire [31:0]                   int_A_6_q1;
    reg                           int_A_6_read;
    reg                           int_A_6_write;
    reg  [1:0]                    int_A_6_shift0;
    wire [0:0]                    int_A_7_address0;
    wire                          int_A_7_ce0;
    wire [31:0]                   int_A_7_q0;
    wire [0:0]                    int_A_7_address1;
    wire                          int_A_7_ce1;
    wire                          int_A_7_we1;
    wire [3:0]                    int_A_7_be1;
    wire [31:0]                   int_A_7_d1;
    wire [31:0]                   int_A_7_q1;
    reg                           int_A_7_read;
    reg                           int_A_7_write;
    reg  [1:0]                    int_A_7_shift0;
    wire [0:0]                    int_A_8_address0;
    wire                          int_A_8_ce0;
    wire [31:0]                   int_A_8_q0;
    wire [0:0]                    int_A_8_address1;
    wire                          int_A_8_ce1;
    wire                          int_A_8_we1;
    wire [3:0]                    int_A_8_be1;
    wire [31:0]                   int_A_8_d1;
    wire [31:0]                   int_A_8_q1;
    reg                           int_A_8_read;
    reg                           int_A_8_write;
    reg  [1:0]                    int_A_8_shift0;
    wire [0:0]                    int_A_9_address0;
    wire                          int_A_9_ce0;
    wire [31:0]                   int_A_9_q0;
    wire [0:0]                    int_A_9_address1;
    wire                          int_A_9_ce1;
    wire                          int_A_9_we1;
    wire [3:0]                    int_A_9_be1;
    wire [31:0]                   int_A_9_d1;
    wire [31:0]                   int_A_9_q1;
    reg                           int_A_9_read;
    reg                           int_A_9_write;
    reg  [1:0]                    int_A_9_shift0;
    wire [0:0]                    int_A_10_address0;
    wire                          int_A_10_ce0;
    wire [31:0]                   int_A_10_q0;
    wire [0:0]                    int_A_10_address1;
    wire                          int_A_10_ce1;
    wire                          int_A_10_we1;
    wire [3:0]                    int_A_10_be1;
    wire [31:0]                   int_A_10_d1;
    wire [31:0]                   int_A_10_q1;
    reg                           int_A_10_read;
    reg                           int_A_10_write;
    reg  [1:0]                    int_A_10_shift0;
    wire [0:0]                    int_A_11_address0;
    wire                          int_A_11_ce0;
    wire [31:0]                   int_A_11_q0;
    wire [0:0]                    int_A_11_address1;
    wire                          int_A_11_ce1;
    wire                          int_A_11_we1;
    wire [3:0]                    int_A_11_be1;
    wire [31:0]                   int_A_11_d1;
    wire [31:0]                   int_A_11_q1;
    reg                           int_A_11_read;
    reg                           int_A_11_write;
    reg  [1:0]                    int_A_11_shift0;
    wire [0:0]                    int_A_12_address0;
    wire                          int_A_12_ce0;
    wire [31:0]                   int_A_12_q0;
    wire [0:0]                    int_A_12_address1;
    wire                          int_A_12_ce1;
    wire                          int_A_12_we1;
    wire [3:0]                    int_A_12_be1;
    wire [31:0]                   int_A_12_d1;
    wire [31:0]                   int_A_12_q1;
    reg                           int_A_12_read;
    reg                           int_A_12_write;
    reg  [1:0]                    int_A_12_shift0;
    wire [0:0]                    int_A_13_address0;
    wire                          int_A_13_ce0;
    wire [31:0]                   int_A_13_q0;
    wire [0:0]                    int_A_13_address1;
    wire                          int_A_13_ce1;
    wire                          int_A_13_we1;
    wire [3:0]                    int_A_13_be1;
    wire [31:0]                   int_A_13_d1;
    wire [31:0]                   int_A_13_q1;
    reg                           int_A_13_read;
    reg                           int_A_13_write;
    reg  [1:0]                    int_A_13_shift0;
    wire [0:0]                    int_A_14_address0;
    wire                          int_A_14_ce0;
    wire [31:0]                   int_A_14_q0;
    wire [0:0]                    int_A_14_address1;
    wire                          int_A_14_ce1;
    wire                          int_A_14_we1;
    wire [3:0]                    int_A_14_be1;
    wire [31:0]                   int_A_14_d1;
    wire [31:0]                   int_A_14_q1;
    reg                           int_A_14_read;
    reg                           int_A_14_write;
    reg  [1:0]                    int_A_14_shift0;
    wire [0:0]                    int_A_15_address0;
    wire                          int_A_15_ce0;
    wire [31:0]                   int_A_15_q0;
    wire [0:0]                    int_A_15_address1;
    wire                          int_A_15_ce1;
    wire                          int_A_15_we1;
    wire [3:0]                    int_A_15_be1;
    wire [31:0]                   int_A_15_d1;
    wire [31:0]                   int_A_15_q1;
    reg                           int_A_15_read;
    reg                           int_A_15_write;
    reg  [1:0]                    int_A_15_shift0;
    wire [0:0]                    int_A_16_address0;
    wire                          int_A_16_ce0;
    wire [31:0]                   int_A_16_q0;
    wire [0:0]                    int_A_16_address1;
    wire                          int_A_16_ce1;
    wire                          int_A_16_we1;
    wire [3:0]                    int_A_16_be1;
    wire [31:0]                   int_A_16_d1;
    wire [31:0]                   int_A_16_q1;
    reg                           int_A_16_read;
    reg                           int_A_16_write;
    reg  [1:0]                    int_A_16_shift0;
    wire [0:0]                    int_A_17_address0;
    wire                          int_A_17_ce0;
    wire [31:0]                   int_A_17_q0;
    wire [0:0]                    int_A_17_address1;
    wire                          int_A_17_ce1;
    wire                          int_A_17_we1;
    wire [3:0]                    int_A_17_be1;
    wire [31:0]                   int_A_17_d1;
    wire [31:0]                   int_A_17_q1;
    reg                           int_A_17_read;
    reg                           int_A_17_write;
    reg  [1:0]                    int_A_17_shift0;
    wire [0:0]                    int_A_18_address0;
    wire                          int_A_18_ce0;
    wire [31:0]                   int_A_18_q0;
    wire [0:0]                    int_A_18_address1;
    wire                          int_A_18_ce1;
    wire                          int_A_18_we1;
    wire [3:0]                    int_A_18_be1;
    wire [31:0]                   int_A_18_d1;
    wire [31:0]                   int_A_18_q1;
    reg                           int_A_18_read;
    reg                           int_A_18_write;
    reg  [1:0]                    int_A_18_shift0;
    wire [0:0]                    int_A_19_address0;
    wire                          int_A_19_ce0;
    wire [31:0]                   int_A_19_q0;
    wire [0:0]                    int_A_19_address1;
    wire                          int_A_19_ce1;
    wire                          int_A_19_we1;
    wire [3:0]                    int_A_19_be1;
    wire [31:0]                   int_A_19_d1;
    wire [31:0]                   int_A_19_q1;
    reg                           int_A_19_read;
    reg                           int_A_19_write;
    reg  [1:0]                    int_A_19_shift0;
    wire [0:0]                    int_A_20_address0;
    wire                          int_A_20_ce0;
    wire [31:0]                   int_A_20_q0;
    wire [0:0]                    int_A_20_address1;
    wire                          int_A_20_ce1;
    wire                          int_A_20_we1;
    wire [3:0]                    int_A_20_be1;
    wire [31:0]                   int_A_20_d1;
    wire [31:0]                   int_A_20_q1;
    reg                           int_A_20_read;
    reg                           int_A_20_write;
    reg  [1:0]                    int_A_20_shift0;
    wire [0:0]                    int_A_21_address0;
    wire                          int_A_21_ce0;
    wire [31:0]                   int_A_21_q0;
    wire [0:0]                    int_A_21_address1;
    wire                          int_A_21_ce1;
    wire                          int_A_21_we1;
    wire [3:0]                    int_A_21_be1;
    wire [31:0]                   int_A_21_d1;
    wire [31:0]                   int_A_21_q1;
    reg                           int_A_21_read;
    reg                           int_A_21_write;
    reg  [1:0]                    int_A_21_shift0;
    wire [0:0]                    int_A_22_address0;
    wire                          int_A_22_ce0;
    wire [31:0]                   int_A_22_q0;
    wire [0:0]                    int_A_22_address1;
    wire                          int_A_22_ce1;
    wire                          int_A_22_we1;
    wire [3:0]                    int_A_22_be1;
    wire [31:0]                   int_A_22_d1;
    wire [31:0]                   int_A_22_q1;
    reg                           int_A_22_read;
    reg                           int_A_22_write;
    reg  [1:0]                    int_A_22_shift0;
    wire [0:0]                    int_A_23_address0;
    wire                          int_A_23_ce0;
    wire [31:0]                   int_A_23_q0;
    wire [0:0]                    int_A_23_address1;
    wire                          int_A_23_ce1;
    wire                          int_A_23_we1;
    wire [3:0]                    int_A_23_be1;
    wire [31:0]                   int_A_23_d1;
    wire [31:0]                   int_A_23_q1;
    reg                           int_A_23_read;
    reg                           int_A_23_write;
    reg  [1:0]                    int_A_23_shift0;
    wire [0:0]                    int_A_24_address0;
    wire                          int_A_24_ce0;
    wire [31:0]                   int_A_24_q0;
    wire [0:0]                    int_A_24_address1;
    wire                          int_A_24_ce1;
    wire                          int_A_24_we1;
    wire [3:0]                    int_A_24_be1;
    wire [31:0]                   int_A_24_d1;
    wire [31:0]                   int_A_24_q1;
    reg                           int_A_24_read;
    reg                           int_A_24_write;
    reg  [1:0]                    int_A_24_shift0;
    wire [0:0]                    int_A_25_address0;
    wire                          int_A_25_ce0;
    wire [31:0]                   int_A_25_q0;
    wire [0:0]                    int_A_25_address1;
    wire                          int_A_25_ce1;
    wire                          int_A_25_we1;
    wire [3:0]                    int_A_25_be1;
    wire [31:0]                   int_A_25_d1;
    wire [31:0]                   int_A_25_q1;
    reg                           int_A_25_read;
    reg                           int_A_25_write;
    reg  [1:0]                    int_A_25_shift0;
    wire [0:0]                    int_A_26_address0;
    wire                          int_A_26_ce0;
    wire [31:0]                   int_A_26_q0;
    wire [0:0]                    int_A_26_address1;
    wire                          int_A_26_ce1;
    wire                          int_A_26_we1;
    wire [3:0]                    int_A_26_be1;
    wire [31:0]                   int_A_26_d1;
    wire [31:0]                   int_A_26_q1;
    reg                           int_A_26_read;
    reg                           int_A_26_write;
    reg  [1:0]                    int_A_26_shift0;
    wire [0:0]                    int_A_27_address0;
    wire                          int_A_27_ce0;
    wire [31:0]                   int_A_27_q0;
    wire [0:0]                    int_A_27_address1;
    wire                          int_A_27_ce1;
    wire                          int_A_27_we1;
    wire [3:0]                    int_A_27_be1;
    wire [31:0]                   int_A_27_d1;
    wire [31:0]                   int_A_27_q1;
    reg                           int_A_27_read;
    reg                           int_A_27_write;
    reg  [1:0]                    int_A_27_shift0;
    wire [0:0]                    int_A_28_address0;
    wire                          int_A_28_ce0;
    wire [31:0]                   int_A_28_q0;
    wire [0:0]                    int_A_28_address1;
    wire                          int_A_28_ce1;
    wire                          int_A_28_we1;
    wire [3:0]                    int_A_28_be1;
    wire [31:0]                   int_A_28_d1;
    wire [31:0]                   int_A_28_q1;
    reg                           int_A_28_read;
    reg                           int_A_28_write;
    reg  [1:0]                    int_A_28_shift0;
    wire [0:0]                    int_A_29_address0;
    wire                          int_A_29_ce0;
    wire [31:0]                   int_A_29_q0;
    wire [0:0]                    int_A_29_address1;
    wire                          int_A_29_ce1;
    wire                          int_A_29_we1;
    wire [3:0]                    int_A_29_be1;
    wire [31:0]                   int_A_29_d1;
    wire [31:0]                   int_A_29_q1;
    reg                           int_A_29_read;
    reg                           int_A_29_write;
    reg  [1:0]                    int_A_29_shift0;
    wire [0:0]                    int_A_30_address0;
    wire                          int_A_30_ce0;
    wire [31:0]                   int_A_30_q0;
    wire [0:0]                    int_A_30_address1;
    wire                          int_A_30_ce1;
    wire                          int_A_30_we1;
    wire [3:0]                    int_A_30_be1;
    wire [31:0]                   int_A_30_d1;
    wire [31:0]                   int_A_30_q1;
    reg                           int_A_30_read;
    reg                           int_A_30_write;
    reg  [1:0]                    int_A_30_shift0;
    wire [0:0]                    int_A_31_address0;
    wire                          int_A_31_ce0;
    wire [31:0]                   int_A_31_q0;
    wire [0:0]                    int_A_31_address1;
    wire                          int_A_31_ce1;
    wire                          int_A_31_we1;
    wire [3:0]                    int_A_31_be1;
    wire [31:0]                   int_A_31_d1;
    wire [31:0]                   int_A_31_q1;
    reg                           int_A_31_read;
    reg                           int_A_31_write;
    reg  [1:0]                    int_A_31_shift0;
    wire [0:0]                    int_A_32_address0;
    wire                          int_A_32_ce0;
    wire [31:0]                   int_A_32_q0;
    wire [0:0]                    int_A_32_address1;
    wire                          int_A_32_ce1;
    wire                          int_A_32_we1;
    wire [3:0]                    int_A_32_be1;
    wire [31:0]                   int_A_32_d1;
    wire [31:0]                   int_A_32_q1;
    reg                           int_A_32_read;
    reg                           int_A_32_write;
    reg  [1:0]                    int_A_32_shift0;
    wire [0:0]                    int_A_33_address0;
    wire                          int_A_33_ce0;
    wire [31:0]                   int_A_33_q0;
    wire [0:0]                    int_A_33_address1;
    wire                          int_A_33_ce1;
    wire                          int_A_33_we1;
    wire [3:0]                    int_A_33_be1;
    wire [31:0]                   int_A_33_d1;
    wire [31:0]                   int_A_33_q1;
    reg                           int_A_33_read;
    reg                           int_A_33_write;
    reg  [1:0]                    int_A_33_shift0;
    wire [0:0]                    int_A_34_address0;
    wire                          int_A_34_ce0;
    wire [31:0]                   int_A_34_q0;
    wire [0:0]                    int_A_34_address1;
    wire                          int_A_34_ce1;
    wire                          int_A_34_we1;
    wire [3:0]                    int_A_34_be1;
    wire [31:0]                   int_A_34_d1;
    wire [31:0]                   int_A_34_q1;
    reg                           int_A_34_read;
    reg                           int_A_34_write;
    reg  [1:0]                    int_A_34_shift0;
    wire [0:0]                    int_A_35_address0;
    wire                          int_A_35_ce0;
    wire [31:0]                   int_A_35_q0;
    wire [0:0]                    int_A_35_address1;
    wire                          int_A_35_ce1;
    wire                          int_A_35_we1;
    wire [3:0]                    int_A_35_be1;
    wire [31:0]                   int_A_35_d1;
    wire [31:0]                   int_A_35_q1;
    reg                           int_A_35_read;
    reg                           int_A_35_write;
    reg  [1:0]                    int_A_35_shift0;
    wire [0:0]                    int_A_36_address0;
    wire                          int_A_36_ce0;
    wire [31:0]                   int_A_36_q0;
    wire [0:0]                    int_A_36_address1;
    wire                          int_A_36_ce1;
    wire                          int_A_36_we1;
    wire [3:0]                    int_A_36_be1;
    wire [31:0]                   int_A_36_d1;
    wire [31:0]                   int_A_36_q1;
    reg                           int_A_36_read;
    reg                           int_A_36_write;
    reg  [1:0]                    int_A_36_shift0;
    wire [0:0]                    int_A_37_address0;
    wire                          int_A_37_ce0;
    wire [31:0]                   int_A_37_q0;
    wire [0:0]                    int_A_37_address1;
    wire                          int_A_37_ce1;
    wire                          int_A_37_we1;
    wire [3:0]                    int_A_37_be1;
    wire [31:0]                   int_A_37_d1;
    wire [31:0]                   int_A_37_q1;
    reg                           int_A_37_read;
    reg                           int_A_37_write;
    reg  [1:0]                    int_A_37_shift0;
    wire [0:0]                    int_A_38_address0;
    wire                          int_A_38_ce0;
    wire [31:0]                   int_A_38_q0;
    wire [0:0]                    int_A_38_address1;
    wire                          int_A_38_ce1;
    wire                          int_A_38_we1;
    wire [3:0]                    int_A_38_be1;
    wire [31:0]                   int_A_38_d1;
    wire [31:0]                   int_A_38_q1;
    reg                           int_A_38_read;
    reg                           int_A_38_write;
    reg  [1:0]                    int_A_38_shift0;
    wire [0:0]                    int_A_39_address0;
    wire                          int_A_39_ce0;
    wire [31:0]                   int_A_39_q0;
    wire [0:0]                    int_A_39_address1;
    wire                          int_A_39_ce1;
    wire                          int_A_39_we1;
    wire [3:0]                    int_A_39_be1;
    wire [31:0]                   int_A_39_d1;
    wire [31:0]                   int_A_39_q1;
    reg                           int_A_39_read;
    reg                           int_A_39_write;
    reg  [1:0]                    int_A_39_shift0;
    wire [0:0]                    int_A_40_address0;
    wire                          int_A_40_ce0;
    wire [31:0]                   int_A_40_q0;
    wire [0:0]                    int_A_40_address1;
    wire                          int_A_40_ce1;
    wire                          int_A_40_we1;
    wire [3:0]                    int_A_40_be1;
    wire [31:0]                   int_A_40_d1;
    wire [31:0]                   int_A_40_q1;
    reg                           int_A_40_read;
    reg                           int_A_40_write;
    reg  [1:0]                    int_A_40_shift0;
    wire [0:0]                    int_A_41_address0;
    wire                          int_A_41_ce0;
    wire [31:0]                   int_A_41_q0;
    wire [0:0]                    int_A_41_address1;
    wire                          int_A_41_ce1;
    wire                          int_A_41_we1;
    wire [3:0]                    int_A_41_be1;
    wire [31:0]                   int_A_41_d1;
    wire [31:0]                   int_A_41_q1;
    reg                           int_A_41_read;
    reg                           int_A_41_write;
    reg  [1:0]                    int_A_41_shift0;
    wire [0:0]                    int_A_42_address0;
    wire                          int_A_42_ce0;
    wire [31:0]                   int_A_42_q0;
    wire [0:0]                    int_A_42_address1;
    wire                          int_A_42_ce1;
    wire                          int_A_42_we1;
    wire [3:0]                    int_A_42_be1;
    wire [31:0]                   int_A_42_d1;
    wire [31:0]                   int_A_42_q1;
    reg                           int_A_42_read;
    reg                           int_A_42_write;
    reg  [1:0]                    int_A_42_shift0;
    wire [0:0]                    int_A_43_address0;
    wire                          int_A_43_ce0;
    wire [31:0]                   int_A_43_q0;
    wire [0:0]                    int_A_43_address1;
    wire                          int_A_43_ce1;
    wire                          int_A_43_we1;
    wire [3:0]                    int_A_43_be1;
    wire [31:0]                   int_A_43_d1;
    wire [31:0]                   int_A_43_q1;
    reg                           int_A_43_read;
    reg                           int_A_43_write;
    reg  [1:0]                    int_A_43_shift0;
    wire [0:0]                    int_A_44_address0;
    wire                          int_A_44_ce0;
    wire [31:0]                   int_A_44_q0;
    wire [0:0]                    int_A_44_address1;
    wire                          int_A_44_ce1;
    wire                          int_A_44_we1;
    wire [3:0]                    int_A_44_be1;
    wire [31:0]                   int_A_44_d1;
    wire [31:0]                   int_A_44_q1;
    reg                           int_A_44_read;
    reg                           int_A_44_write;
    reg  [1:0]                    int_A_44_shift0;
    wire [0:0]                    int_A_45_address0;
    wire                          int_A_45_ce0;
    wire [31:0]                   int_A_45_q0;
    wire [0:0]                    int_A_45_address1;
    wire                          int_A_45_ce1;
    wire                          int_A_45_we1;
    wire [3:0]                    int_A_45_be1;
    wire [31:0]                   int_A_45_d1;
    wire [31:0]                   int_A_45_q1;
    reg                           int_A_45_read;
    reg                           int_A_45_write;
    reg  [1:0]                    int_A_45_shift0;
    wire [0:0]                    int_A_46_address0;
    wire                          int_A_46_ce0;
    wire [31:0]                   int_A_46_q0;
    wire [0:0]                    int_A_46_address1;
    wire                          int_A_46_ce1;
    wire                          int_A_46_we1;
    wire [3:0]                    int_A_46_be1;
    wire [31:0]                   int_A_46_d1;
    wire [31:0]                   int_A_46_q1;
    reg                           int_A_46_read;
    reg                           int_A_46_write;
    reg  [1:0]                    int_A_46_shift0;
    wire [0:0]                    int_A_47_address0;
    wire                          int_A_47_ce0;
    wire [31:0]                   int_A_47_q0;
    wire [0:0]                    int_A_47_address1;
    wire                          int_A_47_ce1;
    wire                          int_A_47_we1;
    wire [3:0]                    int_A_47_be1;
    wire [31:0]                   int_A_47_d1;
    wire [31:0]                   int_A_47_q1;
    reg                           int_A_47_read;
    reg                           int_A_47_write;
    reg  [1:0]                    int_A_47_shift0;
    wire [0:0]                    int_A_48_address0;
    wire                          int_A_48_ce0;
    wire [31:0]                   int_A_48_q0;
    wire [0:0]                    int_A_48_address1;
    wire                          int_A_48_ce1;
    wire                          int_A_48_we1;
    wire [3:0]                    int_A_48_be1;
    wire [31:0]                   int_A_48_d1;
    wire [31:0]                   int_A_48_q1;
    reg                           int_A_48_read;
    reg                           int_A_48_write;
    reg  [1:0]                    int_A_48_shift0;
    wire [0:0]                    int_A_49_address0;
    wire                          int_A_49_ce0;
    wire [31:0]                   int_A_49_q0;
    wire [0:0]                    int_A_49_address1;
    wire                          int_A_49_ce1;
    wire                          int_A_49_we1;
    wire [3:0]                    int_A_49_be1;
    wire [31:0]                   int_A_49_d1;
    wire [31:0]                   int_A_49_q1;
    reg                           int_A_49_read;
    reg                           int_A_49_write;
    reg  [1:0]                    int_A_49_shift0;
    wire [0:0]                    int_A_50_address0;
    wire                          int_A_50_ce0;
    wire [31:0]                   int_A_50_q0;
    wire [0:0]                    int_A_50_address1;
    wire                          int_A_50_ce1;
    wire                          int_A_50_we1;
    wire [3:0]                    int_A_50_be1;
    wire [31:0]                   int_A_50_d1;
    wire [31:0]                   int_A_50_q1;
    reg                           int_A_50_read;
    reg                           int_A_50_write;
    reg  [1:0]                    int_A_50_shift0;
    wire [0:0]                    int_A_51_address0;
    wire                          int_A_51_ce0;
    wire [31:0]                   int_A_51_q0;
    wire [0:0]                    int_A_51_address1;
    wire                          int_A_51_ce1;
    wire                          int_A_51_we1;
    wire [3:0]                    int_A_51_be1;
    wire [31:0]                   int_A_51_d1;
    wire [31:0]                   int_A_51_q1;
    reg                           int_A_51_read;
    reg                           int_A_51_write;
    reg  [1:0]                    int_A_51_shift0;
    wire [0:0]                    int_A_52_address0;
    wire                          int_A_52_ce0;
    wire [31:0]                   int_A_52_q0;
    wire [0:0]                    int_A_52_address1;
    wire                          int_A_52_ce1;
    wire                          int_A_52_we1;
    wire [3:0]                    int_A_52_be1;
    wire [31:0]                   int_A_52_d1;
    wire [31:0]                   int_A_52_q1;
    reg                           int_A_52_read;
    reg                           int_A_52_write;
    reg  [1:0]                    int_A_52_shift0;
    wire [0:0]                    int_A_53_address0;
    wire                          int_A_53_ce0;
    wire [31:0]                   int_A_53_q0;
    wire [0:0]                    int_A_53_address1;
    wire                          int_A_53_ce1;
    wire                          int_A_53_we1;
    wire [3:0]                    int_A_53_be1;
    wire [31:0]                   int_A_53_d1;
    wire [31:0]                   int_A_53_q1;
    reg                           int_A_53_read;
    reg                           int_A_53_write;
    reg  [1:0]                    int_A_53_shift0;
    wire [0:0]                    int_A_54_address0;
    wire                          int_A_54_ce0;
    wire [31:0]                   int_A_54_q0;
    wire [0:0]                    int_A_54_address1;
    wire                          int_A_54_ce1;
    wire                          int_A_54_we1;
    wire [3:0]                    int_A_54_be1;
    wire [31:0]                   int_A_54_d1;
    wire [31:0]                   int_A_54_q1;
    reg                           int_A_54_read;
    reg                           int_A_54_write;
    reg  [1:0]                    int_A_54_shift0;
    wire [0:0]                    int_A_55_address0;
    wire                          int_A_55_ce0;
    wire [31:0]                   int_A_55_q0;
    wire [0:0]                    int_A_55_address1;
    wire                          int_A_55_ce1;
    wire                          int_A_55_we1;
    wire [3:0]                    int_A_55_be1;
    wire [31:0]                   int_A_55_d1;
    wire [31:0]                   int_A_55_q1;
    reg                           int_A_55_read;
    reg                           int_A_55_write;
    reg  [1:0]                    int_A_55_shift0;
    wire [0:0]                    int_A_56_address0;
    wire                          int_A_56_ce0;
    wire [31:0]                   int_A_56_q0;
    wire [0:0]                    int_A_56_address1;
    wire                          int_A_56_ce1;
    wire                          int_A_56_we1;
    wire [3:0]                    int_A_56_be1;
    wire [31:0]                   int_A_56_d1;
    wire [31:0]                   int_A_56_q1;
    reg                           int_A_56_read;
    reg                           int_A_56_write;
    reg  [1:0]                    int_A_56_shift0;
    wire [0:0]                    int_A_57_address0;
    wire                          int_A_57_ce0;
    wire [31:0]                   int_A_57_q0;
    wire [0:0]                    int_A_57_address1;
    wire                          int_A_57_ce1;
    wire                          int_A_57_we1;
    wire [3:0]                    int_A_57_be1;
    wire [31:0]                   int_A_57_d1;
    wire [31:0]                   int_A_57_q1;
    reg                           int_A_57_read;
    reg                           int_A_57_write;
    reg  [1:0]                    int_A_57_shift0;
    wire [0:0]                    int_A_58_address0;
    wire                          int_A_58_ce0;
    wire [31:0]                   int_A_58_q0;
    wire [0:0]                    int_A_58_address1;
    wire                          int_A_58_ce1;
    wire                          int_A_58_we1;
    wire [3:0]                    int_A_58_be1;
    wire [31:0]                   int_A_58_d1;
    wire [31:0]                   int_A_58_q1;
    reg                           int_A_58_read;
    reg                           int_A_58_write;
    reg  [1:0]                    int_A_58_shift0;
    wire [0:0]                    int_A_59_address0;
    wire                          int_A_59_ce0;
    wire [31:0]                   int_A_59_q0;
    wire [0:0]                    int_A_59_address1;
    wire                          int_A_59_ce1;
    wire                          int_A_59_we1;
    wire [3:0]                    int_A_59_be1;
    wire [31:0]                   int_A_59_d1;
    wire [31:0]                   int_A_59_q1;
    reg                           int_A_59_read;
    reg                           int_A_59_write;
    reg  [1:0]                    int_A_59_shift0;
    wire [0:0]                    int_A_60_address0;
    wire                          int_A_60_ce0;
    wire [31:0]                   int_A_60_q0;
    wire [0:0]                    int_A_60_address1;
    wire                          int_A_60_ce1;
    wire                          int_A_60_we1;
    wire [3:0]                    int_A_60_be1;
    wire [31:0]                   int_A_60_d1;
    wire [31:0]                   int_A_60_q1;
    reg                           int_A_60_read;
    reg                           int_A_60_write;
    reg  [1:0]                    int_A_60_shift0;
    wire [0:0]                    int_A_61_address0;
    wire                          int_A_61_ce0;
    wire [31:0]                   int_A_61_q0;
    wire [0:0]                    int_A_61_address1;
    wire                          int_A_61_ce1;
    wire                          int_A_61_we1;
    wire [3:0]                    int_A_61_be1;
    wire [31:0]                   int_A_61_d1;
    wire [31:0]                   int_A_61_q1;
    reg                           int_A_61_read;
    reg                           int_A_61_write;
    reg  [1:0]                    int_A_61_shift0;
    wire [0:0]                    int_A_62_address0;
    wire                          int_A_62_ce0;
    wire [31:0]                   int_A_62_q0;
    wire [0:0]                    int_A_62_address1;
    wire                          int_A_62_ce1;
    wire                          int_A_62_we1;
    wire [3:0]                    int_A_62_be1;
    wire [31:0]                   int_A_62_d1;
    wire [31:0]                   int_A_62_q1;
    reg                           int_A_62_read;
    reg                           int_A_62_write;
    reg  [1:0]                    int_A_62_shift0;
    wire [0:0]                    int_A_63_address0;
    wire                          int_A_63_ce0;
    wire [31:0]                   int_A_63_q0;
    wire [0:0]                    int_A_63_address1;
    wire                          int_A_63_ce1;
    wire                          int_A_63_we1;
    wire [3:0]                    int_A_63_be1;
    wire [31:0]                   int_A_63_d1;
    wire [31:0]                   int_A_63_q1;
    reg                           int_A_63_read;
    reg                           int_A_63_write;
    reg  [1:0]                    int_A_63_shift0;
    wire [0:0]                    int_B_0_address0;
    wire                          int_B_0_ce0;
    wire [31:0]                   int_B_0_q0;
    wire [0:0]                    int_B_0_address1;
    wire                          int_B_0_ce1;
    wire                          int_B_0_we1;
    wire [3:0]                    int_B_0_be1;
    wire [31:0]                   int_B_0_d1;
    wire [31:0]                   int_B_0_q1;
    reg                           int_B_0_read;
    reg                           int_B_0_write;
    reg  [1:0]                    int_B_0_shift0;
    wire [0:0]                    int_B_1_address0;
    wire                          int_B_1_ce0;
    wire [31:0]                   int_B_1_q0;
    wire [0:0]                    int_B_1_address1;
    wire                          int_B_1_ce1;
    wire                          int_B_1_we1;
    wire [3:0]                    int_B_1_be1;
    wire [31:0]                   int_B_1_d1;
    wire [31:0]                   int_B_1_q1;
    reg                           int_B_1_read;
    reg                           int_B_1_write;
    reg  [1:0]                    int_B_1_shift0;
    wire [0:0]                    int_B_2_address0;
    wire                          int_B_2_ce0;
    wire [31:0]                   int_B_2_q0;
    wire [0:0]                    int_B_2_address1;
    wire                          int_B_2_ce1;
    wire                          int_B_2_we1;
    wire [3:0]                    int_B_2_be1;
    wire [31:0]                   int_B_2_d1;
    wire [31:0]                   int_B_2_q1;
    reg                           int_B_2_read;
    reg                           int_B_2_write;
    reg  [1:0]                    int_B_2_shift0;
    wire [0:0]                    int_B_3_address0;
    wire                          int_B_3_ce0;
    wire [31:0]                   int_B_3_q0;
    wire [0:0]                    int_B_3_address1;
    wire                          int_B_3_ce1;
    wire                          int_B_3_we1;
    wire [3:0]                    int_B_3_be1;
    wire [31:0]                   int_B_3_d1;
    wire [31:0]                   int_B_3_q1;
    reg                           int_B_3_read;
    reg                           int_B_3_write;
    reg  [1:0]                    int_B_3_shift0;
    wire [0:0]                    int_B_4_address0;
    wire                          int_B_4_ce0;
    wire [31:0]                   int_B_4_q0;
    wire [0:0]                    int_B_4_address1;
    wire                          int_B_4_ce1;
    wire                          int_B_4_we1;
    wire [3:0]                    int_B_4_be1;
    wire [31:0]                   int_B_4_d1;
    wire [31:0]                   int_B_4_q1;
    reg                           int_B_4_read;
    reg                           int_B_4_write;
    reg  [1:0]                    int_B_4_shift0;
    wire [0:0]                    int_B_5_address0;
    wire                          int_B_5_ce0;
    wire [31:0]                   int_B_5_q0;
    wire [0:0]                    int_B_5_address1;
    wire                          int_B_5_ce1;
    wire                          int_B_5_we1;
    wire [3:0]                    int_B_5_be1;
    wire [31:0]                   int_B_5_d1;
    wire [31:0]                   int_B_5_q1;
    reg                           int_B_5_read;
    reg                           int_B_5_write;
    reg  [1:0]                    int_B_5_shift0;
    wire [0:0]                    int_B_6_address0;
    wire                          int_B_6_ce0;
    wire [31:0]                   int_B_6_q0;
    wire [0:0]                    int_B_6_address1;
    wire                          int_B_6_ce1;
    wire                          int_B_6_we1;
    wire [3:0]                    int_B_6_be1;
    wire [31:0]                   int_B_6_d1;
    wire [31:0]                   int_B_6_q1;
    reg                           int_B_6_read;
    reg                           int_B_6_write;
    reg  [1:0]                    int_B_6_shift0;
    wire [0:0]                    int_B_7_address0;
    wire                          int_B_7_ce0;
    wire [31:0]                   int_B_7_q0;
    wire [0:0]                    int_B_7_address1;
    wire                          int_B_7_ce1;
    wire                          int_B_7_we1;
    wire [3:0]                    int_B_7_be1;
    wire [31:0]                   int_B_7_d1;
    wire [31:0]                   int_B_7_q1;
    reg                           int_B_7_read;
    reg                           int_B_7_write;
    reg  [1:0]                    int_B_7_shift0;
    wire [0:0]                    int_B_8_address0;
    wire                          int_B_8_ce0;
    wire [31:0]                   int_B_8_q0;
    wire [0:0]                    int_B_8_address1;
    wire                          int_B_8_ce1;
    wire                          int_B_8_we1;
    wire [3:0]                    int_B_8_be1;
    wire [31:0]                   int_B_8_d1;
    wire [31:0]                   int_B_8_q1;
    reg                           int_B_8_read;
    reg                           int_B_8_write;
    reg  [1:0]                    int_B_8_shift0;
    wire [0:0]                    int_B_9_address0;
    wire                          int_B_9_ce0;
    wire [31:0]                   int_B_9_q0;
    wire [0:0]                    int_B_9_address1;
    wire                          int_B_9_ce1;
    wire                          int_B_9_we1;
    wire [3:0]                    int_B_9_be1;
    wire [31:0]                   int_B_9_d1;
    wire [31:0]                   int_B_9_q1;
    reg                           int_B_9_read;
    reg                           int_B_9_write;
    reg  [1:0]                    int_B_9_shift0;
    wire [0:0]                    int_B_10_address0;
    wire                          int_B_10_ce0;
    wire [31:0]                   int_B_10_q0;
    wire [0:0]                    int_B_10_address1;
    wire                          int_B_10_ce1;
    wire                          int_B_10_we1;
    wire [3:0]                    int_B_10_be1;
    wire [31:0]                   int_B_10_d1;
    wire [31:0]                   int_B_10_q1;
    reg                           int_B_10_read;
    reg                           int_B_10_write;
    reg  [1:0]                    int_B_10_shift0;
    wire [0:0]                    int_B_11_address0;
    wire                          int_B_11_ce0;
    wire [31:0]                   int_B_11_q0;
    wire [0:0]                    int_B_11_address1;
    wire                          int_B_11_ce1;
    wire                          int_B_11_we1;
    wire [3:0]                    int_B_11_be1;
    wire [31:0]                   int_B_11_d1;
    wire [31:0]                   int_B_11_q1;
    reg                           int_B_11_read;
    reg                           int_B_11_write;
    reg  [1:0]                    int_B_11_shift0;
    wire [0:0]                    int_B_12_address0;
    wire                          int_B_12_ce0;
    wire [31:0]                   int_B_12_q0;
    wire [0:0]                    int_B_12_address1;
    wire                          int_B_12_ce1;
    wire                          int_B_12_we1;
    wire [3:0]                    int_B_12_be1;
    wire [31:0]                   int_B_12_d1;
    wire [31:0]                   int_B_12_q1;
    reg                           int_B_12_read;
    reg                           int_B_12_write;
    reg  [1:0]                    int_B_12_shift0;
    wire [0:0]                    int_B_13_address0;
    wire                          int_B_13_ce0;
    wire [31:0]                   int_B_13_q0;
    wire [0:0]                    int_B_13_address1;
    wire                          int_B_13_ce1;
    wire                          int_B_13_we1;
    wire [3:0]                    int_B_13_be1;
    wire [31:0]                   int_B_13_d1;
    wire [31:0]                   int_B_13_q1;
    reg                           int_B_13_read;
    reg                           int_B_13_write;
    reg  [1:0]                    int_B_13_shift0;
    wire [0:0]                    int_B_14_address0;
    wire                          int_B_14_ce0;
    wire [31:0]                   int_B_14_q0;
    wire [0:0]                    int_B_14_address1;
    wire                          int_B_14_ce1;
    wire                          int_B_14_we1;
    wire [3:0]                    int_B_14_be1;
    wire [31:0]                   int_B_14_d1;
    wire [31:0]                   int_B_14_q1;
    reg                           int_B_14_read;
    reg                           int_B_14_write;
    reg  [1:0]                    int_B_14_shift0;
    wire [0:0]                    int_B_15_address0;
    wire                          int_B_15_ce0;
    wire [31:0]                   int_B_15_q0;
    wire [0:0]                    int_B_15_address1;
    wire                          int_B_15_ce1;
    wire                          int_B_15_we1;
    wire [3:0]                    int_B_15_be1;
    wire [31:0]                   int_B_15_d1;
    wire [31:0]                   int_B_15_q1;
    reg                           int_B_15_read;
    reg                           int_B_15_write;
    reg  [1:0]                    int_B_15_shift0;
    wire [0:0]                    int_B_16_address0;
    wire                          int_B_16_ce0;
    wire [31:0]                   int_B_16_q0;
    wire [0:0]                    int_B_16_address1;
    wire                          int_B_16_ce1;
    wire                          int_B_16_we1;
    wire [3:0]                    int_B_16_be1;
    wire [31:0]                   int_B_16_d1;
    wire [31:0]                   int_B_16_q1;
    reg                           int_B_16_read;
    reg                           int_B_16_write;
    reg  [1:0]                    int_B_16_shift0;
    wire [0:0]                    int_B_17_address0;
    wire                          int_B_17_ce0;
    wire [31:0]                   int_B_17_q0;
    wire [0:0]                    int_B_17_address1;
    wire                          int_B_17_ce1;
    wire                          int_B_17_we1;
    wire [3:0]                    int_B_17_be1;
    wire [31:0]                   int_B_17_d1;
    wire [31:0]                   int_B_17_q1;
    reg                           int_B_17_read;
    reg                           int_B_17_write;
    reg  [1:0]                    int_B_17_shift0;
    wire [0:0]                    int_B_18_address0;
    wire                          int_B_18_ce0;
    wire [31:0]                   int_B_18_q0;
    wire [0:0]                    int_B_18_address1;
    wire                          int_B_18_ce1;
    wire                          int_B_18_we1;
    wire [3:0]                    int_B_18_be1;
    wire [31:0]                   int_B_18_d1;
    wire [31:0]                   int_B_18_q1;
    reg                           int_B_18_read;
    reg                           int_B_18_write;
    reg  [1:0]                    int_B_18_shift0;
    wire [0:0]                    int_B_19_address0;
    wire                          int_B_19_ce0;
    wire [31:0]                   int_B_19_q0;
    wire [0:0]                    int_B_19_address1;
    wire                          int_B_19_ce1;
    wire                          int_B_19_we1;
    wire [3:0]                    int_B_19_be1;
    wire [31:0]                   int_B_19_d1;
    wire [31:0]                   int_B_19_q1;
    reg                           int_B_19_read;
    reg                           int_B_19_write;
    reg  [1:0]                    int_B_19_shift0;
    wire [0:0]                    int_B_20_address0;
    wire                          int_B_20_ce0;
    wire [31:0]                   int_B_20_q0;
    wire [0:0]                    int_B_20_address1;
    wire                          int_B_20_ce1;
    wire                          int_B_20_we1;
    wire [3:0]                    int_B_20_be1;
    wire [31:0]                   int_B_20_d1;
    wire [31:0]                   int_B_20_q1;
    reg                           int_B_20_read;
    reg                           int_B_20_write;
    reg  [1:0]                    int_B_20_shift0;
    wire [0:0]                    int_B_21_address0;
    wire                          int_B_21_ce0;
    wire [31:0]                   int_B_21_q0;
    wire [0:0]                    int_B_21_address1;
    wire                          int_B_21_ce1;
    wire                          int_B_21_we1;
    wire [3:0]                    int_B_21_be1;
    wire [31:0]                   int_B_21_d1;
    wire [31:0]                   int_B_21_q1;
    reg                           int_B_21_read;
    reg                           int_B_21_write;
    reg  [1:0]                    int_B_21_shift0;
    wire [0:0]                    int_B_22_address0;
    wire                          int_B_22_ce0;
    wire [31:0]                   int_B_22_q0;
    wire [0:0]                    int_B_22_address1;
    wire                          int_B_22_ce1;
    wire                          int_B_22_we1;
    wire [3:0]                    int_B_22_be1;
    wire [31:0]                   int_B_22_d1;
    wire [31:0]                   int_B_22_q1;
    reg                           int_B_22_read;
    reg                           int_B_22_write;
    reg  [1:0]                    int_B_22_shift0;
    wire [0:0]                    int_B_23_address0;
    wire                          int_B_23_ce0;
    wire [31:0]                   int_B_23_q0;
    wire [0:0]                    int_B_23_address1;
    wire                          int_B_23_ce1;
    wire                          int_B_23_we1;
    wire [3:0]                    int_B_23_be1;
    wire [31:0]                   int_B_23_d1;
    wire [31:0]                   int_B_23_q1;
    reg                           int_B_23_read;
    reg                           int_B_23_write;
    reg  [1:0]                    int_B_23_shift0;
    wire [0:0]                    int_B_24_address0;
    wire                          int_B_24_ce0;
    wire [31:0]                   int_B_24_q0;
    wire [0:0]                    int_B_24_address1;
    wire                          int_B_24_ce1;
    wire                          int_B_24_we1;
    wire [3:0]                    int_B_24_be1;
    wire [31:0]                   int_B_24_d1;
    wire [31:0]                   int_B_24_q1;
    reg                           int_B_24_read;
    reg                           int_B_24_write;
    reg  [1:0]                    int_B_24_shift0;
    wire [0:0]                    int_B_25_address0;
    wire                          int_B_25_ce0;
    wire [31:0]                   int_B_25_q0;
    wire [0:0]                    int_B_25_address1;
    wire                          int_B_25_ce1;
    wire                          int_B_25_we1;
    wire [3:0]                    int_B_25_be1;
    wire [31:0]                   int_B_25_d1;
    wire [31:0]                   int_B_25_q1;
    reg                           int_B_25_read;
    reg                           int_B_25_write;
    reg  [1:0]                    int_B_25_shift0;
    wire [0:0]                    int_B_26_address0;
    wire                          int_B_26_ce0;
    wire [31:0]                   int_B_26_q0;
    wire [0:0]                    int_B_26_address1;
    wire                          int_B_26_ce1;
    wire                          int_B_26_we1;
    wire [3:0]                    int_B_26_be1;
    wire [31:0]                   int_B_26_d1;
    wire [31:0]                   int_B_26_q1;
    reg                           int_B_26_read;
    reg                           int_B_26_write;
    reg  [1:0]                    int_B_26_shift0;
    wire [0:0]                    int_B_27_address0;
    wire                          int_B_27_ce0;
    wire [31:0]                   int_B_27_q0;
    wire [0:0]                    int_B_27_address1;
    wire                          int_B_27_ce1;
    wire                          int_B_27_we1;
    wire [3:0]                    int_B_27_be1;
    wire [31:0]                   int_B_27_d1;
    wire [31:0]                   int_B_27_q1;
    reg                           int_B_27_read;
    reg                           int_B_27_write;
    reg  [1:0]                    int_B_27_shift0;
    wire [0:0]                    int_B_28_address0;
    wire                          int_B_28_ce0;
    wire [31:0]                   int_B_28_q0;
    wire [0:0]                    int_B_28_address1;
    wire                          int_B_28_ce1;
    wire                          int_B_28_we1;
    wire [3:0]                    int_B_28_be1;
    wire [31:0]                   int_B_28_d1;
    wire [31:0]                   int_B_28_q1;
    reg                           int_B_28_read;
    reg                           int_B_28_write;
    reg  [1:0]                    int_B_28_shift0;
    wire [0:0]                    int_B_29_address0;
    wire                          int_B_29_ce0;
    wire [31:0]                   int_B_29_q0;
    wire [0:0]                    int_B_29_address1;
    wire                          int_B_29_ce1;
    wire                          int_B_29_we1;
    wire [3:0]                    int_B_29_be1;
    wire [31:0]                   int_B_29_d1;
    wire [31:0]                   int_B_29_q1;
    reg                           int_B_29_read;
    reg                           int_B_29_write;
    reg  [1:0]                    int_B_29_shift0;
    wire [0:0]                    int_B_30_address0;
    wire                          int_B_30_ce0;
    wire [31:0]                   int_B_30_q0;
    wire [0:0]                    int_B_30_address1;
    wire                          int_B_30_ce1;
    wire                          int_B_30_we1;
    wire [3:0]                    int_B_30_be1;
    wire [31:0]                   int_B_30_d1;
    wire [31:0]                   int_B_30_q1;
    reg                           int_B_30_read;
    reg                           int_B_30_write;
    reg  [1:0]                    int_B_30_shift0;
    wire [0:0]                    int_B_31_address0;
    wire                          int_B_31_ce0;
    wire [31:0]                   int_B_31_q0;
    wire [0:0]                    int_B_31_address1;
    wire                          int_B_31_ce1;
    wire                          int_B_31_we1;
    wire [3:0]                    int_B_31_be1;
    wire [31:0]                   int_B_31_d1;
    wire [31:0]                   int_B_31_q1;
    reg                           int_B_31_read;
    reg                           int_B_31_write;
    reg  [1:0]                    int_B_31_shift0;
    wire [0:0]                    int_B_32_address0;
    wire                          int_B_32_ce0;
    wire [31:0]                   int_B_32_q0;
    wire [0:0]                    int_B_32_address1;
    wire                          int_B_32_ce1;
    wire                          int_B_32_we1;
    wire [3:0]                    int_B_32_be1;
    wire [31:0]                   int_B_32_d1;
    wire [31:0]                   int_B_32_q1;
    reg                           int_B_32_read;
    reg                           int_B_32_write;
    reg  [1:0]                    int_B_32_shift0;
    wire [0:0]                    int_B_33_address0;
    wire                          int_B_33_ce0;
    wire [31:0]                   int_B_33_q0;
    wire [0:0]                    int_B_33_address1;
    wire                          int_B_33_ce1;
    wire                          int_B_33_we1;
    wire [3:0]                    int_B_33_be1;
    wire [31:0]                   int_B_33_d1;
    wire [31:0]                   int_B_33_q1;
    reg                           int_B_33_read;
    reg                           int_B_33_write;
    reg  [1:0]                    int_B_33_shift0;
    wire [0:0]                    int_B_34_address0;
    wire                          int_B_34_ce0;
    wire [31:0]                   int_B_34_q0;
    wire [0:0]                    int_B_34_address1;
    wire                          int_B_34_ce1;
    wire                          int_B_34_we1;
    wire [3:0]                    int_B_34_be1;
    wire [31:0]                   int_B_34_d1;
    wire [31:0]                   int_B_34_q1;
    reg                           int_B_34_read;
    reg                           int_B_34_write;
    reg  [1:0]                    int_B_34_shift0;
    wire [0:0]                    int_B_35_address0;
    wire                          int_B_35_ce0;
    wire [31:0]                   int_B_35_q0;
    wire [0:0]                    int_B_35_address1;
    wire                          int_B_35_ce1;
    wire                          int_B_35_we1;
    wire [3:0]                    int_B_35_be1;
    wire [31:0]                   int_B_35_d1;
    wire [31:0]                   int_B_35_q1;
    reg                           int_B_35_read;
    reg                           int_B_35_write;
    reg  [1:0]                    int_B_35_shift0;
    wire [0:0]                    int_B_36_address0;
    wire                          int_B_36_ce0;
    wire [31:0]                   int_B_36_q0;
    wire [0:0]                    int_B_36_address1;
    wire                          int_B_36_ce1;
    wire                          int_B_36_we1;
    wire [3:0]                    int_B_36_be1;
    wire [31:0]                   int_B_36_d1;
    wire [31:0]                   int_B_36_q1;
    reg                           int_B_36_read;
    reg                           int_B_36_write;
    reg  [1:0]                    int_B_36_shift0;
    wire [0:0]                    int_B_37_address0;
    wire                          int_B_37_ce0;
    wire [31:0]                   int_B_37_q0;
    wire [0:0]                    int_B_37_address1;
    wire                          int_B_37_ce1;
    wire                          int_B_37_we1;
    wire [3:0]                    int_B_37_be1;
    wire [31:0]                   int_B_37_d1;
    wire [31:0]                   int_B_37_q1;
    reg                           int_B_37_read;
    reg                           int_B_37_write;
    reg  [1:0]                    int_B_37_shift0;
    wire [0:0]                    int_B_38_address0;
    wire                          int_B_38_ce0;
    wire [31:0]                   int_B_38_q0;
    wire [0:0]                    int_B_38_address1;
    wire                          int_B_38_ce1;
    wire                          int_B_38_we1;
    wire [3:0]                    int_B_38_be1;
    wire [31:0]                   int_B_38_d1;
    wire [31:0]                   int_B_38_q1;
    reg                           int_B_38_read;
    reg                           int_B_38_write;
    reg  [1:0]                    int_B_38_shift0;
    wire [0:0]                    int_B_39_address0;
    wire                          int_B_39_ce0;
    wire [31:0]                   int_B_39_q0;
    wire [0:0]                    int_B_39_address1;
    wire                          int_B_39_ce1;
    wire                          int_B_39_we1;
    wire [3:0]                    int_B_39_be1;
    wire [31:0]                   int_B_39_d1;
    wire [31:0]                   int_B_39_q1;
    reg                           int_B_39_read;
    reg                           int_B_39_write;
    reg  [1:0]                    int_B_39_shift0;
    wire [0:0]                    int_B_40_address0;
    wire                          int_B_40_ce0;
    wire [31:0]                   int_B_40_q0;
    wire [0:0]                    int_B_40_address1;
    wire                          int_B_40_ce1;
    wire                          int_B_40_we1;
    wire [3:0]                    int_B_40_be1;
    wire [31:0]                   int_B_40_d1;
    wire [31:0]                   int_B_40_q1;
    reg                           int_B_40_read;
    reg                           int_B_40_write;
    reg  [1:0]                    int_B_40_shift0;
    wire [0:0]                    int_B_41_address0;
    wire                          int_B_41_ce0;
    wire [31:0]                   int_B_41_q0;
    wire [0:0]                    int_B_41_address1;
    wire                          int_B_41_ce1;
    wire                          int_B_41_we1;
    wire [3:0]                    int_B_41_be1;
    wire [31:0]                   int_B_41_d1;
    wire [31:0]                   int_B_41_q1;
    reg                           int_B_41_read;
    reg                           int_B_41_write;
    reg  [1:0]                    int_B_41_shift0;
    wire [0:0]                    int_B_42_address0;
    wire                          int_B_42_ce0;
    wire [31:0]                   int_B_42_q0;
    wire [0:0]                    int_B_42_address1;
    wire                          int_B_42_ce1;
    wire                          int_B_42_we1;
    wire [3:0]                    int_B_42_be1;
    wire [31:0]                   int_B_42_d1;
    wire [31:0]                   int_B_42_q1;
    reg                           int_B_42_read;
    reg                           int_B_42_write;
    reg  [1:0]                    int_B_42_shift0;
    wire [0:0]                    int_B_43_address0;
    wire                          int_B_43_ce0;
    wire [31:0]                   int_B_43_q0;
    wire [0:0]                    int_B_43_address1;
    wire                          int_B_43_ce1;
    wire                          int_B_43_we1;
    wire [3:0]                    int_B_43_be1;
    wire [31:0]                   int_B_43_d1;
    wire [31:0]                   int_B_43_q1;
    reg                           int_B_43_read;
    reg                           int_B_43_write;
    reg  [1:0]                    int_B_43_shift0;
    wire [0:0]                    int_B_44_address0;
    wire                          int_B_44_ce0;
    wire [31:0]                   int_B_44_q0;
    wire [0:0]                    int_B_44_address1;
    wire                          int_B_44_ce1;
    wire                          int_B_44_we1;
    wire [3:0]                    int_B_44_be1;
    wire [31:0]                   int_B_44_d1;
    wire [31:0]                   int_B_44_q1;
    reg                           int_B_44_read;
    reg                           int_B_44_write;
    reg  [1:0]                    int_B_44_shift0;
    wire [0:0]                    int_B_45_address0;
    wire                          int_B_45_ce0;
    wire [31:0]                   int_B_45_q0;
    wire [0:0]                    int_B_45_address1;
    wire                          int_B_45_ce1;
    wire                          int_B_45_we1;
    wire [3:0]                    int_B_45_be1;
    wire [31:0]                   int_B_45_d1;
    wire [31:0]                   int_B_45_q1;
    reg                           int_B_45_read;
    reg                           int_B_45_write;
    reg  [1:0]                    int_B_45_shift0;
    wire [0:0]                    int_B_46_address0;
    wire                          int_B_46_ce0;
    wire [31:0]                   int_B_46_q0;
    wire [0:0]                    int_B_46_address1;
    wire                          int_B_46_ce1;
    wire                          int_B_46_we1;
    wire [3:0]                    int_B_46_be1;
    wire [31:0]                   int_B_46_d1;
    wire [31:0]                   int_B_46_q1;
    reg                           int_B_46_read;
    reg                           int_B_46_write;
    reg  [1:0]                    int_B_46_shift0;
    wire [0:0]                    int_B_47_address0;
    wire                          int_B_47_ce0;
    wire [31:0]                   int_B_47_q0;
    wire [0:0]                    int_B_47_address1;
    wire                          int_B_47_ce1;
    wire                          int_B_47_we1;
    wire [3:0]                    int_B_47_be1;
    wire [31:0]                   int_B_47_d1;
    wire [31:0]                   int_B_47_q1;
    reg                           int_B_47_read;
    reg                           int_B_47_write;
    reg  [1:0]                    int_B_47_shift0;
    wire [0:0]                    int_B_48_address0;
    wire                          int_B_48_ce0;
    wire [31:0]                   int_B_48_q0;
    wire [0:0]                    int_B_48_address1;
    wire                          int_B_48_ce1;
    wire                          int_B_48_we1;
    wire [3:0]                    int_B_48_be1;
    wire [31:0]                   int_B_48_d1;
    wire [31:0]                   int_B_48_q1;
    reg                           int_B_48_read;
    reg                           int_B_48_write;
    reg  [1:0]                    int_B_48_shift0;
    wire [0:0]                    int_B_49_address0;
    wire                          int_B_49_ce0;
    wire [31:0]                   int_B_49_q0;
    wire [0:0]                    int_B_49_address1;
    wire                          int_B_49_ce1;
    wire                          int_B_49_we1;
    wire [3:0]                    int_B_49_be1;
    wire [31:0]                   int_B_49_d1;
    wire [31:0]                   int_B_49_q1;
    reg                           int_B_49_read;
    reg                           int_B_49_write;
    reg  [1:0]                    int_B_49_shift0;
    wire [0:0]                    int_B_50_address0;
    wire                          int_B_50_ce0;
    wire [31:0]                   int_B_50_q0;
    wire [0:0]                    int_B_50_address1;
    wire                          int_B_50_ce1;
    wire                          int_B_50_we1;
    wire [3:0]                    int_B_50_be1;
    wire [31:0]                   int_B_50_d1;
    wire [31:0]                   int_B_50_q1;
    reg                           int_B_50_read;
    reg                           int_B_50_write;
    reg  [1:0]                    int_B_50_shift0;
    wire [0:0]                    int_B_51_address0;
    wire                          int_B_51_ce0;
    wire [31:0]                   int_B_51_q0;
    wire [0:0]                    int_B_51_address1;
    wire                          int_B_51_ce1;
    wire                          int_B_51_we1;
    wire [3:0]                    int_B_51_be1;
    wire [31:0]                   int_B_51_d1;
    wire [31:0]                   int_B_51_q1;
    reg                           int_B_51_read;
    reg                           int_B_51_write;
    reg  [1:0]                    int_B_51_shift0;
    wire [0:0]                    int_B_52_address0;
    wire                          int_B_52_ce0;
    wire [31:0]                   int_B_52_q0;
    wire [0:0]                    int_B_52_address1;
    wire                          int_B_52_ce1;
    wire                          int_B_52_we1;
    wire [3:0]                    int_B_52_be1;
    wire [31:0]                   int_B_52_d1;
    wire [31:0]                   int_B_52_q1;
    reg                           int_B_52_read;
    reg                           int_B_52_write;
    reg  [1:0]                    int_B_52_shift0;
    wire [0:0]                    int_B_53_address0;
    wire                          int_B_53_ce0;
    wire [31:0]                   int_B_53_q0;
    wire [0:0]                    int_B_53_address1;
    wire                          int_B_53_ce1;
    wire                          int_B_53_we1;
    wire [3:0]                    int_B_53_be1;
    wire [31:0]                   int_B_53_d1;
    wire [31:0]                   int_B_53_q1;
    reg                           int_B_53_read;
    reg                           int_B_53_write;
    reg  [1:0]                    int_B_53_shift0;
    wire [0:0]                    int_B_54_address0;
    wire                          int_B_54_ce0;
    wire [31:0]                   int_B_54_q0;
    wire [0:0]                    int_B_54_address1;
    wire                          int_B_54_ce1;
    wire                          int_B_54_we1;
    wire [3:0]                    int_B_54_be1;
    wire [31:0]                   int_B_54_d1;
    wire [31:0]                   int_B_54_q1;
    reg                           int_B_54_read;
    reg                           int_B_54_write;
    reg  [1:0]                    int_B_54_shift0;
    wire [0:0]                    int_B_55_address0;
    wire                          int_B_55_ce0;
    wire [31:0]                   int_B_55_q0;
    wire [0:0]                    int_B_55_address1;
    wire                          int_B_55_ce1;
    wire                          int_B_55_we1;
    wire [3:0]                    int_B_55_be1;
    wire [31:0]                   int_B_55_d1;
    wire [31:0]                   int_B_55_q1;
    reg                           int_B_55_read;
    reg                           int_B_55_write;
    reg  [1:0]                    int_B_55_shift0;
    wire [0:0]                    int_B_56_address0;
    wire                          int_B_56_ce0;
    wire [31:0]                   int_B_56_q0;
    wire [0:0]                    int_B_56_address1;
    wire                          int_B_56_ce1;
    wire                          int_B_56_we1;
    wire [3:0]                    int_B_56_be1;
    wire [31:0]                   int_B_56_d1;
    wire [31:0]                   int_B_56_q1;
    reg                           int_B_56_read;
    reg                           int_B_56_write;
    reg  [1:0]                    int_B_56_shift0;
    wire [0:0]                    int_B_57_address0;
    wire                          int_B_57_ce0;
    wire [31:0]                   int_B_57_q0;
    wire [0:0]                    int_B_57_address1;
    wire                          int_B_57_ce1;
    wire                          int_B_57_we1;
    wire [3:0]                    int_B_57_be1;
    wire [31:0]                   int_B_57_d1;
    wire [31:0]                   int_B_57_q1;
    reg                           int_B_57_read;
    reg                           int_B_57_write;
    reg  [1:0]                    int_B_57_shift0;
    wire [0:0]                    int_B_58_address0;
    wire                          int_B_58_ce0;
    wire [31:0]                   int_B_58_q0;
    wire [0:0]                    int_B_58_address1;
    wire                          int_B_58_ce1;
    wire                          int_B_58_we1;
    wire [3:0]                    int_B_58_be1;
    wire [31:0]                   int_B_58_d1;
    wire [31:0]                   int_B_58_q1;
    reg                           int_B_58_read;
    reg                           int_B_58_write;
    reg  [1:0]                    int_B_58_shift0;
    wire [0:0]                    int_B_59_address0;
    wire                          int_B_59_ce0;
    wire [31:0]                   int_B_59_q0;
    wire [0:0]                    int_B_59_address1;
    wire                          int_B_59_ce1;
    wire                          int_B_59_we1;
    wire [3:0]                    int_B_59_be1;
    wire [31:0]                   int_B_59_d1;
    wire [31:0]                   int_B_59_q1;
    reg                           int_B_59_read;
    reg                           int_B_59_write;
    reg  [1:0]                    int_B_59_shift0;
    wire [0:0]                    int_B_60_address0;
    wire                          int_B_60_ce0;
    wire [31:0]                   int_B_60_q0;
    wire [0:0]                    int_B_60_address1;
    wire                          int_B_60_ce1;
    wire                          int_B_60_we1;
    wire [3:0]                    int_B_60_be1;
    wire [31:0]                   int_B_60_d1;
    wire [31:0]                   int_B_60_q1;
    reg                           int_B_60_read;
    reg                           int_B_60_write;
    reg  [1:0]                    int_B_60_shift0;
    wire [0:0]                    int_B_61_address0;
    wire                          int_B_61_ce0;
    wire [31:0]                   int_B_61_q0;
    wire [0:0]                    int_B_61_address1;
    wire                          int_B_61_ce1;
    wire                          int_B_61_we1;
    wire [3:0]                    int_B_61_be1;
    wire [31:0]                   int_B_61_d1;
    wire [31:0]                   int_B_61_q1;
    reg                           int_B_61_read;
    reg                           int_B_61_write;
    reg  [1:0]                    int_B_61_shift0;
    wire [0:0]                    int_B_62_address0;
    wire                          int_B_62_ce0;
    wire [31:0]                   int_B_62_q0;
    wire [0:0]                    int_B_62_address1;
    wire                          int_B_62_ce1;
    wire                          int_B_62_we1;
    wire [3:0]                    int_B_62_be1;
    wire [31:0]                   int_B_62_d1;
    wire [31:0]                   int_B_62_q1;
    reg                           int_B_62_read;
    reg                           int_B_62_write;
    reg  [1:0]                    int_B_62_shift0;
    wire [0:0]                    int_B_63_address0;
    wire                          int_B_63_ce0;
    wire [31:0]                   int_B_63_q0;
    wire [0:0]                    int_B_63_address1;
    wire                          int_B_63_ce1;
    wire                          int_B_63_we1;
    wire [3:0]                    int_B_63_be1;
    wire [31:0]                   int_B_63_d1;
    wire [31:0]                   int_B_63_q1;
    reg                           int_B_63_read;
    reg                           int_B_63_write;
    reg  [1:0]                    int_B_63_shift0;

//------------------------Instantiation------------------
// int_A_0
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_0 (
    .clk0      ( ACLK ),
    .address0  ( int_A_0_address0 ),
    .ce0       ( int_A_0_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_0_address1 ),
    .ce1       ( int_A_0_ce1 ),
    .we1       ( int_A_0_be1 ),
    .d1        ( int_A_0_d1 ),
    .q1        ( int_A_0_q1 )
);
// int_A_1
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_1 (
    .clk0      ( ACLK ),
    .address0  ( int_A_1_address0 ),
    .ce0       ( int_A_1_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_1_address1 ),
    .ce1       ( int_A_1_ce1 ),
    .we1       ( int_A_1_be1 ),
    .d1        ( int_A_1_d1 ),
    .q1        ( int_A_1_q1 )
);
// int_A_2
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_2 (
    .clk0      ( ACLK ),
    .address0  ( int_A_2_address0 ),
    .ce0       ( int_A_2_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_2_address1 ),
    .ce1       ( int_A_2_ce1 ),
    .we1       ( int_A_2_be1 ),
    .d1        ( int_A_2_d1 ),
    .q1        ( int_A_2_q1 )
);
// int_A_3
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_3 (
    .clk0      ( ACLK ),
    .address0  ( int_A_3_address0 ),
    .ce0       ( int_A_3_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_3_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_3_address1 ),
    .ce1       ( int_A_3_ce1 ),
    .we1       ( int_A_3_be1 ),
    .d1        ( int_A_3_d1 ),
    .q1        ( int_A_3_q1 )
);
// int_A_4
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_4 (
    .clk0      ( ACLK ),
    .address0  ( int_A_4_address0 ),
    .ce0       ( int_A_4_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_4_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_4_address1 ),
    .ce1       ( int_A_4_ce1 ),
    .we1       ( int_A_4_be1 ),
    .d1        ( int_A_4_d1 ),
    .q1        ( int_A_4_q1 )
);
// int_A_5
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_5 (
    .clk0      ( ACLK ),
    .address0  ( int_A_5_address0 ),
    .ce0       ( int_A_5_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_5_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_5_address1 ),
    .ce1       ( int_A_5_ce1 ),
    .we1       ( int_A_5_be1 ),
    .d1        ( int_A_5_d1 ),
    .q1        ( int_A_5_q1 )
);
// int_A_6
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_6 (
    .clk0      ( ACLK ),
    .address0  ( int_A_6_address0 ),
    .ce0       ( int_A_6_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_6_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_6_address1 ),
    .ce1       ( int_A_6_ce1 ),
    .we1       ( int_A_6_be1 ),
    .d1        ( int_A_6_d1 ),
    .q1        ( int_A_6_q1 )
);
// int_A_7
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_7 (
    .clk0      ( ACLK ),
    .address0  ( int_A_7_address0 ),
    .ce0       ( int_A_7_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_7_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_7_address1 ),
    .ce1       ( int_A_7_ce1 ),
    .we1       ( int_A_7_be1 ),
    .d1        ( int_A_7_d1 ),
    .q1        ( int_A_7_q1 )
);
// int_A_8
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_8 (
    .clk0      ( ACLK ),
    .address0  ( int_A_8_address0 ),
    .ce0       ( int_A_8_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_8_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_8_address1 ),
    .ce1       ( int_A_8_ce1 ),
    .we1       ( int_A_8_be1 ),
    .d1        ( int_A_8_d1 ),
    .q1        ( int_A_8_q1 )
);
// int_A_9
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_9 (
    .clk0      ( ACLK ),
    .address0  ( int_A_9_address0 ),
    .ce0       ( int_A_9_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_9_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_9_address1 ),
    .ce1       ( int_A_9_ce1 ),
    .we1       ( int_A_9_be1 ),
    .d1        ( int_A_9_d1 ),
    .q1        ( int_A_9_q1 )
);
// int_A_10
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_10 (
    .clk0      ( ACLK ),
    .address0  ( int_A_10_address0 ),
    .ce0       ( int_A_10_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_10_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_10_address1 ),
    .ce1       ( int_A_10_ce1 ),
    .we1       ( int_A_10_be1 ),
    .d1        ( int_A_10_d1 ),
    .q1        ( int_A_10_q1 )
);
// int_A_11
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_11 (
    .clk0      ( ACLK ),
    .address0  ( int_A_11_address0 ),
    .ce0       ( int_A_11_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_11_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_11_address1 ),
    .ce1       ( int_A_11_ce1 ),
    .we1       ( int_A_11_be1 ),
    .d1        ( int_A_11_d1 ),
    .q1        ( int_A_11_q1 )
);
// int_A_12
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_12 (
    .clk0      ( ACLK ),
    .address0  ( int_A_12_address0 ),
    .ce0       ( int_A_12_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_12_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_12_address1 ),
    .ce1       ( int_A_12_ce1 ),
    .we1       ( int_A_12_be1 ),
    .d1        ( int_A_12_d1 ),
    .q1        ( int_A_12_q1 )
);
// int_A_13
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_13 (
    .clk0      ( ACLK ),
    .address0  ( int_A_13_address0 ),
    .ce0       ( int_A_13_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_13_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_13_address1 ),
    .ce1       ( int_A_13_ce1 ),
    .we1       ( int_A_13_be1 ),
    .d1        ( int_A_13_d1 ),
    .q1        ( int_A_13_q1 )
);
// int_A_14
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_14 (
    .clk0      ( ACLK ),
    .address0  ( int_A_14_address0 ),
    .ce0       ( int_A_14_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_14_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_14_address1 ),
    .ce1       ( int_A_14_ce1 ),
    .we1       ( int_A_14_be1 ),
    .d1        ( int_A_14_d1 ),
    .q1        ( int_A_14_q1 )
);
// int_A_15
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_15 (
    .clk0      ( ACLK ),
    .address0  ( int_A_15_address0 ),
    .ce0       ( int_A_15_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_15_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_15_address1 ),
    .ce1       ( int_A_15_ce1 ),
    .we1       ( int_A_15_be1 ),
    .d1        ( int_A_15_d1 ),
    .q1        ( int_A_15_q1 )
);
// int_A_16
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_16 (
    .clk0      ( ACLK ),
    .address0  ( int_A_16_address0 ),
    .ce0       ( int_A_16_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_16_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_16_address1 ),
    .ce1       ( int_A_16_ce1 ),
    .we1       ( int_A_16_be1 ),
    .d1        ( int_A_16_d1 ),
    .q1        ( int_A_16_q1 )
);
// int_A_17
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_17 (
    .clk0      ( ACLK ),
    .address0  ( int_A_17_address0 ),
    .ce0       ( int_A_17_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_17_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_17_address1 ),
    .ce1       ( int_A_17_ce1 ),
    .we1       ( int_A_17_be1 ),
    .d1        ( int_A_17_d1 ),
    .q1        ( int_A_17_q1 )
);
// int_A_18
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_18 (
    .clk0      ( ACLK ),
    .address0  ( int_A_18_address0 ),
    .ce0       ( int_A_18_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_18_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_18_address1 ),
    .ce1       ( int_A_18_ce1 ),
    .we1       ( int_A_18_be1 ),
    .d1        ( int_A_18_d1 ),
    .q1        ( int_A_18_q1 )
);
// int_A_19
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_19 (
    .clk0      ( ACLK ),
    .address0  ( int_A_19_address0 ),
    .ce0       ( int_A_19_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_19_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_19_address1 ),
    .ce1       ( int_A_19_ce1 ),
    .we1       ( int_A_19_be1 ),
    .d1        ( int_A_19_d1 ),
    .q1        ( int_A_19_q1 )
);
// int_A_20
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_20 (
    .clk0      ( ACLK ),
    .address0  ( int_A_20_address0 ),
    .ce0       ( int_A_20_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_20_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_20_address1 ),
    .ce1       ( int_A_20_ce1 ),
    .we1       ( int_A_20_be1 ),
    .d1        ( int_A_20_d1 ),
    .q1        ( int_A_20_q1 )
);
// int_A_21
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_21 (
    .clk0      ( ACLK ),
    .address0  ( int_A_21_address0 ),
    .ce0       ( int_A_21_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_21_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_21_address1 ),
    .ce1       ( int_A_21_ce1 ),
    .we1       ( int_A_21_be1 ),
    .d1        ( int_A_21_d1 ),
    .q1        ( int_A_21_q1 )
);
// int_A_22
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_22 (
    .clk0      ( ACLK ),
    .address0  ( int_A_22_address0 ),
    .ce0       ( int_A_22_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_22_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_22_address1 ),
    .ce1       ( int_A_22_ce1 ),
    .we1       ( int_A_22_be1 ),
    .d1        ( int_A_22_d1 ),
    .q1        ( int_A_22_q1 )
);
// int_A_23
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_23 (
    .clk0      ( ACLK ),
    .address0  ( int_A_23_address0 ),
    .ce0       ( int_A_23_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_23_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_23_address1 ),
    .ce1       ( int_A_23_ce1 ),
    .we1       ( int_A_23_be1 ),
    .d1        ( int_A_23_d1 ),
    .q1        ( int_A_23_q1 )
);
// int_A_24
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_24 (
    .clk0      ( ACLK ),
    .address0  ( int_A_24_address0 ),
    .ce0       ( int_A_24_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_24_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_24_address1 ),
    .ce1       ( int_A_24_ce1 ),
    .we1       ( int_A_24_be1 ),
    .d1        ( int_A_24_d1 ),
    .q1        ( int_A_24_q1 )
);
// int_A_25
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_25 (
    .clk0      ( ACLK ),
    .address0  ( int_A_25_address0 ),
    .ce0       ( int_A_25_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_25_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_25_address1 ),
    .ce1       ( int_A_25_ce1 ),
    .we1       ( int_A_25_be1 ),
    .d1        ( int_A_25_d1 ),
    .q1        ( int_A_25_q1 )
);
// int_A_26
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_26 (
    .clk0      ( ACLK ),
    .address0  ( int_A_26_address0 ),
    .ce0       ( int_A_26_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_26_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_26_address1 ),
    .ce1       ( int_A_26_ce1 ),
    .we1       ( int_A_26_be1 ),
    .d1        ( int_A_26_d1 ),
    .q1        ( int_A_26_q1 )
);
// int_A_27
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_27 (
    .clk0      ( ACLK ),
    .address0  ( int_A_27_address0 ),
    .ce0       ( int_A_27_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_27_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_27_address1 ),
    .ce1       ( int_A_27_ce1 ),
    .we1       ( int_A_27_be1 ),
    .d1        ( int_A_27_d1 ),
    .q1        ( int_A_27_q1 )
);
// int_A_28
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_28 (
    .clk0      ( ACLK ),
    .address0  ( int_A_28_address0 ),
    .ce0       ( int_A_28_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_28_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_28_address1 ),
    .ce1       ( int_A_28_ce1 ),
    .we1       ( int_A_28_be1 ),
    .d1        ( int_A_28_d1 ),
    .q1        ( int_A_28_q1 )
);
// int_A_29
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_29 (
    .clk0      ( ACLK ),
    .address0  ( int_A_29_address0 ),
    .ce0       ( int_A_29_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_29_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_29_address1 ),
    .ce1       ( int_A_29_ce1 ),
    .we1       ( int_A_29_be1 ),
    .d1        ( int_A_29_d1 ),
    .q1        ( int_A_29_q1 )
);
// int_A_30
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_30 (
    .clk0      ( ACLK ),
    .address0  ( int_A_30_address0 ),
    .ce0       ( int_A_30_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_30_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_30_address1 ),
    .ce1       ( int_A_30_ce1 ),
    .we1       ( int_A_30_be1 ),
    .d1        ( int_A_30_d1 ),
    .q1        ( int_A_30_q1 )
);
// int_A_31
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_31 (
    .clk0      ( ACLK ),
    .address0  ( int_A_31_address0 ),
    .ce0       ( int_A_31_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_31_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_31_address1 ),
    .ce1       ( int_A_31_ce1 ),
    .we1       ( int_A_31_be1 ),
    .d1        ( int_A_31_d1 ),
    .q1        ( int_A_31_q1 )
);
// int_A_32
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_32 (
    .clk0      ( ACLK ),
    .address0  ( int_A_32_address0 ),
    .ce0       ( int_A_32_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_32_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_32_address1 ),
    .ce1       ( int_A_32_ce1 ),
    .we1       ( int_A_32_be1 ),
    .d1        ( int_A_32_d1 ),
    .q1        ( int_A_32_q1 )
);
// int_A_33
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_33 (
    .clk0      ( ACLK ),
    .address0  ( int_A_33_address0 ),
    .ce0       ( int_A_33_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_33_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_33_address1 ),
    .ce1       ( int_A_33_ce1 ),
    .we1       ( int_A_33_be1 ),
    .d1        ( int_A_33_d1 ),
    .q1        ( int_A_33_q1 )
);
// int_A_34
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_34 (
    .clk0      ( ACLK ),
    .address0  ( int_A_34_address0 ),
    .ce0       ( int_A_34_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_34_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_34_address1 ),
    .ce1       ( int_A_34_ce1 ),
    .we1       ( int_A_34_be1 ),
    .d1        ( int_A_34_d1 ),
    .q1        ( int_A_34_q1 )
);
// int_A_35
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_35 (
    .clk0      ( ACLK ),
    .address0  ( int_A_35_address0 ),
    .ce0       ( int_A_35_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_35_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_35_address1 ),
    .ce1       ( int_A_35_ce1 ),
    .we1       ( int_A_35_be1 ),
    .d1        ( int_A_35_d1 ),
    .q1        ( int_A_35_q1 )
);
// int_A_36
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_36 (
    .clk0      ( ACLK ),
    .address0  ( int_A_36_address0 ),
    .ce0       ( int_A_36_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_36_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_36_address1 ),
    .ce1       ( int_A_36_ce1 ),
    .we1       ( int_A_36_be1 ),
    .d1        ( int_A_36_d1 ),
    .q1        ( int_A_36_q1 )
);
// int_A_37
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_37 (
    .clk0      ( ACLK ),
    .address0  ( int_A_37_address0 ),
    .ce0       ( int_A_37_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_37_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_37_address1 ),
    .ce1       ( int_A_37_ce1 ),
    .we1       ( int_A_37_be1 ),
    .d1        ( int_A_37_d1 ),
    .q1        ( int_A_37_q1 )
);
// int_A_38
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_38 (
    .clk0      ( ACLK ),
    .address0  ( int_A_38_address0 ),
    .ce0       ( int_A_38_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_38_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_38_address1 ),
    .ce1       ( int_A_38_ce1 ),
    .we1       ( int_A_38_be1 ),
    .d1        ( int_A_38_d1 ),
    .q1        ( int_A_38_q1 )
);
// int_A_39
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_39 (
    .clk0      ( ACLK ),
    .address0  ( int_A_39_address0 ),
    .ce0       ( int_A_39_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_39_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_39_address1 ),
    .ce1       ( int_A_39_ce1 ),
    .we1       ( int_A_39_be1 ),
    .d1        ( int_A_39_d1 ),
    .q1        ( int_A_39_q1 )
);
// int_A_40
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_40 (
    .clk0      ( ACLK ),
    .address0  ( int_A_40_address0 ),
    .ce0       ( int_A_40_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_40_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_40_address1 ),
    .ce1       ( int_A_40_ce1 ),
    .we1       ( int_A_40_be1 ),
    .d1        ( int_A_40_d1 ),
    .q1        ( int_A_40_q1 )
);
// int_A_41
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_41 (
    .clk0      ( ACLK ),
    .address0  ( int_A_41_address0 ),
    .ce0       ( int_A_41_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_41_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_41_address1 ),
    .ce1       ( int_A_41_ce1 ),
    .we1       ( int_A_41_be1 ),
    .d1        ( int_A_41_d1 ),
    .q1        ( int_A_41_q1 )
);
// int_A_42
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_42 (
    .clk0      ( ACLK ),
    .address0  ( int_A_42_address0 ),
    .ce0       ( int_A_42_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_42_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_42_address1 ),
    .ce1       ( int_A_42_ce1 ),
    .we1       ( int_A_42_be1 ),
    .d1        ( int_A_42_d1 ),
    .q1        ( int_A_42_q1 )
);
// int_A_43
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_43 (
    .clk0      ( ACLK ),
    .address0  ( int_A_43_address0 ),
    .ce0       ( int_A_43_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_43_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_43_address1 ),
    .ce1       ( int_A_43_ce1 ),
    .we1       ( int_A_43_be1 ),
    .d1        ( int_A_43_d1 ),
    .q1        ( int_A_43_q1 )
);
// int_A_44
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_44 (
    .clk0      ( ACLK ),
    .address0  ( int_A_44_address0 ),
    .ce0       ( int_A_44_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_44_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_44_address1 ),
    .ce1       ( int_A_44_ce1 ),
    .we1       ( int_A_44_be1 ),
    .d1        ( int_A_44_d1 ),
    .q1        ( int_A_44_q1 )
);
// int_A_45
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_45 (
    .clk0      ( ACLK ),
    .address0  ( int_A_45_address0 ),
    .ce0       ( int_A_45_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_45_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_45_address1 ),
    .ce1       ( int_A_45_ce1 ),
    .we1       ( int_A_45_be1 ),
    .d1        ( int_A_45_d1 ),
    .q1        ( int_A_45_q1 )
);
// int_A_46
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_46 (
    .clk0      ( ACLK ),
    .address0  ( int_A_46_address0 ),
    .ce0       ( int_A_46_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_46_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_46_address1 ),
    .ce1       ( int_A_46_ce1 ),
    .we1       ( int_A_46_be1 ),
    .d1        ( int_A_46_d1 ),
    .q1        ( int_A_46_q1 )
);
// int_A_47
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_47 (
    .clk0      ( ACLK ),
    .address0  ( int_A_47_address0 ),
    .ce0       ( int_A_47_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_47_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_47_address1 ),
    .ce1       ( int_A_47_ce1 ),
    .we1       ( int_A_47_be1 ),
    .d1        ( int_A_47_d1 ),
    .q1        ( int_A_47_q1 )
);
// int_A_48
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_48 (
    .clk0      ( ACLK ),
    .address0  ( int_A_48_address0 ),
    .ce0       ( int_A_48_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_48_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_48_address1 ),
    .ce1       ( int_A_48_ce1 ),
    .we1       ( int_A_48_be1 ),
    .d1        ( int_A_48_d1 ),
    .q1        ( int_A_48_q1 )
);
// int_A_49
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_49 (
    .clk0      ( ACLK ),
    .address0  ( int_A_49_address0 ),
    .ce0       ( int_A_49_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_49_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_49_address1 ),
    .ce1       ( int_A_49_ce1 ),
    .we1       ( int_A_49_be1 ),
    .d1        ( int_A_49_d1 ),
    .q1        ( int_A_49_q1 )
);
// int_A_50
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_50 (
    .clk0      ( ACLK ),
    .address0  ( int_A_50_address0 ),
    .ce0       ( int_A_50_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_50_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_50_address1 ),
    .ce1       ( int_A_50_ce1 ),
    .we1       ( int_A_50_be1 ),
    .d1        ( int_A_50_d1 ),
    .q1        ( int_A_50_q1 )
);
// int_A_51
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_51 (
    .clk0      ( ACLK ),
    .address0  ( int_A_51_address0 ),
    .ce0       ( int_A_51_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_51_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_51_address1 ),
    .ce1       ( int_A_51_ce1 ),
    .we1       ( int_A_51_be1 ),
    .d1        ( int_A_51_d1 ),
    .q1        ( int_A_51_q1 )
);
// int_A_52
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_52 (
    .clk0      ( ACLK ),
    .address0  ( int_A_52_address0 ),
    .ce0       ( int_A_52_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_52_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_52_address1 ),
    .ce1       ( int_A_52_ce1 ),
    .we1       ( int_A_52_be1 ),
    .d1        ( int_A_52_d1 ),
    .q1        ( int_A_52_q1 )
);
// int_A_53
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_53 (
    .clk0      ( ACLK ),
    .address0  ( int_A_53_address0 ),
    .ce0       ( int_A_53_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_53_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_53_address1 ),
    .ce1       ( int_A_53_ce1 ),
    .we1       ( int_A_53_be1 ),
    .d1        ( int_A_53_d1 ),
    .q1        ( int_A_53_q1 )
);
// int_A_54
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_54 (
    .clk0      ( ACLK ),
    .address0  ( int_A_54_address0 ),
    .ce0       ( int_A_54_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_54_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_54_address1 ),
    .ce1       ( int_A_54_ce1 ),
    .we1       ( int_A_54_be1 ),
    .d1        ( int_A_54_d1 ),
    .q1        ( int_A_54_q1 )
);
// int_A_55
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_55 (
    .clk0      ( ACLK ),
    .address0  ( int_A_55_address0 ),
    .ce0       ( int_A_55_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_55_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_55_address1 ),
    .ce1       ( int_A_55_ce1 ),
    .we1       ( int_A_55_be1 ),
    .d1        ( int_A_55_d1 ),
    .q1        ( int_A_55_q1 )
);
// int_A_56
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_56 (
    .clk0      ( ACLK ),
    .address0  ( int_A_56_address0 ),
    .ce0       ( int_A_56_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_56_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_56_address1 ),
    .ce1       ( int_A_56_ce1 ),
    .we1       ( int_A_56_be1 ),
    .d1        ( int_A_56_d1 ),
    .q1        ( int_A_56_q1 )
);
// int_A_57
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_57 (
    .clk0      ( ACLK ),
    .address0  ( int_A_57_address0 ),
    .ce0       ( int_A_57_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_57_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_57_address1 ),
    .ce1       ( int_A_57_ce1 ),
    .we1       ( int_A_57_be1 ),
    .d1        ( int_A_57_d1 ),
    .q1        ( int_A_57_q1 )
);
// int_A_58
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_58 (
    .clk0      ( ACLK ),
    .address0  ( int_A_58_address0 ),
    .ce0       ( int_A_58_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_58_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_58_address1 ),
    .ce1       ( int_A_58_ce1 ),
    .we1       ( int_A_58_be1 ),
    .d1        ( int_A_58_d1 ),
    .q1        ( int_A_58_q1 )
);
// int_A_59
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_59 (
    .clk0      ( ACLK ),
    .address0  ( int_A_59_address0 ),
    .ce0       ( int_A_59_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_59_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_59_address1 ),
    .ce1       ( int_A_59_ce1 ),
    .we1       ( int_A_59_be1 ),
    .d1        ( int_A_59_d1 ),
    .q1        ( int_A_59_q1 )
);
// int_A_60
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_60 (
    .clk0      ( ACLK ),
    .address0  ( int_A_60_address0 ),
    .ce0       ( int_A_60_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_60_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_60_address1 ),
    .ce1       ( int_A_60_ce1 ),
    .we1       ( int_A_60_be1 ),
    .d1        ( int_A_60_d1 ),
    .q1        ( int_A_60_q1 )
);
// int_A_61
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_61 (
    .clk0      ( ACLK ),
    .address0  ( int_A_61_address0 ),
    .ce0       ( int_A_61_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_61_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_61_address1 ),
    .ce1       ( int_A_61_ce1 ),
    .we1       ( int_A_61_be1 ),
    .d1        ( int_A_61_d1 ),
    .q1        ( int_A_61_q1 )
);
// int_A_62
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_62 (
    .clk0      ( ACLK ),
    .address0  ( int_A_62_address0 ),
    .ce0       ( int_A_62_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_62_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_62_address1 ),
    .ce1       ( int_A_62_ce1 ),
    .we1       ( int_A_62_be1 ),
    .d1        ( int_A_62_d1 ),
    .q1        ( int_A_62_q1 )
);
// int_A_63
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_A_63 (
    .clk0      ( ACLK ),
    .address0  ( int_A_63_address0 ),
    .ce0       ( int_A_63_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_A_63_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_63_address1 ),
    .ce1       ( int_A_63_ce1 ),
    .we1       ( int_A_63_be1 ),
    .d1        ( int_A_63_d1 ),
    .q1        ( int_A_63_q1 )
);
// int_B_0
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_0 (
    .clk0      ( ACLK ),
    .address0  ( int_B_0_address0 ),
    .ce0       ( int_B_0_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_0_address1 ),
    .ce1       ( int_B_0_ce1 ),
    .we1       ( int_B_0_be1 ),
    .d1        ( int_B_0_d1 ),
    .q1        ( int_B_0_q1 )
);
// int_B_1
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_1 (
    .clk0      ( ACLK ),
    .address0  ( int_B_1_address0 ),
    .ce0       ( int_B_1_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_1_address1 ),
    .ce1       ( int_B_1_ce1 ),
    .we1       ( int_B_1_be1 ),
    .d1        ( int_B_1_d1 ),
    .q1        ( int_B_1_q1 )
);
// int_B_2
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_2 (
    .clk0      ( ACLK ),
    .address0  ( int_B_2_address0 ),
    .ce0       ( int_B_2_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_2_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_2_address1 ),
    .ce1       ( int_B_2_ce1 ),
    .we1       ( int_B_2_be1 ),
    .d1        ( int_B_2_d1 ),
    .q1        ( int_B_2_q1 )
);
// int_B_3
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_3 (
    .clk0      ( ACLK ),
    .address0  ( int_B_3_address0 ),
    .ce0       ( int_B_3_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_3_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_3_address1 ),
    .ce1       ( int_B_3_ce1 ),
    .we1       ( int_B_3_be1 ),
    .d1        ( int_B_3_d1 ),
    .q1        ( int_B_3_q1 )
);
// int_B_4
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_4 (
    .clk0      ( ACLK ),
    .address0  ( int_B_4_address0 ),
    .ce0       ( int_B_4_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_4_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_4_address1 ),
    .ce1       ( int_B_4_ce1 ),
    .we1       ( int_B_4_be1 ),
    .d1        ( int_B_4_d1 ),
    .q1        ( int_B_4_q1 )
);
// int_B_5
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_5 (
    .clk0      ( ACLK ),
    .address0  ( int_B_5_address0 ),
    .ce0       ( int_B_5_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_5_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_5_address1 ),
    .ce1       ( int_B_5_ce1 ),
    .we1       ( int_B_5_be1 ),
    .d1        ( int_B_5_d1 ),
    .q1        ( int_B_5_q1 )
);
// int_B_6
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_6 (
    .clk0      ( ACLK ),
    .address0  ( int_B_6_address0 ),
    .ce0       ( int_B_6_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_6_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_6_address1 ),
    .ce1       ( int_B_6_ce1 ),
    .we1       ( int_B_6_be1 ),
    .d1        ( int_B_6_d1 ),
    .q1        ( int_B_6_q1 )
);
// int_B_7
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_7 (
    .clk0      ( ACLK ),
    .address0  ( int_B_7_address0 ),
    .ce0       ( int_B_7_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_7_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_7_address1 ),
    .ce1       ( int_B_7_ce1 ),
    .we1       ( int_B_7_be1 ),
    .d1        ( int_B_7_d1 ),
    .q1        ( int_B_7_q1 )
);
// int_B_8
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_8 (
    .clk0      ( ACLK ),
    .address0  ( int_B_8_address0 ),
    .ce0       ( int_B_8_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_8_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_8_address1 ),
    .ce1       ( int_B_8_ce1 ),
    .we1       ( int_B_8_be1 ),
    .d1        ( int_B_8_d1 ),
    .q1        ( int_B_8_q1 )
);
// int_B_9
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_9 (
    .clk0      ( ACLK ),
    .address0  ( int_B_9_address0 ),
    .ce0       ( int_B_9_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_9_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_9_address1 ),
    .ce1       ( int_B_9_ce1 ),
    .we1       ( int_B_9_be1 ),
    .d1        ( int_B_9_d1 ),
    .q1        ( int_B_9_q1 )
);
// int_B_10
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_10 (
    .clk0      ( ACLK ),
    .address0  ( int_B_10_address0 ),
    .ce0       ( int_B_10_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_10_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_10_address1 ),
    .ce1       ( int_B_10_ce1 ),
    .we1       ( int_B_10_be1 ),
    .d1        ( int_B_10_d1 ),
    .q1        ( int_B_10_q1 )
);
// int_B_11
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_11 (
    .clk0      ( ACLK ),
    .address0  ( int_B_11_address0 ),
    .ce0       ( int_B_11_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_11_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_11_address1 ),
    .ce1       ( int_B_11_ce1 ),
    .we1       ( int_B_11_be1 ),
    .d1        ( int_B_11_d1 ),
    .q1        ( int_B_11_q1 )
);
// int_B_12
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_12 (
    .clk0      ( ACLK ),
    .address0  ( int_B_12_address0 ),
    .ce0       ( int_B_12_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_12_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_12_address1 ),
    .ce1       ( int_B_12_ce1 ),
    .we1       ( int_B_12_be1 ),
    .d1        ( int_B_12_d1 ),
    .q1        ( int_B_12_q1 )
);
// int_B_13
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_13 (
    .clk0      ( ACLK ),
    .address0  ( int_B_13_address0 ),
    .ce0       ( int_B_13_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_13_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_13_address1 ),
    .ce1       ( int_B_13_ce1 ),
    .we1       ( int_B_13_be1 ),
    .d1        ( int_B_13_d1 ),
    .q1        ( int_B_13_q1 )
);
// int_B_14
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_14 (
    .clk0      ( ACLK ),
    .address0  ( int_B_14_address0 ),
    .ce0       ( int_B_14_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_14_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_14_address1 ),
    .ce1       ( int_B_14_ce1 ),
    .we1       ( int_B_14_be1 ),
    .d1        ( int_B_14_d1 ),
    .q1        ( int_B_14_q1 )
);
// int_B_15
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_15 (
    .clk0      ( ACLK ),
    .address0  ( int_B_15_address0 ),
    .ce0       ( int_B_15_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_15_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_15_address1 ),
    .ce1       ( int_B_15_ce1 ),
    .we1       ( int_B_15_be1 ),
    .d1        ( int_B_15_d1 ),
    .q1        ( int_B_15_q1 )
);
// int_B_16
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_16 (
    .clk0      ( ACLK ),
    .address0  ( int_B_16_address0 ),
    .ce0       ( int_B_16_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_16_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_16_address1 ),
    .ce1       ( int_B_16_ce1 ),
    .we1       ( int_B_16_be1 ),
    .d1        ( int_B_16_d1 ),
    .q1        ( int_B_16_q1 )
);
// int_B_17
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_17 (
    .clk0      ( ACLK ),
    .address0  ( int_B_17_address0 ),
    .ce0       ( int_B_17_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_17_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_17_address1 ),
    .ce1       ( int_B_17_ce1 ),
    .we1       ( int_B_17_be1 ),
    .d1        ( int_B_17_d1 ),
    .q1        ( int_B_17_q1 )
);
// int_B_18
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_18 (
    .clk0      ( ACLK ),
    .address0  ( int_B_18_address0 ),
    .ce0       ( int_B_18_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_18_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_18_address1 ),
    .ce1       ( int_B_18_ce1 ),
    .we1       ( int_B_18_be1 ),
    .d1        ( int_B_18_d1 ),
    .q1        ( int_B_18_q1 )
);
// int_B_19
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_19 (
    .clk0      ( ACLK ),
    .address0  ( int_B_19_address0 ),
    .ce0       ( int_B_19_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_19_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_19_address1 ),
    .ce1       ( int_B_19_ce1 ),
    .we1       ( int_B_19_be1 ),
    .d1        ( int_B_19_d1 ),
    .q1        ( int_B_19_q1 )
);
// int_B_20
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_20 (
    .clk0      ( ACLK ),
    .address0  ( int_B_20_address0 ),
    .ce0       ( int_B_20_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_20_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_20_address1 ),
    .ce1       ( int_B_20_ce1 ),
    .we1       ( int_B_20_be1 ),
    .d1        ( int_B_20_d1 ),
    .q1        ( int_B_20_q1 )
);
// int_B_21
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_21 (
    .clk0      ( ACLK ),
    .address0  ( int_B_21_address0 ),
    .ce0       ( int_B_21_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_21_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_21_address1 ),
    .ce1       ( int_B_21_ce1 ),
    .we1       ( int_B_21_be1 ),
    .d1        ( int_B_21_d1 ),
    .q1        ( int_B_21_q1 )
);
// int_B_22
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_22 (
    .clk0      ( ACLK ),
    .address0  ( int_B_22_address0 ),
    .ce0       ( int_B_22_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_22_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_22_address1 ),
    .ce1       ( int_B_22_ce1 ),
    .we1       ( int_B_22_be1 ),
    .d1        ( int_B_22_d1 ),
    .q1        ( int_B_22_q1 )
);
// int_B_23
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_23 (
    .clk0      ( ACLK ),
    .address0  ( int_B_23_address0 ),
    .ce0       ( int_B_23_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_23_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_23_address1 ),
    .ce1       ( int_B_23_ce1 ),
    .we1       ( int_B_23_be1 ),
    .d1        ( int_B_23_d1 ),
    .q1        ( int_B_23_q1 )
);
// int_B_24
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_24 (
    .clk0      ( ACLK ),
    .address0  ( int_B_24_address0 ),
    .ce0       ( int_B_24_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_24_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_24_address1 ),
    .ce1       ( int_B_24_ce1 ),
    .we1       ( int_B_24_be1 ),
    .d1        ( int_B_24_d1 ),
    .q1        ( int_B_24_q1 )
);
// int_B_25
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_25 (
    .clk0      ( ACLK ),
    .address0  ( int_B_25_address0 ),
    .ce0       ( int_B_25_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_25_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_25_address1 ),
    .ce1       ( int_B_25_ce1 ),
    .we1       ( int_B_25_be1 ),
    .d1        ( int_B_25_d1 ),
    .q1        ( int_B_25_q1 )
);
// int_B_26
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_26 (
    .clk0      ( ACLK ),
    .address0  ( int_B_26_address0 ),
    .ce0       ( int_B_26_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_26_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_26_address1 ),
    .ce1       ( int_B_26_ce1 ),
    .we1       ( int_B_26_be1 ),
    .d1        ( int_B_26_d1 ),
    .q1        ( int_B_26_q1 )
);
// int_B_27
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_27 (
    .clk0      ( ACLK ),
    .address0  ( int_B_27_address0 ),
    .ce0       ( int_B_27_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_27_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_27_address1 ),
    .ce1       ( int_B_27_ce1 ),
    .we1       ( int_B_27_be1 ),
    .d1        ( int_B_27_d1 ),
    .q1        ( int_B_27_q1 )
);
// int_B_28
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_28 (
    .clk0      ( ACLK ),
    .address0  ( int_B_28_address0 ),
    .ce0       ( int_B_28_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_28_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_28_address1 ),
    .ce1       ( int_B_28_ce1 ),
    .we1       ( int_B_28_be1 ),
    .d1        ( int_B_28_d1 ),
    .q1        ( int_B_28_q1 )
);
// int_B_29
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_29 (
    .clk0      ( ACLK ),
    .address0  ( int_B_29_address0 ),
    .ce0       ( int_B_29_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_29_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_29_address1 ),
    .ce1       ( int_B_29_ce1 ),
    .we1       ( int_B_29_be1 ),
    .d1        ( int_B_29_d1 ),
    .q1        ( int_B_29_q1 )
);
// int_B_30
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_30 (
    .clk0      ( ACLK ),
    .address0  ( int_B_30_address0 ),
    .ce0       ( int_B_30_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_30_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_30_address1 ),
    .ce1       ( int_B_30_ce1 ),
    .we1       ( int_B_30_be1 ),
    .d1        ( int_B_30_d1 ),
    .q1        ( int_B_30_q1 )
);
// int_B_31
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_31 (
    .clk0      ( ACLK ),
    .address0  ( int_B_31_address0 ),
    .ce0       ( int_B_31_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_31_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_31_address1 ),
    .ce1       ( int_B_31_ce1 ),
    .we1       ( int_B_31_be1 ),
    .d1        ( int_B_31_d1 ),
    .q1        ( int_B_31_q1 )
);
// int_B_32
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_32 (
    .clk0      ( ACLK ),
    .address0  ( int_B_32_address0 ),
    .ce0       ( int_B_32_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_32_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_32_address1 ),
    .ce1       ( int_B_32_ce1 ),
    .we1       ( int_B_32_be1 ),
    .d1        ( int_B_32_d1 ),
    .q1        ( int_B_32_q1 )
);
// int_B_33
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_33 (
    .clk0      ( ACLK ),
    .address0  ( int_B_33_address0 ),
    .ce0       ( int_B_33_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_33_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_33_address1 ),
    .ce1       ( int_B_33_ce1 ),
    .we1       ( int_B_33_be1 ),
    .d1        ( int_B_33_d1 ),
    .q1        ( int_B_33_q1 )
);
// int_B_34
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_34 (
    .clk0      ( ACLK ),
    .address0  ( int_B_34_address0 ),
    .ce0       ( int_B_34_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_34_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_34_address1 ),
    .ce1       ( int_B_34_ce1 ),
    .we1       ( int_B_34_be1 ),
    .d1        ( int_B_34_d1 ),
    .q1        ( int_B_34_q1 )
);
// int_B_35
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_35 (
    .clk0      ( ACLK ),
    .address0  ( int_B_35_address0 ),
    .ce0       ( int_B_35_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_35_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_35_address1 ),
    .ce1       ( int_B_35_ce1 ),
    .we1       ( int_B_35_be1 ),
    .d1        ( int_B_35_d1 ),
    .q1        ( int_B_35_q1 )
);
// int_B_36
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_36 (
    .clk0      ( ACLK ),
    .address0  ( int_B_36_address0 ),
    .ce0       ( int_B_36_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_36_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_36_address1 ),
    .ce1       ( int_B_36_ce1 ),
    .we1       ( int_B_36_be1 ),
    .d1        ( int_B_36_d1 ),
    .q1        ( int_B_36_q1 )
);
// int_B_37
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_37 (
    .clk0      ( ACLK ),
    .address0  ( int_B_37_address0 ),
    .ce0       ( int_B_37_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_37_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_37_address1 ),
    .ce1       ( int_B_37_ce1 ),
    .we1       ( int_B_37_be1 ),
    .d1        ( int_B_37_d1 ),
    .q1        ( int_B_37_q1 )
);
// int_B_38
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_38 (
    .clk0      ( ACLK ),
    .address0  ( int_B_38_address0 ),
    .ce0       ( int_B_38_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_38_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_38_address1 ),
    .ce1       ( int_B_38_ce1 ),
    .we1       ( int_B_38_be1 ),
    .d1        ( int_B_38_d1 ),
    .q1        ( int_B_38_q1 )
);
// int_B_39
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_39 (
    .clk0      ( ACLK ),
    .address0  ( int_B_39_address0 ),
    .ce0       ( int_B_39_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_39_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_39_address1 ),
    .ce1       ( int_B_39_ce1 ),
    .we1       ( int_B_39_be1 ),
    .d1        ( int_B_39_d1 ),
    .q1        ( int_B_39_q1 )
);
// int_B_40
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_40 (
    .clk0      ( ACLK ),
    .address0  ( int_B_40_address0 ),
    .ce0       ( int_B_40_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_40_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_40_address1 ),
    .ce1       ( int_B_40_ce1 ),
    .we1       ( int_B_40_be1 ),
    .d1        ( int_B_40_d1 ),
    .q1        ( int_B_40_q1 )
);
// int_B_41
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_41 (
    .clk0      ( ACLK ),
    .address0  ( int_B_41_address0 ),
    .ce0       ( int_B_41_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_41_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_41_address1 ),
    .ce1       ( int_B_41_ce1 ),
    .we1       ( int_B_41_be1 ),
    .d1        ( int_B_41_d1 ),
    .q1        ( int_B_41_q1 )
);
// int_B_42
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_42 (
    .clk0      ( ACLK ),
    .address0  ( int_B_42_address0 ),
    .ce0       ( int_B_42_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_42_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_42_address1 ),
    .ce1       ( int_B_42_ce1 ),
    .we1       ( int_B_42_be1 ),
    .d1        ( int_B_42_d1 ),
    .q1        ( int_B_42_q1 )
);
// int_B_43
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_43 (
    .clk0      ( ACLK ),
    .address0  ( int_B_43_address0 ),
    .ce0       ( int_B_43_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_43_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_43_address1 ),
    .ce1       ( int_B_43_ce1 ),
    .we1       ( int_B_43_be1 ),
    .d1        ( int_B_43_d1 ),
    .q1        ( int_B_43_q1 )
);
// int_B_44
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_44 (
    .clk0      ( ACLK ),
    .address0  ( int_B_44_address0 ),
    .ce0       ( int_B_44_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_44_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_44_address1 ),
    .ce1       ( int_B_44_ce1 ),
    .we1       ( int_B_44_be1 ),
    .d1        ( int_B_44_d1 ),
    .q1        ( int_B_44_q1 )
);
// int_B_45
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_45 (
    .clk0      ( ACLK ),
    .address0  ( int_B_45_address0 ),
    .ce0       ( int_B_45_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_45_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_45_address1 ),
    .ce1       ( int_B_45_ce1 ),
    .we1       ( int_B_45_be1 ),
    .d1        ( int_B_45_d1 ),
    .q1        ( int_B_45_q1 )
);
// int_B_46
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_46 (
    .clk0      ( ACLK ),
    .address0  ( int_B_46_address0 ),
    .ce0       ( int_B_46_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_46_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_46_address1 ),
    .ce1       ( int_B_46_ce1 ),
    .we1       ( int_B_46_be1 ),
    .d1        ( int_B_46_d1 ),
    .q1        ( int_B_46_q1 )
);
// int_B_47
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_47 (
    .clk0      ( ACLK ),
    .address0  ( int_B_47_address0 ),
    .ce0       ( int_B_47_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_47_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_47_address1 ),
    .ce1       ( int_B_47_ce1 ),
    .we1       ( int_B_47_be1 ),
    .d1        ( int_B_47_d1 ),
    .q1        ( int_B_47_q1 )
);
// int_B_48
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_48 (
    .clk0      ( ACLK ),
    .address0  ( int_B_48_address0 ),
    .ce0       ( int_B_48_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_48_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_48_address1 ),
    .ce1       ( int_B_48_ce1 ),
    .we1       ( int_B_48_be1 ),
    .d1        ( int_B_48_d1 ),
    .q1        ( int_B_48_q1 )
);
// int_B_49
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_49 (
    .clk0      ( ACLK ),
    .address0  ( int_B_49_address0 ),
    .ce0       ( int_B_49_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_49_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_49_address1 ),
    .ce1       ( int_B_49_ce1 ),
    .we1       ( int_B_49_be1 ),
    .d1        ( int_B_49_d1 ),
    .q1        ( int_B_49_q1 )
);
// int_B_50
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_50 (
    .clk0      ( ACLK ),
    .address0  ( int_B_50_address0 ),
    .ce0       ( int_B_50_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_50_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_50_address1 ),
    .ce1       ( int_B_50_ce1 ),
    .we1       ( int_B_50_be1 ),
    .d1        ( int_B_50_d1 ),
    .q1        ( int_B_50_q1 )
);
// int_B_51
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_51 (
    .clk0      ( ACLK ),
    .address0  ( int_B_51_address0 ),
    .ce0       ( int_B_51_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_51_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_51_address1 ),
    .ce1       ( int_B_51_ce1 ),
    .we1       ( int_B_51_be1 ),
    .d1        ( int_B_51_d1 ),
    .q1        ( int_B_51_q1 )
);
// int_B_52
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_52 (
    .clk0      ( ACLK ),
    .address0  ( int_B_52_address0 ),
    .ce0       ( int_B_52_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_52_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_52_address1 ),
    .ce1       ( int_B_52_ce1 ),
    .we1       ( int_B_52_be1 ),
    .d1        ( int_B_52_d1 ),
    .q1        ( int_B_52_q1 )
);
// int_B_53
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_53 (
    .clk0      ( ACLK ),
    .address0  ( int_B_53_address0 ),
    .ce0       ( int_B_53_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_53_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_53_address1 ),
    .ce1       ( int_B_53_ce1 ),
    .we1       ( int_B_53_be1 ),
    .d1        ( int_B_53_d1 ),
    .q1        ( int_B_53_q1 )
);
// int_B_54
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_54 (
    .clk0      ( ACLK ),
    .address0  ( int_B_54_address0 ),
    .ce0       ( int_B_54_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_54_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_54_address1 ),
    .ce1       ( int_B_54_ce1 ),
    .we1       ( int_B_54_be1 ),
    .d1        ( int_B_54_d1 ),
    .q1        ( int_B_54_q1 )
);
// int_B_55
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_55 (
    .clk0      ( ACLK ),
    .address0  ( int_B_55_address0 ),
    .ce0       ( int_B_55_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_55_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_55_address1 ),
    .ce1       ( int_B_55_ce1 ),
    .we1       ( int_B_55_be1 ),
    .d1        ( int_B_55_d1 ),
    .q1        ( int_B_55_q1 )
);
// int_B_56
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_56 (
    .clk0      ( ACLK ),
    .address0  ( int_B_56_address0 ),
    .ce0       ( int_B_56_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_56_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_56_address1 ),
    .ce1       ( int_B_56_ce1 ),
    .we1       ( int_B_56_be1 ),
    .d1        ( int_B_56_d1 ),
    .q1        ( int_B_56_q1 )
);
// int_B_57
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_57 (
    .clk0      ( ACLK ),
    .address0  ( int_B_57_address0 ),
    .ce0       ( int_B_57_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_57_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_57_address1 ),
    .ce1       ( int_B_57_ce1 ),
    .we1       ( int_B_57_be1 ),
    .d1        ( int_B_57_d1 ),
    .q1        ( int_B_57_q1 )
);
// int_B_58
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_58 (
    .clk0      ( ACLK ),
    .address0  ( int_B_58_address0 ),
    .ce0       ( int_B_58_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_58_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_58_address1 ),
    .ce1       ( int_B_58_ce1 ),
    .we1       ( int_B_58_be1 ),
    .d1        ( int_B_58_d1 ),
    .q1        ( int_B_58_q1 )
);
// int_B_59
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_59 (
    .clk0      ( ACLK ),
    .address0  ( int_B_59_address0 ),
    .ce0       ( int_B_59_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_59_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_59_address1 ),
    .ce1       ( int_B_59_ce1 ),
    .we1       ( int_B_59_be1 ),
    .d1        ( int_B_59_d1 ),
    .q1        ( int_B_59_q1 )
);
// int_B_60
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_60 (
    .clk0      ( ACLK ),
    .address0  ( int_B_60_address0 ),
    .ce0       ( int_B_60_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_60_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_60_address1 ),
    .ce1       ( int_B_60_ce1 ),
    .we1       ( int_B_60_be1 ),
    .d1        ( int_B_60_d1 ),
    .q1        ( int_B_60_q1 )
);
// int_B_61
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_61 (
    .clk0      ( ACLK ),
    .address0  ( int_B_61_address0 ),
    .ce0       ( int_B_61_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_61_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_61_address1 ),
    .ce1       ( int_B_61_ce1 ),
    .we1       ( int_B_61_be1 ),
    .d1        ( int_B_61_d1 ),
    .q1        ( int_B_61_q1 )
);
// int_B_62
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_62 (
    .clk0      ( ACLK ),
    .address0  ( int_B_62_address0 ),
    .ce0       ( int_B_62_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_62_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_62_address1 ),
    .ce1       ( int_B_62_ce1 ),
    .we1       ( int_B_62_be1 ),
    .d1        ( int_B_62_d1 ),
    .q1        ( int_B_62_q1 )
);
// int_B_63
eucHW_control_s_axi_ram #(
    .MEM_STYLE ( "block" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 2 )
) int_B_63 (
    .clk0      ( ACLK ),
    .address0  ( int_B_63_address0 ),
    .ce0       ( int_B_63_ce0 ),
    .we0       ( 'b0 ),
    .d0        ( 'b0 ),
    .q0        ( int_B_63_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_63_address1 ),
    .ce1       ( int_B_63_ce1 ),
    .we1       ( int_B_63_be1 ),
    .d1        ( int_B_63_d1 ),
    .q1        ( int_B_63_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_A_0_read & !int_A_1_read & !int_A_2_read & !int_A_3_read & !int_A_4_read & !int_A_5_read & !int_A_6_read & !int_A_7_read & !int_A_8_read & !int_A_9_read & !int_A_10_read & !int_A_11_read & !int_A_12_read & !int_A_13_read & !int_A_14_read & !int_A_15_read & !int_A_16_read & !int_A_17_read & !int_A_18_read & !int_A_19_read & !int_A_20_read & !int_A_21_read & !int_A_22_read & !int_A_23_read & !int_A_24_read & !int_A_25_read & !int_A_26_read & !int_A_27_read & !int_A_28_read & !int_A_29_read & !int_A_30_read & !int_A_31_read & !int_A_32_read & !int_A_33_read & !int_A_34_read & !int_A_35_read & !int_A_36_read & !int_A_37_read & !int_A_38_read & !int_A_39_read & !int_A_40_read & !int_A_41_read & !int_A_42_read & !int_A_43_read & !int_A_44_read & !int_A_45_read & !int_A_46_read & !int_A_47_read & !int_A_48_read & !int_A_49_read & !int_A_50_read & !int_A_51_read & !int_A_52_read & !int_A_53_read & !int_A_54_read & !int_A_55_read & !int_A_56_read & !int_A_57_read & !int_A_58_read & !int_A_59_read & !int_A_60_read & !int_A_61_read & !int_A_62_read & !int_A_63_read & !int_B_0_read & !int_B_1_read & !int_B_2_read & !int_B_3_read & !int_B_4_read & !int_B_5_read & !int_B_6_read & !int_B_7_read & !int_B_8_read & !int_B_9_read & !int_B_10_read & !int_B_11_read & !int_B_12_read & !int_B_13_read & !int_B_14_read & !int_B_15_read & !int_B_16_read & !int_B_17_read & !int_B_18_read & !int_B_19_read & !int_B_20_read & !int_B_21_read & !int_B_22_read & !int_B_23_read & !int_B_24_read & !int_B_25_read & !int_B_26_read & !int_B_27_read & !int_B_28_read & !int_B_29_read & !int_B_30_read & !int_B_31_read & !int_B_32_read & !int_B_33_read & !int_B_34_read & !int_B_35_read & !int_B_36_read & !int_B_37_read & !int_B_38_read & !int_B_39_read & !int_B_40_read & !int_B_41_read & !int_B_42_read & !int_B_43_read & !int_B_44_read & !int_B_45_read & !int_B_46_read & !int_B_47_read & !int_B_48_read & !int_B_49_read & !int_B_50_read & !int_B_51_read & !int_B_52_read & !int_B_53_read & !int_B_54_read & !int_B_55_read & !int_B_56_read & !int_B_57_read & !int_B_58_read & !int_B_59_read & !int_B_60_read & !int_B_61_read & !int_B_62_read & !int_B_63_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_C_DATA_0: begin
                    rdata <= int_C[31:0];
                end
                ADDR_C_CTRL: begin
                    rdata[0] <= int_C_ap_vld;
                end
            endcase
        end
        else if (int_A_0_read) begin
            rdata <= int_A_0_q1;
        end
        else if (int_A_1_read) begin
            rdata <= int_A_1_q1;
        end
        else if (int_A_2_read) begin
            rdata <= int_A_2_q1;
        end
        else if (int_A_3_read) begin
            rdata <= int_A_3_q1;
        end
        else if (int_A_4_read) begin
            rdata <= int_A_4_q1;
        end
        else if (int_A_5_read) begin
            rdata <= int_A_5_q1;
        end
        else if (int_A_6_read) begin
            rdata <= int_A_6_q1;
        end
        else if (int_A_7_read) begin
            rdata <= int_A_7_q1;
        end
        else if (int_A_8_read) begin
            rdata <= int_A_8_q1;
        end
        else if (int_A_9_read) begin
            rdata <= int_A_9_q1;
        end
        else if (int_A_10_read) begin
            rdata <= int_A_10_q1;
        end
        else if (int_A_11_read) begin
            rdata <= int_A_11_q1;
        end
        else if (int_A_12_read) begin
            rdata <= int_A_12_q1;
        end
        else if (int_A_13_read) begin
            rdata <= int_A_13_q1;
        end
        else if (int_A_14_read) begin
            rdata <= int_A_14_q1;
        end
        else if (int_A_15_read) begin
            rdata <= int_A_15_q1;
        end
        else if (int_A_16_read) begin
            rdata <= int_A_16_q1;
        end
        else if (int_A_17_read) begin
            rdata <= int_A_17_q1;
        end
        else if (int_A_18_read) begin
            rdata <= int_A_18_q1;
        end
        else if (int_A_19_read) begin
            rdata <= int_A_19_q1;
        end
        else if (int_A_20_read) begin
            rdata <= int_A_20_q1;
        end
        else if (int_A_21_read) begin
            rdata <= int_A_21_q1;
        end
        else if (int_A_22_read) begin
            rdata <= int_A_22_q1;
        end
        else if (int_A_23_read) begin
            rdata <= int_A_23_q1;
        end
        else if (int_A_24_read) begin
            rdata <= int_A_24_q1;
        end
        else if (int_A_25_read) begin
            rdata <= int_A_25_q1;
        end
        else if (int_A_26_read) begin
            rdata <= int_A_26_q1;
        end
        else if (int_A_27_read) begin
            rdata <= int_A_27_q1;
        end
        else if (int_A_28_read) begin
            rdata <= int_A_28_q1;
        end
        else if (int_A_29_read) begin
            rdata <= int_A_29_q1;
        end
        else if (int_A_30_read) begin
            rdata <= int_A_30_q1;
        end
        else if (int_A_31_read) begin
            rdata <= int_A_31_q1;
        end
        else if (int_A_32_read) begin
            rdata <= int_A_32_q1;
        end
        else if (int_A_33_read) begin
            rdata <= int_A_33_q1;
        end
        else if (int_A_34_read) begin
            rdata <= int_A_34_q1;
        end
        else if (int_A_35_read) begin
            rdata <= int_A_35_q1;
        end
        else if (int_A_36_read) begin
            rdata <= int_A_36_q1;
        end
        else if (int_A_37_read) begin
            rdata <= int_A_37_q1;
        end
        else if (int_A_38_read) begin
            rdata <= int_A_38_q1;
        end
        else if (int_A_39_read) begin
            rdata <= int_A_39_q1;
        end
        else if (int_A_40_read) begin
            rdata <= int_A_40_q1;
        end
        else if (int_A_41_read) begin
            rdata <= int_A_41_q1;
        end
        else if (int_A_42_read) begin
            rdata <= int_A_42_q1;
        end
        else if (int_A_43_read) begin
            rdata <= int_A_43_q1;
        end
        else if (int_A_44_read) begin
            rdata <= int_A_44_q1;
        end
        else if (int_A_45_read) begin
            rdata <= int_A_45_q1;
        end
        else if (int_A_46_read) begin
            rdata <= int_A_46_q1;
        end
        else if (int_A_47_read) begin
            rdata <= int_A_47_q1;
        end
        else if (int_A_48_read) begin
            rdata <= int_A_48_q1;
        end
        else if (int_A_49_read) begin
            rdata <= int_A_49_q1;
        end
        else if (int_A_50_read) begin
            rdata <= int_A_50_q1;
        end
        else if (int_A_51_read) begin
            rdata <= int_A_51_q1;
        end
        else if (int_A_52_read) begin
            rdata <= int_A_52_q1;
        end
        else if (int_A_53_read) begin
            rdata <= int_A_53_q1;
        end
        else if (int_A_54_read) begin
            rdata <= int_A_54_q1;
        end
        else if (int_A_55_read) begin
            rdata <= int_A_55_q1;
        end
        else if (int_A_56_read) begin
            rdata <= int_A_56_q1;
        end
        else if (int_A_57_read) begin
            rdata <= int_A_57_q1;
        end
        else if (int_A_58_read) begin
            rdata <= int_A_58_q1;
        end
        else if (int_A_59_read) begin
            rdata <= int_A_59_q1;
        end
        else if (int_A_60_read) begin
            rdata <= int_A_60_q1;
        end
        else if (int_A_61_read) begin
            rdata <= int_A_61_q1;
        end
        else if (int_A_62_read) begin
            rdata <= int_A_62_q1;
        end
        else if (int_A_63_read) begin
            rdata <= int_A_63_q1;
        end
        else if (int_B_0_read) begin
            rdata <= int_B_0_q1;
        end
        else if (int_B_1_read) begin
            rdata <= int_B_1_q1;
        end
        else if (int_B_2_read) begin
            rdata <= int_B_2_q1;
        end
        else if (int_B_3_read) begin
            rdata <= int_B_3_q1;
        end
        else if (int_B_4_read) begin
            rdata <= int_B_4_q1;
        end
        else if (int_B_5_read) begin
            rdata <= int_B_5_q1;
        end
        else if (int_B_6_read) begin
            rdata <= int_B_6_q1;
        end
        else if (int_B_7_read) begin
            rdata <= int_B_7_q1;
        end
        else if (int_B_8_read) begin
            rdata <= int_B_8_q1;
        end
        else if (int_B_9_read) begin
            rdata <= int_B_9_q1;
        end
        else if (int_B_10_read) begin
            rdata <= int_B_10_q1;
        end
        else if (int_B_11_read) begin
            rdata <= int_B_11_q1;
        end
        else if (int_B_12_read) begin
            rdata <= int_B_12_q1;
        end
        else if (int_B_13_read) begin
            rdata <= int_B_13_q1;
        end
        else if (int_B_14_read) begin
            rdata <= int_B_14_q1;
        end
        else if (int_B_15_read) begin
            rdata <= int_B_15_q1;
        end
        else if (int_B_16_read) begin
            rdata <= int_B_16_q1;
        end
        else if (int_B_17_read) begin
            rdata <= int_B_17_q1;
        end
        else if (int_B_18_read) begin
            rdata <= int_B_18_q1;
        end
        else if (int_B_19_read) begin
            rdata <= int_B_19_q1;
        end
        else if (int_B_20_read) begin
            rdata <= int_B_20_q1;
        end
        else if (int_B_21_read) begin
            rdata <= int_B_21_q1;
        end
        else if (int_B_22_read) begin
            rdata <= int_B_22_q1;
        end
        else if (int_B_23_read) begin
            rdata <= int_B_23_q1;
        end
        else if (int_B_24_read) begin
            rdata <= int_B_24_q1;
        end
        else if (int_B_25_read) begin
            rdata <= int_B_25_q1;
        end
        else if (int_B_26_read) begin
            rdata <= int_B_26_q1;
        end
        else if (int_B_27_read) begin
            rdata <= int_B_27_q1;
        end
        else if (int_B_28_read) begin
            rdata <= int_B_28_q1;
        end
        else if (int_B_29_read) begin
            rdata <= int_B_29_q1;
        end
        else if (int_B_30_read) begin
            rdata <= int_B_30_q1;
        end
        else if (int_B_31_read) begin
            rdata <= int_B_31_q1;
        end
        else if (int_B_32_read) begin
            rdata <= int_B_32_q1;
        end
        else if (int_B_33_read) begin
            rdata <= int_B_33_q1;
        end
        else if (int_B_34_read) begin
            rdata <= int_B_34_q1;
        end
        else if (int_B_35_read) begin
            rdata <= int_B_35_q1;
        end
        else if (int_B_36_read) begin
            rdata <= int_B_36_q1;
        end
        else if (int_B_37_read) begin
            rdata <= int_B_37_q1;
        end
        else if (int_B_38_read) begin
            rdata <= int_B_38_q1;
        end
        else if (int_B_39_read) begin
            rdata <= int_B_39_q1;
        end
        else if (int_B_40_read) begin
            rdata <= int_B_40_q1;
        end
        else if (int_B_41_read) begin
            rdata <= int_B_41_q1;
        end
        else if (int_B_42_read) begin
            rdata <= int_B_42_q1;
        end
        else if (int_B_43_read) begin
            rdata <= int_B_43_q1;
        end
        else if (int_B_44_read) begin
            rdata <= int_B_44_q1;
        end
        else if (int_B_45_read) begin
            rdata <= int_B_45_q1;
        end
        else if (int_B_46_read) begin
            rdata <= int_B_46_q1;
        end
        else if (int_B_47_read) begin
            rdata <= int_B_47_q1;
        end
        else if (int_B_48_read) begin
            rdata <= int_B_48_q1;
        end
        else if (int_B_49_read) begin
            rdata <= int_B_49_q1;
        end
        else if (int_B_50_read) begin
            rdata <= int_B_50_q1;
        end
        else if (int_B_51_read) begin
            rdata <= int_B_51_q1;
        end
        else if (int_B_52_read) begin
            rdata <= int_B_52_q1;
        end
        else if (int_B_53_read) begin
            rdata <= int_B_53_q1;
        end
        else if (int_B_54_read) begin
            rdata <= int_B_54_q1;
        end
        else if (int_B_55_read) begin
            rdata <= int_B_55_q1;
        end
        else if (int_B_56_read) begin
            rdata <= int_B_56_q1;
        end
        else if (int_B_57_read) begin
            rdata <= int_B_57_q1;
        end
        else if (int_B_58_read) begin
            rdata <= int_B_58_q1;
        end
        else if (int_B_59_read) begin
            rdata <= int_B_59_q1;
        end
        else if (int_B_60_read) begin
            rdata <= int_B_60_q1;
        end
        else if (int_B_61_read) begin
            rdata <= int_B_61_q1;
        end
        else if (int_B_62_read) begin
            rdata <= int_B_62_q1;
        end
        else if (int_B_63_read) begin
            rdata <= int_B_63_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_gie & (|int_isr);
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_C
always @(posedge ACLK) begin
    if (ARESET)
        int_C <= 0;
    else if (ACLK_EN) begin
        if (C_ap_vld)
            int_C <= C;
    end
end

// int_C_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_C_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (C_ap_vld)
            int_C_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_C_CTRL)
            int_C_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------
// A_0
assign int_A_0_address0  = A_0_address0 >> 2;
assign int_A_0_ce0       = A_0_ce0;
assign A_0_q0            = int_A_0_q0 >> (int_A_0_shift0 * 8);
assign int_A_0_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_0_ce1       = ar_hs | (int_A_0_write & WVALID);
assign int_A_0_we1       = int_A_0_write & w_hs;
assign int_A_0_be1       = int_A_0_we1 ? WSTRB : 'b0;
assign int_A_0_d1        = WDATA;
// A_1
assign int_A_1_address0  = A_1_address0 >> 2;
assign int_A_1_ce0       = A_1_ce0;
assign A_1_q0            = int_A_1_q0 >> (int_A_1_shift0 * 8);
assign int_A_1_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_1_ce1       = ar_hs | (int_A_1_write & WVALID);
assign int_A_1_we1       = int_A_1_write & w_hs;
assign int_A_1_be1       = int_A_1_we1 ? WSTRB : 'b0;
assign int_A_1_d1        = WDATA;
// A_2
assign int_A_2_address0  = A_2_address0 >> 2;
assign int_A_2_ce0       = A_2_ce0;
assign A_2_q0            = int_A_2_q0 >> (int_A_2_shift0 * 8);
assign int_A_2_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_2_ce1       = ar_hs | (int_A_2_write & WVALID);
assign int_A_2_we1       = int_A_2_write & w_hs;
assign int_A_2_be1       = int_A_2_we1 ? WSTRB : 'b0;
assign int_A_2_d1        = WDATA;
// A_3
assign int_A_3_address0  = A_3_address0 >> 2;
assign int_A_3_ce0       = A_3_ce0;
assign A_3_q0            = int_A_3_q0 >> (int_A_3_shift0 * 8);
assign int_A_3_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_3_ce1       = ar_hs | (int_A_3_write & WVALID);
assign int_A_3_we1       = int_A_3_write & w_hs;
assign int_A_3_be1       = int_A_3_we1 ? WSTRB : 'b0;
assign int_A_3_d1        = WDATA;
// A_4
assign int_A_4_address0  = A_4_address0 >> 2;
assign int_A_4_ce0       = A_4_ce0;
assign A_4_q0            = int_A_4_q0 >> (int_A_4_shift0 * 8);
assign int_A_4_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_4_ce1       = ar_hs | (int_A_4_write & WVALID);
assign int_A_4_we1       = int_A_4_write & w_hs;
assign int_A_4_be1       = int_A_4_we1 ? WSTRB : 'b0;
assign int_A_4_d1        = WDATA;
// A_5
assign int_A_5_address0  = A_5_address0 >> 2;
assign int_A_5_ce0       = A_5_ce0;
assign A_5_q0            = int_A_5_q0 >> (int_A_5_shift0 * 8);
assign int_A_5_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_5_ce1       = ar_hs | (int_A_5_write & WVALID);
assign int_A_5_we1       = int_A_5_write & w_hs;
assign int_A_5_be1       = int_A_5_we1 ? WSTRB : 'b0;
assign int_A_5_d1        = WDATA;
// A_6
assign int_A_6_address0  = A_6_address0 >> 2;
assign int_A_6_ce0       = A_6_ce0;
assign A_6_q0            = int_A_6_q0 >> (int_A_6_shift0 * 8);
assign int_A_6_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_6_ce1       = ar_hs | (int_A_6_write & WVALID);
assign int_A_6_we1       = int_A_6_write & w_hs;
assign int_A_6_be1       = int_A_6_we1 ? WSTRB : 'b0;
assign int_A_6_d1        = WDATA;
// A_7
assign int_A_7_address0  = A_7_address0 >> 2;
assign int_A_7_ce0       = A_7_ce0;
assign A_7_q0            = int_A_7_q0 >> (int_A_7_shift0 * 8);
assign int_A_7_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_7_ce1       = ar_hs | (int_A_7_write & WVALID);
assign int_A_7_we1       = int_A_7_write & w_hs;
assign int_A_7_be1       = int_A_7_we1 ? WSTRB : 'b0;
assign int_A_7_d1        = WDATA;
// A_8
assign int_A_8_address0  = A_8_address0 >> 2;
assign int_A_8_ce0       = A_8_ce0;
assign A_8_q0            = int_A_8_q0 >> (int_A_8_shift0 * 8);
assign int_A_8_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_8_ce1       = ar_hs | (int_A_8_write & WVALID);
assign int_A_8_we1       = int_A_8_write & w_hs;
assign int_A_8_be1       = int_A_8_we1 ? WSTRB : 'b0;
assign int_A_8_d1        = WDATA;
// A_9
assign int_A_9_address0  = A_9_address0 >> 2;
assign int_A_9_ce0       = A_9_ce0;
assign A_9_q0            = int_A_9_q0 >> (int_A_9_shift0 * 8);
assign int_A_9_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_9_ce1       = ar_hs | (int_A_9_write & WVALID);
assign int_A_9_we1       = int_A_9_write & w_hs;
assign int_A_9_be1       = int_A_9_we1 ? WSTRB : 'b0;
assign int_A_9_d1        = WDATA;
// A_10
assign int_A_10_address0 = A_10_address0 >> 2;
assign int_A_10_ce0      = A_10_ce0;
assign A_10_q0           = int_A_10_q0 >> (int_A_10_shift0 * 8);
assign int_A_10_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_10_ce1      = ar_hs | (int_A_10_write & WVALID);
assign int_A_10_we1      = int_A_10_write & w_hs;
assign int_A_10_be1      = int_A_10_we1 ? WSTRB : 'b0;
assign int_A_10_d1       = WDATA;
// A_11
assign int_A_11_address0 = A_11_address0 >> 2;
assign int_A_11_ce0      = A_11_ce0;
assign A_11_q0           = int_A_11_q0 >> (int_A_11_shift0 * 8);
assign int_A_11_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_11_ce1      = ar_hs | (int_A_11_write & WVALID);
assign int_A_11_we1      = int_A_11_write & w_hs;
assign int_A_11_be1      = int_A_11_we1 ? WSTRB : 'b0;
assign int_A_11_d1       = WDATA;
// A_12
assign int_A_12_address0 = A_12_address0 >> 2;
assign int_A_12_ce0      = A_12_ce0;
assign A_12_q0           = int_A_12_q0 >> (int_A_12_shift0 * 8);
assign int_A_12_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_12_ce1      = ar_hs | (int_A_12_write & WVALID);
assign int_A_12_we1      = int_A_12_write & w_hs;
assign int_A_12_be1      = int_A_12_we1 ? WSTRB : 'b0;
assign int_A_12_d1       = WDATA;
// A_13
assign int_A_13_address0 = A_13_address0 >> 2;
assign int_A_13_ce0      = A_13_ce0;
assign A_13_q0           = int_A_13_q0 >> (int_A_13_shift0 * 8);
assign int_A_13_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_13_ce1      = ar_hs | (int_A_13_write & WVALID);
assign int_A_13_we1      = int_A_13_write & w_hs;
assign int_A_13_be1      = int_A_13_we1 ? WSTRB : 'b0;
assign int_A_13_d1       = WDATA;
// A_14
assign int_A_14_address0 = A_14_address0 >> 2;
assign int_A_14_ce0      = A_14_ce0;
assign A_14_q0           = int_A_14_q0 >> (int_A_14_shift0 * 8);
assign int_A_14_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_14_ce1      = ar_hs | (int_A_14_write & WVALID);
assign int_A_14_we1      = int_A_14_write & w_hs;
assign int_A_14_be1      = int_A_14_we1 ? WSTRB : 'b0;
assign int_A_14_d1       = WDATA;
// A_15
assign int_A_15_address0 = A_15_address0 >> 2;
assign int_A_15_ce0      = A_15_ce0;
assign A_15_q0           = int_A_15_q0 >> (int_A_15_shift0 * 8);
assign int_A_15_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_15_ce1      = ar_hs | (int_A_15_write & WVALID);
assign int_A_15_we1      = int_A_15_write & w_hs;
assign int_A_15_be1      = int_A_15_we1 ? WSTRB : 'b0;
assign int_A_15_d1       = WDATA;
// A_16
assign int_A_16_address0 = A_16_address0 >> 2;
assign int_A_16_ce0      = A_16_ce0;
assign A_16_q0           = int_A_16_q0 >> (int_A_16_shift0 * 8);
assign int_A_16_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_16_ce1      = ar_hs | (int_A_16_write & WVALID);
assign int_A_16_we1      = int_A_16_write & w_hs;
assign int_A_16_be1      = int_A_16_we1 ? WSTRB : 'b0;
assign int_A_16_d1       = WDATA;
// A_17
assign int_A_17_address0 = A_17_address0 >> 2;
assign int_A_17_ce0      = A_17_ce0;
assign A_17_q0           = int_A_17_q0 >> (int_A_17_shift0 * 8);
assign int_A_17_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_17_ce1      = ar_hs | (int_A_17_write & WVALID);
assign int_A_17_we1      = int_A_17_write & w_hs;
assign int_A_17_be1      = int_A_17_we1 ? WSTRB : 'b0;
assign int_A_17_d1       = WDATA;
// A_18
assign int_A_18_address0 = A_18_address0 >> 2;
assign int_A_18_ce0      = A_18_ce0;
assign A_18_q0           = int_A_18_q0 >> (int_A_18_shift0 * 8);
assign int_A_18_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_18_ce1      = ar_hs | (int_A_18_write & WVALID);
assign int_A_18_we1      = int_A_18_write & w_hs;
assign int_A_18_be1      = int_A_18_we1 ? WSTRB : 'b0;
assign int_A_18_d1       = WDATA;
// A_19
assign int_A_19_address0 = A_19_address0 >> 2;
assign int_A_19_ce0      = A_19_ce0;
assign A_19_q0           = int_A_19_q0 >> (int_A_19_shift0 * 8);
assign int_A_19_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_19_ce1      = ar_hs | (int_A_19_write & WVALID);
assign int_A_19_we1      = int_A_19_write & w_hs;
assign int_A_19_be1      = int_A_19_we1 ? WSTRB : 'b0;
assign int_A_19_d1       = WDATA;
// A_20
assign int_A_20_address0 = A_20_address0 >> 2;
assign int_A_20_ce0      = A_20_ce0;
assign A_20_q0           = int_A_20_q0 >> (int_A_20_shift0 * 8);
assign int_A_20_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_20_ce1      = ar_hs | (int_A_20_write & WVALID);
assign int_A_20_we1      = int_A_20_write & w_hs;
assign int_A_20_be1      = int_A_20_we1 ? WSTRB : 'b0;
assign int_A_20_d1       = WDATA;
// A_21
assign int_A_21_address0 = A_21_address0 >> 2;
assign int_A_21_ce0      = A_21_ce0;
assign A_21_q0           = int_A_21_q0 >> (int_A_21_shift0 * 8);
assign int_A_21_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_21_ce1      = ar_hs | (int_A_21_write & WVALID);
assign int_A_21_we1      = int_A_21_write & w_hs;
assign int_A_21_be1      = int_A_21_we1 ? WSTRB : 'b0;
assign int_A_21_d1       = WDATA;
// A_22
assign int_A_22_address0 = A_22_address0 >> 2;
assign int_A_22_ce0      = A_22_ce0;
assign A_22_q0           = int_A_22_q0 >> (int_A_22_shift0 * 8);
assign int_A_22_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_22_ce1      = ar_hs | (int_A_22_write & WVALID);
assign int_A_22_we1      = int_A_22_write & w_hs;
assign int_A_22_be1      = int_A_22_we1 ? WSTRB : 'b0;
assign int_A_22_d1       = WDATA;
// A_23
assign int_A_23_address0 = A_23_address0 >> 2;
assign int_A_23_ce0      = A_23_ce0;
assign A_23_q0           = int_A_23_q0 >> (int_A_23_shift0 * 8);
assign int_A_23_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_23_ce1      = ar_hs | (int_A_23_write & WVALID);
assign int_A_23_we1      = int_A_23_write & w_hs;
assign int_A_23_be1      = int_A_23_we1 ? WSTRB : 'b0;
assign int_A_23_d1       = WDATA;
// A_24
assign int_A_24_address0 = A_24_address0 >> 2;
assign int_A_24_ce0      = A_24_ce0;
assign A_24_q0           = int_A_24_q0 >> (int_A_24_shift0 * 8);
assign int_A_24_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_24_ce1      = ar_hs | (int_A_24_write & WVALID);
assign int_A_24_we1      = int_A_24_write & w_hs;
assign int_A_24_be1      = int_A_24_we1 ? WSTRB : 'b0;
assign int_A_24_d1       = WDATA;
// A_25
assign int_A_25_address0 = A_25_address0 >> 2;
assign int_A_25_ce0      = A_25_ce0;
assign A_25_q0           = int_A_25_q0 >> (int_A_25_shift0 * 8);
assign int_A_25_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_25_ce1      = ar_hs | (int_A_25_write & WVALID);
assign int_A_25_we1      = int_A_25_write & w_hs;
assign int_A_25_be1      = int_A_25_we1 ? WSTRB : 'b0;
assign int_A_25_d1       = WDATA;
// A_26
assign int_A_26_address0 = A_26_address0 >> 2;
assign int_A_26_ce0      = A_26_ce0;
assign A_26_q0           = int_A_26_q0 >> (int_A_26_shift0 * 8);
assign int_A_26_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_26_ce1      = ar_hs | (int_A_26_write & WVALID);
assign int_A_26_we1      = int_A_26_write & w_hs;
assign int_A_26_be1      = int_A_26_we1 ? WSTRB : 'b0;
assign int_A_26_d1       = WDATA;
// A_27
assign int_A_27_address0 = A_27_address0 >> 2;
assign int_A_27_ce0      = A_27_ce0;
assign A_27_q0           = int_A_27_q0 >> (int_A_27_shift0 * 8);
assign int_A_27_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_27_ce1      = ar_hs | (int_A_27_write & WVALID);
assign int_A_27_we1      = int_A_27_write & w_hs;
assign int_A_27_be1      = int_A_27_we1 ? WSTRB : 'b0;
assign int_A_27_d1       = WDATA;
// A_28
assign int_A_28_address0 = A_28_address0 >> 2;
assign int_A_28_ce0      = A_28_ce0;
assign A_28_q0           = int_A_28_q0 >> (int_A_28_shift0 * 8);
assign int_A_28_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_28_ce1      = ar_hs | (int_A_28_write & WVALID);
assign int_A_28_we1      = int_A_28_write & w_hs;
assign int_A_28_be1      = int_A_28_we1 ? WSTRB : 'b0;
assign int_A_28_d1       = WDATA;
// A_29
assign int_A_29_address0 = A_29_address0 >> 2;
assign int_A_29_ce0      = A_29_ce0;
assign A_29_q0           = int_A_29_q0 >> (int_A_29_shift0 * 8);
assign int_A_29_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_29_ce1      = ar_hs | (int_A_29_write & WVALID);
assign int_A_29_we1      = int_A_29_write & w_hs;
assign int_A_29_be1      = int_A_29_we1 ? WSTRB : 'b0;
assign int_A_29_d1       = WDATA;
// A_30
assign int_A_30_address0 = A_30_address0 >> 2;
assign int_A_30_ce0      = A_30_ce0;
assign A_30_q0           = int_A_30_q0 >> (int_A_30_shift0 * 8);
assign int_A_30_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_30_ce1      = ar_hs | (int_A_30_write & WVALID);
assign int_A_30_we1      = int_A_30_write & w_hs;
assign int_A_30_be1      = int_A_30_we1 ? WSTRB : 'b0;
assign int_A_30_d1       = WDATA;
// A_31
assign int_A_31_address0 = A_31_address0 >> 2;
assign int_A_31_ce0      = A_31_ce0;
assign A_31_q0           = int_A_31_q0 >> (int_A_31_shift0 * 8);
assign int_A_31_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_31_ce1      = ar_hs | (int_A_31_write & WVALID);
assign int_A_31_we1      = int_A_31_write & w_hs;
assign int_A_31_be1      = int_A_31_we1 ? WSTRB : 'b0;
assign int_A_31_d1       = WDATA;
// A_32
assign int_A_32_address0 = A_32_address0 >> 2;
assign int_A_32_ce0      = A_32_ce0;
assign A_32_q0           = int_A_32_q0 >> (int_A_32_shift0 * 8);
assign int_A_32_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_32_ce1      = ar_hs | (int_A_32_write & WVALID);
assign int_A_32_we1      = int_A_32_write & w_hs;
assign int_A_32_be1      = int_A_32_we1 ? WSTRB : 'b0;
assign int_A_32_d1       = WDATA;
// A_33
assign int_A_33_address0 = A_33_address0 >> 2;
assign int_A_33_ce0      = A_33_ce0;
assign A_33_q0           = int_A_33_q0 >> (int_A_33_shift0 * 8);
assign int_A_33_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_33_ce1      = ar_hs | (int_A_33_write & WVALID);
assign int_A_33_we1      = int_A_33_write & w_hs;
assign int_A_33_be1      = int_A_33_we1 ? WSTRB : 'b0;
assign int_A_33_d1       = WDATA;
// A_34
assign int_A_34_address0 = A_34_address0 >> 2;
assign int_A_34_ce0      = A_34_ce0;
assign A_34_q0           = int_A_34_q0 >> (int_A_34_shift0 * 8);
assign int_A_34_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_34_ce1      = ar_hs | (int_A_34_write & WVALID);
assign int_A_34_we1      = int_A_34_write & w_hs;
assign int_A_34_be1      = int_A_34_we1 ? WSTRB : 'b0;
assign int_A_34_d1       = WDATA;
// A_35
assign int_A_35_address0 = A_35_address0 >> 2;
assign int_A_35_ce0      = A_35_ce0;
assign A_35_q0           = int_A_35_q0 >> (int_A_35_shift0 * 8);
assign int_A_35_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_35_ce1      = ar_hs | (int_A_35_write & WVALID);
assign int_A_35_we1      = int_A_35_write & w_hs;
assign int_A_35_be1      = int_A_35_we1 ? WSTRB : 'b0;
assign int_A_35_d1       = WDATA;
// A_36
assign int_A_36_address0 = A_36_address0 >> 2;
assign int_A_36_ce0      = A_36_ce0;
assign A_36_q0           = int_A_36_q0 >> (int_A_36_shift0 * 8);
assign int_A_36_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_36_ce1      = ar_hs | (int_A_36_write & WVALID);
assign int_A_36_we1      = int_A_36_write & w_hs;
assign int_A_36_be1      = int_A_36_we1 ? WSTRB : 'b0;
assign int_A_36_d1       = WDATA;
// A_37
assign int_A_37_address0 = A_37_address0 >> 2;
assign int_A_37_ce0      = A_37_ce0;
assign A_37_q0           = int_A_37_q0 >> (int_A_37_shift0 * 8);
assign int_A_37_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_37_ce1      = ar_hs | (int_A_37_write & WVALID);
assign int_A_37_we1      = int_A_37_write & w_hs;
assign int_A_37_be1      = int_A_37_we1 ? WSTRB : 'b0;
assign int_A_37_d1       = WDATA;
// A_38
assign int_A_38_address0 = A_38_address0 >> 2;
assign int_A_38_ce0      = A_38_ce0;
assign A_38_q0           = int_A_38_q0 >> (int_A_38_shift0 * 8);
assign int_A_38_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_38_ce1      = ar_hs | (int_A_38_write & WVALID);
assign int_A_38_we1      = int_A_38_write & w_hs;
assign int_A_38_be1      = int_A_38_we1 ? WSTRB : 'b0;
assign int_A_38_d1       = WDATA;
// A_39
assign int_A_39_address0 = A_39_address0 >> 2;
assign int_A_39_ce0      = A_39_ce0;
assign A_39_q0           = int_A_39_q0 >> (int_A_39_shift0 * 8);
assign int_A_39_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_39_ce1      = ar_hs | (int_A_39_write & WVALID);
assign int_A_39_we1      = int_A_39_write & w_hs;
assign int_A_39_be1      = int_A_39_we1 ? WSTRB : 'b0;
assign int_A_39_d1       = WDATA;
// A_40
assign int_A_40_address0 = A_40_address0 >> 2;
assign int_A_40_ce0      = A_40_ce0;
assign A_40_q0           = int_A_40_q0 >> (int_A_40_shift0 * 8);
assign int_A_40_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_40_ce1      = ar_hs | (int_A_40_write & WVALID);
assign int_A_40_we1      = int_A_40_write & w_hs;
assign int_A_40_be1      = int_A_40_we1 ? WSTRB : 'b0;
assign int_A_40_d1       = WDATA;
// A_41
assign int_A_41_address0 = A_41_address0 >> 2;
assign int_A_41_ce0      = A_41_ce0;
assign A_41_q0           = int_A_41_q0 >> (int_A_41_shift0 * 8);
assign int_A_41_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_41_ce1      = ar_hs | (int_A_41_write & WVALID);
assign int_A_41_we1      = int_A_41_write & w_hs;
assign int_A_41_be1      = int_A_41_we1 ? WSTRB : 'b0;
assign int_A_41_d1       = WDATA;
// A_42
assign int_A_42_address0 = A_42_address0 >> 2;
assign int_A_42_ce0      = A_42_ce0;
assign A_42_q0           = int_A_42_q0 >> (int_A_42_shift0 * 8);
assign int_A_42_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_42_ce1      = ar_hs | (int_A_42_write & WVALID);
assign int_A_42_we1      = int_A_42_write & w_hs;
assign int_A_42_be1      = int_A_42_we1 ? WSTRB : 'b0;
assign int_A_42_d1       = WDATA;
// A_43
assign int_A_43_address0 = A_43_address0 >> 2;
assign int_A_43_ce0      = A_43_ce0;
assign A_43_q0           = int_A_43_q0 >> (int_A_43_shift0 * 8);
assign int_A_43_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_43_ce1      = ar_hs | (int_A_43_write & WVALID);
assign int_A_43_we1      = int_A_43_write & w_hs;
assign int_A_43_be1      = int_A_43_we1 ? WSTRB : 'b0;
assign int_A_43_d1       = WDATA;
// A_44
assign int_A_44_address0 = A_44_address0 >> 2;
assign int_A_44_ce0      = A_44_ce0;
assign A_44_q0           = int_A_44_q0 >> (int_A_44_shift0 * 8);
assign int_A_44_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_44_ce1      = ar_hs | (int_A_44_write & WVALID);
assign int_A_44_we1      = int_A_44_write & w_hs;
assign int_A_44_be1      = int_A_44_we1 ? WSTRB : 'b0;
assign int_A_44_d1       = WDATA;
// A_45
assign int_A_45_address0 = A_45_address0 >> 2;
assign int_A_45_ce0      = A_45_ce0;
assign A_45_q0           = int_A_45_q0 >> (int_A_45_shift0 * 8);
assign int_A_45_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_45_ce1      = ar_hs | (int_A_45_write & WVALID);
assign int_A_45_we1      = int_A_45_write & w_hs;
assign int_A_45_be1      = int_A_45_we1 ? WSTRB : 'b0;
assign int_A_45_d1       = WDATA;
// A_46
assign int_A_46_address0 = A_46_address0 >> 2;
assign int_A_46_ce0      = A_46_ce0;
assign A_46_q0           = int_A_46_q0 >> (int_A_46_shift0 * 8);
assign int_A_46_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_46_ce1      = ar_hs | (int_A_46_write & WVALID);
assign int_A_46_we1      = int_A_46_write & w_hs;
assign int_A_46_be1      = int_A_46_we1 ? WSTRB : 'b0;
assign int_A_46_d1       = WDATA;
// A_47
assign int_A_47_address0 = A_47_address0 >> 2;
assign int_A_47_ce0      = A_47_ce0;
assign A_47_q0           = int_A_47_q0 >> (int_A_47_shift0 * 8);
assign int_A_47_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_47_ce1      = ar_hs | (int_A_47_write & WVALID);
assign int_A_47_we1      = int_A_47_write & w_hs;
assign int_A_47_be1      = int_A_47_we1 ? WSTRB : 'b0;
assign int_A_47_d1       = WDATA;
// A_48
assign int_A_48_address0 = A_48_address0 >> 2;
assign int_A_48_ce0      = A_48_ce0;
assign A_48_q0           = int_A_48_q0 >> (int_A_48_shift0 * 8);
assign int_A_48_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_48_ce1      = ar_hs | (int_A_48_write & WVALID);
assign int_A_48_we1      = int_A_48_write & w_hs;
assign int_A_48_be1      = int_A_48_we1 ? WSTRB : 'b0;
assign int_A_48_d1       = WDATA;
// A_49
assign int_A_49_address0 = A_49_address0 >> 2;
assign int_A_49_ce0      = A_49_ce0;
assign A_49_q0           = int_A_49_q0 >> (int_A_49_shift0 * 8);
assign int_A_49_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_49_ce1      = ar_hs | (int_A_49_write & WVALID);
assign int_A_49_we1      = int_A_49_write & w_hs;
assign int_A_49_be1      = int_A_49_we1 ? WSTRB : 'b0;
assign int_A_49_d1       = WDATA;
// A_50
assign int_A_50_address0 = A_50_address0 >> 2;
assign int_A_50_ce0      = A_50_ce0;
assign A_50_q0           = int_A_50_q0 >> (int_A_50_shift0 * 8);
assign int_A_50_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_50_ce1      = ar_hs | (int_A_50_write & WVALID);
assign int_A_50_we1      = int_A_50_write & w_hs;
assign int_A_50_be1      = int_A_50_we1 ? WSTRB : 'b0;
assign int_A_50_d1       = WDATA;
// A_51
assign int_A_51_address0 = A_51_address0 >> 2;
assign int_A_51_ce0      = A_51_ce0;
assign A_51_q0           = int_A_51_q0 >> (int_A_51_shift0 * 8);
assign int_A_51_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_51_ce1      = ar_hs | (int_A_51_write & WVALID);
assign int_A_51_we1      = int_A_51_write & w_hs;
assign int_A_51_be1      = int_A_51_we1 ? WSTRB : 'b0;
assign int_A_51_d1       = WDATA;
// A_52
assign int_A_52_address0 = A_52_address0 >> 2;
assign int_A_52_ce0      = A_52_ce0;
assign A_52_q0           = int_A_52_q0 >> (int_A_52_shift0 * 8);
assign int_A_52_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_52_ce1      = ar_hs | (int_A_52_write & WVALID);
assign int_A_52_we1      = int_A_52_write & w_hs;
assign int_A_52_be1      = int_A_52_we1 ? WSTRB : 'b0;
assign int_A_52_d1       = WDATA;
// A_53
assign int_A_53_address0 = A_53_address0 >> 2;
assign int_A_53_ce0      = A_53_ce0;
assign A_53_q0           = int_A_53_q0 >> (int_A_53_shift0 * 8);
assign int_A_53_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_53_ce1      = ar_hs | (int_A_53_write & WVALID);
assign int_A_53_we1      = int_A_53_write & w_hs;
assign int_A_53_be1      = int_A_53_we1 ? WSTRB : 'b0;
assign int_A_53_d1       = WDATA;
// A_54
assign int_A_54_address0 = A_54_address0 >> 2;
assign int_A_54_ce0      = A_54_ce0;
assign A_54_q0           = int_A_54_q0 >> (int_A_54_shift0 * 8);
assign int_A_54_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_54_ce1      = ar_hs | (int_A_54_write & WVALID);
assign int_A_54_we1      = int_A_54_write & w_hs;
assign int_A_54_be1      = int_A_54_we1 ? WSTRB : 'b0;
assign int_A_54_d1       = WDATA;
// A_55
assign int_A_55_address0 = A_55_address0 >> 2;
assign int_A_55_ce0      = A_55_ce0;
assign A_55_q0           = int_A_55_q0 >> (int_A_55_shift0 * 8);
assign int_A_55_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_55_ce1      = ar_hs | (int_A_55_write & WVALID);
assign int_A_55_we1      = int_A_55_write & w_hs;
assign int_A_55_be1      = int_A_55_we1 ? WSTRB : 'b0;
assign int_A_55_d1       = WDATA;
// A_56
assign int_A_56_address0 = A_56_address0 >> 2;
assign int_A_56_ce0      = A_56_ce0;
assign A_56_q0           = int_A_56_q0 >> (int_A_56_shift0 * 8);
assign int_A_56_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_56_ce1      = ar_hs | (int_A_56_write & WVALID);
assign int_A_56_we1      = int_A_56_write & w_hs;
assign int_A_56_be1      = int_A_56_we1 ? WSTRB : 'b0;
assign int_A_56_d1       = WDATA;
// A_57
assign int_A_57_address0 = A_57_address0 >> 2;
assign int_A_57_ce0      = A_57_ce0;
assign A_57_q0           = int_A_57_q0 >> (int_A_57_shift0 * 8);
assign int_A_57_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_57_ce1      = ar_hs | (int_A_57_write & WVALID);
assign int_A_57_we1      = int_A_57_write & w_hs;
assign int_A_57_be1      = int_A_57_we1 ? WSTRB : 'b0;
assign int_A_57_d1       = WDATA;
// A_58
assign int_A_58_address0 = A_58_address0 >> 2;
assign int_A_58_ce0      = A_58_ce0;
assign A_58_q0           = int_A_58_q0 >> (int_A_58_shift0 * 8);
assign int_A_58_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_58_ce1      = ar_hs | (int_A_58_write & WVALID);
assign int_A_58_we1      = int_A_58_write & w_hs;
assign int_A_58_be1      = int_A_58_we1 ? WSTRB : 'b0;
assign int_A_58_d1       = WDATA;
// A_59
assign int_A_59_address0 = A_59_address0 >> 2;
assign int_A_59_ce0      = A_59_ce0;
assign A_59_q0           = int_A_59_q0 >> (int_A_59_shift0 * 8);
assign int_A_59_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_59_ce1      = ar_hs | (int_A_59_write & WVALID);
assign int_A_59_we1      = int_A_59_write & w_hs;
assign int_A_59_be1      = int_A_59_we1 ? WSTRB : 'b0;
assign int_A_59_d1       = WDATA;
// A_60
assign int_A_60_address0 = A_60_address0 >> 2;
assign int_A_60_ce0      = A_60_ce0;
assign A_60_q0           = int_A_60_q0 >> (int_A_60_shift0 * 8);
assign int_A_60_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_60_ce1      = ar_hs | (int_A_60_write & WVALID);
assign int_A_60_we1      = int_A_60_write & w_hs;
assign int_A_60_be1      = int_A_60_we1 ? WSTRB : 'b0;
assign int_A_60_d1       = WDATA;
// A_61
assign int_A_61_address0 = A_61_address0 >> 2;
assign int_A_61_ce0      = A_61_ce0;
assign A_61_q0           = int_A_61_q0 >> (int_A_61_shift0 * 8);
assign int_A_61_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_61_ce1      = ar_hs | (int_A_61_write & WVALID);
assign int_A_61_we1      = int_A_61_write & w_hs;
assign int_A_61_be1      = int_A_61_we1 ? WSTRB : 'b0;
assign int_A_61_d1       = WDATA;
// A_62
assign int_A_62_address0 = A_62_address0 >> 2;
assign int_A_62_ce0      = A_62_ce0;
assign A_62_q0           = int_A_62_q0 >> (int_A_62_shift0 * 8);
assign int_A_62_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_62_ce1      = ar_hs | (int_A_62_write & WVALID);
assign int_A_62_we1      = int_A_62_write & w_hs;
assign int_A_62_be1      = int_A_62_we1 ? WSTRB : 'b0;
assign int_A_62_d1       = WDATA;
// A_63
assign int_A_63_address0 = A_63_address0 >> 2;
assign int_A_63_ce0      = A_63_ce0;
assign A_63_q0           = int_A_63_q0 >> (int_A_63_shift0 * 8);
assign int_A_63_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_A_63_ce1      = ar_hs | (int_A_63_write & WVALID);
assign int_A_63_we1      = int_A_63_write & w_hs;
assign int_A_63_be1      = int_A_63_we1 ? WSTRB : 'b0;
assign int_A_63_d1       = WDATA;
// B_0
assign int_B_0_address0  = B_0_address0 >> 2;
assign int_B_0_ce0       = B_0_ce0;
assign B_0_q0            = int_B_0_q0 >> (int_B_0_shift0 * 8);
assign int_B_0_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_0_ce1       = ar_hs | (int_B_0_write & WVALID);
assign int_B_0_we1       = int_B_0_write & w_hs;
assign int_B_0_be1       = int_B_0_we1 ? WSTRB : 'b0;
assign int_B_0_d1        = WDATA;
// B_1
assign int_B_1_address0  = B_1_address0 >> 2;
assign int_B_1_ce0       = B_1_ce0;
assign B_1_q0            = int_B_1_q0 >> (int_B_1_shift0 * 8);
assign int_B_1_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_1_ce1       = ar_hs | (int_B_1_write & WVALID);
assign int_B_1_we1       = int_B_1_write & w_hs;
assign int_B_1_be1       = int_B_1_we1 ? WSTRB : 'b0;
assign int_B_1_d1        = WDATA;
// B_2
assign int_B_2_address0  = B_2_address0 >> 2;
assign int_B_2_ce0       = B_2_ce0;
assign B_2_q0            = int_B_2_q0 >> (int_B_2_shift0 * 8);
assign int_B_2_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_2_ce1       = ar_hs | (int_B_2_write & WVALID);
assign int_B_2_we1       = int_B_2_write & w_hs;
assign int_B_2_be1       = int_B_2_we1 ? WSTRB : 'b0;
assign int_B_2_d1        = WDATA;
// B_3
assign int_B_3_address0  = B_3_address0 >> 2;
assign int_B_3_ce0       = B_3_ce0;
assign B_3_q0            = int_B_3_q0 >> (int_B_3_shift0 * 8);
assign int_B_3_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_3_ce1       = ar_hs | (int_B_3_write & WVALID);
assign int_B_3_we1       = int_B_3_write & w_hs;
assign int_B_3_be1       = int_B_3_we1 ? WSTRB : 'b0;
assign int_B_3_d1        = WDATA;
// B_4
assign int_B_4_address0  = B_4_address0 >> 2;
assign int_B_4_ce0       = B_4_ce0;
assign B_4_q0            = int_B_4_q0 >> (int_B_4_shift0 * 8);
assign int_B_4_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_4_ce1       = ar_hs | (int_B_4_write & WVALID);
assign int_B_4_we1       = int_B_4_write & w_hs;
assign int_B_4_be1       = int_B_4_we1 ? WSTRB : 'b0;
assign int_B_4_d1        = WDATA;
// B_5
assign int_B_5_address0  = B_5_address0 >> 2;
assign int_B_5_ce0       = B_5_ce0;
assign B_5_q0            = int_B_5_q0 >> (int_B_5_shift0 * 8);
assign int_B_5_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_5_ce1       = ar_hs | (int_B_5_write & WVALID);
assign int_B_5_we1       = int_B_5_write & w_hs;
assign int_B_5_be1       = int_B_5_we1 ? WSTRB : 'b0;
assign int_B_5_d1        = WDATA;
// B_6
assign int_B_6_address0  = B_6_address0 >> 2;
assign int_B_6_ce0       = B_6_ce0;
assign B_6_q0            = int_B_6_q0 >> (int_B_6_shift0 * 8);
assign int_B_6_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_6_ce1       = ar_hs | (int_B_6_write & WVALID);
assign int_B_6_we1       = int_B_6_write & w_hs;
assign int_B_6_be1       = int_B_6_we1 ? WSTRB : 'b0;
assign int_B_6_d1        = WDATA;
// B_7
assign int_B_7_address0  = B_7_address0 >> 2;
assign int_B_7_ce0       = B_7_ce0;
assign B_7_q0            = int_B_7_q0 >> (int_B_7_shift0 * 8);
assign int_B_7_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_7_ce1       = ar_hs | (int_B_7_write & WVALID);
assign int_B_7_we1       = int_B_7_write & w_hs;
assign int_B_7_be1       = int_B_7_we1 ? WSTRB : 'b0;
assign int_B_7_d1        = WDATA;
// B_8
assign int_B_8_address0  = B_8_address0 >> 2;
assign int_B_8_ce0       = B_8_ce0;
assign B_8_q0            = int_B_8_q0 >> (int_B_8_shift0 * 8);
assign int_B_8_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_8_ce1       = ar_hs | (int_B_8_write & WVALID);
assign int_B_8_we1       = int_B_8_write & w_hs;
assign int_B_8_be1       = int_B_8_we1 ? WSTRB : 'b0;
assign int_B_8_d1        = WDATA;
// B_9
assign int_B_9_address0  = B_9_address0 >> 2;
assign int_B_9_ce0       = B_9_ce0;
assign B_9_q0            = int_B_9_q0 >> (int_B_9_shift0 * 8);
assign int_B_9_address1  = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_9_ce1       = ar_hs | (int_B_9_write & WVALID);
assign int_B_9_we1       = int_B_9_write & w_hs;
assign int_B_9_be1       = int_B_9_we1 ? WSTRB : 'b0;
assign int_B_9_d1        = WDATA;
// B_10
assign int_B_10_address0 = B_10_address0 >> 2;
assign int_B_10_ce0      = B_10_ce0;
assign B_10_q0           = int_B_10_q0 >> (int_B_10_shift0 * 8);
assign int_B_10_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_10_ce1      = ar_hs | (int_B_10_write & WVALID);
assign int_B_10_we1      = int_B_10_write & w_hs;
assign int_B_10_be1      = int_B_10_we1 ? WSTRB : 'b0;
assign int_B_10_d1       = WDATA;
// B_11
assign int_B_11_address0 = B_11_address0 >> 2;
assign int_B_11_ce0      = B_11_ce0;
assign B_11_q0           = int_B_11_q0 >> (int_B_11_shift0 * 8);
assign int_B_11_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_11_ce1      = ar_hs | (int_B_11_write & WVALID);
assign int_B_11_we1      = int_B_11_write & w_hs;
assign int_B_11_be1      = int_B_11_we1 ? WSTRB : 'b0;
assign int_B_11_d1       = WDATA;
// B_12
assign int_B_12_address0 = B_12_address0 >> 2;
assign int_B_12_ce0      = B_12_ce0;
assign B_12_q0           = int_B_12_q0 >> (int_B_12_shift0 * 8);
assign int_B_12_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_12_ce1      = ar_hs | (int_B_12_write & WVALID);
assign int_B_12_we1      = int_B_12_write & w_hs;
assign int_B_12_be1      = int_B_12_we1 ? WSTRB : 'b0;
assign int_B_12_d1       = WDATA;
// B_13
assign int_B_13_address0 = B_13_address0 >> 2;
assign int_B_13_ce0      = B_13_ce0;
assign B_13_q0           = int_B_13_q0 >> (int_B_13_shift0 * 8);
assign int_B_13_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_13_ce1      = ar_hs | (int_B_13_write & WVALID);
assign int_B_13_we1      = int_B_13_write & w_hs;
assign int_B_13_be1      = int_B_13_we1 ? WSTRB : 'b0;
assign int_B_13_d1       = WDATA;
// B_14
assign int_B_14_address0 = B_14_address0 >> 2;
assign int_B_14_ce0      = B_14_ce0;
assign B_14_q0           = int_B_14_q0 >> (int_B_14_shift0 * 8);
assign int_B_14_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_14_ce1      = ar_hs | (int_B_14_write & WVALID);
assign int_B_14_we1      = int_B_14_write & w_hs;
assign int_B_14_be1      = int_B_14_we1 ? WSTRB : 'b0;
assign int_B_14_d1       = WDATA;
// B_15
assign int_B_15_address0 = B_15_address0 >> 2;
assign int_B_15_ce0      = B_15_ce0;
assign B_15_q0           = int_B_15_q0 >> (int_B_15_shift0 * 8);
assign int_B_15_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_15_ce1      = ar_hs | (int_B_15_write & WVALID);
assign int_B_15_we1      = int_B_15_write & w_hs;
assign int_B_15_be1      = int_B_15_we1 ? WSTRB : 'b0;
assign int_B_15_d1       = WDATA;
// B_16
assign int_B_16_address0 = B_16_address0 >> 2;
assign int_B_16_ce0      = B_16_ce0;
assign B_16_q0           = int_B_16_q0 >> (int_B_16_shift0 * 8);
assign int_B_16_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_16_ce1      = ar_hs | (int_B_16_write & WVALID);
assign int_B_16_we1      = int_B_16_write & w_hs;
assign int_B_16_be1      = int_B_16_we1 ? WSTRB : 'b0;
assign int_B_16_d1       = WDATA;
// B_17
assign int_B_17_address0 = B_17_address0 >> 2;
assign int_B_17_ce0      = B_17_ce0;
assign B_17_q0           = int_B_17_q0 >> (int_B_17_shift0 * 8);
assign int_B_17_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_17_ce1      = ar_hs | (int_B_17_write & WVALID);
assign int_B_17_we1      = int_B_17_write & w_hs;
assign int_B_17_be1      = int_B_17_we1 ? WSTRB : 'b0;
assign int_B_17_d1       = WDATA;
// B_18
assign int_B_18_address0 = B_18_address0 >> 2;
assign int_B_18_ce0      = B_18_ce0;
assign B_18_q0           = int_B_18_q0 >> (int_B_18_shift0 * 8);
assign int_B_18_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_18_ce1      = ar_hs | (int_B_18_write & WVALID);
assign int_B_18_we1      = int_B_18_write & w_hs;
assign int_B_18_be1      = int_B_18_we1 ? WSTRB : 'b0;
assign int_B_18_d1       = WDATA;
// B_19
assign int_B_19_address0 = B_19_address0 >> 2;
assign int_B_19_ce0      = B_19_ce0;
assign B_19_q0           = int_B_19_q0 >> (int_B_19_shift0 * 8);
assign int_B_19_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_19_ce1      = ar_hs | (int_B_19_write & WVALID);
assign int_B_19_we1      = int_B_19_write & w_hs;
assign int_B_19_be1      = int_B_19_we1 ? WSTRB : 'b0;
assign int_B_19_d1       = WDATA;
// B_20
assign int_B_20_address0 = B_20_address0 >> 2;
assign int_B_20_ce0      = B_20_ce0;
assign B_20_q0           = int_B_20_q0 >> (int_B_20_shift0 * 8);
assign int_B_20_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_20_ce1      = ar_hs | (int_B_20_write & WVALID);
assign int_B_20_we1      = int_B_20_write & w_hs;
assign int_B_20_be1      = int_B_20_we1 ? WSTRB : 'b0;
assign int_B_20_d1       = WDATA;
// B_21
assign int_B_21_address0 = B_21_address0 >> 2;
assign int_B_21_ce0      = B_21_ce0;
assign B_21_q0           = int_B_21_q0 >> (int_B_21_shift0 * 8);
assign int_B_21_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_21_ce1      = ar_hs | (int_B_21_write & WVALID);
assign int_B_21_we1      = int_B_21_write & w_hs;
assign int_B_21_be1      = int_B_21_we1 ? WSTRB : 'b0;
assign int_B_21_d1       = WDATA;
// B_22
assign int_B_22_address0 = B_22_address0 >> 2;
assign int_B_22_ce0      = B_22_ce0;
assign B_22_q0           = int_B_22_q0 >> (int_B_22_shift0 * 8);
assign int_B_22_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_22_ce1      = ar_hs | (int_B_22_write & WVALID);
assign int_B_22_we1      = int_B_22_write & w_hs;
assign int_B_22_be1      = int_B_22_we1 ? WSTRB : 'b0;
assign int_B_22_d1       = WDATA;
// B_23
assign int_B_23_address0 = B_23_address0 >> 2;
assign int_B_23_ce0      = B_23_ce0;
assign B_23_q0           = int_B_23_q0 >> (int_B_23_shift0 * 8);
assign int_B_23_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_23_ce1      = ar_hs | (int_B_23_write & WVALID);
assign int_B_23_we1      = int_B_23_write & w_hs;
assign int_B_23_be1      = int_B_23_we1 ? WSTRB : 'b0;
assign int_B_23_d1       = WDATA;
// B_24
assign int_B_24_address0 = B_24_address0 >> 2;
assign int_B_24_ce0      = B_24_ce0;
assign B_24_q0           = int_B_24_q0 >> (int_B_24_shift0 * 8);
assign int_B_24_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_24_ce1      = ar_hs | (int_B_24_write & WVALID);
assign int_B_24_we1      = int_B_24_write & w_hs;
assign int_B_24_be1      = int_B_24_we1 ? WSTRB : 'b0;
assign int_B_24_d1       = WDATA;
// B_25
assign int_B_25_address0 = B_25_address0 >> 2;
assign int_B_25_ce0      = B_25_ce0;
assign B_25_q0           = int_B_25_q0 >> (int_B_25_shift0 * 8);
assign int_B_25_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_25_ce1      = ar_hs | (int_B_25_write & WVALID);
assign int_B_25_we1      = int_B_25_write & w_hs;
assign int_B_25_be1      = int_B_25_we1 ? WSTRB : 'b0;
assign int_B_25_d1       = WDATA;
// B_26
assign int_B_26_address0 = B_26_address0 >> 2;
assign int_B_26_ce0      = B_26_ce0;
assign B_26_q0           = int_B_26_q0 >> (int_B_26_shift0 * 8);
assign int_B_26_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_26_ce1      = ar_hs | (int_B_26_write & WVALID);
assign int_B_26_we1      = int_B_26_write & w_hs;
assign int_B_26_be1      = int_B_26_we1 ? WSTRB : 'b0;
assign int_B_26_d1       = WDATA;
// B_27
assign int_B_27_address0 = B_27_address0 >> 2;
assign int_B_27_ce0      = B_27_ce0;
assign B_27_q0           = int_B_27_q0 >> (int_B_27_shift0 * 8);
assign int_B_27_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_27_ce1      = ar_hs | (int_B_27_write & WVALID);
assign int_B_27_we1      = int_B_27_write & w_hs;
assign int_B_27_be1      = int_B_27_we1 ? WSTRB : 'b0;
assign int_B_27_d1       = WDATA;
// B_28
assign int_B_28_address0 = B_28_address0 >> 2;
assign int_B_28_ce0      = B_28_ce0;
assign B_28_q0           = int_B_28_q0 >> (int_B_28_shift0 * 8);
assign int_B_28_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_28_ce1      = ar_hs | (int_B_28_write & WVALID);
assign int_B_28_we1      = int_B_28_write & w_hs;
assign int_B_28_be1      = int_B_28_we1 ? WSTRB : 'b0;
assign int_B_28_d1       = WDATA;
// B_29
assign int_B_29_address0 = B_29_address0 >> 2;
assign int_B_29_ce0      = B_29_ce0;
assign B_29_q0           = int_B_29_q0 >> (int_B_29_shift0 * 8);
assign int_B_29_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_29_ce1      = ar_hs | (int_B_29_write & WVALID);
assign int_B_29_we1      = int_B_29_write & w_hs;
assign int_B_29_be1      = int_B_29_we1 ? WSTRB : 'b0;
assign int_B_29_d1       = WDATA;
// B_30
assign int_B_30_address0 = B_30_address0 >> 2;
assign int_B_30_ce0      = B_30_ce0;
assign B_30_q0           = int_B_30_q0 >> (int_B_30_shift0 * 8);
assign int_B_30_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_30_ce1      = ar_hs | (int_B_30_write & WVALID);
assign int_B_30_we1      = int_B_30_write & w_hs;
assign int_B_30_be1      = int_B_30_we1 ? WSTRB : 'b0;
assign int_B_30_d1       = WDATA;
// B_31
assign int_B_31_address0 = B_31_address0 >> 2;
assign int_B_31_ce0      = B_31_ce0;
assign B_31_q0           = int_B_31_q0 >> (int_B_31_shift0 * 8);
assign int_B_31_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_31_ce1      = ar_hs | (int_B_31_write & WVALID);
assign int_B_31_we1      = int_B_31_write & w_hs;
assign int_B_31_be1      = int_B_31_we1 ? WSTRB : 'b0;
assign int_B_31_d1       = WDATA;
// B_32
assign int_B_32_address0 = B_32_address0 >> 2;
assign int_B_32_ce0      = B_32_ce0;
assign B_32_q0           = int_B_32_q0 >> (int_B_32_shift0 * 8);
assign int_B_32_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_32_ce1      = ar_hs | (int_B_32_write & WVALID);
assign int_B_32_we1      = int_B_32_write & w_hs;
assign int_B_32_be1      = int_B_32_we1 ? WSTRB : 'b0;
assign int_B_32_d1       = WDATA;
// B_33
assign int_B_33_address0 = B_33_address0 >> 2;
assign int_B_33_ce0      = B_33_ce0;
assign B_33_q0           = int_B_33_q0 >> (int_B_33_shift0 * 8);
assign int_B_33_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_33_ce1      = ar_hs | (int_B_33_write & WVALID);
assign int_B_33_we1      = int_B_33_write & w_hs;
assign int_B_33_be1      = int_B_33_we1 ? WSTRB : 'b0;
assign int_B_33_d1       = WDATA;
// B_34
assign int_B_34_address0 = B_34_address0 >> 2;
assign int_B_34_ce0      = B_34_ce0;
assign B_34_q0           = int_B_34_q0 >> (int_B_34_shift0 * 8);
assign int_B_34_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_34_ce1      = ar_hs | (int_B_34_write & WVALID);
assign int_B_34_we1      = int_B_34_write & w_hs;
assign int_B_34_be1      = int_B_34_we1 ? WSTRB : 'b0;
assign int_B_34_d1       = WDATA;
// B_35
assign int_B_35_address0 = B_35_address0 >> 2;
assign int_B_35_ce0      = B_35_ce0;
assign B_35_q0           = int_B_35_q0 >> (int_B_35_shift0 * 8);
assign int_B_35_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_35_ce1      = ar_hs | (int_B_35_write & WVALID);
assign int_B_35_we1      = int_B_35_write & w_hs;
assign int_B_35_be1      = int_B_35_we1 ? WSTRB : 'b0;
assign int_B_35_d1       = WDATA;
// B_36
assign int_B_36_address0 = B_36_address0 >> 2;
assign int_B_36_ce0      = B_36_ce0;
assign B_36_q0           = int_B_36_q0 >> (int_B_36_shift0 * 8);
assign int_B_36_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_36_ce1      = ar_hs | (int_B_36_write & WVALID);
assign int_B_36_we1      = int_B_36_write & w_hs;
assign int_B_36_be1      = int_B_36_we1 ? WSTRB : 'b0;
assign int_B_36_d1       = WDATA;
// B_37
assign int_B_37_address0 = B_37_address0 >> 2;
assign int_B_37_ce0      = B_37_ce0;
assign B_37_q0           = int_B_37_q0 >> (int_B_37_shift0 * 8);
assign int_B_37_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_37_ce1      = ar_hs | (int_B_37_write & WVALID);
assign int_B_37_we1      = int_B_37_write & w_hs;
assign int_B_37_be1      = int_B_37_we1 ? WSTRB : 'b0;
assign int_B_37_d1       = WDATA;
// B_38
assign int_B_38_address0 = B_38_address0 >> 2;
assign int_B_38_ce0      = B_38_ce0;
assign B_38_q0           = int_B_38_q0 >> (int_B_38_shift0 * 8);
assign int_B_38_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_38_ce1      = ar_hs | (int_B_38_write & WVALID);
assign int_B_38_we1      = int_B_38_write & w_hs;
assign int_B_38_be1      = int_B_38_we1 ? WSTRB : 'b0;
assign int_B_38_d1       = WDATA;
// B_39
assign int_B_39_address0 = B_39_address0 >> 2;
assign int_B_39_ce0      = B_39_ce0;
assign B_39_q0           = int_B_39_q0 >> (int_B_39_shift0 * 8);
assign int_B_39_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_39_ce1      = ar_hs | (int_B_39_write & WVALID);
assign int_B_39_we1      = int_B_39_write & w_hs;
assign int_B_39_be1      = int_B_39_we1 ? WSTRB : 'b0;
assign int_B_39_d1       = WDATA;
// B_40
assign int_B_40_address0 = B_40_address0 >> 2;
assign int_B_40_ce0      = B_40_ce0;
assign B_40_q0           = int_B_40_q0 >> (int_B_40_shift0 * 8);
assign int_B_40_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_40_ce1      = ar_hs | (int_B_40_write & WVALID);
assign int_B_40_we1      = int_B_40_write & w_hs;
assign int_B_40_be1      = int_B_40_we1 ? WSTRB : 'b0;
assign int_B_40_d1       = WDATA;
// B_41
assign int_B_41_address0 = B_41_address0 >> 2;
assign int_B_41_ce0      = B_41_ce0;
assign B_41_q0           = int_B_41_q0 >> (int_B_41_shift0 * 8);
assign int_B_41_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_41_ce1      = ar_hs | (int_B_41_write & WVALID);
assign int_B_41_we1      = int_B_41_write & w_hs;
assign int_B_41_be1      = int_B_41_we1 ? WSTRB : 'b0;
assign int_B_41_d1       = WDATA;
// B_42
assign int_B_42_address0 = B_42_address0 >> 2;
assign int_B_42_ce0      = B_42_ce0;
assign B_42_q0           = int_B_42_q0 >> (int_B_42_shift0 * 8);
assign int_B_42_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_42_ce1      = ar_hs | (int_B_42_write & WVALID);
assign int_B_42_we1      = int_B_42_write & w_hs;
assign int_B_42_be1      = int_B_42_we1 ? WSTRB : 'b0;
assign int_B_42_d1       = WDATA;
// B_43
assign int_B_43_address0 = B_43_address0 >> 2;
assign int_B_43_ce0      = B_43_ce0;
assign B_43_q0           = int_B_43_q0 >> (int_B_43_shift0 * 8);
assign int_B_43_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_43_ce1      = ar_hs | (int_B_43_write & WVALID);
assign int_B_43_we1      = int_B_43_write & w_hs;
assign int_B_43_be1      = int_B_43_we1 ? WSTRB : 'b0;
assign int_B_43_d1       = WDATA;
// B_44
assign int_B_44_address0 = B_44_address0 >> 2;
assign int_B_44_ce0      = B_44_ce0;
assign B_44_q0           = int_B_44_q0 >> (int_B_44_shift0 * 8);
assign int_B_44_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_44_ce1      = ar_hs | (int_B_44_write & WVALID);
assign int_B_44_we1      = int_B_44_write & w_hs;
assign int_B_44_be1      = int_B_44_we1 ? WSTRB : 'b0;
assign int_B_44_d1       = WDATA;
// B_45
assign int_B_45_address0 = B_45_address0 >> 2;
assign int_B_45_ce0      = B_45_ce0;
assign B_45_q0           = int_B_45_q0 >> (int_B_45_shift0 * 8);
assign int_B_45_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_45_ce1      = ar_hs | (int_B_45_write & WVALID);
assign int_B_45_we1      = int_B_45_write & w_hs;
assign int_B_45_be1      = int_B_45_we1 ? WSTRB : 'b0;
assign int_B_45_d1       = WDATA;
// B_46
assign int_B_46_address0 = B_46_address0 >> 2;
assign int_B_46_ce0      = B_46_ce0;
assign B_46_q0           = int_B_46_q0 >> (int_B_46_shift0 * 8);
assign int_B_46_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_46_ce1      = ar_hs | (int_B_46_write & WVALID);
assign int_B_46_we1      = int_B_46_write & w_hs;
assign int_B_46_be1      = int_B_46_we1 ? WSTRB : 'b0;
assign int_B_46_d1       = WDATA;
// B_47
assign int_B_47_address0 = B_47_address0 >> 2;
assign int_B_47_ce0      = B_47_ce0;
assign B_47_q0           = int_B_47_q0 >> (int_B_47_shift0 * 8);
assign int_B_47_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_47_ce1      = ar_hs | (int_B_47_write & WVALID);
assign int_B_47_we1      = int_B_47_write & w_hs;
assign int_B_47_be1      = int_B_47_we1 ? WSTRB : 'b0;
assign int_B_47_d1       = WDATA;
// B_48
assign int_B_48_address0 = B_48_address0 >> 2;
assign int_B_48_ce0      = B_48_ce0;
assign B_48_q0           = int_B_48_q0 >> (int_B_48_shift0 * 8);
assign int_B_48_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_48_ce1      = ar_hs | (int_B_48_write & WVALID);
assign int_B_48_we1      = int_B_48_write & w_hs;
assign int_B_48_be1      = int_B_48_we1 ? WSTRB : 'b0;
assign int_B_48_d1       = WDATA;
// B_49
assign int_B_49_address0 = B_49_address0 >> 2;
assign int_B_49_ce0      = B_49_ce0;
assign B_49_q0           = int_B_49_q0 >> (int_B_49_shift0 * 8);
assign int_B_49_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_49_ce1      = ar_hs | (int_B_49_write & WVALID);
assign int_B_49_we1      = int_B_49_write & w_hs;
assign int_B_49_be1      = int_B_49_we1 ? WSTRB : 'b0;
assign int_B_49_d1       = WDATA;
// B_50
assign int_B_50_address0 = B_50_address0 >> 2;
assign int_B_50_ce0      = B_50_ce0;
assign B_50_q0           = int_B_50_q0 >> (int_B_50_shift0 * 8);
assign int_B_50_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_50_ce1      = ar_hs | (int_B_50_write & WVALID);
assign int_B_50_we1      = int_B_50_write & w_hs;
assign int_B_50_be1      = int_B_50_we1 ? WSTRB : 'b0;
assign int_B_50_d1       = WDATA;
// B_51
assign int_B_51_address0 = B_51_address0 >> 2;
assign int_B_51_ce0      = B_51_ce0;
assign B_51_q0           = int_B_51_q0 >> (int_B_51_shift0 * 8);
assign int_B_51_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_51_ce1      = ar_hs | (int_B_51_write & WVALID);
assign int_B_51_we1      = int_B_51_write & w_hs;
assign int_B_51_be1      = int_B_51_we1 ? WSTRB : 'b0;
assign int_B_51_d1       = WDATA;
// B_52
assign int_B_52_address0 = B_52_address0 >> 2;
assign int_B_52_ce0      = B_52_ce0;
assign B_52_q0           = int_B_52_q0 >> (int_B_52_shift0 * 8);
assign int_B_52_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_52_ce1      = ar_hs | (int_B_52_write & WVALID);
assign int_B_52_we1      = int_B_52_write & w_hs;
assign int_B_52_be1      = int_B_52_we1 ? WSTRB : 'b0;
assign int_B_52_d1       = WDATA;
// B_53
assign int_B_53_address0 = B_53_address0 >> 2;
assign int_B_53_ce0      = B_53_ce0;
assign B_53_q0           = int_B_53_q0 >> (int_B_53_shift0 * 8);
assign int_B_53_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_53_ce1      = ar_hs | (int_B_53_write & WVALID);
assign int_B_53_we1      = int_B_53_write & w_hs;
assign int_B_53_be1      = int_B_53_we1 ? WSTRB : 'b0;
assign int_B_53_d1       = WDATA;
// B_54
assign int_B_54_address0 = B_54_address0 >> 2;
assign int_B_54_ce0      = B_54_ce0;
assign B_54_q0           = int_B_54_q0 >> (int_B_54_shift0 * 8);
assign int_B_54_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_54_ce1      = ar_hs | (int_B_54_write & WVALID);
assign int_B_54_we1      = int_B_54_write & w_hs;
assign int_B_54_be1      = int_B_54_we1 ? WSTRB : 'b0;
assign int_B_54_d1       = WDATA;
// B_55
assign int_B_55_address0 = B_55_address0 >> 2;
assign int_B_55_ce0      = B_55_ce0;
assign B_55_q0           = int_B_55_q0 >> (int_B_55_shift0 * 8);
assign int_B_55_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_55_ce1      = ar_hs | (int_B_55_write & WVALID);
assign int_B_55_we1      = int_B_55_write & w_hs;
assign int_B_55_be1      = int_B_55_we1 ? WSTRB : 'b0;
assign int_B_55_d1       = WDATA;
// B_56
assign int_B_56_address0 = B_56_address0 >> 2;
assign int_B_56_ce0      = B_56_ce0;
assign B_56_q0           = int_B_56_q0 >> (int_B_56_shift0 * 8);
assign int_B_56_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_56_ce1      = ar_hs | (int_B_56_write & WVALID);
assign int_B_56_we1      = int_B_56_write & w_hs;
assign int_B_56_be1      = int_B_56_we1 ? WSTRB : 'b0;
assign int_B_56_d1       = WDATA;
// B_57
assign int_B_57_address0 = B_57_address0 >> 2;
assign int_B_57_ce0      = B_57_ce0;
assign B_57_q0           = int_B_57_q0 >> (int_B_57_shift0 * 8);
assign int_B_57_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_57_ce1      = ar_hs | (int_B_57_write & WVALID);
assign int_B_57_we1      = int_B_57_write & w_hs;
assign int_B_57_be1      = int_B_57_we1 ? WSTRB : 'b0;
assign int_B_57_d1       = WDATA;
// B_58
assign int_B_58_address0 = B_58_address0 >> 2;
assign int_B_58_ce0      = B_58_ce0;
assign B_58_q0           = int_B_58_q0 >> (int_B_58_shift0 * 8);
assign int_B_58_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_58_ce1      = ar_hs | (int_B_58_write & WVALID);
assign int_B_58_we1      = int_B_58_write & w_hs;
assign int_B_58_be1      = int_B_58_we1 ? WSTRB : 'b0;
assign int_B_58_d1       = WDATA;
// B_59
assign int_B_59_address0 = B_59_address0 >> 2;
assign int_B_59_ce0      = B_59_ce0;
assign B_59_q0           = int_B_59_q0 >> (int_B_59_shift0 * 8);
assign int_B_59_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_59_ce1      = ar_hs | (int_B_59_write & WVALID);
assign int_B_59_we1      = int_B_59_write & w_hs;
assign int_B_59_be1      = int_B_59_we1 ? WSTRB : 'b0;
assign int_B_59_d1       = WDATA;
// B_60
assign int_B_60_address0 = B_60_address0 >> 2;
assign int_B_60_ce0      = B_60_ce0;
assign B_60_q0           = int_B_60_q0 >> (int_B_60_shift0 * 8);
assign int_B_60_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_60_ce1      = ar_hs | (int_B_60_write & WVALID);
assign int_B_60_we1      = int_B_60_write & w_hs;
assign int_B_60_be1      = int_B_60_we1 ? WSTRB : 'b0;
assign int_B_60_d1       = WDATA;
// B_61
assign int_B_61_address0 = B_61_address0 >> 2;
assign int_B_61_ce0      = B_61_ce0;
assign B_61_q0           = int_B_61_q0 >> (int_B_61_shift0 * 8);
assign int_B_61_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_61_ce1      = ar_hs | (int_B_61_write & WVALID);
assign int_B_61_we1      = int_B_61_write & w_hs;
assign int_B_61_be1      = int_B_61_we1 ? WSTRB : 'b0;
assign int_B_61_d1       = WDATA;
// B_62
assign int_B_62_address0 = B_62_address0 >> 2;
assign int_B_62_ce0      = B_62_ce0;
assign B_62_q0           = int_B_62_q0 >> (int_B_62_shift0 * 8);
assign int_B_62_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_62_ce1      = ar_hs | (int_B_62_write & WVALID);
assign int_B_62_we1      = int_B_62_write & w_hs;
assign int_B_62_be1      = int_B_62_we1 ? WSTRB : 'b0;
assign int_B_62_d1       = WDATA;
// B_63
assign int_B_63_address0 = B_63_address0 >> 2;
assign int_B_63_ce0      = B_63_ce0;
assign B_63_q0           = int_B_63_q0 >> (int_B_63_shift0 * 8);
assign int_B_63_address1 = ar_hs? raddr[2:2] : waddr[2:2];
assign int_B_63_ce1      = ar_hs | (int_B_63_write & WVALID);
assign int_B_63_we1      = int_B_63_write & w_hs;
assign int_B_63_be1      = int_B_63_we1 ? WSTRB : 'b0;
assign int_B_63_d1       = WDATA;
// int_A_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_0_BASE && raddr <= ADDR_A_0_HIGH)
            int_A_0_read <= 1'b1;
        else
            int_A_0_read <= 1'b0;
    end
end

// int_A_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_0_HIGH)
            int_A_0_write <= 1'b1;
        else if (w_hs)
            int_A_0_write <= 1'b0;
    end
end

// int_A_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_0_ce0)
            int_A_0_shift0 <= A_0_address0[1:0];
    end
end

// int_A_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_1_BASE && raddr <= ADDR_A_1_HIGH)
            int_A_1_read <= 1'b1;
        else
            int_A_1_read <= 1'b0;
    end
end

// int_A_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_1_HIGH)
            int_A_1_write <= 1'b1;
        else if (w_hs)
            int_A_1_write <= 1'b0;
    end
end

// int_A_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_1_ce0)
            int_A_1_shift0 <= A_1_address0[1:0];
    end
end

// int_A_2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_2_BASE && raddr <= ADDR_A_2_HIGH)
            int_A_2_read <= 1'b1;
        else
            int_A_2_read <= 1'b0;
    end
end

// int_A_2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_2_HIGH)
            int_A_2_write <= 1'b1;
        else if (w_hs)
            int_A_2_write <= 1'b0;
    end
end

// int_A_2_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_2_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_2_ce0)
            int_A_2_shift0 <= A_2_address0[1:0];
    end
end

// int_A_3_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_3_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_3_BASE && raddr <= ADDR_A_3_HIGH)
            int_A_3_read <= 1'b1;
        else
            int_A_3_read <= 1'b0;
    end
end

// int_A_3_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_3_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_3_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_3_HIGH)
            int_A_3_write <= 1'b1;
        else if (w_hs)
            int_A_3_write <= 1'b0;
    end
end

// int_A_3_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_3_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_3_ce0)
            int_A_3_shift0 <= A_3_address0[1:0];
    end
end

// int_A_4_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_4_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_4_BASE && raddr <= ADDR_A_4_HIGH)
            int_A_4_read <= 1'b1;
        else
            int_A_4_read <= 1'b0;
    end
end

// int_A_4_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_4_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_4_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_4_HIGH)
            int_A_4_write <= 1'b1;
        else if (w_hs)
            int_A_4_write <= 1'b0;
    end
end

// int_A_4_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_4_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_4_ce0)
            int_A_4_shift0 <= A_4_address0[1:0];
    end
end

// int_A_5_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_5_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_5_BASE && raddr <= ADDR_A_5_HIGH)
            int_A_5_read <= 1'b1;
        else
            int_A_5_read <= 1'b0;
    end
end

// int_A_5_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_5_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_5_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_5_HIGH)
            int_A_5_write <= 1'b1;
        else if (w_hs)
            int_A_5_write <= 1'b0;
    end
end

// int_A_5_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_5_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_5_ce0)
            int_A_5_shift0 <= A_5_address0[1:0];
    end
end

// int_A_6_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_6_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_6_BASE && raddr <= ADDR_A_6_HIGH)
            int_A_6_read <= 1'b1;
        else
            int_A_6_read <= 1'b0;
    end
end

// int_A_6_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_6_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_6_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_6_HIGH)
            int_A_6_write <= 1'b1;
        else if (w_hs)
            int_A_6_write <= 1'b0;
    end
end

// int_A_6_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_6_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_6_ce0)
            int_A_6_shift0 <= A_6_address0[1:0];
    end
end

// int_A_7_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_7_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_7_BASE && raddr <= ADDR_A_7_HIGH)
            int_A_7_read <= 1'b1;
        else
            int_A_7_read <= 1'b0;
    end
end

// int_A_7_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_7_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_7_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_7_HIGH)
            int_A_7_write <= 1'b1;
        else if (w_hs)
            int_A_7_write <= 1'b0;
    end
end

// int_A_7_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_7_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_7_ce0)
            int_A_7_shift0 <= A_7_address0[1:0];
    end
end

// int_A_8_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_8_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_8_BASE && raddr <= ADDR_A_8_HIGH)
            int_A_8_read <= 1'b1;
        else
            int_A_8_read <= 1'b0;
    end
end

// int_A_8_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_8_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_8_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_8_HIGH)
            int_A_8_write <= 1'b1;
        else if (w_hs)
            int_A_8_write <= 1'b0;
    end
end

// int_A_8_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_8_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_8_ce0)
            int_A_8_shift0 <= A_8_address0[1:0];
    end
end

// int_A_9_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_9_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_9_BASE && raddr <= ADDR_A_9_HIGH)
            int_A_9_read <= 1'b1;
        else
            int_A_9_read <= 1'b0;
    end
end

// int_A_9_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_9_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_9_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_9_HIGH)
            int_A_9_write <= 1'b1;
        else if (w_hs)
            int_A_9_write <= 1'b0;
    end
end

// int_A_9_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_9_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_9_ce0)
            int_A_9_shift0 <= A_9_address0[1:0];
    end
end

// int_A_10_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_10_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_10_BASE && raddr <= ADDR_A_10_HIGH)
            int_A_10_read <= 1'b1;
        else
            int_A_10_read <= 1'b0;
    end
end

// int_A_10_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_10_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_10_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_10_HIGH)
            int_A_10_write <= 1'b1;
        else if (w_hs)
            int_A_10_write <= 1'b0;
    end
end

// int_A_10_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_10_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_10_ce0)
            int_A_10_shift0 <= A_10_address0[1:0];
    end
end

// int_A_11_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_11_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_11_BASE && raddr <= ADDR_A_11_HIGH)
            int_A_11_read <= 1'b1;
        else
            int_A_11_read <= 1'b0;
    end
end

// int_A_11_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_11_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_11_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_11_HIGH)
            int_A_11_write <= 1'b1;
        else if (w_hs)
            int_A_11_write <= 1'b0;
    end
end

// int_A_11_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_11_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_11_ce0)
            int_A_11_shift0 <= A_11_address0[1:0];
    end
end

// int_A_12_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_12_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_12_BASE && raddr <= ADDR_A_12_HIGH)
            int_A_12_read <= 1'b1;
        else
            int_A_12_read <= 1'b0;
    end
end

// int_A_12_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_12_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_12_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_12_HIGH)
            int_A_12_write <= 1'b1;
        else if (w_hs)
            int_A_12_write <= 1'b0;
    end
end

// int_A_12_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_12_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_12_ce0)
            int_A_12_shift0 <= A_12_address0[1:0];
    end
end

// int_A_13_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_13_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_13_BASE && raddr <= ADDR_A_13_HIGH)
            int_A_13_read <= 1'b1;
        else
            int_A_13_read <= 1'b0;
    end
end

// int_A_13_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_13_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_13_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_13_HIGH)
            int_A_13_write <= 1'b1;
        else if (w_hs)
            int_A_13_write <= 1'b0;
    end
end

// int_A_13_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_13_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_13_ce0)
            int_A_13_shift0 <= A_13_address0[1:0];
    end
end

// int_A_14_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_14_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_14_BASE && raddr <= ADDR_A_14_HIGH)
            int_A_14_read <= 1'b1;
        else
            int_A_14_read <= 1'b0;
    end
end

// int_A_14_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_14_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_14_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_14_HIGH)
            int_A_14_write <= 1'b1;
        else if (w_hs)
            int_A_14_write <= 1'b0;
    end
end

// int_A_14_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_14_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_14_ce0)
            int_A_14_shift0 <= A_14_address0[1:0];
    end
end

// int_A_15_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_15_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_15_BASE && raddr <= ADDR_A_15_HIGH)
            int_A_15_read <= 1'b1;
        else
            int_A_15_read <= 1'b0;
    end
end

// int_A_15_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_15_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_15_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_15_HIGH)
            int_A_15_write <= 1'b1;
        else if (w_hs)
            int_A_15_write <= 1'b0;
    end
end

// int_A_15_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_15_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_15_ce0)
            int_A_15_shift0 <= A_15_address0[1:0];
    end
end

// int_A_16_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_16_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_16_BASE && raddr <= ADDR_A_16_HIGH)
            int_A_16_read <= 1'b1;
        else
            int_A_16_read <= 1'b0;
    end
end

// int_A_16_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_16_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_16_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_16_HIGH)
            int_A_16_write <= 1'b1;
        else if (w_hs)
            int_A_16_write <= 1'b0;
    end
end

// int_A_16_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_16_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_16_ce0)
            int_A_16_shift0 <= A_16_address0[1:0];
    end
end

// int_A_17_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_17_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_17_BASE && raddr <= ADDR_A_17_HIGH)
            int_A_17_read <= 1'b1;
        else
            int_A_17_read <= 1'b0;
    end
end

// int_A_17_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_17_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_17_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_17_HIGH)
            int_A_17_write <= 1'b1;
        else if (w_hs)
            int_A_17_write <= 1'b0;
    end
end

// int_A_17_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_17_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_17_ce0)
            int_A_17_shift0 <= A_17_address0[1:0];
    end
end

// int_A_18_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_18_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_18_BASE && raddr <= ADDR_A_18_HIGH)
            int_A_18_read <= 1'b1;
        else
            int_A_18_read <= 1'b0;
    end
end

// int_A_18_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_18_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_18_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_18_HIGH)
            int_A_18_write <= 1'b1;
        else if (w_hs)
            int_A_18_write <= 1'b0;
    end
end

// int_A_18_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_18_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_18_ce0)
            int_A_18_shift0 <= A_18_address0[1:0];
    end
end

// int_A_19_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_19_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_19_BASE && raddr <= ADDR_A_19_HIGH)
            int_A_19_read <= 1'b1;
        else
            int_A_19_read <= 1'b0;
    end
end

// int_A_19_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_19_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_19_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_19_HIGH)
            int_A_19_write <= 1'b1;
        else if (w_hs)
            int_A_19_write <= 1'b0;
    end
end

// int_A_19_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_19_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_19_ce0)
            int_A_19_shift0 <= A_19_address0[1:0];
    end
end

// int_A_20_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_20_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_20_BASE && raddr <= ADDR_A_20_HIGH)
            int_A_20_read <= 1'b1;
        else
            int_A_20_read <= 1'b0;
    end
end

// int_A_20_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_20_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_20_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_20_HIGH)
            int_A_20_write <= 1'b1;
        else if (w_hs)
            int_A_20_write <= 1'b0;
    end
end

// int_A_20_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_20_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_20_ce0)
            int_A_20_shift0 <= A_20_address0[1:0];
    end
end

// int_A_21_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_21_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_21_BASE && raddr <= ADDR_A_21_HIGH)
            int_A_21_read <= 1'b1;
        else
            int_A_21_read <= 1'b0;
    end
end

// int_A_21_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_21_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_21_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_21_HIGH)
            int_A_21_write <= 1'b1;
        else if (w_hs)
            int_A_21_write <= 1'b0;
    end
end

// int_A_21_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_21_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_21_ce0)
            int_A_21_shift0 <= A_21_address0[1:0];
    end
end

// int_A_22_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_22_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_22_BASE && raddr <= ADDR_A_22_HIGH)
            int_A_22_read <= 1'b1;
        else
            int_A_22_read <= 1'b0;
    end
end

// int_A_22_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_22_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_22_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_22_HIGH)
            int_A_22_write <= 1'b1;
        else if (w_hs)
            int_A_22_write <= 1'b0;
    end
end

// int_A_22_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_22_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_22_ce0)
            int_A_22_shift0 <= A_22_address0[1:0];
    end
end

// int_A_23_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_23_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_23_BASE && raddr <= ADDR_A_23_HIGH)
            int_A_23_read <= 1'b1;
        else
            int_A_23_read <= 1'b0;
    end
end

// int_A_23_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_23_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_23_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_23_HIGH)
            int_A_23_write <= 1'b1;
        else if (w_hs)
            int_A_23_write <= 1'b0;
    end
end

// int_A_23_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_23_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_23_ce0)
            int_A_23_shift0 <= A_23_address0[1:0];
    end
end

// int_A_24_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_24_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_24_BASE && raddr <= ADDR_A_24_HIGH)
            int_A_24_read <= 1'b1;
        else
            int_A_24_read <= 1'b0;
    end
end

// int_A_24_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_24_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_24_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_24_HIGH)
            int_A_24_write <= 1'b1;
        else if (w_hs)
            int_A_24_write <= 1'b0;
    end
end

// int_A_24_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_24_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_24_ce0)
            int_A_24_shift0 <= A_24_address0[1:0];
    end
end

// int_A_25_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_25_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_25_BASE && raddr <= ADDR_A_25_HIGH)
            int_A_25_read <= 1'b1;
        else
            int_A_25_read <= 1'b0;
    end
end

// int_A_25_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_25_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_25_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_25_HIGH)
            int_A_25_write <= 1'b1;
        else if (w_hs)
            int_A_25_write <= 1'b0;
    end
end

// int_A_25_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_25_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_25_ce0)
            int_A_25_shift0 <= A_25_address0[1:0];
    end
end

// int_A_26_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_26_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_26_BASE && raddr <= ADDR_A_26_HIGH)
            int_A_26_read <= 1'b1;
        else
            int_A_26_read <= 1'b0;
    end
end

// int_A_26_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_26_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_26_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_26_HIGH)
            int_A_26_write <= 1'b1;
        else if (w_hs)
            int_A_26_write <= 1'b0;
    end
end

// int_A_26_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_26_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_26_ce0)
            int_A_26_shift0 <= A_26_address0[1:0];
    end
end

// int_A_27_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_27_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_27_BASE && raddr <= ADDR_A_27_HIGH)
            int_A_27_read <= 1'b1;
        else
            int_A_27_read <= 1'b0;
    end
end

// int_A_27_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_27_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_27_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_27_HIGH)
            int_A_27_write <= 1'b1;
        else if (w_hs)
            int_A_27_write <= 1'b0;
    end
end

// int_A_27_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_27_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_27_ce0)
            int_A_27_shift0 <= A_27_address0[1:0];
    end
end

// int_A_28_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_28_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_28_BASE && raddr <= ADDR_A_28_HIGH)
            int_A_28_read <= 1'b1;
        else
            int_A_28_read <= 1'b0;
    end
end

// int_A_28_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_28_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_28_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_28_HIGH)
            int_A_28_write <= 1'b1;
        else if (w_hs)
            int_A_28_write <= 1'b0;
    end
end

// int_A_28_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_28_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_28_ce0)
            int_A_28_shift0 <= A_28_address0[1:0];
    end
end

// int_A_29_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_29_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_29_BASE && raddr <= ADDR_A_29_HIGH)
            int_A_29_read <= 1'b1;
        else
            int_A_29_read <= 1'b0;
    end
end

// int_A_29_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_29_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_29_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_29_HIGH)
            int_A_29_write <= 1'b1;
        else if (w_hs)
            int_A_29_write <= 1'b0;
    end
end

// int_A_29_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_29_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_29_ce0)
            int_A_29_shift0 <= A_29_address0[1:0];
    end
end

// int_A_30_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_30_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_30_BASE && raddr <= ADDR_A_30_HIGH)
            int_A_30_read <= 1'b1;
        else
            int_A_30_read <= 1'b0;
    end
end

// int_A_30_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_30_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_30_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_30_HIGH)
            int_A_30_write <= 1'b1;
        else if (w_hs)
            int_A_30_write <= 1'b0;
    end
end

// int_A_30_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_30_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_30_ce0)
            int_A_30_shift0 <= A_30_address0[1:0];
    end
end

// int_A_31_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_31_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_31_BASE && raddr <= ADDR_A_31_HIGH)
            int_A_31_read <= 1'b1;
        else
            int_A_31_read <= 1'b0;
    end
end

// int_A_31_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_31_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_31_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_31_HIGH)
            int_A_31_write <= 1'b1;
        else if (w_hs)
            int_A_31_write <= 1'b0;
    end
end

// int_A_31_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_31_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_31_ce0)
            int_A_31_shift0 <= A_31_address0[1:0];
    end
end

// int_A_32_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_32_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_32_BASE && raddr <= ADDR_A_32_HIGH)
            int_A_32_read <= 1'b1;
        else
            int_A_32_read <= 1'b0;
    end
end

// int_A_32_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_32_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_32_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_32_HIGH)
            int_A_32_write <= 1'b1;
        else if (w_hs)
            int_A_32_write <= 1'b0;
    end
end

// int_A_32_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_32_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_32_ce0)
            int_A_32_shift0 <= A_32_address0[1:0];
    end
end

// int_A_33_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_33_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_33_BASE && raddr <= ADDR_A_33_HIGH)
            int_A_33_read <= 1'b1;
        else
            int_A_33_read <= 1'b0;
    end
end

// int_A_33_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_33_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_33_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_33_HIGH)
            int_A_33_write <= 1'b1;
        else if (w_hs)
            int_A_33_write <= 1'b0;
    end
end

// int_A_33_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_33_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_33_ce0)
            int_A_33_shift0 <= A_33_address0[1:0];
    end
end

// int_A_34_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_34_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_34_BASE && raddr <= ADDR_A_34_HIGH)
            int_A_34_read <= 1'b1;
        else
            int_A_34_read <= 1'b0;
    end
end

// int_A_34_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_34_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_34_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_34_HIGH)
            int_A_34_write <= 1'b1;
        else if (w_hs)
            int_A_34_write <= 1'b0;
    end
end

// int_A_34_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_34_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_34_ce0)
            int_A_34_shift0 <= A_34_address0[1:0];
    end
end

// int_A_35_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_35_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_35_BASE && raddr <= ADDR_A_35_HIGH)
            int_A_35_read <= 1'b1;
        else
            int_A_35_read <= 1'b0;
    end
end

// int_A_35_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_35_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_35_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_35_HIGH)
            int_A_35_write <= 1'b1;
        else if (w_hs)
            int_A_35_write <= 1'b0;
    end
end

// int_A_35_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_35_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_35_ce0)
            int_A_35_shift0 <= A_35_address0[1:0];
    end
end

// int_A_36_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_36_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_36_BASE && raddr <= ADDR_A_36_HIGH)
            int_A_36_read <= 1'b1;
        else
            int_A_36_read <= 1'b0;
    end
end

// int_A_36_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_36_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_36_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_36_HIGH)
            int_A_36_write <= 1'b1;
        else if (w_hs)
            int_A_36_write <= 1'b0;
    end
end

// int_A_36_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_36_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_36_ce0)
            int_A_36_shift0 <= A_36_address0[1:0];
    end
end

// int_A_37_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_37_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_37_BASE && raddr <= ADDR_A_37_HIGH)
            int_A_37_read <= 1'b1;
        else
            int_A_37_read <= 1'b0;
    end
end

// int_A_37_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_37_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_37_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_37_HIGH)
            int_A_37_write <= 1'b1;
        else if (w_hs)
            int_A_37_write <= 1'b0;
    end
end

// int_A_37_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_37_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_37_ce0)
            int_A_37_shift0 <= A_37_address0[1:0];
    end
end

// int_A_38_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_38_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_38_BASE && raddr <= ADDR_A_38_HIGH)
            int_A_38_read <= 1'b1;
        else
            int_A_38_read <= 1'b0;
    end
end

// int_A_38_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_38_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_38_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_38_HIGH)
            int_A_38_write <= 1'b1;
        else if (w_hs)
            int_A_38_write <= 1'b0;
    end
end

// int_A_38_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_38_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_38_ce0)
            int_A_38_shift0 <= A_38_address0[1:0];
    end
end

// int_A_39_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_39_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_39_BASE && raddr <= ADDR_A_39_HIGH)
            int_A_39_read <= 1'b1;
        else
            int_A_39_read <= 1'b0;
    end
end

// int_A_39_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_39_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_39_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_39_HIGH)
            int_A_39_write <= 1'b1;
        else if (w_hs)
            int_A_39_write <= 1'b0;
    end
end

// int_A_39_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_39_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_39_ce0)
            int_A_39_shift0 <= A_39_address0[1:0];
    end
end

// int_A_40_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_40_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_40_BASE && raddr <= ADDR_A_40_HIGH)
            int_A_40_read <= 1'b1;
        else
            int_A_40_read <= 1'b0;
    end
end

// int_A_40_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_40_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_40_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_40_HIGH)
            int_A_40_write <= 1'b1;
        else if (w_hs)
            int_A_40_write <= 1'b0;
    end
end

// int_A_40_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_40_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_40_ce0)
            int_A_40_shift0 <= A_40_address0[1:0];
    end
end

// int_A_41_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_41_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_41_BASE && raddr <= ADDR_A_41_HIGH)
            int_A_41_read <= 1'b1;
        else
            int_A_41_read <= 1'b0;
    end
end

// int_A_41_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_41_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_41_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_41_HIGH)
            int_A_41_write <= 1'b1;
        else if (w_hs)
            int_A_41_write <= 1'b0;
    end
end

// int_A_41_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_41_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_41_ce0)
            int_A_41_shift0 <= A_41_address0[1:0];
    end
end

// int_A_42_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_42_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_42_BASE && raddr <= ADDR_A_42_HIGH)
            int_A_42_read <= 1'b1;
        else
            int_A_42_read <= 1'b0;
    end
end

// int_A_42_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_42_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_42_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_42_HIGH)
            int_A_42_write <= 1'b1;
        else if (w_hs)
            int_A_42_write <= 1'b0;
    end
end

// int_A_42_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_42_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_42_ce0)
            int_A_42_shift0 <= A_42_address0[1:0];
    end
end

// int_A_43_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_43_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_43_BASE && raddr <= ADDR_A_43_HIGH)
            int_A_43_read <= 1'b1;
        else
            int_A_43_read <= 1'b0;
    end
end

// int_A_43_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_43_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_43_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_43_HIGH)
            int_A_43_write <= 1'b1;
        else if (w_hs)
            int_A_43_write <= 1'b0;
    end
end

// int_A_43_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_43_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_43_ce0)
            int_A_43_shift0 <= A_43_address0[1:0];
    end
end

// int_A_44_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_44_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_44_BASE && raddr <= ADDR_A_44_HIGH)
            int_A_44_read <= 1'b1;
        else
            int_A_44_read <= 1'b0;
    end
end

// int_A_44_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_44_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_44_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_44_HIGH)
            int_A_44_write <= 1'b1;
        else if (w_hs)
            int_A_44_write <= 1'b0;
    end
end

// int_A_44_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_44_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_44_ce0)
            int_A_44_shift0 <= A_44_address0[1:0];
    end
end

// int_A_45_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_45_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_45_BASE && raddr <= ADDR_A_45_HIGH)
            int_A_45_read <= 1'b1;
        else
            int_A_45_read <= 1'b0;
    end
end

// int_A_45_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_45_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_45_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_45_HIGH)
            int_A_45_write <= 1'b1;
        else if (w_hs)
            int_A_45_write <= 1'b0;
    end
end

// int_A_45_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_45_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_45_ce0)
            int_A_45_shift0 <= A_45_address0[1:0];
    end
end

// int_A_46_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_46_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_46_BASE && raddr <= ADDR_A_46_HIGH)
            int_A_46_read <= 1'b1;
        else
            int_A_46_read <= 1'b0;
    end
end

// int_A_46_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_46_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_46_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_46_HIGH)
            int_A_46_write <= 1'b1;
        else if (w_hs)
            int_A_46_write <= 1'b0;
    end
end

// int_A_46_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_46_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_46_ce0)
            int_A_46_shift0 <= A_46_address0[1:0];
    end
end

// int_A_47_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_47_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_47_BASE && raddr <= ADDR_A_47_HIGH)
            int_A_47_read <= 1'b1;
        else
            int_A_47_read <= 1'b0;
    end
end

// int_A_47_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_47_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_47_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_47_HIGH)
            int_A_47_write <= 1'b1;
        else if (w_hs)
            int_A_47_write <= 1'b0;
    end
end

// int_A_47_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_47_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_47_ce0)
            int_A_47_shift0 <= A_47_address0[1:0];
    end
end

// int_A_48_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_48_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_48_BASE && raddr <= ADDR_A_48_HIGH)
            int_A_48_read <= 1'b1;
        else
            int_A_48_read <= 1'b0;
    end
end

// int_A_48_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_48_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_48_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_48_HIGH)
            int_A_48_write <= 1'b1;
        else if (w_hs)
            int_A_48_write <= 1'b0;
    end
end

// int_A_48_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_48_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_48_ce0)
            int_A_48_shift0 <= A_48_address0[1:0];
    end
end

// int_A_49_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_49_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_49_BASE && raddr <= ADDR_A_49_HIGH)
            int_A_49_read <= 1'b1;
        else
            int_A_49_read <= 1'b0;
    end
end

// int_A_49_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_49_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_49_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_49_HIGH)
            int_A_49_write <= 1'b1;
        else if (w_hs)
            int_A_49_write <= 1'b0;
    end
end

// int_A_49_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_49_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_49_ce0)
            int_A_49_shift0 <= A_49_address0[1:0];
    end
end

// int_A_50_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_50_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_50_BASE && raddr <= ADDR_A_50_HIGH)
            int_A_50_read <= 1'b1;
        else
            int_A_50_read <= 1'b0;
    end
end

// int_A_50_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_50_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_50_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_50_HIGH)
            int_A_50_write <= 1'b1;
        else if (w_hs)
            int_A_50_write <= 1'b0;
    end
end

// int_A_50_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_50_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_50_ce0)
            int_A_50_shift0 <= A_50_address0[1:0];
    end
end

// int_A_51_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_51_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_51_BASE && raddr <= ADDR_A_51_HIGH)
            int_A_51_read <= 1'b1;
        else
            int_A_51_read <= 1'b0;
    end
end

// int_A_51_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_51_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_51_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_51_HIGH)
            int_A_51_write <= 1'b1;
        else if (w_hs)
            int_A_51_write <= 1'b0;
    end
end

// int_A_51_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_51_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_51_ce0)
            int_A_51_shift0 <= A_51_address0[1:0];
    end
end

// int_A_52_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_52_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_52_BASE && raddr <= ADDR_A_52_HIGH)
            int_A_52_read <= 1'b1;
        else
            int_A_52_read <= 1'b0;
    end
end

// int_A_52_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_52_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_52_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_52_HIGH)
            int_A_52_write <= 1'b1;
        else if (w_hs)
            int_A_52_write <= 1'b0;
    end
end

// int_A_52_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_52_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_52_ce0)
            int_A_52_shift0 <= A_52_address0[1:0];
    end
end

// int_A_53_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_53_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_53_BASE && raddr <= ADDR_A_53_HIGH)
            int_A_53_read <= 1'b1;
        else
            int_A_53_read <= 1'b0;
    end
end

// int_A_53_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_53_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_53_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_53_HIGH)
            int_A_53_write <= 1'b1;
        else if (w_hs)
            int_A_53_write <= 1'b0;
    end
end

// int_A_53_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_53_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_53_ce0)
            int_A_53_shift0 <= A_53_address0[1:0];
    end
end

// int_A_54_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_54_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_54_BASE && raddr <= ADDR_A_54_HIGH)
            int_A_54_read <= 1'b1;
        else
            int_A_54_read <= 1'b0;
    end
end

// int_A_54_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_54_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_54_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_54_HIGH)
            int_A_54_write <= 1'b1;
        else if (w_hs)
            int_A_54_write <= 1'b0;
    end
end

// int_A_54_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_54_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_54_ce0)
            int_A_54_shift0 <= A_54_address0[1:0];
    end
end

// int_A_55_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_55_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_55_BASE && raddr <= ADDR_A_55_HIGH)
            int_A_55_read <= 1'b1;
        else
            int_A_55_read <= 1'b0;
    end
end

// int_A_55_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_55_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_55_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_55_HIGH)
            int_A_55_write <= 1'b1;
        else if (w_hs)
            int_A_55_write <= 1'b0;
    end
end

// int_A_55_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_55_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_55_ce0)
            int_A_55_shift0 <= A_55_address0[1:0];
    end
end

// int_A_56_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_56_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_56_BASE && raddr <= ADDR_A_56_HIGH)
            int_A_56_read <= 1'b1;
        else
            int_A_56_read <= 1'b0;
    end
end

// int_A_56_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_56_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_56_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_56_HIGH)
            int_A_56_write <= 1'b1;
        else if (w_hs)
            int_A_56_write <= 1'b0;
    end
end

// int_A_56_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_56_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_56_ce0)
            int_A_56_shift0 <= A_56_address0[1:0];
    end
end

// int_A_57_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_57_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_57_BASE && raddr <= ADDR_A_57_HIGH)
            int_A_57_read <= 1'b1;
        else
            int_A_57_read <= 1'b0;
    end
end

// int_A_57_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_57_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_57_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_57_HIGH)
            int_A_57_write <= 1'b1;
        else if (w_hs)
            int_A_57_write <= 1'b0;
    end
end

// int_A_57_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_57_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_57_ce0)
            int_A_57_shift0 <= A_57_address0[1:0];
    end
end

// int_A_58_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_58_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_58_BASE && raddr <= ADDR_A_58_HIGH)
            int_A_58_read <= 1'b1;
        else
            int_A_58_read <= 1'b0;
    end
end

// int_A_58_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_58_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_58_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_58_HIGH)
            int_A_58_write <= 1'b1;
        else if (w_hs)
            int_A_58_write <= 1'b0;
    end
end

// int_A_58_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_58_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_58_ce0)
            int_A_58_shift0 <= A_58_address0[1:0];
    end
end

// int_A_59_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_59_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_59_BASE && raddr <= ADDR_A_59_HIGH)
            int_A_59_read <= 1'b1;
        else
            int_A_59_read <= 1'b0;
    end
end

// int_A_59_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_59_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_59_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_59_HIGH)
            int_A_59_write <= 1'b1;
        else if (w_hs)
            int_A_59_write <= 1'b0;
    end
end

// int_A_59_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_59_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_59_ce0)
            int_A_59_shift0 <= A_59_address0[1:0];
    end
end

// int_A_60_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_60_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_60_BASE && raddr <= ADDR_A_60_HIGH)
            int_A_60_read <= 1'b1;
        else
            int_A_60_read <= 1'b0;
    end
end

// int_A_60_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_60_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_60_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_60_HIGH)
            int_A_60_write <= 1'b1;
        else if (w_hs)
            int_A_60_write <= 1'b0;
    end
end

// int_A_60_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_60_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_60_ce0)
            int_A_60_shift0 <= A_60_address0[1:0];
    end
end

// int_A_61_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_61_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_61_BASE && raddr <= ADDR_A_61_HIGH)
            int_A_61_read <= 1'b1;
        else
            int_A_61_read <= 1'b0;
    end
end

// int_A_61_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_61_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_61_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_61_HIGH)
            int_A_61_write <= 1'b1;
        else if (w_hs)
            int_A_61_write <= 1'b0;
    end
end

// int_A_61_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_61_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_61_ce0)
            int_A_61_shift0 <= A_61_address0[1:0];
    end
end

// int_A_62_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_62_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_62_BASE && raddr <= ADDR_A_62_HIGH)
            int_A_62_read <= 1'b1;
        else
            int_A_62_read <= 1'b0;
    end
end

// int_A_62_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_62_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_62_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_62_HIGH)
            int_A_62_write <= 1'b1;
        else if (w_hs)
            int_A_62_write <= 1'b0;
    end
end

// int_A_62_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_62_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_62_ce0)
            int_A_62_shift0 <= A_62_address0[1:0];
    end
end

// int_A_63_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_63_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_63_BASE && raddr <= ADDR_A_63_HIGH)
            int_A_63_read <= 1'b1;
        else
            int_A_63_read <= 1'b0;
    end
end

// int_A_63_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_63_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_63_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_63_HIGH)
            int_A_63_write <= 1'b1;
        else if (w_hs)
            int_A_63_write <= 1'b0;
    end
end

// int_A_63_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_63_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_63_ce0)
            int_A_63_shift0 <= A_63_address0[1:0];
    end
end

// int_B_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_0_BASE && raddr <= ADDR_B_0_HIGH)
            int_B_0_read <= 1'b1;
        else
            int_B_0_read <= 1'b0;
    end
end

// int_B_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_0_HIGH)
            int_B_0_write <= 1'b1;
        else if (w_hs)
            int_B_0_write <= 1'b0;
    end
end

// int_B_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_0_ce0)
            int_B_0_shift0 <= B_0_address0[1:0];
    end
end

// int_B_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_1_BASE && raddr <= ADDR_B_1_HIGH)
            int_B_1_read <= 1'b1;
        else
            int_B_1_read <= 1'b0;
    end
end

// int_B_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_1_HIGH)
            int_B_1_write <= 1'b1;
        else if (w_hs)
            int_B_1_write <= 1'b0;
    end
end

// int_B_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_1_ce0)
            int_B_1_shift0 <= B_1_address0[1:0];
    end
end

// int_B_2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_2_BASE && raddr <= ADDR_B_2_HIGH)
            int_B_2_read <= 1'b1;
        else
            int_B_2_read <= 1'b0;
    end
end

// int_B_2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_2_HIGH)
            int_B_2_write <= 1'b1;
        else if (w_hs)
            int_B_2_write <= 1'b0;
    end
end

// int_B_2_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_2_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_2_ce0)
            int_B_2_shift0 <= B_2_address0[1:0];
    end
end

// int_B_3_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_3_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_3_BASE && raddr <= ADDR_B_3_HIGH)
            int_B_3_read <= 1'b1;
        else
            int_B_3_read <= 1'b0;
    end
end

// int_B_3_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_3_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_3_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_3_HIGH)
            int_B_3_write <= 1'b1;
        else if (w_hs)
            int_B_3_write <= 1'b0;
    end
end

// int_B_3_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_3_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_3_ce0)
            int_B_3_shift0 <= B_3_address0[1:0];
    end
end

// int_B_4_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_4_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_4_BASE && raddr <= ADDR_B_4_HIGH)
            int_B_4_read <= 1'b1;
        else
            int_B_4_read <= 1'b0;
    end
end

// int_B_4_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_4_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_4_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_4_HIGH)
            int_B_4_write <= 1'b1;
        else if (w_hs)
            int_B_4_write <= 1'b0;
    end
end

// int_B_4_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_4_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_4_ce0)
            int_B_4_shift0 <= B_4_address0[1:0];
    end
end

// int_B_5_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_5_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_5_BASE && raddr <= ADDR_B_5_HIGH)
            int_B_5_read <= 1'b1;
        else
            int_B_5_read <= 1'b0;
    end
end

// int_B_5_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_5_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_5_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_5_HIGH)
            int_B_5_write <= 1'b1;
        else if (w_hs)
            int_B_5_write <= 1'b0;
    end
end

// int_B_5_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_5_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_5_ce0)
            int_B_5_shift0 <= B_5_address0[1:0];
    end
end

// int_B_6_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_6_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_6_BASE && raddr <= ADDR_B_6_HIGH)
            int_B_6_read <= 1'b1;
        else
            int_B_6_read <= 1'b0;
    end
end

// int_B_6_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_6_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_6_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_6_HIGH)
            int_B_6_write <= 1'b1;
        else if (w_hs)
            int_B_6_write <= 1'b0;
    end
end

// int_B_6_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_6_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_6_ce0)
            int_B_6_shift0 <= B_6_address0[1:0];
    end
end

// int_B_7_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_7_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_7_BASE && raddr <= ADDR_B_7_HIGH)
            int_B_7_read <= 1'b1;
        else
            int_B_7_read <= 1'b0;
    end
end

// int_B_7_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_7_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_7_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_7_HIGH)
            int_B_7_write <= 1'b1;
        else if (w_hs)
            int_B_7_write <= 1'b0;
    end
end

// int_B_7_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_7_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_7_ce0)
            int_B_7_shift0 <= B_7_address0[1:0];
    end
end

// int_B_8_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_8_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_8_BASE && raddr <= ADDR_B_8_HIGH)
            int_B_8_read <= 1'b1;
        else
            int_B_8_read <= 1'b0;
    end
end

// int_B_8_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_8_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_8_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_8_HIGH)
            int_B_8_write <= 1'b1;
        else if (w_hs)
            int_B_8_write <= 1'b0;
    end
end

// int_B_8_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_8_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_8_ce0)
            int_B_8_shift0 <= B_8_address0[1:0];
    end
end

// int_B_9_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_9_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_9_BASE && raddr <= ADDR_B_9_HIGH)
            int_B_9_read <= 1'b1;
        else
            int_B_9_read <= 1'b0;
    end
end

// int_B_9_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_9_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_9_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_9_HIGH)
            int_B_9_write <= 1'b1;
        else if (w_hs)
            int_B_9_write <= 1'b0;
    end
end

// int_B_9_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_9_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_9_ce0)
            int_B_9_shift0 <= B_9_address0[1:0];
    end
end

// int_B_10_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_10_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_10_BASE && raddr <= ADDR_B_10_HIGH)
            int_B_10_read <= 1'b1;
        else
            int_B_10_read <= 1'b0;
    end
end

// int_B_10_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_10_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_10_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_10_HIGH)
            int_B_10_write <= 1'b1;
        else if (w_hs)
            int_B_10_write <= 1'b0;
    end
end

// int_B_10_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_10_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_10_ce0)
            int_B_10_shift0 <= B_10_address0[1:0];
    end
end

// int_B_11_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_11_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_11_BASE && raddr <= ADDR_B_11_HIGH)
            int_B_11_read <= 1'b1;
        else
            int_B_11_read <= 1'b0;
    end
end

// int_B_11_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_11_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_11_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_11_HIGH)
            int_B_11_write <= 1'b1;
        else if (w_hs)
            int_B_11_write <= 1'b0;
    end
end

// int_B_11_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_11_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_11_ce0)
            int_B_11_shift0 <= B_11_address0[1:0];
    end
end

// int_B_12_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_12_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_12_BASE && raddr <= ADDR_B_12_HIGH)
            int_B_12_read <= 1'b1;
        else
            int_B_12_read <= 1'b0;
    end
end

// int_B_12_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_12_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_12_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_12_HIGH)
            int_B_12_write <= 1'b1;
        else if (w_hs)
            int_B_12_write <= 1'b0;
    end
end

// int_B_12_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_12_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_12_ce0)
            int_B_12_shift0 <= B_12_address0[1:0];
    end
end

// int_B_13_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_13_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_13_BASE && raddr <= ADDR_B_13_HIGH)
            int_B_13_read <= 1'b1;
        else
            int_B_13_read <= 1'b0;
    end
end

// int_B_13_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_13_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_13_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_13_HIGH)
            int_B_13_write <= 1'b1;
        else if (w_hs)
            int_B_13_write <= 1'b0;
    end
end

// int_B_13_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_13_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_13_ce0)
            int_B_13_shift0 <= B_13_address0[1:0];
    end
end

// int_B_14_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_14_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_14_BASE && raddr <= ADDR_B_14_HIGH)
            int_B_14_read <= 1'b1;
        else
            int_B_14_read <= 1'b0;
    end
end

// int_B_14_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_14_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_14_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_14_HIGH)
            int_B_14_write <= 1'b1;
        else if (w_hs)
            int_B_14_write <= 1'b0;
    end
end

// int_B_14_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_14_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_14_ce0)
            int_B_14_shift0 <= B_14_address0[1:0];
    end
end

// int_B_15_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_15_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_15_BASE && raddr <= ADDR_B_15_HIGH)
            int_B_15_read <= 1'b1;
        else
            int_B_15_read <= 1'b0;
    end
end

// int_B_15_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_15_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_15_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_15_HIGH)
            int_B_15_write <= 1'b1;
        else if (w_hs)
            int_B_15_write <= 1'b0;
    end
end

// int_B_15_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_15_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_15_ce0)
            int_B_15_shift0 <= B_15_address0[1:0];
    end
end

// int_B_16_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_16_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_16_BASE && raddr <= ADDR_B_16_HIGH)
            int_B_16_read <= 1'b1;
        else
            int_B_16_read <= 1'b0;
    end
end

// int_B_16_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_16_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_16_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_16_HIGH)
            int_B_16_write <= 1'b1;
        else if (w_hs)
            int_B_16_write <= 1'b0;
    end
end

// int_B_16_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_16_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_16_ce0)
            int_B_16_shift0 <= B_16_address0[1:0];
    end
end

// int_B_17_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_17_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_17_BASE && raddr <= ADDR_B_17_HIGH)
            int_B_17_read <= 1'b1;
        else
            int_B_17_read <= 1'b0;
    end
end

// int_B_17_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_17_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_17_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_17_HIGH)
            int_B_17_write <= 1'b1;
        else if (w_hs)
            int_B_17_write <= 1'b0;
    end
end

// int_B_17_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_17_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_17_ce0)
            int_B_17_shift0 <= B_17_address0[1:0];
    end
end

// int_B_18_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_18_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_18_BASE && raddr <= ADDR_B_18_HIGH)
            int_B_18_read <= 1'b1;
        else
            int_B_18_read <= 1'b0;
    end
end

// int_B_18_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_18_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_18_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_18_HIGH)
            int_B_18_write <= 1'b1;
        else if (w_hs)
            int_B_18_write <= 1'b0;
    end
end

// int_B_18_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_18_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_18_ce0)
            int_B_18_shift0 <= B_18_address0[1:0];
    end
end

// int_B_19_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_19_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_19_BASE && raddr <= ADDR_B_19_HIGH)
            int_B_19_read <= 1'b1;
        else
            int_B_19_read <= 1'b0;
    end
end

// int_B_19_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_19_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_19_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_19_HIGH)
            int_B_19_write <= 1'b1;
        else if (w_hs)
            int_B_19_write <= 1'b0;
    end
end

// int_B_19_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_19_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_19_ce0)
            int_B_19_shift0 <= B_19_address0[1:0];
    end
end

// int_B_20_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_20_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_20_BASE && raddr <= ADDR_B_20_HIGH)
            int_B_20_read <= 1'b1;
        else
            int_B_20_read <= 1'b0;
    end
end

// int_B_20_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_20_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_20_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_20_HIGH)
            int_B_20_write <= 1'b1;
        else if (w_hs)
            int_B_20_write <= 1'b0;
    end
end

// int_B_20_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_20_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_20_ce0)
            int_B_20_shift0 <= B_20_address0[1:0];
    end
end

// int_B_21_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_21_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_21_BASE && raddr <= ADDR_B_21_HIGH)
            int_B_21_read <= 1'b1;
        else
            int_B_21_read <= 1'b0;
    end
end

// int_B_21_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_21_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_21_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_21_HIGH)
            int_B_21_write <= 1'b1;
        else if (w_hs)
            int_B_21_write <= 1'b0;
    end
end

// int_B_21_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_21_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_21_ce0)
            int_B_21_shift0 <= B_21_address0[1:0];
    end
end

// int_B_22_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_22_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_22_BASE && raddr <= ADDR_B_22_HIGH)
            int_B_22_read <= 1'b1;
        else
            int_B_22_read <= 1'b0;
    end
end

// int_B_22_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_22_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_22_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_22_HIGH)
            int_B_22_write <= 1'b1;
        else if (w_hs)
            int_B_22_write <= 1'b0;
    end
end

// int_B_22_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_22_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_22_ce0)
            int_B_22_shift0 <= B_22_address0[1:0];
    end
end

// int_B_23_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_23_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_23_BASE && raddr <= ADDR_B_23_HIGH)
            int_B_23_read <= 1'b1;
        else
            int_B_23_read <= 1'b0;
    end
end

// int_B_23_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_23_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_23_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_23_HIGH)
            int_B_23_write <= 1'b1;
        else if (w_hs)
            int_B_23_write <= 1'b0;
    end
end

// int_B_23_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_23_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_23_ce0)
            int_B_23_shift0 <= B_23_address0[1:0];
    end
end

// int_B_24_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_24_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_24_BASE && raddr <= ADDR_B_24_HIGH)
            int_B_24_read <= 1'b1;
        else
            int_B_24_read <= 1'b0;
    end
end

// int_B_24_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_24_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_24_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_24_HIGH)
            int_B_24_write <= 1'b1;
        else if (w_hs)
            int_B_24_write <= 1'b0;
    end
end

// int_B_24_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_24_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_24_ce0)
            int_B_24_shift0 <= B_24_address0[1:0];
    end
end

// int_B_25_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_25_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_25_BASE && raddr <= ADDR_B_25_HIGH)
            int_B_25_read <= 1'b1;
        else
            int_B_25_read <= 1'b0;
    end
end

// int_B_25_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_25_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_25_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_25_HIGH)
            int_B_25_write <= 1'b1;
        else if (w_hs)
            int_B_25_write <= 1'b0;
    end
end

// int_B_25_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_25_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_25_ce0)
            int_B_25_shift0 <= B_25_address0[1:0];
    end
end

// int_B_26_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_26_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_26_BASE && raddr <= ADDR_B_26_HIGH)
            int_B_26_read <= 1'b1;
        else
            int_B_26_read <= 1'b0;
    end
end

// int_B_26_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_26_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_26_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_26_HIGH)
            int_B_26_write <= 1'b1;
        else if (w_hs)
            int_B_26_write <= 1'b0;
    end
end

// int_B_26_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_26_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_26_ce0)
            int_B_26_shift0 <= B_26_address0[1:0];
    end
end

// int_B_27_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_27_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_27_BASE && raddr <= ADDR_B_27_HIGH)
            int_B_27_read <= 1'b1;
        else
            int_B_27_read <= 1'b0;
    end
end

// int_B_27_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_27_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_27_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_27_HIGH)
            int_B_27_write <= 1'b1;
        else if (w_hs)
            int_B_27_write <= 1'b0;
    end
end

// int_B_27_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_27_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_27_ce0)
            int_B_27_shift0 <= B_27_address0[1:0];
    end
end

// int_B_28_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_28_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_28_BASE && raddr <= ADDR_B_28_HIGH)
            int_B_28_read <= 1'b1;
        else
            int_B_28_read <= 1'b0;
    end
end

// int_B_28_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_28_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_28_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_28_HIGH)
            int_B_28_write <= 1'b1;
        else if (w_hs)
            int_B_28_write <= 1'b0;
    end
end

// int_B_28_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_28_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_28_ce0)
            int_B_28_shift0 <= B_28_address0[1:0];
    end
end

// int_B_29_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_29_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_29_BASE && raddr <= ADDR_B_29_HIGH)
            int_B_29_read <= 1'b1;
        else
            int_B_29_read <= 1'b0;
    end
end

// int_B_29_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_29_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_29_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_29_HIGH)
            int_B_29_write <= 1'b1;
        else if (w_hs)
            int_B_29_write <= 1'b0;
    end
end

// int_B_29_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_29_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_29_ce0)
            int_B_29_shift0 <= B_29_address0[1:0];
    end
end

// int_B_30_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_30_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_30_BASE && raddr <= ADDR_B_30_HIGH)
            int_B_30_read <= 1'b1;
        else
            int_B_30_read <= 1'b0;
    end
end

// int_B_30_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_30_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_30_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_30_HIGH)
            int_B_30_write <= 1'b1;
        else if (w_hs)
            int_B_30_write <= 1'b0;
    end
end

// int_B_30_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_30_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_30_ce0)
            int_B_30_shift0 <= B_30_address0[1:0];
    end
end

// int_B_31_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_31_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_31_BASE && raddr <= ADDR_B_31_HIGH)
            int_B_31_read <= 1'b1;
        else
            int_B_31_read <= 1'b0;
    end
end

// int_B_31_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_31_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_31_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_31_HIGH)
            int_B_31_write <= 1'b1;
        else if (w_hs)
            int_B_31_write <= 1'b0;
    end
end

// int_B_31_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_31_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_31_ce0)
            int_B_31_shift0 <= B_31_address0[1:0];
    end
end

// int_B_32_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_32_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_32_BASE && raddr <= ADDR_B_32_HIGH)
            int_B_32_read <= 1'b1;
        else
            int_B_32_read <= 1'b0;
    end
end

// int_B_32_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_32_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_32_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_32_HIGH)
            int_B_32_write <= 1'b1;
        else if (w_hs)
            int_B_32_write <= 1'b0;
    end
end

// int_B_32_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_32_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_32_ce0)
            int_B_32_shift0 <= B_32_address0[1:0];
    end
end

// int_B_33_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_33_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_33_BASE && raddr <= ADDR_B_33_HIGH)
            int_B_33_read <= 1'b1;
        else
            int_B_33_read <= 1'b0;
    end
end

// int_B_33_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_33_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_33_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_33_HIGH)
            int_B_33_write <= 1'b1;
        else if (w_hs)
            int_B_33_write <= 1'b0;
    end
end

// int_B_33_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_33_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_33_ce0)
            int_B_33_shift0 <= B_33_address0[1:0];
    end
end

// int_B_34_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_34_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_34_BASE && raddr <= ADDR_B_34_HIGH)
            int_B_34_read <= 1'b1;
        else
            int_B_34_read <= 1'b0;
    end
end

// int_B_34_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_34_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_34_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_34_HIGH)
            int_B_34_write <= 1'b1;
        else if (w_hs)
            int_B_34_write <= 1'b0;
    end
end

// int_B_34_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_34_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_34_ce0)
            int_B_34_shift0 <= B_34_address0[1:0];
    end
end

// int_B_35_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_35_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_35_BASE && raddr <= ADDR_B_35_HIGH)
            int_B_35_read <= 1'b1;
        else
            int_B_35_read <= 1'b0;
    end
end

// int_B_35_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_35_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_35_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_35_HIGH)
            int_B_35_write <= 1'b1;
        else if (w_hs)
            int_B_35_write <= 1'b0;
    end
end

// int_B_35_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_35_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_35_ce0)
            int_B_35_shift0 <= B_35_address0[1:0];
    end
end

// int_B_36_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_36_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_36_BASE && raddr <= ADDR_B_36_HIGH)
            int_B_36_read <= 1'b1;
        else
            int_B_36_read <= 1'b0;
    end
end

// int_B_36_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_36_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_36_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_36_HIGH)
            int_B_36_write <= 1'b1;
        else if (w_hs)
            int_B_36_write <= 1'b0;
    end
end

// int_B_36_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_36_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_36_ce0)
            int_B_36_shift0 <= B_36_address0[1:0];
    end
end

// int_B_37_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_37_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_37_BASE && raddr <= ADDR_B_37_HIGH)
            int_B_37_read <= 1'b1;
        else
            int_B_37_read <= 1'b0;
    end
end

// int_B_37_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_37_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_37_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_37_HIGH)
            int_B_37_write <= 1'b1;
        else if (w_hs)
            int_B_37_write <= 1'b0;
    end
end

// int_B_37_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_37_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_37_ce0)
            int_B_37_shift0 <= B_37_address0[1:0];
    end
end

// int_B_38_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_38_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_38_BASE && raddr <= ADDR_B_38_HIGH)
            int_B_38_read <= 1'b1;
        else
            int_B_38_read <= 1'b0;
    end
end

// int_B_38_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_38_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_38_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_38_HIGH)
            int_B_38_write <= 1'b1;
        else if (w_hs)
            int_B_38_write <= 1'b0;
    end
end

// int_B_38_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_38_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_38_ce0)
            int_B_38_shift0 <= B_38_address0[1:0];
    end
end

// int_B_39_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_39_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_39_BASE && raddr <= ADDR_B_39_HIGH)
            int_B_39_read <= 1'b1;
        else
            int_B_39_read <= 1'b0;
    end
end

// int_B_39_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_39_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_39_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_39_HIGH)
            int_B_39_write <= 1'b1;
        else if (w_hs)
            int_B_39_write <= 1'b0;
    end
end

// int_B_39_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_39_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_39_ce0)
            int_B_39_shift0 <= B_39_address0[1:0];
    end
end

// int_B_40_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_40_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_40_BASE && raddr <= ADDR_B_40_HIGH)
            int_B_40_read <= 1'b1;
        else
            int_B_40_read <= 1'b0;
    end
end

// int_B_40_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_40_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_40_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_40_HIGH)
            int_B_40_write <= 1'b1;
        else if (w_hs)
            int_B_40_write <= 1'b0;
    end
end

// int_B_40_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_40_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_40_ce0)
            int_B_40_shift0 <= B_40_address0[1:0];
    end
end

// int_B_41_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_41_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_41_BASE && raddr <= ADDR_B_41_HIGH)
            int_B_41_read <= 1'b1;
        else
            int_B_41_read <= 1'b0;
    end
end

// int_B_41_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_41_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_41_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_41_HIGH)
            int_B_41_write <= 1'b1;
        else if (w_hs)
            int_B_41_write <= 1'b0;
    end
end

// int_B_41_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_41_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_41_ce0)
            int_B_41_shift0 <= B_41_address0[1:0];
    end
end

// int_B_42_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_42_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_42_BASE && raddr <= ADDR_B_42_HIGH)
            int_B_42_read <= 1'b1;
        else
            int_B_42_read <= 1'b0;
    end
end

// int_B_42_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_42_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_42_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_42_HIGH)
            int_B_42_write <= 1'b1;
        else if (w_hs)
            int_B_42_write <= 1'b0;
    end
end

// int_B_42_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_42_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_42_ce0)
            int_B_42_shift0 <= B_42_address0[1:0];
    end
end

// int_B_43_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_43_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_43_BASE && raddr <= ADDR_B_43_HIGH)
            int_B_43_read <= 1'b1;
        else
            int_B_43_read <= 1'b0;
    end
end

// int_B_43_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_43_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_43_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_43_HIGH)
            int_B_43_write <= 1'b1;
        else if (w_hs)
            int_B_43_write <= 1'b0;
    end
end

// int_B_43_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_43_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_43_ce0)
            int_B_43_shift0 <= B_43_address0[1:0];
    end
end

// int_B_44_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_44_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_44_BASE && raddr <= ADDR_B_44_HIGH)
            int_B_44_read <= 1'b1;
        else
            int_B_44_read <= 1'b0;
    end
end

// int_B_44_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_44_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_44_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_44_HIGH)
            int_B_44_write <= 1'b1;
        else if (w_hs)
            int_B_44_write <= 1'b0;
    end
end

// int_B_44_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_44_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_44_ce0)
            int_B_44_shift0 <= B_44_address0[1:0];
    end
end

// int_B_45_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_45_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_45_BASE && raddr <= ADDR_B_45_HIGH)
            int_B_45_read <= 1'b1;
        else
            int_B_45_read <= 1'b0;
    end
end

// int_B_45_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_45_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_45_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_45_HIGH)
            int_B_45_write <= 1'b1;
        else if (w_hs)
            int_B_45_write <= 1'b0;
    end
end

// int_B_45_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_45_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_45_ce0)
            int_B_45_shift0 <= B_45_address0[1:0];
    end
end

// int_B_46_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_46_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_46_BASE && raddr <= ADDR_B_46_HIGH)
            int_B_46_read <= 1'b1;
        else
            int_B_46_read <= 1'b0;
    end
end

// int_B_46_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_46_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_46_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_46_HIGH)
            int_B_46_write <= 1'b1;
        else if (w_hs)
            int_B_46_write <= 1'b0;
    end
end

// int_B_46_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_46_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_46_ce0)
            int_B_46_shift0 <= B_46_address0[1:0];
    end
end

// int_B_47_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_47_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_47_BASE && raddr <= ADDR_B_47_HIGH)
            int_B_47_read <= 1'b1;
        else
            int_B_47_read <= 1'b0;
    end
end

// int_B_47_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_47_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_47_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_47_HIGH)
            int_B_47_write <= 1'b1;
        else if (w_hs)
            int_B_47_write <= 1'b0;
    end
end

// int_B_47_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_47_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_47_ce0)
            int_B_47_shift0 <= B_47_address0[1:0];
    end
end

// int_B_48_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_48_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_48_BASE && raddr <= ADDR_B_48_HIGH)
            int_B_48_read <= 1'b1;
        else
            int_B_48_read <= 1'b0;
    end
end

// int_B_48_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_48_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_48_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_48_HIGH)
            int_B_48_write <= 1'b1;
        else if (w_hs)
            int_B_48_write <= 1'b0;
    end
end

// int_B_48_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_48_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_48_ce0)
            int_B_48_shift0 <= B_48_address0[1:0];
    end
end

// int_B_49_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_49_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_49_BASE && raddr <= ADDR_B_49_HIGH)
            int_B_49_read <= 1'b1;
        else
            int_B_49_read <= 1'b0;
    end
end

// int_B_49_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_49_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_49_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_49_HIGH)
            int_B_49_write <= 1'b1;
        else if (w_hs)
            int_B_49_write <= 1'b0;
    end
end

// int_B_49_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_49_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_49_ce0)
            int_B_49_shift0 <= B_49_address0[1:0];
    end
end

// int_B_50_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_50_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_50_BASE && raddr <= ADDR_B_50_HIGH)
            int_B_50_read <= 1'b1;
        else
            int_B_50_read <= 1'b0;
    end
end

// int_B_50_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_50_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_50_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_50_HIGH)
            int_B_50_write <= 1'b1;
        else if (w_hs)
            int_B_50_write <= 1'b0;
    end
end

// int_B_50_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_50_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_50_ce0)
            int_B_50_shift0 <= B_50_address0[1:0];
    end
end

// int_B_51_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_51_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_51_BASE && raddr <= ADDR_B_51_HIGH)
            int_B_51_read <= 1'b1;
        else
            int_B_51_read <= 1'b0;
    end
end

// int_B_51_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_51_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_51_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_51_HIGH)
            int_B_51_write <= 1'b1;
        else if (w_hs)
            int_B_51_write <= 1'b0;
    end
end

// int_B_51_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_51_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_51_ce0)
            int_B_51_shift0 <= B_51_address0[1:0];
    end
end

// int_B_52_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_52_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_52_BASE && raddr <= ADDR_B_52_HIGH)
            int_B_52_read <= 1'b1;
        else
            int_B_52_read <= 1'b0;
    end
end

// int_B_52_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_52_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_52_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_52_HIGH)
            int_B_52_write <= 1'b1;
        else if (w_hs)
            int_B_52_write <= 1'b0;
    end
end

// int_B_52_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_52_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_52_ce0)
            int_B_52_shift0 <= B_52_address0[1:0];
    end
end

// int_B_53_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_53_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_53_BASE && raddr <= ADDR_B_53_HIGH)
            int_B_53_read <= 1'b1;
        else
            int_B_53_read <= 1'b0;
    end
end

// int_B_53_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_53_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_53_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_53_HIGH)
            int_B_53_write <= 1'b1;
        else if (w_hs)
            int_B_53_write <= 1'b0;
    end
end

// int_B_53_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_53_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_53_ce0)
            int_B_53_shift0 <= B_53_address0[1:0];
    end
end

// int_B_54_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_54_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_54_BASE && raddr <= ADDR_B_54_HIGH)
            int_B_54_read <= 1'b1;
        else
            int_B_54_read <= 1'b0;
    end
end

// int_B_54_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_54_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_54_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_54_HIGH)
            int_B_54_write <= 1'b1;
        else if (w_hs)
            int_B_54_write <= 1'b0;
    end
end

// int_B_54_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_54_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_54_ce0)
            int_B_54_shift0 <= B_54_address0[1:0];
    end
end

// int_B_55_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_55_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_55_BASE && raddr <= ADDR_B_55_HIGH)
            int_B_55_read <= 1'b1;
        else
            int_B_55_read <= 1'b0;
    end
end

// int_B_55_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_55_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_55_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_55_HIGH)
            int_B_55_write <= 1'b1;
        else if (w_hs)
            int_B_55_write <= 1'b0;
    end
end

// int_B_55_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_55_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_55_ce0)
            int_B_55_shift0 <= B_55_address0[1:0];
    end
end

// int_B_56_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_56_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_56_BASE && raddr <= ADDR_B_56_HIGH)
            int_B_56_read <= 1'b1;
        else
            int_B_56_read <= 1'b0;
    end
end

// int_B_56_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_56_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_56_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_56_HIGH)
            int_B_56_write <= 1'b1;
        else if (w_hs)
            int_B_56_write <= 1'b0;
    end
end

// int_B_56_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_56_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_56_ce0)
            int_B_56_shift0 <= B_56_address0[1:0];
    end
end

// int_B_57_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_57_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_57_BASE && raddr <= ADDR_B_57_HIGH)
            int_B_57_read <= 1'b1;
        else
            int_B_57_read <= 1'b0;
    end
end

// int_B_57_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_57_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_57_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_57_HIGH)
            int_B_57_write <= 1'b1;
        else if (w_hs)
            int_B_57_write <= 1'b0;
    end
end

// int_B_57_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_57_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_57_ce0)
            int_B_57_shift0 <= B_57_address0[1:0];
    end
end

// int_B_58_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_58_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_58_BASE && raddr <= ADDR_B_58_HIGH)
            int_B_58_read <= 1'b1;
        else
            int_B_58_read <= 1'b0;
    end
end

// int_B_58_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_58_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_58_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_58_HIGH)
            int_B_58_write <= 1'b1;
        else if (w_hs)
            int_B_58_write <= 1'b0;
    end
end

// int_B_58_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_58_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_58_ce0)
            int_B_58_shift0 <= B_58_address0[1:0];
    end
end

// int_B_59_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_59_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_59_BASE && raddr <= ADDR_B_59_HIGH)
            int_B_59_read <= 1'b1;
        else
            int_B_59_read <= 1'b0;
    end
end

// int_B_59_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_59_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_59_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_59_HIGH)
            int_B_59_write <= 1'b1;
        else if (w_hs)
            int_B_59_write <= 1'b0;
    end
end

// int_B_59_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_59_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_59_ce0)
            int_B_59_shift0 <= B_59_address0[1:0];
    end
end

// int_B_60_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_60_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_60_BASE && raddr <= ADDR_B_60_HIGH)
            int_B_60_read <= 1'b1;
        else
            int_B_60_read <= 1'b0;
    end
end

// int_B_60_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_60_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_60_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_60_HIGH)
            int_B_60_write <= 1'b1;
        else if (w_hs)
            int_B_60_write <= 1'b0;
    end
end

// int_B_60_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_60_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_60_ce0)
            int_B_60_shift0 <= B_60_address0[1:0];
    end
end

// int_B_61_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_61_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_61_BASE && raddr <= ADDR_B_61_HIGH)
            int_B_61_read <= 1'b1;
        else
            int_B_61_read <= 1'b0;
    end
end

// int_B_61_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_61_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_61_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_61_HIGH)
            int_B_61_write <= 1'b1;
        else if (w_hs)
            int_B_61_write <= 1'b0;
    end
end

// int_B_61_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_61_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_61_ce0)
            int_B_61_shift0 <= B_61_address0[1:0];
    end
end

// int_B_62_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_62_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_62_BASE && raddr <= ADDR_B_62_HIGH)
            int_B_62_read <= 1'b1;
        else
            int_B_62_read <= 1'b0;
    end
end

// int_B_62_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_62_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_62_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_62_HIGH)
            int_B_62_write <= 1'b1;
        else if (w_hs)
            int_B_62_write <= 1'b0;
    end
end

// int_B_62_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_62_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_62_ce0)
            int_B_62_shift0 <= B_62_address0[1:0];
    end
end

// int_B_63_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_63_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_63_BASE && raddr <= ADDR_B_63_HIGH)
            int_B_63_read <= 1'b1;
        else
            int_B_63_read <= 1'b0;
    end
end

// int_B_63_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_63_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_63_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_63_HIGH)
            int_B_63_write <= 1'b1;
        else if (w_hs)
            int_B_63_write <= 1'b0;
    end
end

// int_B_63_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_63_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_63_ce0)
            int_B_63_shift0 <= B_63_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module eucHW_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

