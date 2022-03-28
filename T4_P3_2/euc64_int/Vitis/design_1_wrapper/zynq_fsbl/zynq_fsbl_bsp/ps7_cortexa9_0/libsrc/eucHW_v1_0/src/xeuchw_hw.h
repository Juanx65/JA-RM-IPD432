// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x90 : Data signal of C
//        bit 31~0 - C[31:0] (Read)
// 0x94 : Control signal of C
//        bit 0  - C_ap_vld (Read/COR)
//        others - reserved
// 0x10 ~
// 0x17 : Memory 'A_0' (8 * 8b)
//        Word n : bit [ 7: 0] - A_0[4n]
//                 bit [15: 8] - A_0[4n+1]
//                 bit [23:16] - A_0[4n+2]
//                 bit [31:24] - A_0[4n+3]
// 0x18 ~
// 0x1f : Memory 'A_1' (8 * 8b)
//        Word n : bit [ 7: 0] - A_1[4n]
//                 bit [15: 8] - A_1[4n+1]
//                 bit [23:16] - A_1[4n+2]
//                 bit [31:24] - A_1[4n+3]
// 0x20 ~
// 0x27 : Memory 'A_2' (8 * 8b)
//        Word n : bit [ 7: 0] - A_2[4n]
//                 bit [15: 8] - A_2[4n+1]
//                 bit [23:16] - A_2[4n+2]
//                 bit [31:24] - A_2[4n+3]
// 0x28 ~
// 0x2f : Memory 'A_3' (8 * 8b)
//        Word n : bit [ 7: 0] - A_3[4n]
//                 bit [15: 8] - A_3[4n+1]
//                 bit [23:16] - A_3[4n+2]
//                 bit [31:24] - A_3[4n+3]
// 0x30 ~
// 0x37 : Memory 'A_4' (8 * 8b)
//        Word n : bit [ 7: 0] - A_4[4n]
//                 bit [15: 8] - A_4[4n+1]
//                 bit [23:16] - A_4[4n+2]
//                 bit [31:24] - A_4[4n+3]
// 0x38 ~
// 0x3f : Memory 'A_5' (8 * 8b)
//        Word n : bit [ 7: 0] - A_5[4n]
//                 bit [15: 8] - A_5[4n+1]
//                 bit [23:16] - A_5[4n+2]
//                 bit [31:24] - A_5[4n+3]
// 0x40 ~
// 0x47 : Memory 'A_6' (8 * 8b)
//        Word n : bit [ 7: 0] - A_6[4n]
//                 bit [15: 8] - A_6[4n+1]
//                 bit [23:16] - A_6[4n+2]
//                 bit [31:24] - A_6[4n+3]
// 0x48 ~
// 0x4f : Memory 'A_7' (8 * 8b)
//        Word n : bit [ 7: 0] - A_7[4n]
//                 bit [15: 8] - A_7[4n+1]
//                 bit [23:16] - A_7[4n+2]
//                 bit [31:24] - A_7[4n+3]
// 0x50 ~
// 0x57 : Memory 'B_0' (8 * 8b)
//        Word n : bit [ 7: 0] - B_0[4n]
//                 bit [15: 8] - B_0[4n+1]
//                 bit [23:16] - B_0[4n+2]
//                 bit [31:24] - B_0[4n+3]
// 0x58 ~
// 0x5f : Memory 'B_1' (8 * 8b)
//        Word n : bit [ 7: 0] - B_1[4n]
//                 bit [15: 8] - B_1[4n+1]
//                 bit [23:16] - B_1[4n+2]
//                 bit [31:24] - B_1[4n+3]
// 0x60 ~
// 0x67 : Memory 'B_2' (8 * 8b)
//        Word n : bit [ 7: 0] - B_2[4n]
//                 bit [15: 8] - B_2[4n+1]
//                 bit [23:16] - B_2[4n+2]
//                 bit [31:24] - B_2[4n+3]
// 0x68 ~
// 0x6f : Memory 'B_3' (8 * 8b)
//        Word n : bit [ 7: 0] - B_3[4n]
//                 bit [15: 8] - B_3[4n+1]
//                 bit [23:16] - B_3[4n+2]
//                 bit [31:24] - B_3[4n+3]
// 0x70 ~
// 0x77 : Memory 'B_4' (8 * 8b)
//        Word n : bit [ 7: 0] - B_4[4n]
//                 bit [15: 8] - B_4[4n+1]
//                 bit [23:16] - B_4[4n+2]
//                 bit [31:24] - B_4[4n+3]
// 0x78 ~
// 0x7f : Memory 'B_5' (8 * 8b)
//        Word n : bit [ 7: 0] - B_5[4n]
//                 bit [15: 8] - B_5[4n+1]
//                 bit [23:16] - B_5[4n+2]
//                 bit [31:24] - B_5[4n+3]
// 0x80 ~
// 0x87 : Memory 'B_6' (8 * 8b)
//        Word n : bit [ 7: 0] - B_6[4n]
//                 bit [15: 8] - B_6[4n+1]
//                 bit [23:16] - B_6[4n+2]
//                 bit [31:24] - B_6[4n+3]
// 0x88 ~
// 0x8f : Memory 'B_7' (8 * 8b)
//        Word n : bit [ 7: 0] - B_7[4n]
//                 bit [15: 8] - B_7[4n+1]
//                 bit [23:16] - B_7[4n+2]
//                 bit [31:24] - B_7[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEUCHW_CONTROL_ADDR_AP_CTRL  0x00
#define XEUCHW_CONTROL_ADDR_GIE      0x04
#define XEUCHW_CONTROL_ADDR_IER      0x08
#define XEUCHW_CONTROL_ADDR_ISR      0x0c
#define XEUCHW_CONTROL_ADDR_C_DATA   0x90
#define XEUCHW_CONTROL_BITS_C_DATA   32
#define XEUCHW_CONTROL_ADDR_C_CTRL   0x94
#define XEUCHW_CONTROL_ADDR_A_0_BASE 0x10
#define XEUCHW_CONTROL_ADDR_A_0_HIGH 0x17
#define XEUCHW_CONTROL_WIDTH_A_0     8
#define XEUCHW_CONTROL_DEPTH_A_0     8
#define XEUCHW_CONTROL_ADDR_A_1_BASE 0x18
#define XEUCHW_CONTROL_ADDR_A_1_HIGH 0x1f
#define XEUCHW_CONTROL_WIDTH_A_1     8
#define XEUCHW_CONTROL_DEPTH_A_1     8
#define XEUCHW_CONTROL_ADDR_A_2_BASE 0x20
#define XEUCHW_CONTROL_ADDR_A_2_HIGH 0x27
#define XEUCHW_CONTROL_WIDTH_A_2     8
#define XEUCHW_CONTROL_DEPTH_A_2     8
#define XEUCHW_CONTROL_ADDR_A_3_BASE 0x28
#define XEUCHW_CONTROL_ADDR_A_3_HIGH 0x2f
#define XEUCHW_CONTROL_WIDTH_A_3     8
#define XEUCHW_CONTROL_DEPTH_A_3     8
#define XEUCHW_CONTROL_ADDR_A_4_BASE 0x30
#define XEUCHW_CONTROL_ADDR_A_4_HIGH 0x37
#define XEUCHW_CONTROL_WIDTH_A_4     8
#define XEUCHW_CONTROL_DEPTH_A_4     8
#define XEUCHW_CONTROL_ADDR_A_5_BASE 0x38
#define XEUCHW_CONTROL_ADDR_A_5_HIGH 0x3f
#define XEUCHW_CONTROL_WIDTH_A_5     8
#define XEUCHW_CONTROL_DEPTH_A_5     8
#define XEUCHW_CONTROL_ADDR_A_6_BASE 0x40
#define XEUCHW_CONTROL_ADDR_A_6_HIGH 0x47
#define XEUCHW_CONTROL_WIDTH_A_6     8
#define XEUCHW_CONTROL_DEPTH_A_6     8
#define XEUCHW_CONTROL_ADDR_A_7_BASE 0x48
#define XEUCHW_CONTROL_ADDR_A_7_HIGH 0x4f
#define XEUCHW_CONTROL_WIDTH_A_7     8
#define XEUCHW_CONTROL_DEPTH_A_7     8
#define XEUCHW_CONTROL_ADDR_B_0_BASE 0x50
#define XEUCHW_CONTROL_ADDR_B_0_HIGH 0x57
#define XEUCHW_CONTROL_WIDTH_B_0     8
#define XEUCHW_CONTROL_DEPTH_B_0     8
#define XEUCHW_CONTROL_ADDR_B_1_BASE 0x58
#define XEUCHW_CONTROL_ADDR_B_1_HIGH 0x5f
#define XEUCHW_CONTROL_WIDTH_B_1     8
#define XEUCHW_CONTROL_DEPTH_B_1     8
#define XEUCHW_CONTROL_ADDR_B_2_BASE 0x60
#define XEUCHW_CONTROL_ADDR_B_2_HIGH 0x67
#define XEUCHW_CONTROL_WIDTH_B_2     8
#define XEUCHW_CONTROL_DEPTH_B_2     8
#define XEUCHW_CONTROL_ADDR_B_3_BASE 0x68
#define XEUCHW_CONTROL_ADDR_B_3_HIGH 0x6f
#define XEUCHW_CONTROL_WIDTH_B_3     8
#define XEUCHW_CONTROL_DEPTH_B_3     8
#define XEUCHW_CONTROL_ADDR_B_4_BASE 0x70
#define XEUCHW_CONTROL_ADDR_B_4_HIGH 0x77
#define XEUCHW_CONTROL_WIDTH_B_4     8
#define XEUCHW_CONTROL_DEPTH_B_4     8
#define XEUCHW_CONTROL_ADDR_B_5_BASE 0x78
#define XEUCHW_CONTROL_ADDR_B_5_HIGH 0x7f
#define XEUCHW_CONTROL_WIDTH_B_5     8
#define XEUCHW_CONTROL_DEPTH_B_5     8
#define XEUCHW_CONTROL_ADDR_B_6_BASE 0x80
#define XEUCHW_CONTROL_ADDR_B_6_HIGH 0x87
#define XEUCHW_CONTROL_WIDTH_B_6     8
#define XEUCHW_CONTROL_DEPTH_B_6     8
#define XEUCHW_CONTROL_ADDR_B_7_BASE 0x88
#define XEUCHW_CONTROL_ADDR_B_7_HIGH 0x8f
#define XEUCHW_CONTROL_WIDTH_B_7     8
#define XEUCHW_CONTROL_DEPTH_B_7     8

