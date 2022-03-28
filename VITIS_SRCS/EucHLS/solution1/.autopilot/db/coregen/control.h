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
// 0x010 : Data signal of y_sqrt
//         bit 31~0 - y_sqrt[31:0] (Read)
// 0x014 : Control signal of y_sqrt
//         bit 0  - y_sqrt_ap_vld (Read/COR)
//         others - reserved
// 0x040 ~
// 0x07f : Memory 'x_0' (64 * 8b)
//         Word n : bit [ 7: 0] - x_0[4n]
//                  bit [15: 8] - x_0[4n+1]
//                  bit [23:16] - x_0[4n+2]
//                  bit [31:24] - x_0[4n+3]
// 0x080 ~
// 0x0bf : Memory 'x_1' (64 * 8b)
//         Word n : bit [ 7: 0] - x_1[4n]
//                  bit [15: 8] - x_1[4n+1]
//                  bit [23:16] - x_1[4n+2]
//                  bit [31:24] - x_1[4n+3]
// 0x0c0 ~
// 0x0ff : Memory 'x_2' (64 * 8b)
//         Word n : bit [ 7: 0] - x_2[4n]
//                  bit [15: 8] - x_2[4n+1]
//                  bit [23:16] - x_2[4n+2]
//                  bit [31:24] - x_2[4n+3]
// 0x100 ~
// 0x13f : Memory 'x_3' (64 * 8b)
//         Word n : bit [ 7: 0] - x_3[4n]
//                  bit [15: 8] - x_3[4n+1]
//                  bit [23:16] - x_3[4n+2]
//                  bit [31:24] - x_3[4n+3]
// 0x140 ~
// 0x17f : Memory 'x_4' (64 * 8b)
//         Word n : bit [ 7: 0] - x_4[4n]
//                  bit [15: 8] - x_4[4n+1]
//                  bit [23:16] - x_4[4n+2]
//                  bit [31:24] - x_4[4n+3]
// 0x180 ~
// 0x1bf : Memory 'x_5' (64 * 8b)
//         Word n : bit [ 7: 0] - x_5[4n]
//                  bit [15: 8] - x_5[4n+1]
//                  bit [23:16] - x_5[4n+2]
//                  bit [31:24] - x_5[4n+3]
// 0x1c0 ~
// 0x1ff : Memory 'x_6' (64 * 8b)
//         Word n : bit [ 7: 0] - x_6[4n]
//                  bit [15: 8] - x_6[4n+1]
//                  bit [23:16] - x_6[4n+2]
//                  bit [31:24] - x_6[4n+3]
// 0x200 ~
// 0x23f : Memory 'x_7' (64 * 8b)
//         Word n : bit [ 7: 0] - x_7[4n]
//                  bit [15: 8] - x_7[4n+1]
//                  bit [23:16] - x_7[4n+2]
//                  bit [31:24] - x_7[4n+3]
// 0x240 ~
// 0x27f : Memory 'x_8' (64 * 8b)
//         Word n : bit [ 7: 0] - x_8[4n]
//                  bit [15: 8] - x_8[4n+1]
//                  bit [23:16] - x_8[4n+2]
//                  bit [31:24] - x_8[4n+3]
// 0x280 ~
// 0x2bf : Memory 'x_9' (64 * 8b)
//         Word n : bit [ 7: 0] - x_9[4n]
//                  bit [15: 8] - x_9[4n+1]
//                  bit [23:16] - x_9[4n+2]
//                  bit [31:24] - x_9[4n+3]
// 0x2c0 ~
// 0x2ff : Memory 'x_10' (64 * 8b)
//         Word n : bit [ 7: 0] - x_10[4n]
//                  bit [15: 8] - x_10[4n+1]
//                  bit [23:16] - x_10[4n+2]
//                  bit [31:24] - x_10[4n+3]
// 0x300 ~
// 0x33f : Memory 'x_11' (64 * 8b)
//         Word n : bit [ 7: 0] - x_11[4n]
//                  bit [15: 8] - x_11[4n+1]
//                  bit [23:16] - x_11[4n+2]
//                  bit [31:24] - x_11[4n+3]
// 0x340 ~
// 0x37f : Memory 'x_12' (64 * 8b)
//         Word n : bit [ 7: 0] - x_12[4n]
//                  bit [15: 8] - x_12[4n+1]
//                  bit [23:16] - x_12[4n+2]
//                  bit [31:24] - x_12[4n+3]
// 0x380 ~
// 0x3bf : Memory 'x_13' (64 * 8b)
//         Word n : bit [ 7: 0] - x_13[4n]
//                  bit [15: 8] - x_13[4n+1]
//                  bit [23:16] - x_13[4n+2]
//                  bit [31:24] - x_13[4n+3]
// 0x3c0 ~
// 0x3ff : Memory 'x_14' (64 * 8b)
//         Word n : bit [ 7: 0] - x_14[4n]
//                  bit [15: 8] - x_14[4n+1]
//                  bit [23:16] - x_14[4n+2]
//                  bit [31:24] - x_14[4n+3]
// 0x400 ~
// 0x43f : Memory 'x_15' (64 * 8b)
//         Word n : bit [ 7: 0] - x_15[4n]
//                  bit [15: 8] - x_15[4n+1]
//                  bit [23:16] - x_15[4n+2]
//                  bit [31:24] - x_15[4n+3]
// 0x440 ~
// 0x47f : Memory 'x_16' (64 * 8b)
//         Word n : bit [ 7: 0] - x_16[4n]
//                  bit [15: 8] - x_16[4n+1]
//                  bit [23:16] - x_16[4n+2]
//                  bit [31:24] - x_16[4n+3]
// 0x480 ~
// 0x4bf : Memory 'x_17' (64 * 8b)
//         Word n : bit [ 7: 0] - x_17[4n]
//                  bit [15: 8] - x_17[4n+1]
//                  bit [23:16] - x_17[4n+2]
//                  bit [31:24] - x_17[4n+3]
// 0x4c0 ~
// 0x4ff : Memory 'x_18' (64 * 8b)
//         Word n : bit [ 7: 0] - x_18[4n]
//                  bit [15: 8] - x_18[4n+1]
//                  bit [23:16] - x_18[4n+2]
//                  bit [31:24] - x_18[4n+3]
// 0x500 ~
// 0x53f : Memory 'x_19' (64 * 8b)
//         Word n : bit [ 7: 0] - x_19[4n]
//                  bit [15: 8] - x_19[4n+1]
//                  bit [23:16] - x_19[4n+2]
//                  bit [31:24] - x_19[4n+3]
// 0x540 ~
// 0x57f : Memory 'x_20' (64 * 8b)
//         Word n : bit [ 7: 0] - x_20[4n]
//                  bit [15: 8] - x_20[4n+1]
//                  bit [23:16] - x_20[4n+2]
//                  bit [31:24] - x_20[4n+3]
// 0x580 ~
// 0x5bf : Memory 'x_21' (64 * 8b)
//         Word n : bit [ 7: 0] - x_21[4n]
//                  bit [15: 8] - x_21[4n+1]
//                  bit [23:16] - x_21[4n+2]
//                  bit [31:24] - x_21[4n+3]
// 0x5c0 ~
// 0x5ff : Memory 'x_22' (64 * 8b)
//         Word n : bit [ 7: 0] - x_22[4n]
//                  bit [15: 8] - x_22[4n+1]
//                  bit [23:16] - x_22[4n+2]
//                  bit [31:24] - x_22[4n+3]
// 0x600 ~
// 0x63f : Memory 'x_23' (64 * 8b)
//         Word n : bit [ 7: 0] - x_23[4n]
//                  bit [15: 8] - x_23[4n+1]
//                  bit [23:16] - x_23[4n+2]
//                  bit [31:24] - x_23[4n+3]
// 0x640 ~
// 0x67f : Memory 'x_24' (64 * 8b)
//         Word n : bit [ 7: 0] - x_24[4n]
//                  bit [15: 8] - x_24[4n+1]
//                  bit [23:16] - x_24[4n+2]
//                  bit [31:24] - x_24[4n+3]
// 0x680 ~
// 0x6bf : Memory 'x_25' (64 * 8b)
//         Word n : bit [ 7: 0] - x_25[4n]
//                  bit [15: 8] - x_25[4n+1]
//                  bit [23:16] - x_25[4n+2]
//                  bit [31:24] - x_25[4n+3]
// 0x6c0 ~
// 0x6ff : Memory 'x_26' (64 * 8b)
//         Word n : bit [ 7: 0] - x_26[4n]
//                  bit [15: 8] - x_26[4n+1]
//                  bit [23:16] - x_26[4n+2]
//                  bit [31:24] - x_26[4n+3]
// 0x700 ~
// 0x73f : Memory 'x_27' (64 * 8b)
//         Word n : bit [ 7: 0] - x_27[4n]
//                  bit [15: 8] - x_27[4n+1]
//                  bit [23:16] - x_27[4n+2]
//                  bit [31:24] - x_27[4n+3]
// 0x740 ~
// 0x77f : Memory 'x_28' (64 * 8b)
//         Word n : bit [ 7: 0] - x_28[4n]
//                  bit [15: 8] - x_28[4n+1]
//                  bit [23:16] - x_28[4n+2]
//                  bit [31:24] - x_28[4n+3]
// 0x780 ~
// 0x7bf : Memory 'x_29' (64 * 8b)
//         Word n : bit [ 7: 0] - x_29[4n]
//                  bit [15: 8] - x_29[4n+1]
//                  bit [23:16] - x_29[4n+2]
//                  bit [31:24] - x_29[4n+3]
// 0x7c0 ~
// 0x7ff : Memory 'x_30' (64 * 8b)
//         Word n : bit [ 7: 0] - x_30[4n]
//                  bit [15: 8] - x_30[4n+1]
//                  bit [23:16] - x_30[4n+2]
//                  bit [31:24] - x_30[4n+3]
// 0x800 ~
// 0x83f : Memory 'x_31' (64 * 8b)
//         Word n : bit [ 7: 0] - x_31[4n]
//                  bit [15: 8] - x_31[4n+1]
//                  bit [23:16] - x_31[4n+2]
//                  bit [31:24] - x_31[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL     0x000
#define CONTROL_ADDR_GIE         0x004
#define CONTROL_ADDR_IER         0x008
#define CONTROL_ADDR_ISR         0x00c
#define CONTROL_ADDR_Y_SQRT_DATA 0x010
#define CONTROL_BITS_Y_SQRT_DATA 32
#define CONTROL_ADDR_Y_SQRT_CTRL 0x014
#define CONTROL_ADDR_X_0_BASE    0x040
#define CONTROL_ADDR_X_0_HIGH    0x07f
#define CONTROL_WIDTH_X_0        8
#define CONTROL_DEPTH_X_0        64
#define CONTROL_ADDR_X_1_BASE    0x080
#define CONTROL_ADDR_X_1_HIGH    0x0bf
#define CONTROL_WIDTH_X_1        8
#define CONTROL_DEPTH_X_1        64
#define CONTROL_ADDR_X_2_BASE    0x0c0
#define CONTROL_ADDR_X_2_HIGH    0x0ff
#define CONTROL_WIDTH_X_2        8
#define CONTROL_DEPTH_X_2        64
#define CONTROL_ADDR_X_3_BASE    0x100
#define CONTROL_ADDR_X_3_HIGH    0x13f
#define CONTROL_WIDTH_X_3        8
#define CONTROL_DEPTH_X_3        64
#define CONTROL_ADDR_X_4_BASE    0x140
#define CONTROL_ADDR_X_4_HIGH    0x17f
#define CONTROL_WIDTH_X_4        8
#define CONTROL_DEPTH_X_4        64
#define CONTROL_ADDR_X_5_BASE    0x180
#define CONTROL_ADDR_X_5_HIGH    0x1bf
#define CONTROL_WIDTH_X_5        8
#define CONTROL_DEPTH_X_5        64
#define CONTROL_ADDR_X_6_BASE    0x1c0
#define CONTROL_ADDR_X_6_HIGH    0x1ff
#define CONTROL_WIDTH_X_6        8
#define CONTROL_DEPTH_X_6        64
#define CONTROL_ADDR_X_7_BASE    0x200
#define CONTROL_ADDR_X_7_HIGH    0x23f
#define CONTROL_WIDTH_X_7        8
#define CONTROL_DEPTH_X_7        64
#define CONTROL_ADDR_X_8_BASE    0x240
#define CONTROL_ADDR_X_8_HIGH    0x27f
#define CONTROL_WIDTH_X_8        8
#define CONTROL_DEPTH_X_8        64
#define CONTROL_ADDR_X_9_BASE    0x280
#define CONTROL_ADDR_X_9_HIGH    0x2bf
#define CONTROL_WIDTH_X_9        8
#define CONTROL_DEPTH_X_9        64
#define CONTROL_ADDR_X_10_BASE   0x2c0
#define CONTROL_ADDR_X_10_HIGH   0x2ff
#define CONTROL_WIDTH_X_10       8
#define CONTROL_DEPTH_X_10       64
#define CONTROL_ADDR_X_11_BASE   0x300
#define CONTROL_ADDR_X_11_HIGH   0x33f
#define CONTROL_WIDTH_X_11       8
#define CONTROL_DEPTH_X_11       64
#define CONTROL_ADDR_X_12_BASE   0x340
#define CONTROL_ADDR_X_12_HIGH   0x37f
#define CONTROL_WIDTH_X_12       8
#define CONTROL_DEPTH_X_12       64
#define CONTROL_ADDR_X_13_BASE   0x380
#define CONTROL_ADDR_X_13_HIGH   0x3bf
#define CONTROL_WIDTH_X_13       8
#define CONTROL_DEPTH_X_13       64
#define CONTROL_ADDR_X_14_BASE   0x3c0
#define CONTROL_ADDR_X_14_HIGH   0x3ff
#define CONTROL_WIDTH_X_14       8
#define CONTROL_DEPTH_X_14       64
#define CONTROL_ADDR_X_15_BASE   0x400
#define CONTROL_ADDR_X_15_HIGH   0x43f
#define CONTROL_WIDTH_X_15       8
#define CONTROL_DEPTH_X_15       64
#define CONTROL_ADDR_X_16_BASE   0x440
#define CONTROL_ADDR_X_16_HIGH   0x47f
#define CONTROL_WIDTH_X_16       8
#define CONTROL_DEPTH_X_16       64
#define CONTROL_ADDR_X_17_BASE   0x480
#define CONTROL_ADDR_X_17_HIGH   0x4bf
#define CONTROL_WIDTH_X_17       8
#define CONTROL_DEPTH_X_17       64
#define CONTROL_ADDR_X_18_BASE   0x4c0
#define CONTROL_ADDR_X_18_HIGH   0x4ff
#define CONTROL_WIDTH_X_18       8
#define CONTROL_DEPTH_X_18       64
#define CONTROL_ADDR_X_19_BASE   0x500
#define CONTROL_ADDR_X_19_HIGH   0x53f
#define CONTROL_WIDTH_X_19       8
#define CONTROL_DEPTH_X_19       64
#define CONTROL_ADDR_X_20_BASE   0x540
#define CONTROL_ADDR_X_20_HIGH   0x57f
#define CONTROL_WIDTH_X_20       8
#define CONTROL_DEPTH_X_20       64
#define CONTROL_ADDR_X_21_BASE   0x580
#define CONTROL_ADDR_X_21_HIGH   0x5bf
#define CONTROL_WIDTH_X_21       8
#define CONTROL_DEPTH_X_21       64
#define CONTROL_ADDR_X_22_BASE   0x5c0
#define CONTROL_ADDR_X_22_HIGH   0x5ff
#define CONTROL_WIDTH_X_22       8
#define CONTROL_DEPTH_X_22       64
#define CONTROL_ADDR_X_23_BASE   0x600
#define CONTROL_ADDR_X_23_HIGH   0x63f
#define CONTROL_WIDTH_X_23       8
#define CONTROL_DEPTH_X_23       64
#define CONTROL_ADDR_X_24_BASE   0x640
#define CONTROL_ADDR_X_24_HIGH   0x67f
#define CONTROL_WIDTH_X_24       8
#define CONTROL_DEPTH_X_24       64
#define CONTROL_ADDR_X_25_BASE   0x680
#define CONTROL_ADDR_X_25_HIGH   0x6bf
#define CONTROL_WIDTH_X_25       8
#define CONTROL_DEPTH_X_25       64
#define CONTROL_ADDR_X_26_BASE   0x6c0
#define CONTROL_ADDR_X_26_HIGH   0x6ff
#define CONTROL_WIDTH_X_26       8
#define CONTROL_DEPTH_X_26       64
#define CONTROL_ADDR_X_27_BASE   0x700
#define CONTROL_ADDR_X_27_HIGH   0x73f
#define CONTROL_WIDTH_X_27       8
#define CONTROL_DEPTH_X_27       64
#define CONTROL_ADDR_X_28_BASE   0x740
#define CONTROL_ADDR_X_28_HIGH   0x77f
#define CONTROL_WIDTH_X_28       8
#define CONTROL_DEPTH_X_28       64
#define CONTROL_ADDR_X_29_BASE   0x780
#define CONTROL_ADDR_X_29_HIGH   0x7bf
#define CONTROL_WIDTH_X_29       8
#define CONTROL_DEPTH_X_29       64
#define CONTROL_ADDR_X_30_BASE   0x7c0
#define CONTROL_ADDR_X_30_HIGH   0x7ff
#define CONTROL_WIDTH_X_30       8
#define CONTROL_DEPTH_X_30       64
#define CONTROL_ADDR_X_31_BASE   0x800
#define CONTROL_ADDR_X_31_HIGH   0x83f
#define CONTROL_WIDTH_X_31       8
#define CONTROL_DEPTH_X_31       64
