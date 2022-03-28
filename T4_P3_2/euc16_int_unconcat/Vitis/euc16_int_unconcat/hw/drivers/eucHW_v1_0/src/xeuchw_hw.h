// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
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
// 0x010 : Data signal of A_0
//         bit 7~0 - A_0[7:0] (Read/Write)
//         others  - reserved
// 0x014 : reserved
// 0x018 : Data signal of A_1
//         bit 7~0 - A_1[7:0] (Read/Write)
//         others  - reserved
// 0x01c : reserved
// 0x020 : Data signal of A_2
//         bit 7~0 - A_2[7:0] (Read/Write)
//         others  - reserved
// 0x024 : reserved
// 0x028 : Data signal of A_3
//         bit 7~0 - A_3[7:0] (Read/Write)
//         others  - reserved
// 0x02c : reserved
// 0x030 : Data signal of A_4
//         bit 7~0 - A_4[7:0] (Read/Write)
//         others  - reserved
// 0x034 : reserved
// 0x038 : Data signal of A_5
//         bit 7~0 - A_5[7:0] (Read/Write)
//         others  - reserved
// 0x03c : reserved
// 0x040 : Data signal of A_6
//         bit 7~0 - A_6[7:0] (Read/Write)
//         others  - reserved
// 0x044 : reserved
// 0x048 : Data signal of A_7
//         bit 7~0 - A_7[7:0] (Read/Write)
//         others  - reserved
// 0x04c : reserved
// 0x050 : Data signal of A_8
//         bit 7~0 - A_8[7:0] (Read/Write)
//         others  - reserved
// 0x054 : reserved
// 0x058 : Data signal of A_9
//         bit 7~0 - A_9[7:0] (Read/Write)
//         others  - reserved
// 0x05c : reserved
// 0x060 : Data signal of A_10
//         bit 7~0 - A_10[7:0] (Read/Write)
//         others  - reserved
// 0x064 : reserved
// 0x068 : Data signal of A_11
//         bit 7~0 - A_11[7:0] (Read/Write)
//         others  - reserved
// 0x06c : reserved
// 0x070 : Data signal of A_12
//         bit 7~0 - A_12[7:0] (Read/Write)
//         others  - reserved
// 0x074 : reserved
// 0x078 : Data signal of A_13
//         bit 7~0 - A_13[7:0] (Read/Write)
//         others  - reserved
// 0x07c : reserved
// 0x080 : Data signal of A_14
//         bit 7~0 - A_14[7:0] (Read/Write)
//         others  - reserved
// 0x084 : reserved
// 0x088 : Data signal of A_15
//         bit 7~0 - A_15[7:0] (Read/Write)
//         others  - reserved
// 0x08c : reserved
// 0x090 : Data signal of B_0
//         bit 7~0 - B_0[7:0] (Read/Write)
//         others  - reserved
// 0x094 : reserved
// 0x098 : Data signal of B_1
//         bit 7~0 - B_1[7:0] (Read/Write)
//         others  - reserved
// 0x09c : reserved
// 0x0a0 : Data signal of B_2
//         bit 7~0 - B_2[7:0] (Read/Write)
//         others  - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of B_3
//         bit 7~0 - B_3[7:0] (Read/Write)
//         others  - reserved
// 0x0ac : reserved
// 0x0b0 : Data signal of B_4
//         bit 7~0 - B_4[7:0] (Read/Write)
//         others  - reserved
// 0x0b4 : reserved
// 0x0b8 : Data signal of B_5
//         bit 7~0 - B_5[7:0] (Read/Write)
//         others  - reserved
// 0x0bc : reserved
// 0x0c0 : Data signal of B_6
//         bit 7~0 - B_6[7:0] (Read/Write)
//         others  - reserved
// 0x0c4 : reserved
// 0x0c8 : Data signal of B_7
//         bit 7~0 - B_7[7:0] (Read/Write)
//         others  - reserved
// 0x0cc : reserved
// 0x0d0 : Data signal of B_8
//         bit 7~0 - B_8[7:0] (Read/Write)
//         others  - reserved
// 0x0d4 : reserved
// 0x0d8 : Data signal of B_9
//         bit 7~0 - B_9[7:0] (Read/Write)
//         others  - reserved
// 0x0dc : reserved
// 0x0e0 : Data signal of B_10
//         bit 7~0 - B_10[7:0] (Read/Write)
//         others  - reserved
// 0x0e4 : reserved
// 0x0e8 : Data signal of B_11
//         bit 7~0 - B_11[7:0] (Read/Write)
//         others  - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of B_12
//         bit 7~0 - B_12[7:0] (Read/Write)
//         others  - reserved
// 0x0f4 : reserved
// 0x0f8 : Data signal of B_13
//         bit 7~0 - B_13[7:0] (Read/Write)
//         others  - reserved
// 0x0fc : reserved
// 0x100 : Data signal of B_14
//         bit 7~0 - B_14[7:0] (Read/Write)
//         others  - reserved
// 0x104 : reserved
// 0x108 : Data signal of B_15
//         bit 7~0 - B_15[7:0] (Read/Write)
//         others  - reserved
// 0x10c : reserved
// 0x110 : Data signal of C
//         bit 31~0 - C[31:0] (Read)
// 0x114 : Control signal of C
//         bit 0  - C_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEUCHW_CONTROL_ADDR_AP_CTRL   0x000
#define XEUCHW_CONTROL_ADDR_GIE       0x004
#define XEUCHW_CONTROL_ADDR_IER       0x008
#define XEUCHW_CONTROL_ADDR_ISR       0x00c
#define XEUCHW_CONTROL_ADDR_A_0_DATA  0x010
#define XEUCHW_CONTROL_BITS_A_0_DATA  8
#define XEUCHW_CONTROL_ADDR_A_1_DATA  0x018
#define XEUCHW_CONTROL_BITS_A_1_DATA  8
#define XEUCHW_CONTROL_ADDR_A_2_DATA  0x020
#define XEUCHW_CONTROL_BITS_A_2_DATA  8
#define XEUCHW_CONTROL_ADDR_A_3_DATA  0x028
#define XEUCHW_CONTROL_BITS_A_3_DATA  8
#define XEUCHW_CONTROL_ADDR_A_4_DATA  0x030
#define XEUCHW_CONTROL_BITS_A_4_DATA  8
#define XEUCHW_CONTROL_ADDR_A_5_DATA  0x038
#define XEUCHW_CONTROL_BITS_A_5_DATA  8
#define XEUCHW_CONTROL_ADDR_A_6_DATA  0x040
#define XEUCHW_CONTROL_BITS_A_6_DATA  8
#define XEUCHW_CONTROL_ADDR_A_7_DATA  0x048
#define XEUCHW_CONTROL_BITS_A_7_DATA  8
#define XEUCHW_CONTROL_ADDR_A_8_DATA  0x050
#define XEUCHW_CONTROL_BITS_A_8_DATA  8
#define XEUCHW_CONTROL_ADDR_A_9_DATA  0x058
#define XEUCHW_CONTROL_BITS_A_9_DATA  8
#define XEUCHW_CONTROL_ADDR_A_10_DATA 0x060
#define XEUCHW_CONTROL_BITS_A_10_DATA 8
#define XEUCHW_CONTROL_ADDR_A_11_DATA 0x068
#define XEUCHW_CONTROL_BITS_A_11_DATA 8
#define XEUCHW_CONTROL_ADDR_A_12_DATA 0x070
#define XEUCHW_CONTROL_BITS_A_12_DATA 8
#define XEUCHW_CONTROL_ADDR_A_13_DATA 0x078
#define XEUCHW_CONTROL_BITS_A_13_DATA 8
#define XEUCHW_CONTROL_ADDR_A_14_DATA 0x080
#define XEUCHW_CONTROL_BITS_A_14_DATA 8
#define XEUCHW_CONTROL_ADDR_A_15_DATA 0x088
#define XEUCHW_CONTROL_BITS_A_15_DATA 8
#define XEUCHW_CONTROL_ADDR_B_0_DATA  0x090
#define XEUCHW_CONTROL_BITS_B_0_DATA  8
#define XEUCHW_CONTROL_ADDR_B_1_DATA  0x098
#define XEUCHW_CONTROL_BITS_B_1_DATA  8
#define XEUCHW_CONTROL_ADDR_B_2_DATA  0x0a0
#define XEUCHW_CONTROL_BITS_B_2_DATA  8
#define XEUCHW_CONTROL_ADDR_B_3_DATA  0x0a8
#define XEUCHW_CONTROL_BITS_B_3_DATA  8
#define XEUCHW_CONTROL_ADDR_B_4_DATA  0x0b0
#define XEUCHW_CONTROL_BITS_B_4_DATA  8
#define XEUCHW_CONTROL_ADDR_B_5_DATA  0x0b8
#define XEUCHW_CONTROL_BITS_B_5_DATA  8
#define XEUCHW_CONTROL_ADDR_B_6_DATA  0x0c0
#define XEUCHW_CONTROL_BITS_B_6_DATA  8
#define XEUCHW_CONTROL_ADDR_B_7_DATA  0x0c8
#define XEUCHW_CONTROL_BITS_B_7_DATA  8
#define XEUCHW_CONTROL_ADDR_B_8_DATA  0x0d0
#define XEUCHW_CONTROL_BITS_B_8_DATA  8
#define XEUCHW_CONTROL_ADDR_B_9_DATA  0x0d8
#define XEUCHW_CONTROL_BITS_B_9_DATA  8
#define XEUCHW_CONTROL_ADDR_B_10_DATA 0x0e0
#define XEUCHW_CONTROL_BITS_B_10_DATA 8
#define XEUCHW_CONTROL_ADDR_B_11_DATA 0x0e8
#define XEUCHW_CONTROL_BITS_B_11_DATA 8
#define XEUCHW_CONTROL_ADDR_B_12_DATA 0x0f0
#define XEUCHW_CONTROL_BITS_B_12_DATA 8
#define XEUCHW_CONTROL_ADDR_B_13_DATA 0x0f8
#define XEUCHW_CONTROL_BITS_B_13_DATA 8
#define XEUCHW_CONTROL_ADDR_B_14_DATA 0x100
#define XEUCHW_CONTROL_BITS_B_14_DATA 8
#define XEUCHW_CONTROL_ADDR_B_15_DATA 0x108
#define XEUCHW_CONTROL_BITS_B_15_DATA 8
#define XEUCHW_CONTROL_ADDR_C_DATA    0x110
#define XEUCHW_CONTROL_BITS_C_DATA    32
#define XEUCHW_CONTROL_ADDR_C_CTRL    0x114

