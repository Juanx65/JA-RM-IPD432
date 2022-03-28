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

#define XEUCHW_CONTROL_ADDR_AP_CTRL   0x000
#define XEUCHW_CONTROL_ADDR_GIE       0x004
#define XEUCHW_CONTROL_ADDR_IER       0x008
#define XEUCHW_CONTROL_ADDR_ISR       0x00c
#define XEUCHW_CONTROL_ADDR_C_DATA    0x410
#define XEUCHW_CONTROL_BITS_C_DATA    32
#define XEUCHW_CONTROL_ADDR_C_CTRL    0x414
#define XEUCHW_CONTROL_ADDR_A_0_BASE  0x010
#define XEUCHW_CONTROL_ADDR_A_0_HIGH  0x017
#define XEUCHW_CONTROL_WIDTH_A_0      8
#define XEUCHW_CONTROL_DEPTH_A_0      8
#define XEUCHW_CONTROL_ADDR_A_1_BASE  0x018
#define XEUCHW_CONTROL_ADDR_A_1_HIGH  0x01f
#define XEUCHW_CONTROL_WIDTH_A_1      8
#define XEUCHW_CONTROL_DEPTH_A_1      8
#define XEUCHW_CONTROL_ADDR_A_2_BASE  0x020
#define XEUCHW_CONTROL_ADDR_A_2_HIGH  0x027
#define XEUCHW_CONTROL_WIDTH_A_2      8
#define XEUCHW_CONTROL_DEPTH_A_2      8
#define XEUCHW_CONTROL_ADDR_A_3_BASE  0x028
#define XEUCHW_CONTROL_ADDR_A_3_HIGH  0x02f
#define XEUCHW_CONTROL_WIDTH_A_3      8
#define XEUCHW_CONTROL_DEPTH_A_3      8
#define XEUCHW_CONTROL_ADDR_A_4_BASE  0x030
#define XEUCHW_CONTROL_ADDR_A_4_HIGH  0x037
#define XEUCHW_CONTROL_WIDTH_A_4      8
#define XEUCHW_CONTROL_DEPTH_A_4      8
#define XEUCHW_CONTROL_ADDR_A_5_BASE  0x038
#define XEUCHW_CONTROL_ADDR_A_5_HIGH  0x03f
#define XEUCHW_CONTROL_WIDTH_A_5      8
#define XEUCHW_CONTROL_DEPTH_A_5      8
#define XEUCHW_CONTROL_ADDR_A_6_BASE  0x040
#define XEUCHW_CONTROL_ADDR_A_6_HIGH  0x047
#define XEUCHW_CONTROL_WIDTH_A_6      8
#define XEUCHW_CONTROL_DEPTH_A_6      8
#define XEUCHW_CONTROL_ADDR_A_7_BASE  0x048
#define XEUCHW_CONTROL_ADDR_A_7_HIGH  0x04f
#define XEUCHW_CONTROL_WIDTH_A_7      8
#define XEUCHW_CONTROL_DEPTH_A_7      8
#define XEUCHW_CONTROL_ADDR_A_8_BASE  0x050
#define XEUCHW_CONTROL_ADDR_A_8_HIGH  0x057
#define XEUCHW_CONTROL_WIDTH_A_8      8
#define XEUCHW_CONTROL_DEPTH_A_8      8
#define XEUCHW_CONTROL_ADDR_A_9_BASE  0x058
#define XEUCHW_CONTROL_ADDR_A_9_HIGH  0x05f
#define XEUCHW_CONTROL_WIDTH_A_9      8
#define XEUCHW_CONTROL_DEPTH_A_9      8
#define XEUCHW_CONTROL_ADDR_A_10_BASE 0x060
#define XEUCHW_CONTROL_ADDR_A_10_HIGH 0x067
#define XEUCHW_CONTROL_WIDTH_A_10     8
#define XEUCHW_CONTROL_DEPTH_A_10     8
#define XEUCHW_CONTROL_ADDR_A_11_BASE 0x068
#define XEUCHW_CONTROL_ADDR_A_11_HIGH 0x06f
#define XEUCHW_CONTROL_WIDTH_A_11     8
#define XEUCHW_CONTROL_DEPTH_A_11     8
#define XEUCHW_CONTROL_ADDR_A_12_BASE 0x070
#define XEUCHW_CONTROL_ADDR_A_12_HIGH 0x077
#define XEUCHW_CONTROL_WIDTH_A_12     8
#define XEUCHW_CONTROL_DEPTH_A_12     8
#define XEUCHW_CONTROL_ADDR_A_13_BASE 0x078
#define XEUCHW_CONTROL_ADDR_A_13_HIGH 0x07f
#define XEUCHW_CONTROL_WIDTH_A_13     8
#define XEUCHW_CONTROL_DEPTH_A_13     8
#define XEUCHW_CONTROL_ADDR_A_14_BASE 0x080
#define XEUCHW_CONTROL_ADDR_A_14_HIGH 0x087
#define XEUCHW_CONTROL_WIDTH_A_14     8
#define XEUCHW_CONTROL_DEPTH_A_14     8
#define XEUCHW_CONTROL_ADDR_A_15_BASE 0x088
#define XEUCHW_CONTROL_ADDR_A_15_HIGH 0x08f
#define XEUCHW_CONTROL_WIDTH_A_15     8
#define XEUCHW_CONTROL_DEPTH_A_15     8
#define XEUCHW_CONTROL_ADDR_A_16_BASE 0x090
#define XEUCHW_CONTROL_ADDR_A_16_HIGH 0x097
#define XEUCHW_CONTROL_WIDTH_A_16     8
#define XEUCHW_CONTROL_DEPTH_A_16     8
#define XEUCHW_CONTROL_ADDR_A_17_BASE 0x098
#define XEUCHW_CONTROL_ADDR_A_17_HIGH 0x09f
#define XEUCHW_CONTROL_WIDTH_A_17     8
#define XEUCHW_CONTROL_DEPTH_A_17     8
#define XEUCHW_CONTROL_ADDR_A_18_BASE 0x0a0
#define XEUCHW_CONTROL_ADDR_A_18_HIGH 0x0a7
#define XEUCHW_CONTROL_WIDTH_A_18     8
#define XEUCHW_CONTROL_DEPTH_A_18     8
#define XEUCHW_CONTROL_ADDR_A_19_BASE 0x0a8
#define XEUCHW_CONTROL_ADDR_A_19_HIGH 0x0af
#define XEUCHW_CONTROL_WIDTH_A_19     8
#define XEUCHW_CONTROL_DEPTH_A_19     8
#define XEUCHW_CONTROL_ADDR_A_20_BASE 0x0b0
#define XEUCHW_CONTROL_ADDR_A_20_HIGH 0x0b7
#define XEUCHW_CONTROL_WIDTH_A_20     8
#define XEUCHW_CONTROL_DEPTH_A_20     8
#define XEUCHW_CONTROL_ADDR_A_21_BASE 0x0b8
#define XEUCHW_CONTROL_ADDR_A_21_HIGH 0x0bf
#define XEUCHW_CONTROL_WIDTH_A_21     8
#define XEUCHW_CONTROL_DEPTH_A_21     8
#define XEUCHW_CONTROL_ADDR_A_22_BASE 0x0c0
#define XEUCHW_CONTROL_ADDR_A_22_HIGH 0x0c7
#define XEUCHW_CONTROL_WIDTH_A_22     8
#define XEUCHW_CONTROL_DEPTH_A_22     8
#define XEUCHW_CONTROL_ADDR_A_23_BASE 0x0c8
#define XEUCHW_CONTROL_ADDR_A_23_HIGH 0x0cf
#define XEUCHW_CONTROL_WIDTH_A_23     8
#define XEUCHW_CONTROL_DEPTH_A_23     8
#define XEUCHW_CONTROL_ADDR_A_24_BASE 0x0d0
#define XEUCHW_CONTROL_ADDR_A_24_HIGH 0x0d7
#define XEUCHW_CONTROL_WIDTH_A_24     8
#define XEUCHW_CONTROL_DEPTH_A_24     8
#define XEUCHW_CONTROL_ADDR_A_25_BASE 0x0d8
#define XEUCHW_CONTROL_ADDR_A_25_HIGH 0x0df
#define XEUCHW_CONTROL_WIDTH_A_25     8
#define XEUCHW_CONTROL_DEPTH_A_25     8
#define XEUCHW_CONTROL_ADDR_A_26_BASE 0x0e0
#define XEUCHW_CONTROL_ADDR_A_26_HIGH 0x0e7
#define XEUCHW_CONTROL_WIDTH_A_26     8
#define XEUCHW_CONTROL_DEPTH_A_26     8
#define XEUCHW_CONTROL_ADDR_A_27_BASE 0x0e8
#define XEUCHW_CONTROL_ADDR_A_27_HIGH 0x0ef
#define XEUCHW_CONTROL_WIDTH_A_27     8
#define XEUCHW_CONTROL_DEPTH_A_27     8
#define XEUCHW_CONTROL_ADDR_A_28_BASE 0x0f0
#define XEUCHW_CONTROL_ADDR_A_28_HIGH 0x0f7
#define XEUCHW_CONTROL_WIDTH_A_28     8
#define XEUCHW_CONTROL_DEPTH_A_28     8
#define XEUCHW_CONTROL_ADDR_A_29_BASE 0x0f8
#define XEUCHW_CONTROL_ADDR_A_29_HIGH 0x0ff
#define XEUCHW_CONTROL_WIDTH_A_29     8
#define XEUCHW_CONTROL_DEPTH_A_29     8
#define XEUCHW_CONTROL_ADDR_A_30_BASE 0x100
#define XEUCHW_CONTROL_ADDR_A_30_HIGH 0x107
#define XEUCHW_CONTROL_WIDTH_A_30     8
#define XEUCHW_CONTROL_DEPTH_A_30     8
#define XEUCHW_CONTROL_ADDR_A_31_BASE 0x108
#define XEUCHW_CONTROL_ADDR_A_31_HIGH 0x10f
#define XEUCHW_CONTROL_WIDTH_A_31     8
#define XEUCHW_CONTROL_DEPTH_A_31     8
#define XEUCHW_CONTROL_ADDR_A_32_BASE 0x110
#define XEUCHW_CONTROL_ADDR_A_32_HIGH 0x117
#define XEUCHW_CONTROL_WIDTH_A_32     8
#define XEUCHW_CONTROL_DEPTH_A_32     8
#define XEUCHW_CONTROL_ADDR_A_33_BASE 0x118
#define XEUCHW_CONTROL_ADDR_A_33_HIGH 0x11f
#define XEUCHW_CONTROL_WIDTH_A_33     8
#define XEUCHW_CONTROL_DEPTH_A_33     8
#define XEUCHW_CONTROL_ADDR_A_34_BASE 0x120
#define XEUCHW_CONTROL_ADDR_A_34_HIGH 0x127
#define XEUCHW_CONTROL_WIDTH_A_34     8
#define XEUCHW_CONTROL_DEPTH_A_34     8
#define XEUCHW_CONTROL_ADDR_A_35_BASE 0x128
#define XEUCHW_CONTROL_ADDR_A_35_HIGH 0x12f
#define XEUCHW_CONTROL_WIDTH_A_35     8
#define XEUCHW_CONTROL_DEPTH_A_35     8
#define XEUCHW_CONTROL_ADDR_A_36_BASE 0x130
#define XEUCHW_CONTROL_ADDR_A_36_HIGH 0x137
#define XEUCHW_CONTROL_WIDTH_A_36     8
#define XEUCHW_CONTROL_DEPTH_A_36     8
#define XEUCHW_CONTROL_ADDR_A_37_BASE 0x138
#define XEUCHW_CONTROL_ADDR_A_37_HIGH 0x13f
#define XEUCHW_CONTROL_WIDTH_A_37     8
#define XEUCHW_CONTROL_DEPTH_A_37     8
#define XEUCHW_CONTROL_ADDR_A_38_BASE 0x140
#define XEUCHW_CONTROL_ADDR_A_38_HIGH 0x147
#define XEUCHW_CONTROL_WIDTH_A_38     8
#define XEUCHW_CONTROL_DEPTH_A_38     8
#define XEUCHW_CONTROL_ADDR_A_39_BASE 0x148
#define XEUCHW_CONTROL_ADDR_A_39_HIGH 0x14f
#define XEUCHW_CONTROL_WIDTH_A_39     8
#define XEUCHW_CONTROL_DEPTH_A_39     8
#define XEUCHW_CONTROL_ADDR_A_40_BASE 0x150
#define XEUCHW_CONTROL_ADDR_A_40_HIGH 0x157
#define XEUCHW_CONTROL_WIDTH_A_40     8
#define XEUCHW_CONTROL_DEPTH_A_40     8
#define XEUCHW_CONTROL_ADDR_A_41_BASE 0x158
#define XEUCHW_CONTROL_ADDR_A_41_HIGH 0x15f
#define XEUCHW_CONTROL_WIDTH_A_41     8
#define XEUCHW_CONTROL_DEPTH_A_41     8
#define XEUCHW_CONTROL_ADDR_A_42_BASE 0x160
#define XEUCHW_CONTROL_ADDR_A_42_HIGH 0x167
#define XEUCHW_CONTROL_WIDTH_A_42     8
#define XEUCHW_CONTROL_DEPTH_A_42     8
#define XEUCHW_CONTROL_ADDR_A_43_BASE 0x168
#define XEUCHW_CONTROL_ADDR_A_43_HIGH 0x16f
#define XEUCHW_CONTROL_WIDTH_A_43     8
#define XEUCHW_CONTROL_DEPTH_A_43     8
#define XEUCHW_CONTROL_ADDR_A_44_BASE 0x170
#define XEUCHW_CONTROL_ADDR_A_44_HIGH 0x177
#define XEUCHW_CONTROL_WIDTH_A_44     8
#define XEUCHW_CONTROL_DEPTH_A_44     8
#define XEUCHW_CONTROL_ADDR_A_45_BASE 0x178
#define XEUCHW_CONTROL_ADDR_A_45_HIGH 0x17f
#define XEUCHW_CONTROL_WIDTH_A_45     8
#define XEUCHW_CONTROL_DEPTH_A_45     8
#define XEUCHW_CONTROL_ADDR_A_46_BASE 0x180
#define XEUCHW_CONTROL_ADDR_A_46_HIGH 0x187
#define XEUCHW_CONTROL_WIDTH_A_46     8
#define XEUCHW_CONTROL_DEPTH_A_46     8
#define XEUCHW_CONTROL_ADDR_A_47_BASE 0x188
#define XEUCHW_CONTROL_ADDR_A_47_HIGH 0x18f
#define XEUCHW_CONTROL_WIDTH_A_47     8
#define XEUCHW_CONTROL_DEPTH_A_47     8
#define XEUCHW_CONTROL_ADDR_A_48_BASE 0x190
#define XEUCHW_CONTROL_ADDR_A_48_HIGH 0x197
#define XEUCHW_CONTROL_WIDTH_A_48     8
#define XEUCHW_CONTROL_DEPTH_A_48     8
#define XEUCHW_CONTROL_ADDR_A_49_BASE 0x198
#define XEUCHW_CONTROL_ADDR_A_49_HIGH 0x19f
#define XEUCHW_CONTROL_WIDTH_A_49     8
#define XEUCHW_CONTROL_DEPTH_A_49     8
#define XEUCHW_CONTROL_ADDR_A_50_BASE 0x1a0
#define XEUCHW_CONTROL_ADDR_A_50_HIGH 0x1a7
#define XEUCHW_CONTROL_WIDTH_A_50     8
#define XEUCHW_CONTROL_DEPTH_A_50     8
#define XEUCHW_CONTROL_ADDR_A_51_BASE 0x1a8
#define XEUCHW_CONTROL_ADDR_A_51_HIGH 0x1af
#define XEUCHW_CONTROL_WIDTH_A_51     8
#define XEUCHW_CONTROL_DEPTH_A_51     8
#define XEUCHW_CONTROL_ADDR_A_52_BASE 0x1b0
#define XEUCHW_CONTROL_ADDR_A_52_HIGH 0x1b7
#define XEUCHW_CONTROL_WIDTH_A_52     8
#define XEUCHW_CONTROL_DEPTH_A_52     8
#define XEUCHW_CONTROL_ADDR_A_53_BASE 0x1b8
#define XEUCHW_CONTROL_ADDR_A_53_HIGH 0x1bf
#define XEUCHW_CONTROL_WIDTH_A_53     8
#define XEUCHW_CONTROL_DEPTH_A_53     8
#define XEUCHW_CONTROL_ADDR_A_54_BASE 0x1c0
#define XEUCHW_CONTROL_ADDR_A_54_HIGH 0x1c7
#define XEUCHW_CONTROL_WIDTH_A_54     8
#define XEUCHW_CONTROL_DEPTH_A_54     8
#define XEUCHW_CONTROL_ADDR_A_55_BASE 0x1c8
#define XEUCHW_CONTROL_ADDR_A_55_HIGH 0x1cf
#define XEUCHW_CONTROL_WIDTH_A_55     8
#define XEUCHW_CONTROL_DEPTH_A_55     8
#define XEUCHW_CONTROL_ADDR_A_56_BASE 0x1d0
#define XEUCHW_CONTROL_ADDR_A_56_HIGH 0x1d7
#define XEUCHW_CONTROL_WIDTH_A_56     8
#define XEUCHW_CONTROL_DEPTH_A_56     8
#define XEUCHW_CONTROL_ADDR_A_57_BASE 0x1d8
#define XEUCHW_CONTROL_ADDR_A_57_HIGH 0x1df
#define XEUCHW_CONTROL_WIDTH_A_57     8
#define XEUCHW_CONTROL_DEPTH_A_57     8
#define XEUCHW_CONTROL_ADDR_A_58_BASE 0x1e0
#define XEUCHW_CONTROL_ADDR_A_58_HIGH 0x1e7
#define XEUCHW_CONTROL_WIDTH_A_58     8
#define XEUCHW_CONTROL_DEPTH_A_58     8
#define XEUCHW_CONTROL_ADDR_A_59_BASE 0x1e8
#define XEUCHW_CONTROL_ADDR_A_59_HIGH 0x1ef
#define XEUCHW_CONTROL_WIDTH_A_59     8
#define XEUCHW_CONTROL_DEPTH_A_59     8
#define XEUCHW_CONTROL_ADDR_A_60_BASE 0x1f0
#define XEUCHW_CONTROL_ADDR_A_60_HIGH 0x1f7
#define XEUCHW_CONTROL_WIDTH_A_60     8
#define XEUCHW_CONTROL_DEPTH_A_60     8
#define XEUCHW_CONTROL_ADDR_A_61_BASE 0x1f8
#define XEUCHW_CONTROL_ADDR_A_61_HIGH 0x1ff
#define XEUCHW_CONTROL_WIDTH_A_61     8
#define XEUCHW_CONTROL_DEPTH_A_61     8
#define XEUCHW_CONTROL_ADDR_A_62_BASE 0x200
#define XEUCHW_CONTROL_ADDR_A_62_HIGH 0x207
#define XEUCHW_CONTROL_WIDTH_A_62     8
#define XEUCHW_CONTROL_DEPTH_A_62     8
#define XEUCHW_CONTROL_ADDR_A_63_BASE 0x208
#define XEUCHW_CONTROL_ADDR_A_63_HIGH 0x20f
#define XEUCHW_CONTROL_WIDTH_A_63     8
#define XEUCHW_CONTROL_DEPTH_A_63     8
#define XEUCHW_CONTROL_ADDR_B_0_BASE  0x210
#define XEUCHW_CONTROL_ADDR_B_0_HIGH  0x217
#define XEUCHW_CONTROL_WIDTH_B_0      8
#define XEUCHW_CONTROL_DEPTH_B_0      8
#define XEUCHW_CONTROL_ADDR_B_1_BASE  0x218
#define XEUCHW_CONTROL_ADDR_B_1_HIGH  0x21f
#define XEUCHW_CONTROL_WIDTH_B_1      8
#define XEUCHW_CONTROL_DEPTH_B_1      8
#define XEUCHW_CONTROL_ADDR_B_2_BASE  0x220
#define XEUCHW_CONTROL_ADDR_B_2_HIGH  0x227
#define XEUCHW_CONTROL_WIDTH_B_2      8
#define XEUCHW_CONTROL_DEPTH_B_2      8
#define XEUCHW_CONTROL_ADDR_B_3_BASE  0x228
#define XEUCHW_CONTROL_ADDR_B_3_HIGH  0x22f
#define XEUCHW_CONTROL_WIDTH_B_3      8
#define XEUCHW_CONTROL_DEPTH_B_3      8
#define XEUCHW_CONTROL_ADDR_B_4_BASE  0x230
#define XEUCHW_CONTROL_ADDR_B_4_HIGH  0x237
#define XEUCHW_CONTROL_WIDTH_B_4      8
#define XEUCHW_CONTROL_DEPTH_B_4      8
#define XEUCHW_CONTROL_ADDR_B_5_BASE  0x238
#define XEUCHW_CONTROL_ADDR_B_5_HIGH  0x23f
#define XEUCHW_CONTROL_WIDTH_B_5      8
#define XEUCHW_CONTROL_DEPTH_B_5      8
#define XEUCHW_CONTROL_ADDR_B_6_BASE  0x240
#define XEUCHW_CONTROL_ADDR_B_6_HIGH  0x247
#define XEUCHW_CONTROL_WIDTH_B_6      8
#define XEUCHW_CONTROL_DEPTH_B_6      8
#define XEUCHW_CONTROL_ADDR_B_7_BASE  0x248
#define XEUCHW_CONTROL_ADDR_B_7_HIGH  0x24f
#define XEUCHW_CONTROL_WIDTH_B_7      8
#define XEUCHW_CONTROL_DEPTH_B_7      8
#define XEUCHW_CONTROL_ADDR_B_8_BASE  0x250
#define XEUCHW_CONTROL_ADDR_B_8_HIGH  0x257
#define XEUCHW_CONTROL_WIDTH_B_8      8
#define XEUCHW_CONTROL_DEPTH_B_8      8
#define XEUCHW_CONTROL_ADDR_B_9_BASE  0x258
#define XEUCHW_CONTROL_ADDR_B_9_HIGH  0x25f
#define XEUCHW_CONTROL_WIDTH_B_9      8
#define XEUCHW_CONTROL_DEPTH_B_9      8
#define XEUCHW_CONTROL_ADDR_B_10_BASE 0x260
#define XEUCHW_CONTROL_ADDR_B_10_HIGH 0x267
#define XEUCHW_CONTROL_WIDTH_B_10     8
#define XEUCHW_CONTROL_DEPTH_B_10     8
#define XEUCHW_CONTROL_ADDR_B_11_BASE 0x268
#define XEUCHW_CONTROL_ADDR_B_11_HIGH 0x26f
#define XEUCHW_CONTROL_WIDTH_B_11     8
#define XEUCHW_CONTROL_DEPTH_B_11     8
#define XEUCHW_CONTROL_ADDR_B_12_BASE 0x270
#define XEUCHW_CONTROL_ADDR_B_12_HIGH 0x277
#define XEUCHW_CONTROL_WIDTH_B_12     8
#define XEUCHW_CONTROL_DEPTH_B_12     8
#define XEUCHW_CONTROL_ADDR_B_13_BASE 0x278
#define XEUCHW_CONTROL_ADDR_B_13_HIGH 0x27f
#define XEUCHW_CONTROL_WIDTH_B_13     8
#define XEUCHW_CONTROL_DEPTH_B_13     8
#define XEUCHW_CONTROL_ADDR_B_14_BASE 0x280
#define XEUCHW_CONTROL_ADDR_B_14_HIGH 0x287
#define XEUCHW_CONTROL_WIDTH_B_14     8
#define XEUCHW_CONTROL_DEPTH_B_14     8
#define XEUCHW_CONTROL_ADDR_B_15_BASE 0x288
#define XEUCHW_CONTROL_ADDR_B_15_HIGH 0x28f
#define XEUCHW_CONTROL_WIDTH_B_15     8
#define XEUCHW_CONTROL_DEPTH_B_15     8
#define XEUCHW_CONTROL_ADDR_B_16_BASE 0x290
#define XEUCHW_CONTROL_ADDR_B_16_HIGH 0x297
#define XEUCHW_CONTROL_WIDTH_B_16     8
#define XEUCHW_CONTROL_DEPTH_B_16     8
#define XEUCHW_CONTROL_ADDR_B_17_BASE 0x298
#define XEUCHW_CONTROL_ADDR_B_17_HIGH 0x29f
#define XEUCHW_CONTROL_WIDTH_B_17     8
#define XEUCHW_CONTROL_DEPTH_B_17     8
#define XEUCHW_CONTROL_ADDR_B_18_BASE 0x2a0
#define XEUCHW_CONTROL_ADDR_B_18_HIGH 0x2a7
#define XEUCHW_CONTROL_WIDTH_B_18     8
#define XEUCHW_CONTROL_DEPTH_B_18     8
#define XEUCHW_CONTROL_ADDR_B_19_BASE 0x2a8
#define XEUCHW_CONTROL_ADDR_B_19_HIGH 0x2af
#define XEUCHW_CONTROL_WIDTH_B_19     8
#define XEUCHW_CONTROL_DEPTH_B_19     8
#define XEUCHW_CONTROL_ADDR_B_20_BASE 0x2b0
#define XEUCHW_CONTROL_ADDR_B_20_HIGH 0x2b7
#define XEUCHW_CONTROL_WIDTH_B_20     8
#define XEUCHW_CONTROL_DEPTH_B_20     8
#define XEUCHW_CONTROL_ADDR_B_21_BASE 0x2b8
#define XEUCHW_CONTROL_ADDR_B_21_HIGH 0x2bf
#define XEUCHW_CONTROL_WIDTH_B_21     8
#define XEUCHW_CONTROL_DEPTH_B_21     8
#define XEUCHW_CONTROL_ADDR_B_22_BASE 0x2c0
#define XEUCHW_CONTROL_ADDR_B_22_HIGH 0x2c7
#define XEUCHW_CONTROL_WIDTH_B_22     8
#define XEUCHW_CONTROL_DEPTH_B_22     8
#define XEUCHW_CONTROL_ADDR_B_23_BASE 0x2c8
#define XEUCHW_CONTROL_ADDR_B_23_HIGH 0x2cf
#define XEUCHW_CONTROL_WIDTH_B_23     8
#define XEUCHW_CONTROL_DEPTH_B_23     8
#define XEUCHW_CONTROL_ADDR_B_24_BASE 0x2d0
#define XEUCHW_CONTROL_ADDR_B_24_HIGH 0x2d7
#define XEUCHW_CONTROL_WIDTH_B_24     8
#define XEUCHW_CONTROL_DEPTH_B_24     8
#define XEUCHW_CONTROL_ADDR_B_25_BASE 0x2d8
#define XEUCHW_CONTROL_ADDR_B_25_HIGH 0x2df
#define XEUCHW_CONTROL_WIDTH_B_25     8
#define XEUCHW_CONTROL_DEPTH_B_25     8
#define XEUCHW_CONTROL_ADDR_B_26_BASE 0x2e0
#define XEUCHW_CONTROL_ADDR_B_26_HIGH 0x2e7
#define XEUCHW_CONTROL_WIDTH_B_26     8
#define XEUCHW_CONTROL_DEPTH_B_26     8
#define XEUCHW_CONTROL_ADDR_B_27_BASE 0x2e8
#define XEUCHW_CONTROL_ADDR_B_27_HIGH 0x2ef
#define XEUCHW_CONTROL_WIDTH_B_27     8
#define XEUCHW_CONTROL_DEPTH_B_27     8
#define XEUCHW_CONTROL_ADDR_B_28_BASE 0x2f0
#define XEUCHW_CONTROL_ADDR_B_28_HIGH 0x2f7
#define XEUCHW_CONTROL_WIDTH_B_28     8
#define XEUCHW_CONTROL_DEPTH_B_28     8
#define XEUCHW_CONTROL_ADDR_B_29_BASE 0x2f8
#define XEUCHW_CONTROL_ADDR_B_29_HIGH 0x2ff
#define XEUCHW_CONTROL_WIDTH_B_29     8
#define XEUCHW_CONTROL_DEPTH_B_29     8
#define XEUCHW_CONTROL_ADDR_B_30_BASE 0x300
#define XEUCHW_CONTROL_ADDR_B_30_HIGH 0x307
#define XEUCHW_CONTROL_WIDTH_B_30     8
#define XEUCHW_CONTROL_DEPTH_B_30     8
#define XEUCHW_CONTROL_ADDR_B_31_BASE 0x308
#define XEUCHW_CONTROL_ADDR_B_31_HIGH 0x30f
#define XEUCHW_CONTROL_WIDTH_B_31     8
#define XEUCHW_CONTROL_DEPTH_B_31     8
#define XEUCHW_CONTROL_ADDR_B_32_BASE 0x310
#define XEUCHW_CONTROL_ADDR_B_32_HIGH 0x317
#define XEUCHW_CONTROL_WIDTH_B_32     8
#define XEUCHW_CONTROL_DEPTH_B_32     8
#define XEUCHW_CONTROL_ADDR_B_33_BASE 0x318
#define XEUCHW_CONTROL_ADDR_B_33_HIGH 0x31f
#define XEUCHW_CONTROL_WIDTH_B_33     8
#define XEUCHW_CONTROL_DEPTH_B_33     8
#define XEUCHW_CONTROL_ADDR_B_34_BASE 0x320
#define XEUCHW_CONTROL_ADDR_B_34_HIGH 0x327
#define XEUCHW_CONTROL_WIDTH_B_34     8
#define XEUCHW_CONTROL_DEPTH_B_34     8
#define XEUCHW_CONTROL_ADDR_B_35_BASE 0x328
#define XEUCHW_CONTROL_ADDR_B_35_HIGH 0x32f
#define XEUCHW_CONTROL_WIDTH_B_35     8
#define XEUCHW_CONTROL_DEPTH_B_35     8
#define XEUCHW_CONTROL_ADDR_B_36_BASE 0x330
#define XEUCHW_CONTROL_ADDR_B_36_HIGH 0x337
#define XEUCHW_CONTROL_WIDTH_B_36     8
#define XEUCHW_CONTROL_DEPTH_B_36     8
#define XEUCHW_CONTROL_ADDR_B_37_BASE 0x338
#define XEUCHW_CONTROL_ADDR_B_37_HIGH 0x33f
#define XEUCHW_CONTROL_WIDTH_B_37     8
#define XEUCHW_CONTROL_DEPTH_B_37     8
#define XEUCHW_CONTROL_ADDR_B_38_BASE 0x340
#define XEUCHW_CONTROL_ADDR_B_38_HIGH 0x347
#define XEUCHW_CONTROL_WIDTH_B_38     8
#define XEUCHW_CONTROL_DEPTH_B_38     8
#define XEUCHW_CONTROL_ADDR_B_39_BASE 0x348
#define XEUCHW_CONTROL_ADDR_B_39_HIGH 0x34f
#define XEUCHW_CONTROL_WIDTH_B_39     8
#define XEUCHW_CONTROL_DEPTH_B_39     8
#define XEUCHW_CONTROL_ADDR_B_40_BASE 0x350
#define XEUCHW_CONTROL_ADDR_B_40_HIGH 0x357
#define XEUCHW_CONTROL_WIDTH_B_40     8
#define XEUCHW_CONTROL_DEPTH_B_40     8
#define XEUCHW_CONTROL_ADDR_B_41_BASE 0x358
#define XEUCHW_CONTROL_ADDR_B_41_HIGH 0x35f
#define XEUCHW_CONTROL_WIDTH_B_41     8
#define XEUCHW_CONTROL_DEPTH_B_41     8
#define XEUCHW_CONTROL_ADDR_B_42_BASE 0x360
#define XEUCHW_CONTROL_ADDR_B_42_HIGH 0x367
#define XEUCHW_CONTROL_WIDTH_B_42     8
#define XEUCHW_CONTROL_DEPTH_B_42     8
#define XEUCHW_CONTROL_ADDR_B_43_BASE 0x368
#define XEUCHW_CONTROL_ADDR_B_43_HIGH 0x36f
#define XEUCHW_CONTROL_WIDTH_B_43     8
#define XEUCHW_CONTROL_DEPTH_B_43     8
#define XEUCHW_CONTROL_ADDR_B_44_BASE 0x370
#define XEUCHW_CONTROL_ADDR_B_44_HIGH 0x377
#define XEUCHW_CONTROL_WIDTH_B_44     8
#define XEUCHW_CONTROL_DEPTH_B_44     8
#define XEUCHW_CONTROL_ADDR_B_45_BASE 0x378
#define XEUCHW_CONTROL_ADDR_B_45_HIGH 0x37f
#define XEUCHW_CONTROL_WIDTH_B_45     8
#define XEUCHW_CONTROL_DEPTH_B_45     8
#define XEUCHW_CONTROL_ADDR_B_46_BASE 0x380
#define XEUCHW_CONTROL_ADDR_B_46_HIGH 0x387
#define XEUCHW_CONTROL_WIDTH_B_46     8
#define XEUCHW_CONTROL_DEPTH_B_46     8
#define XEUCHW_CONTROL_ADDR_B_47_BASE 0x388
#define XEUCHW_CONTROL_ADDR_B_47_HIGH 0x38f
#define XEUCHW_CONTROL_WIDTH_B_47     8
#define XEUCHW_CONTROL_DEPTH_B_47     8
#define XEUCHW_CONTROL_ADDR_B_48_BASE 0x390
#define XEUCHW_CONTROL_ADDR_B_48_HIGH 0x397
#define XEUCHW_CONTROL_WIDTH_B_48     8
#define XEUCHW_CONTROL_DEPTH_B_48     8
#define XEUCHW_CONTROL_ADDR_B_49_BASE 0x398
#define XEUCHW_CONTROL_ADDR_B_49_HIGH 0x39f
#define XEUCHW_CONTROL_WIDTH_B_49     8
#define XEUCHW_CONTROL_DEPTH_B_49     8
#define XEUCHW_CONTROL_ADDR_B_50_BASE 0x3a0
#define XEUCHW_CONTROL_ADDR_B_50_HIGH 0x3a7
#define XEUCHW_CONTROL_WIDTH_B_50     8
#define XEUCHW_CONTROL_DEPTH_B_50     8
#define XEUCHW_CONTROL_ADDR_B_51_BASE 0x3a8
#define XEUCHW_CONTROL_ADDR_B_51_HIGH 0x3af
#define XEUCHW_CONTROL_WIDTH_B_51     8
#define XEUCHW_CONTROL_DEPTH_B_51     8
#define XEUCHW_CONTROL_ADDR_B_52_BASE 0x3b0
#define XEUCHW_CONTROL_ADDR_B_52_HIGH 0x3b7
#define XEUCHW_CONTROL_WIDTH_B_52     8
#define XEUCHW_CONTROL_DEPTH_B_52     8
#define XEUCHW_CONTROL_ADDR_B_53_BASE 0x3b8
#define XEUCHW_CONTROL_ADDR_B_53_HIGH 0x3bf
#define XEUCHW_CONTROL_WIDTH_B_53     8
#define XEUCHW_CONTROL_DEPTH_B_53     8
#define XEUCHW_CONTROL_ADDR_B_54_BASE 0x3c0
#define XEUCHW_CONTROL_ADDR_B_54_HIGH 0x3c7
#define XEUCHW_CONTROL_WIDTH_B_54     8
#define XEUCHW_CONTROL_DEPTH_B_54     8
#define XEUCHW_CONTROL_ADDR_B_55_BASE 0x3c8
#define XEUCHW_CONTROL_ADDR_B_55_HIGH 0x3cf
#define XEUCHW_CONTROL_WIDTH_B_55     8
#define XEUCHW_CONTROL_DEPTH_B_55     8
#define XEUCHW_CONTROL_ADDR_B_56_BASE 0x3d0
#define XEUCHW_CONTROL_ADDR_B_56_HIGH 0x3d7
#define XEUCHW_CONTROL_WIDTH_B_56     8
#define XEUCHW_CONTROL_DEPTH_B_56     8
#define XEUCHW_CONTROL_ADDR_B_57_BASE 0x3d8
#define XEUCHW_CONTROL_ADDR_B_57_HIGH 0x3df
#define XEUCHW_CONTROL_WIDTH_B_57     8
#define XEUCHW_CONTROL_DEPTH_B_57     8
#define XEUCHW_CONTROL_ADDR_B_58_BASE 0x3e0
#define XEUCHW_CONTROL_ADDR_B_58_HIGH 0x3e7
#define XEUCHW_CONTROL_WIDTH_B_58     8
#define XEUCHW_CONTROL_DEPTH_B_58     8
#define XEUCHW_CONTROL_ADDR_B_59_BASE 0x3e8
#define XEUCHW_CONTROL_ADDR_B_59_HIGH 0x3ef
#define XEUCHW_CONTROL_WIDTH_B_59     8
#define XEUCHW_CONTROL_DEPTH_B_59     8
#define XEUCHW_CONTROL_ADDR_B_60_BASE 0x3f0
#define XEUCHW_CONTROL_ADDR_B_60_HIGH 0x3f7
#define XEUCHW_CONTROL_WIDTH_B_60     8
#define XEUCHW_CONTROL_DEPTH_B_60     8
#define XEUCHW_CONTROL_ADDR_B_61_BASE 0x3f8
#define XEUCHW_CONTROL_ADDR_B_61_HIGH 0x3ff
#define XEUCHW_CONTROL_WIDTH_B_61     8
#define XEUCHW_CONTROL_DEPTH_B_61     8
#define XEUCHW_CONTROL_ADDR_B_62_BASE 0x400
#define XEUCHW_CONTROL_ADDR_B_62_HIGH 0x407
#define XEUCHW_CONTROL_WIDTH_B_62     8
#define XEUCHW_CONTROL_DEPTH_B_62     8
#define XEUCHW_CONTROL_ADDR_B_63_BASE 0x408
#define XEUCHW_CONTROL_ADDR_B_63_HIGH 0x40f
#define XEUCHW_CONTROL_WIDTH_B_63     8
#define XEUCHW_CONTROL_DEPTH_B_63     8

