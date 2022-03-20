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
// 0x110 : Data signal of C
//         bit 31~0 - C[31:0] (Read)
// 0x114 : Control signal of C
//         bit 0  - C_ap_vld (Read/COR)
//         others - reserved
// 0x010 ~
// 0x01f : Memory 'A_0' (16 * 8b)
//         Word n : bit [ 7: 0] - A_0[4n]
//                  bit [15: 8] - A_0[4n+1]
//                  bit [23:16] - A_0[4n+2]
//                  bit [31:24] - A_0[4n+3]
// 0x020 ~
// 0x02f : Memory 'A_1' (16 * 8b)
//         Word n : bit [ 7: 0] - A_1[4n]
//                  bit [15: 8] - A_1[4n+1]
//                  bit [23:16] - A_1[4n+2]
//                  bit [31:24] - A_1[4n+3]
// 0x030 ~
// 0x03f : Memory 'A_2' (16 * 8b)
//         Word n : bit [ 7: 0] - A_2[4n]
//                  bit [15: 8] - A_2[4n+1]
//                  bit [23:16] - A_2[4n+2]
//                  bit [31:24] - A_2[4n+3]
// 0x040 ~
// 0x04f : Memory 'A_3' (16 * 8b)
//         Word n : bit [ 7: 0] - A_3[4n]
//                  bit [15: 8] - A_3[4n+1]
//                  bit [23:16] - A_3[4n+2]
//                  bit [31:24] - A_3[4n+3]
// 0x050 ~
// 0x05f : Memory 'A_4' (16 * 8b)
//         Word n : bit [ 7: 0] - A_4[4n]
//                  bit [15: 8] - A_4[4n+1]
//                  bit [23:16] - A_4[4n+2]
//                  bit [31:24] - A_4[4n+3]
// 0x060 ~
// 0x06f : Memory 'A_5' (16 * 8b)
//         Word n : bit [ 7: 0] - A_5[4n]
//                  bit [15: 8] - A_5[4n+1]
//                  bit [23:16] - A_5[4n+2]
//                  bit [31:24] - A_5[4n+3]
// 0x070 ~
// 0x07f : Memory 'A_6' (16 * 8b)
//         Word n : bit [ 7: 0] - A_6[4n]
//                  bit [15: 8] - A_6[4n+1]
//                  bit [23:16] - A_6[4n+2]
//                  bit [31:24] - A_6[4n+3]
// 0x080 ~
// 0x08f : Memory 'A_7' (16 * 8b)
//         Word n : bit [ 7: 0] - A_7[4n]
//                  bit [15: 8] - A_7[4n+1]
//                  bit [23:16] - A_7[4n+2]
//                  bit [31:24] - A_7[4n+3]
// 0x090 ~
// 0x09f : Memory 'B_0' (16 * 8b)
//         Word n : bit [ 7: 0] - B_0[4n]
//                  bit [15: 8] - B_0[4n+1]
//                  bit [23:16] - B_0[4n+2]
//                  bit [31:24] - B_0[4n+3]
// 0x0a0 ~
// 0x0af : Memory 'B_1' (16 * 8b)
//         Word n : bit [ 7: 0] - B_1[4n]
//                  bit [15: 8] - B_1[4n+1]
//                  bit [23:16] - B_1[4n+2]
//                  bit [31:24] - B_1[4n+3]
// 0x0b0 ~
// 0x0bf : Memory 'B_2' (16 * 8b)
//         Word n : bit [ 7: 0] - B_2[4n]
//                  bit [15: 8] - B_2[4n+1]
//                  bit [23:16] - B_2[4n+2]
//                  bit [31:24] - B_2[4n+3]
// 0x0c0 ~
// 0x0cf : Memory 'B_3' (16 * 8b)
//         Word n : bit [ 7: 0] - B_3[4n]
//                  bit [15: 8] - B_3[4n+1]
//                  bit [23:16] - B_3[4n+2]
//                  bit [31:24] - B_3[4n+3]
// 0x0d0 ~
// 0x0df : Memory 'B_4' (16 * 8b)
//         Word n : bit [ 7: 0] - B_4[4n]
//                  bit [15: 8] - B_4[4n+1]
//                  bit [23:16] - B_4[4n+2]
//                  bit [31:24] - B_4[4n+3]
// 0x0e0 ~
// 0x0ef : Memory 'B_5' (16 * 8b)
//         Word n : bit [ 7: 0] - B_5[4n]
//                  bit [15: 8] - B_5[4n+1]
//                  bit [23:16] - B_5[4n+2]
//                  bit [31:24] - B_5[4n+3]
// 0x0f0 ~
// 0x0ff : Memory 'B_6' (16 * 8b)
//         Word n : bit [ 7: 0] - B_6[4n]
//                  bit [15: 8] - B_6[4n+1]
//                  bit [23:16] - B_6[4n+2]
//                  bit [31:24] - B_6[4n+3]
// 0x100 ~
// 0x10f : Memory 'B_7' (16 * 8b)
//         Word n : bit [ 7: 0] - B_7[4n]
//                  bit [15: 8] - B_7[4n+1]
//                  bit [23:16] - B_7[4n+2]
//                  bit [31:24] - B_7[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL  0x000
#define CONTROL_ADDR_GIE      0x004
#define CONTROL_ADDR_IER      0x008
#define CONTROL_ADDR_ISR      0x00c
#define CONTROL_ADDR_C_DATA   0x110
#define CONTROL_BITS_C_DATA   32
#define CONTROL_ADDR_C_CTRL   0x114
#define CONTROL_ADDR_A_0_BASE 0x010
#define CONTROL_ADDR_A_0_HIGH 0x01f
#define CONTROL_WIDTH_A_0     8
#define CONTROL_DEPTH_A_0     16
#define CONTROL_ADDR_A_1_BASE 0x020
#define CONTROL_ADDR_A_1_HIGH 0x02f
#define CONTROL_WIDTH_A_1     8
#define CONTROL_DEPTH_A_1     16
#define CONTROL_ADDR_A_2_BASE 0x030
#define CONTROL_ADDR_A_2_HIGH 0x03f
#define CONTROL_WIDTH_A_2     8
#define CONTROL_DEPTH_A_2     16
#define CONTROL_ADDR_A_3_BASE 0x040
#define CONTROL_ADDR_A_3_HIGH 0x04f
#define CONTROL_WIDTH_A_3     8
#define CONTROL_DEPTH_A_3     16
#define CONTROL_ADDR_A_4_BASE 0x050
#define CONTROL_ADDR_A_4_HIGH 0x05f
#define CONTROL_WIDTH_A_4     8
#define CONTROL_DEPTH_A_4     16
#define CONTROL_ADDR_A_5_BASE 0x060
#define CONTROL_ADDR_A_5_HIGH 0x06f
#define CONTROL_WIDTH_A_5     8
#define CONTROL_DEPTH_A_5     16
#define CONTROL_ADDR_A_6_BASE 0x070
#define CONTROL_ADDR_A_6_HIGH 0x07f
#define CONTROL_WIDTH_A_6     8
#define CONTROL_DEPTH_A_6     16
#define CONTROL_ADDR_A_7_BASE 0x080
#define CONTROL_ADDR_A_7_HIGH 0x08f
#define CONTROL_WIDTH_A_7     8
#define CONTROL_DEPTH_A_7     16
#define CONTROL_ADDR_B_0_BASE 0x090
#define CONTROL_ADDR_B_0_HIGH 0x09f
#define CONTROL_WIDTH_B_0     8
#define CONTROL_DEPTH_B_0     16
#define CONTROL_ADDR_B_1_BASE 0x0a0
#define CONTROL_ADDR_B_1_HIGH 0x0af
#define CONTROL_WIDTH_B_1     8
#define CONTROL_DEPTH_B_1     16
#define CONTROL_ADDR_B_2_BASE 0x0b0
#define CONTROL_ADDR_B_2_HIGH 0x0bf
#define CONTROL_WIDTH_B_2     8
#define CONTROL_DEPTH_B_2     16
#define CONTROL_ADDR_B_3_BASE 0x0c0
#define CONTROL_ADDR_B_3_HIGH 0x0cf
#define CONTROL_WIDTH_B_3     8
#define CONTROL_DEPTH_B_3     16
#define CONTROL_ADDR_B_4_BASE 0x0d0
#define CONTROL_ADDR_B_4_HIGH 0x0df
#define CONTROL_WIDTH_B_4     8
#define CONTROL_DEPTH_B_4     16
#define CONTROL_ADDR_B_5_BASE 0x0e0
#define CONTROL_ADDR_B_5_HIGH 0x0ef
#define CONTROL_WIDTH_B_5     8
#define CONTROL_DEPTH_B_5     16
#define CONTROL_ADDR_B_6_BASE 0x0f0
#define CONTROL_ADDR_B_6_HIGH 0x0ff
#define CONTROL_WIDTH_B_6     8
#define CONTROL_DEPTH_B_6     16
#define CONTROL_ADDR_B_7_BASE 0x100
#define CONTROL_ADDR_B_7_HIGH 0x10f
#define CONTROL_WIDTH_B_7     8
#define CONTROL_DEPTH_B_7     16
