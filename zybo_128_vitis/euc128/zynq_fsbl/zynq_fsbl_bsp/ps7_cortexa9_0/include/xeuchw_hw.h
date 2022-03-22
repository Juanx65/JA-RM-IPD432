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
// 0x090 : Data signal of A_16
//         bit 7~0 - A_16[7:0] (Read/Write)
//         others  - reserved
// 0x094 : reserved
// 0x098 : Data signal of A_17
//         bit 7~0 - A_17[7:0] (Read/Write)
//         others  - reserved
// 0x09c : reserved
// 0x0a0 : Data signal of A_18
//         bit 7~0 - A_18[7:0] (Read/Write)
//         others  - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of A_19
//         bit 7~0 - A_19[7:0] (Read/Write)
//         others  - reserved
// 0x0ac : reserved
// 0x0b0 : Data signal of A_20
//         bit 7~0 - A_20[7:0] (Read/Write)
//         others  - reserved
// 0x0b4 : reserved
// 0x0b8 : Data signal of A_21
//         bit 7~0 - A_21[7:0] (Read/Write)
//         others  - reserved
// 0x0bc : reserved
// 0x0c0 : Data signal of A_22
//         bit 7~0 - A_22[7:0] (Read/Write)
//         others  - reserved
// 0x0c4 : reserved
// 0x0c8 : Data signal of A_23
//         bit 7~0 - A_23[7:0] (Read/Write)
//         others  - reserved
// 0x0cc : reserved
// 0x0d0 : Data signal of A_24
//         bit 7~0 - A_24[7:0] (Read/Write)
//         others  - reserved
// 0x0d4 : reserved
// 0x0d8 : Data signal of A_25
//         bit 7~0 - A_25[7:0] (Read/Write)
//         others  - reserved
// 0x0dc : reserved
// 0x0e0 : Data signal of A_26
//         bit 7~0 - A_26[7:0] (Read/Write)
//         others  - reserved
// 0x0e4 : reserved
// 0x0e8 : Data signal of A_27
//         bit 7~0 - A_27[7:0] (Read/Write)
//         others  - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of A_28
//         bit 7~0 - A_28[7:0] (Read/Write)
//         others  - reserved
// 0x0f4 : reserved
// 0x0f8 : Data signal of A_29
//         bit 7~0 - A_29[7:0] (Read/Write)
//         others  - reserved
// 0x0fc : reserved
// 0x100 : Data signal of A_30
//         bit 7~0 - A_30[7:0] (Read/Write)
//         others  - reserved
// 0x104 : reserved
// 0x108 : Data signal of A_31
//         bit 7~0 - A_31[7:0] (Read/Write)
//         others  - reserved
// 0x10c : reserved
// 0x110 : Data signal of A_32
//         bit 7~0 - A_32[7:0] (Read/Write)
//         others  - reserved
// 0x114 : reserved
// 0x118 : Data signal of A_33
//         bit 7~0 - A_33[7:0] (Read/Write)
//         others  - reserved
// 0x11c : reserved
// 0x120 : Data signal of A_34
//         bit 7~0 - A_34[7:0] (Read/Write)
//         others  - reserved
// 0x124 : reserved
// 0x128 : Data signal of A_35
//         bit 7~0 - A_35[7:0] (Read/Write)
//         others  - reserved
// 0x12c : reserved
// 0x130 : Data signal of A_36
//         bit 7~0 - A_36[7:0] (Read/Write)
//         others  - reserved
// 0x134 : reserved
// 0x138 : Data signal of A_37
//         bit 7~0 - A_37[7:0] (Read/Write)
//         others  - reserved
// 0x13c : reserved
// 0x140 : Data signal of A_38
//         bit 7~0 - A_38[7:0] (Read/Write)
//         others  - reserved
// 0x144 : reserved
// 0x148 : Data signal of A_39
//         bit 7~0 - A_39[7:0] (Read/Write)
//         others  - reserved
// 0x14c : reserved
// 0x150 : Data signal of A_40
//         bit 7~0 - A_40[7:0] (Read/Write)
//         others  - reserved
// 0x154 : reserved
// 0x158 : Data signal of A_41
//         bit 7~0 - A_41[7:0] (Read/Write)
//         others  - reserved
// 0x15c : reserved
// 0x160 : Data signal of A_42
//         bit 7~0 - A_42[7:0] (Read/Write)
//         others  - reserved
// 0x164 : reserved
// 0x168 : Data signal of A_43
//         bit 7~0 - A_43[7:0] (Read/Write)
//         others  - reserved
// 0x16c : reserved
// 0x170 : Data signal of A_44
//         bit 7~0 - A_44[7:0] (Read/Write)
//         others  - reserved
// 0x174 : reserved
// 0x178 : Data signal of A_45
//         bit 7~0 - A_45[7:0] (Read/Write)
//         others  - reserved
// 0x17c : reserved
// 0x180 : Data signal of A_46
//         bit 7~0 - A_46[7:0] (Read/Write)
//         others  - reserved
// 0x184 : reserved
// 0x188 : Data signal of A_47
//         bit 7~0 - A_47[7:0] (Read/Write)
//         others  - reserved
// 0x18c : reserved
// 0x190 : Data signal of A_48
//         bit 7~0 - A_48[7:0] (Read/Write)
//         others  - reserved
// 0x194 : reserved
// 0x198 : Data signal of A_49
//         bit 7~0 - A_49[7:0] (Read/Write)
//         others  - reserved
// 0x19c : reserved
// 0x1a0 : Data signal of A_50
//         bit 7~0 - A_50[7:0] (Read/Write)
//         others  - reserved
// 0x1a4 : reserved
// 0x1a8 : Data signal of A_51
//         bit 7~0 - A_51[7:0] (Read/Write)
//         others  - reserved
// 0x1ac : reserved
// 0x1b0 : Data signal of A_52
//         bit 7~0 - A_52[7:0] (Read/Write)
//         others  - reserved
// 0x1b4 : reserved
// 0x1b8 : Data signal of A_53
//         bit 7~0 - A_53[7:0] (Read/Write)
//         others  - reserved
// 0x1bc : reserved
// 0x1c0 : Data signal of A_54
//         bit 7~0 - A_54[7:0] (Read/Write)
//         others  - reserved
// 0x1c4 : reserved
// 0x1c8 : Data signal of A_55
//         bit 7~0 - A_55[7:0] (Read/Write)
//         others  - reserved
// 0x1cc : reserved
// 0x1d0 : Data signal of A_56
//         bit 7~0 - A_56[7:0] (Read/Write)
//         others  - reserved
// 0x1d4 : reserved
// 0x1d8 : Data signal of A_57
//         bit 7~0 - A_57[7:0] (Read/Write)
//         others  - reserved
// 0x1dc : reserved
// 0x1e0 : Data signal of A_58
//         bit 7~0 - A_58[7:0] (Read/Write)
//         others  - reserved
// 0x1e4 : reserved
// 0x1e8 : Data signal of A_59
//         bit 7~0 - A_59[7:0] (Read/Write)
//         others  - reserved
// 0x1ec : reserved
// 0x1f0 : Data signal of A_60
//         bit 7~0 - A_60[7:0] (Read/Write)
//         others  - reserved
// 0x1f4 : reserved
// 0x1f8 : Data signal of A_61
//         bit 7~0 - A_61[7:0] (Read/Write)
//         others  - reserved
// 0x1fc : reserved
// 0x200 : Data signal of A_62
//         bit 7~0 - A_62[7:0] (Read/Write)
//         others  - reserved
// 0x204 : reserved
// 0x208 : Data signal of A_63
//         bit 7~0 - A_63[7:0] (Read/Write)
//         others  - reserved
// 0x20c : reserved
// 0x210 : Data signal of A_64
//         bit 7~0 - A_64[7:0] (Read/Write)
//         others  - reserved
// 0x214 : reserved
// 0x218 : Data signal of A_65
//         bit 7~0 - A_65[7:0] (Read/Write)
//         others  - reserved
// 0x21c : reserved
// 0x220 : Data signal of A_66
//         bit 7~0 - A_66[7:0] (Read/Write)
//         others  - reserved
// 0x224 : reserved
// 0x228 : Data signal of A_67
//         bit 7~0 - A_67[7:0] (Read/Write)
//         others  - reserved
// 0x22c : reserved
// 0x230 : Data signal of A_68
//         bit 7~0 - A_68[7:0] (Read/Write)
//         others  - reserved
// 0x234 : reserved
// 0x238 : Data signal of A_69
//         bit 7~0 - A_69[7:0] (Read/Write)
//         others  - reserved
// 0x23c : reserved
// 0x240 : Data signal of A_70
//         bit 7~0 - A_70[7:0] (Read/Write)
//         others  - reserved
// 0x244 : reserved
// 0x248 : Data signal of A_71
//         bit 7~0 - A_71[7:0] (Read/Write)
//         others  - reserved
// 0x24c : reserved
// 0x250 : Data signal of A_72
//         bit 7~0 - A_72[7:0] (Read/Write)
//         others  - reserved
// 0x254 : reserved
// 0x258 : Data signal of A_73
//         bit 7~0 - A_73[7:0] (Read/Write)
//         others  - reserved
// 0x25c : reserved
// 0x260 : Data signal of A_74
//         bit 7~0 - A_74[7:0] (Read/Write)
//         others  - reserved
// 0x264 : reserved
// 0x268 : Data signal of A_75
//         bit 7~0 - A_75[7:0] (Read/Write)
//         others  - reserved
// 0x26c : reserved
// 0x270 : Data signal of A_76
//         bit 7~0 - A_76[7:0] (Read/Write)
//         others  - reserved
// 0x274 : reserved
// 0x278 : Data signal of A_77
//         bit 7~0 - A_77[7:0] (Read/Write)
//         others  - reserved
// 0x27c : reserved
// 0x280 : Data signal of A_78
//         bit 7~0 - A_78[7:0] (Read/Write)
//         others  - reserved
// 0x284 : reserved
// 0x288 : Data signal of A_79
//         bit 7~0 - A_79[7:0] (Read/Write)
//         others  - reserved
// 0x28c : reserved
// 0x290 : Data signal of A_80
//         bit 7~0 - A_80[7:0] (Read/Write)
//         others  - reserved
// 0x294 : reserved
// 0x298 : Data signal of A_81
//         bit 7~0 - A_81[7:0] (Read/Write)
//         others  - reserved
// 0x29c : reserved
// 0x2a0 : Data signal of A_82
//         bit 7~0 - A_82[7:0] (Read/Write)
//         others  - reserved
// 0x2a4 : reserved
// 0x2a8 : Data signal of A_83
//         bit 7~0 - A_83[7:0] (Read/Write)
//         others  - reserved
// 0x2ac : reserved
// 0x2b0 : Data signal of A_84
//         bit 7~0 - A_84[7:0] (Read/Write)
//         others  - reserved
// 0x2b4 : reserved
// 0x2b8 : Data signal of A_85
//         bit 7~0 - A_85[7:0] (Read/Write)
//         others  - reserved
// 0x2bc : reserved
// 0x2c0 : Data signal of A_86
//         bit 7~0 - A_86[7:0] (Read/Write)
//         others  - reserved
// 0x2c4 : reserved
// 0x2c8 : Data signal of A_87
//         bit 7~0 - A_87[7:0] (Read/Write)
//         others  - reserved
// 0x2cc : reserved
// 0x2d0 : Data signal of A_88
//         bit 7~0 - A_88[7:0] (Read/Write)
//         others  - reserved
// 0x2d4 : reserved
// 0x2d8 : Data signal of A_89
//         bit 7~0 - A_89[7:0] (Read/Write)
//         others  - reserved
// 0x2dc : reserved
// 0x2e0 : Data signal of A_90
//         bit 7~0 - A_90[7:0] (Read/Write)
//         others  - reserved
// 0x2e4 : reserved
// 0x2e8 : Data signal of A_91
//         bit 7~0 - A_91[7:0] (Read/Write)
//         others  - reserved
// 0x2ec : reserved
// 0x2f0 : Data signal of A_92
//         bit 7~0 - A_92[7:0] (Read/Write)
//         others  - reserved
// 0x2f4 : reserved
// 0x2f8 : Data signal of A_93
//         bit 7~0 - A_93[7:0] (Read/Write)
//         others  - reserved
// 0x2fc : reserved
// 0x300 : Data signal of A_94
//         bit 7~0 - A_94[7:0] (Read/Write)
//         others  - reserved
// 0x304 : reserved
// 0x308 : Data signal of A_95
//         bit 7~0 - A_95[7:0] (Read/Write)
//         others  - reserved
// 0x30c : reserved
// 0x310 : Data signal of A_96
//         bit 7~0 - A_96[7:0] (Read/Write)
//         others  - reserved
// 0x314 : reserved
// 0x318 : Data signal of A_97
//         bit 7~0 - A_97[7:0] (Read/Write)
//         others  - reserved
// 0x31c : reserved
// 0x320 : Data signal of A_98
//         bit 7~0 - A_98[7:0] (Read/Write)
//         others  - reserved
// 0x324 : reserved
// 0x328 : Data signal of A_99
//         bit 7~0 - A_99[7:0] (Read/Write)
//         others  - reserved
// 0x32c : reserved
// 0x330 : Data signal of A_100
//         bit 7~0 - A_100[7:0] (Read/Write)
//         others  - reserved
// 0x334 : reserved
// 0x338 : Data signal of A_101
//         bit 7~0 - A_101[7:0] (Read/Write)
//         others  - reserved
// 0x33c : reserved
// 0x340 : Data signal of A_102
//         bit 7~0 - A_102[7:0] (Read/Write)
//         others  - reserved
// 0x344 : reserved
// 0x348 : Data signal of A_103
//         bit 7~0 - A_103[7:0] (Read/Write)
//         others  - reserved
// 0x34c : reserved
// 0x350 : Data signal of A_104
//         bit 7~0 - A_104[7:0] (Read/Write)
//         others  - reserved
// 0x354 : reserved
// 0x358 : Data signal of A_105
//         bit 7~0 - A_105[7:0] (Read/Write)
//         others  - reserved
// 0x35c : reserved
// 0x360 : Data signal of A_106
//         bit 7~0 - A_106[7:0] (Read/Write)
//         others  - reserved
// 0x364 : reserved
// 0x368 : Data signal of A_107
//         bit 7~0 - A_107[7:0] (Read/Write)
//         others  - reserved
// 0x36c : reserved
// 0x370 : Data signal of A_108
//         bit 7~0 - A_108[7:0] (Read/Write)
//         others  - reserved
// 0x374 : reserved
// 0x378 : Data signal of A_109
//         bit 7~0 - A_109[7:0] (Read/Write)
//         others  - reserved
// 0x37c : reserved
// 0x380 : Data signal of A_110
//         bit 7~0 - A_110[7:0] (Read/Write)
//         others  - reserved
// 0x384 : reserved
// 0x388 : Data signal of A_111
//         bit 7~0 - A_111[7:0] (Read/Write)
//         others  - reserved
// 0x38c : reserved
// 0x390 : Data signal of A_112
//         bit 7~0 - A_112[7:0] (Read/Write)
//         others  - reserved
// 0x394 : reserved
// 0x398 : Data signal of A_113
//         bit 7~0 - A_113[7:0] (Read/Write)
//         others  - reserved
// 0x39c : reserved
// 0x3a0 : Data signal of A_114
//         bit 7~0 - A_114[7:0] (Read/Write)
//         others  - reserved
// 0x3a4 : reserved
// 0x3a8 : Data signal of A_115
//         bit 7~0 - A_115[7:0] (Read/Write)
//         others  - reserved
// 0x3ac : reserved
// 0x3b0 : Data signal of A_116
//         bit 7~0 - A_116[7:0] (Read/Write)
//         others  - reserved
// 0x3b4 : reserved
// 0x3b8 : Data signal of A_117
//         bit 7~0 - A_117[7:0] (Read/Write)
//         others  - reserved
// 0x3bc : reserved
// 0x3c0 : Data signal of A_118
//         bit 7~0 - A_118[7:0] (Read/Write)
//         others  - reserved
// 0x3c4 : reserved
// 0x3c8 : Data signal of A_119
//         bit 7~0 - A_119[7:0] (Read/Write)
//         others  - reserved
// 0x3cc : reserved
// 0x3d0 : Data signal of A_120
//         bit 7~0 - A_120[7:0] (Read/Write)
//         others  - reserved
// 0x3d4 : reserved
// 0x3d8 : Data signal of A_121
//         bit 7~0 - A_121[7:0] (Read/Write)
//         others  - reserved
// 0x3dc : reserved
// 0x3e0 : Data signal of A_122
//         bit 7~0 - A_122[7:0] (Read/Write)
//         others  - reserved
// 0x3e4 : reserved
// 0x3e8 : Data signal of A_123
//         bit 7~0 - A_123[7:0] (Read/Write)
//         others  - reserved
// 0x3ec : reserved
// 0x3f0 : Data signal of A_124
//         bit 7~0 - A_124[7:0] (Read/Write)
//         others  - reserved
// 0x3f4 : reserved
// 0x3f8 : Data signal of A_125
//         bit 7~0 - A_125[7:0] (Read/Write)
//         others  - reserved
// 0x3fc : reserved
// 0x400 : Data signal of A_126
//         bit 7~0 - A_126[7:0] (Read/Write)
//         others  - reserved
// 0x404 : reserved
// 0x408 : Data signal of A_127
//         bit 7~0 - A_127[7:0] (Read/Write)
//         others  - reserved
// 0x40c : reserved
// 0x410 : Data signal of B_0
//         bit 7~0 - B_0[7:0] (Read/Write)
//         others  - reserved
// 0x414 : reserved
// 0x418 : Data signal of B_1
//         bit 7~0 - B_1[7:0] (Read/Write)
//         others  - reserved
// 0x41c : reserved
// 0x420 : Data signal of B_2
//         bit 7~0 - B_2[7:0] (Read/Write)
//         others  - reserved
// 0x424 : reserved
// 0x428 : Data signal of B_3
//         bit 7~0 - B_3[7:0] (Read/Write)
//         others  - reserved
// 0x42c : reserved
// 0x430 : Data signal of B_4
//         bit 7~0 - B_4[7:0] (Read/Write)
//         others  - reserved
// 0x434 : reserved
// 0x438 : Data signal of B_5
//         bit 7~0 - B_5[7:0] (Read/Write)
//         others  - reserved
// 0x43c : reserved
// 0x440 : Data signal of B_6
//         bit 7~0 - B_6[7:0] (Read/Write)
//         others  - reserved
// 0x444 : reserved
// 0x448 : Data signal of B_7
//         bit 7~0 - B_7[7:0] (Read/Write)
//         others  - reserved
// 0x44c : reserved
// 0x450 : Data signal of B_8
//         bit 7~0 - B_8[7:0] (Read/Write)
//         others  - reserved
// 0x454 : reserved
// 0x458 : Data signal of B_9
//         bit 7~0 - B_9[7:0] (Read/Write)
//         others  - reserved
// 0x45c : reserved
// 0x460 : Data signal of B_10
//         bit 7~0 - B_10[7:0] (Read/Write)
//         others  - reserved
// 0x464 : reserved
// 0x468 : Data signal of B_11
//         bit 7~0 - B_11[7:0] (Read/Write)
//         others  - reserved
// 0x46c : reserved
// 0x470 : Data signal of B_12
//         bit 7~0 - B_12[7:0] (Read/Write)
//         others  - reserved
// 0x474 : reserved
// 0x478 : Data signal of B_13
//         bit 7~0 - B_13[7:0] (Read/Write)
//         others  - reserved
// 0x47c : reserved
// 0x480 : Data signal of B_14
//         bit 7~0 - B_14[7:0] (Read/Write)
//         others  - reserved
// 0x484 : reserved
// 0x488 : Data signal of B_15
//         bit 7~0 - B_15[7:0] (Read/Write)
//         others  - reserved
// 0x48c : reserved
// 0x490 : Data signal of B_16
//         bit 7~0 - B_16[7:0] (Read/Write)
//         others  - reserved
// 0x494 : reserved
// 0x498 : Data signal of B_17
//         bit 7~0 - B_17[7:0] (Read/Write)
//         others  - reserved
// 0x49c : reserved
// 0x4a0 : Data signal of B_18
//         bit 7~0 - B_18[7:0] (Read/Write)
//         others  - reserved
// 0x4a4 : reserved
// 0x4a8 : Data signal of B_19
//         bit 7~0 - B_19[7:0] (Read/Write)
//         others  - reserved
// 0x4ac : reserved
// 0x4b0 : Data signal of B_20
//         bit 7~0 - B_20[7:0] (Read/Write)
//         others  - reserved
// 0x4b4 : reserved
// 0x4b8 : Data signal of B_21
//         bit 7~0 - B_21[7:0] (Read/Write)
//         others  - reserved
// 0x4bc : reserved
// 0x4c0 : Data signal of B_22
//         bit 7~0 - B_22[7:0] (Read/Write)
//         others  - reserved
// 0x4c4 : reserved
// 0x4c8 : Data signal of B_23
//         bit 7~0 - B_23[7:0] (Read/Write)
//         others  - reserved
// 0x4cc : reserved
// 0x4d0 : Data signal of B_24
//         bit 7~0 - B_24[7:0] (Read/Write)
//         others  - reserved
// 0x4d4 : reserved
// 0x4d8 : Data signal of B_25
//         bit 7~0 - B_25[7:0] (Read/Write)
//         others  - reserved
// 0x4dc : reserved
// 0x4e0 : Data signal of B_26
//         bit 7~0 - B_26[7:0] (Read/Write)
//         others  - reserved
// 0x4e4 : reserved
// 0x4e8 : Data signal of B_27
//         bit 7~0 - B_27[7:0] (Read/Write)
//         others  - reserved
// 0x4ec : reserved
// 0x4f0 : Data signal of B_28
//         bit 7~0 - B_28[7:0] (Read/Write)
//         others  - reserved
// 0x4f4 : reserved
// 0x4f8 : Data signal of B_29
//         bit 7~0 - B_29[7:0] (Read/Write)
//         others  - reserved
// 0x4fc : reserved
// 0x500 : Data signal of B_30
//         bit 7~0 - B_30[7:0] (Read/Write)
//         others  - reserved
// 0x504 : reserved
// 0x508 : Data signal of B_31
//         bit 7~0 - B_31[7:0] (Read/Write)
//         others  - reserved
// 0x50c : reserved
// 0x510 : Data signal of B_32
//         bit 7~0 - B_32[7:0] (Read/Write)
//         others  - reserved
// 0x514 : reserved
// 0x518 : Data signal of B_33
//         bit 7~0 - B_33[7:0] (Read/Write)
//         others  - reserved
// 0x51c : reserved
// 0x520 : Data signal of B_34
//         bit 7~0 - B_34[7:0] (Read/Write)
//         others  - reserved
// 0x524 : reserved
// 0x528 : Data signal of B_35
//         bit 7~0 - B_35[7:0] (Read/Write)
//         others  - reserved
// 0x52c : reserved
// 0x530 : Data signal of B_36
//         bit 7~0 - B_36[7:0] (Read/Write)
//         others  - reserved
// 0x534 : reserved
// 0x538 : Data signal of B_37
//         bit 7~0 - B_37[7:0] (Read/Write)
//         others  - reserved
// 0x53c : reserved
// 0x540 : Data signal of B_38
//         bit 7~0 - B_38[7:0] (Read/Write)
//         others  - reserved
// 0x544 : reserved
// 0x548 : Data signal of B_39
//         bit 7~0 - B_39[7:0] (Read/Write)
//         others  - reserved
// 0x54c : reserved
// 0x550 : Data signal of B_40
//         bit 7~0 - B_40[7:0] (Read/Write)
//         others  - reserved
// 0x554 : reserved
// 0x558 : Data signal of B_41
//         bit 7~0 - B_41[7:0] (Read/Write)
//         others  - reserved
// 0x55c : reserved
// 0x560 : Data signal of B_42
//         bit 7~0 - B_42[7:0] (Read/Write)
//         others  - reserved
// 0x564 : reserved
// 0x568 : Data signal of B_43
//         bit 7~0 - B_43[7:0] (Read/Write)
//         others  - reserved
// 0x56c : reserved
// 0x570 : Data signal of B_44
//         bit 7~0 - B_44[7:0] (Read/Write)
//         others  - reserved
// 0x574 : reserved
// 0x578 : Data signal of B_45
//         bit 7~0 - B_45[7:0] (Read/Write)
//         others  - reserved
// 0x57c : reserved
// 0x580 : Data signal of B_46
//         bit 7~0 - B_46[7:0] (Read/Write)
//         others  - reserved
// 0x584 : reserved
// 0x588 : Data signal of B_47
//         bit 7~0 - B_47[7:0] (Read/Write)
//         others  - reserved
// 0x58c : reserved
// 0x590 : Data signal of B_48
//         bit 7~0 - B_48[7:0] (Read/Write)
//         others  - reserved
// 0x594 : reserved
// 0x598 : Data signal of B_49
//         bit 7~0 - B_49[7:0] (Read/Write)
//         others  - reserved
// 0x59c : reserved
// 0x5a0 : Data signal of B_50
//         bit 7~0 - B_50[7:0] (Read/Write)
//         others  - reserved
// 0x5a4 : reserved
// 0x5a8 : Data signal of B_51
//         bit 7~0 - B_51[7:0] (Read/Write)
//         others  - reserved
// 0x5ac : reserved
// 0x5b0 : Data signal of B_52
//         bit 7~0 - B_52[7:0] (Read/Write)
//         others  - reserved
// 0x5b4 : reserved
// 0x5b8 : Data signal of B_53
//         bit 7~0 - B_53[7:0] (Read/Write)
//         others  - reserved
// 0x5bc : reserved
// 0x5c0 : Data signal of B_54
//         bit 7~0 - B_54[7:0] (Read/Write)
//         others  - reserved
// 0x5c4 : reserved
// 0x5c8 : Data signal of B_55
//         bit 7~0 - B_55[7:0] (Read/Write)
//         others  - reserved
// 0x5cc : reserved
// 0x5d0 : Data signal of B_56
//         bit 7~0 - B_56[7:0] (Read/Write)
//         others  - reserved
// 0x5d4 : reserved
// 0x5d8 : Data signal of B_57
//         bit 7~0 - B_57[7:0] (Read/Write)
//         others  - reserved
// 0x5dc : reserved
// 0x5e0 : Data signal of B_58
//         bit 7~0 - B_58[7:0] (Read/Write)
//         others  - reserved
// 0x5e4 : reserved
// 0x5e8 : Data signal of B_59
//         bit 7~0 - B_59[7:0] (Read/Write)
//         others  - reserved
// 0x5ec : reserved
// 0x5f0 : Data signal of B_60
//         bit 7~0 - B_60[7:0] (Read/Write)
//         others  - reserved
// 0x5f4 : reserved
// 0x5f8 : Data signal of B_61
//         bit 7~0 - B_61[7:0] (Read/Write)
//         others  - reserved
// 0x5fc : reserved
// 0x600 : Data signal of B_62
//         bit 7~0 - B_62[7:0] (Read/Write)
//         others  - reserved
// 0x604 : reserved
// 0x608 : Data signal of B_63
//         bit 7~0 - B_63[7:0] (Read/Write)
//         others  - reserved
// 0x60c : reserved
// 0x610 : Data signal of B_64
//         bit 7~0 - B_64[7:0] (Read/Write)
//         others  - reserved
// 0x614 : reserved
// 0x618 : Data signal of B_65
//         bit 7~0 - B_65[7:0] (Read/Write)
//         others  - reserved
// 0x61c : reserved
// 0x620 : Data signal of B_66
//         bit 7~0 - B_66[7:0] (Read/Write)
//         others  - reserved
// 0x624 : reserved
// 0x628 : Data signal of B_67
//         bit 7~0 - B_67[7:0] (Read/Write)
//         others  - reserved
// 0x62c : reserved
// 0x630 : Data signal of B_68
//         bit 7~0 - B_68[7:0] (Read/Write)
//         others  - reserved
// 0x634 : reserved
// 0x638 : Data signal of B_69
//         bit 7~0 - B_69[7:0] (Read/Write)
//         others  - reserved
// 0x63c : reserved
// 0x640 : Data signal of B_70
//         bit 7~0 - B_70[7:0] (Read/Write)
//         others  - reserved
// 0x644 : reserved
// 0x648 : Data signal of B_71
//         bit 7~0 - B_71[7:0] (Read/Write)
//         others  - reserved
// 0x64c : reserved
// 0x650 : Data signal of B_72
//         bit 7~0 - B_72[7:0] (Read/Write)
//         others  - reserved
// 0x654 : reserved
// 0x658 : Data signal of B_73
//         bit 7~0 - B_73[7:0] (Read/Write)
//         others  - reserved
// 0x65c : reserved
// 0x660 : Data signal of B_74
//         bit 7~0 - B_74[7:0] (Read/Write)
//         others  - reserved
// 0x664 : reserved
// 0x668 : Data signal of B_75
//         bit 7~0 - B_75[7:0] (Read/Write)
//         others  - reserved
// 0x66c : reserved
// 0x670 : Data signal of B_76
//         bit 7~0 - B_76[7:0] (Read/Write)
//         others  - reserved
// 0x674 : reserved
// 0x678 : Data signal of B_77
//         bit 7~0 - B_77[7:0] (Read/Write)
//         others  - reserved
// 0x67c : reserved
// 0x680 : Data signal of B_78
//         bit 7~0 - B_78[7:0] (Read/Write)
//         others  - reserved
// 0x684 : reserved
// 0x688 : Data signal of B_79
//         bit 7~0 - B_79[7:0] (Read/Write)
//         others  - reserved
// 0x68c : reserved
// 0x690 : Data signal of B_80
//         bit 7~0 - B_80[7:0] (Read/Write)
//         others  - reserved
// 0x694 : reserved
// 0x698 : Data signal of B_81
//         bit 7~0 - B_81[7:0] (Read/Write)
//         others  - reserved
// 0x69c : reserved
// 0x6a0 : Data signal of B_82
//         bit 7~0 - B_82[7:0] (Read/Write)
//         others  - reserved
// 0x6a4 : reserved
// 0x6a8 : Data signal of B_83
//         bit 7~0 - B_83[7:0] (Read/Write)
//         others  - reserved
// 0x6ac : reserved
// 0x6b0 : Data signal of B_84
//         bit 7~0 - B_84[7:0] (Read/Write)
//         others  - reserved
// 0x6b4 : reserved
// 0x6b8 : Data signal of B_85
//         bit 7~0 - B_85[7:0] (Read/Write)
//         others  - reserved
// 0x6bc : reserved
// 0x6c0 : Data signal of B_86
//         bit 7~0 - B_86[7:0] (Read/Write)
//         others  - reserved
// 0x6c4 : reserved
// 0x6c8 : Data signal of B_87
//         bit 7~0 - B_87[7:0] (Read/Write)
//         others  - reserved
// 0x6cc : reserved
// 0x6d0 : Data signal of B_88
//         bit 7~0 - B_88[7:0] (Read/Write)
//         others  - reserved
// 0x6d4 : reserved
// 0x6d8 : Data signal of B_89
//         bit 7~0 - B_89[7:0] (Read/Write)
//         others  - reserved
// 0x6dc : reserved
// 0x6e0 : Data signal of B_90
//         bit 7~0 - B_90[7:0] (Read/Write)
//         others  - reserved
// 0x6e4 : reserved
// 0x6e8 : Data signal of B_91
//         bit 7~0 - B_91[7:0] (Read/Write)
//         others  - reserved
// 0x6ec : reserved
// 0x6f0 : Data signal of B_92
//         bit 7~0 - B_92[7:0] (Read/Write)
//         others  - reserved
// 0x6f4 : reserved
// 0x6f8 : Data signal of B_93
//         bit 7~0 - B_93[7:0] (Read/Write)
//         others  - reserved
// 0x6fc : reserved
// 0x700 : Data signal of B_94
//         bit 7~0 - B_94[7:0] (Read/Write)
//         others  - reserved
// 0x704 : reserved
// 0x708 : Data signal of B_95
//         bit 7~0 - B_95[7:0] (Read/Write)
//         others  - reserved
// 0x70c : reserved
// 0x710 : Data signal of B_96
//         bit 7~0 - B_96[7:0] (Read/Write)
//         others  - reserved
// 0x714 : reserved
// 0x718 : Data signal of B_97
//         bit 7~0 - B_97[7:0] (Read/Write)
//         others  - reserved
// 0x71c : reserved
// 0x720 : Data signal of B_98
//         bit 7~0 - B_98[7:0] (Read/Write)
//         others  - reserved
// 0x724 : reserved
// 0x728 : Data signal of B_99
//         bit 7~0 - B_99[7:0] (Read/Write)
//         others  - reserved
// 0x72c : reserved
// 0x730 : Data signal of B_100
//         bit 7~0 - B_100[7:0] (Read/Write)
//         others  - reserved
// 0x734 : reserved
// 0x738 : Data signal of B_101
//         bit 7~0 - B_101[7:0] (Read/Write)
//         others  - reserved
// 0x73c : reserved
// 0x740 : Data signal of B_102
//         bit 7~0 - B_102[7:0] (Read/Write)
//         others  - reserved
// 0x744 : reserved
// 0x748 : Data signal of B_103
//         bit 7~0 - B_103[7:0] (Read/Write)
//         others  - reserved
// 0x74c : reserved
// 0x750 : Data signal of B_104
//         bit 7~0 - B_104[7:0] (Read/Write)
//         others  - reserved
// 0x754 : reserved
// 0x758 : Data signal of B_105
//         bit 7~0 - B_105[7:0] (Read/Write)
//         others  - reserved
// 0x75c : reserved
// 0x760 : Data signal of B_106
//         bit 7~0 - B_106[7:0] (Read/Write)
//         others  - reserved
// 0x764 : reserved
// 0x768 : Data signal of B_107
//         bit 7~0 - B_107[7:0] (Read/Write)
//         others  - reserved
// 0x76c : reserved
// 0x770 : Data signal of B_108
//         bit 7~0 - B_108[7:0] (Read/Write)
//         others  - reserved
// 0x774 : reserved
// 0x778 : Data signal of B_109
//         bit 7~0 - B_109[7:0] (Read/Write)
//         others  - reserved
// 0x77c : reserved
// 0x780 : Data signal of B_110
//         bit 7~0 - B_110[7:0] (Read/Write)
//         others  - reserved
// 0x784 : reserved
// 0x788 : Data signal of B_111
//         bit 7~0 - B_111[7:0] (Read/Write)
//         others  - reserved
// 0x78c : reserved
// 0x790 : Data signal of B_112
//         bit 7~0 - B_112[7:0] (Read/Write)
//         others  - reserved
// 0x794 : reserved
// 0x798 : Data signal of B_113
//         bit 7~0 - B_113[7:0] (Read/Write)
//         others  - reserved
// 0x79c : reserved
// 0x7a0 : Data signal of B_114
//         bit 7~0 - B_114[7:0] (Read/Write)
//         others  - reserved
// 0x7a4 : reserved
// 0x7a8 : Data signal of B_115
//         bit 7~0 - B_115[7:0] (Read/Write)
//         others  - reserved
// 0x7ac : reserved
// 0x7b0 : Data signal of B_116
//         bit 7~0 - B_116[7:0] (Read/Write)
//         others  - reserved
// 0x7b4 : reserved
// 0x7b8 : Data signal of B_117
//         bit 7~0 - B_117[7:0] (Read/Write)
//         others  - reserved
// 0x7bc : reserved
// 0x7c0 : Data signal of B_118
//         bit 7~0 - B_118[7:0] (Read/Write)
//         others  - reserved
// 0x7c4 : reserved
// 0x7c8 : Data signal of B_119
//         bit 7~0 - B_119[7:0] (Read/Write)
//         others  - reserved
// 0x7cc : reserved
// 0x7d0 : Data signal of B_120
//         bit 7~0 - B_120[7:0] (Read/Write)
//         others  - reserved
// 0x7d4 : reserved
// 0x7d8 : Data signal of B_121
//         bit 7~0 - B_121[7:0] (Read/Write)
//         others  - reserved
// 0x7dc : reserved
// 0x7e0 : Data signal of B_122
//         bit 7~0 - B_122[7:0] (Read/Write)
//         others  - reserved
// 0x7e4 : reserved
// 0x7e8 : Data signal of B_123
//         bit 7~0 - B_123[7:0] (Read/Write)
//         others  - reserved
// 0x7ec : reserved
// 0x7f0 : Data signal of B_124
//         bit 7~0 - B_124[7:0] (Read/Write)
//         others  - reserved
// 0x7f4 : reserved
// 0x7f8 : Data signal of B_125
//         bit 7~0 - B_125[7:0] (Read/Write)
//         others  - reserved
// 0x7fc : reserved
// 0x800 : Data signal of B_126
//         bit 7~0 - B_126[7:0] (Read/Write)
//         others  - reserved
// 0x804 : reserved
// 0x808 : Data signal of B_127
//         bit 7~0 - B_127[7:0] (Read/Write)
//         others  - reserved
// 0x80c : reserved
// 0x810 : Data signal of C
//         bit 31~0 - C[31:0] (Read)
// 0x814 : Control signal of C
//         bit 0  - C_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEUCHW_CONTROL_ADDR_AP_CTRL    0x000
#define XEUCHW_CONTROL_ADDR_GIE        0x004
#define XEUCHW_CONTROL_ADDR_IER        0x008
#define XEUCHW_CONTROL_ADDR_ISR        0x00c
#define XEUCHW_CONTROL_ADDR_A_0_DATA   0x010
#define XEUCHW_CONTROL_BITS_A_0_DATA   8
#define XEUCHW_CONTROL_ADDR_A_1_DATA   0x018
#define XEUCHW_CONTROL_BITS_A_1_DATA   8
#define XEUCHW_CONTROL_ADDR_A_2_DATA   0x020
#define XEUCHW_CONTROL_BITS_A_2_DATA   8
#define XEUCHW_CONTROL_ADDR_A_3_DATA   0x028
#define XEUCHW_CONTROL_BITS_A_3_DATA   8
#define XEUCHW_CONTROL_ADDR_A_4_DATA   0x030
#define XEUCHW_CONTROL_BITS_A_4_DATA   8
#define XEUCHW_CONTROL_ADDR_A_5_DATA   0x038
#define XEUCHW_CONTROL_BITS_A_5_DATA   8
#define XEUCHW_CONTROL_ADDR_A_6_DATA   0x040
#define XEUCHW_CONTROL_BITS_A_6_DATA   8
#define XEUCHW_CONTROL_ADDR_A_7_DATA   0x048
#define XEUCHW_CONTROL_BITS_A_7_DATA   8
#define XEUCHW_CONTROL_ADDR_A_8_DATA   0x050
#define XEUCHW_CONTROL_BITS_A_8_DATA   8
#define XEUCHW_CONTROL_ADDR_A_9_DATA   0x058
#define XEUCHW_CONTROL_BITS_A_9_DATA   8
#define XEUCHW_CONTROL_ADDR_A_10_DATA  0x060
#define XEUCHW_CONTROL_BITS_A_10_DATA  8
#define XEUCHW_CONTROL_ADDR_A_11_DATA  0x068
#define XEUCHW_CONTROL_BITS_A_11_DATA  8
#define XEUCHW_CONTROL_ADDR_A_12_DATA  0x070
#define XEUCHW_CONTROL_BITS_A_12_DATA  8
#define XEUCHW_CONTROL_ADDR_A_13_DATA  0x078
#define XEUCHW_CONTROL_BITS_A_13_DATA  8
#define XEUCHW_CONTROL_ADDR_A_14_DATA  0x080
#define XEUCHW_CONTROL_BITS_A_14_DATA  8
#define XEUCHW_CONTROL_ADDR_A_15_DATA  0x088
#define XEUCHW_CONTROL_BITS_A_15_DATA  8
#define XEUCHW_CONTROL_ADDR_A_16_DATA  0x090
#define XEUCHW_CONTROL_BITS_A_16_DATA  8
#define XEUCHW_CONTROL_ADDR_A_17_DATA  0x098
#define XEUCHW_CONTROL_BITS_A_17_DATA  8
#define XEUCHW_CONTROL_ADDR_A_18_DATA  0x0a0
#define XEUCHW_CONTROL_BITS_A_18_DATA  8
#define XEUCHW_CONTROL_ADDR_A_19_DATA  0x0a8
#define XEUCHW_CONTROL_BITS_A_19_DATA  8
#define XEUCHW_CONTROL_ADDR_A_20_DATA  0x0b0
#define XEUCHW_CONTROL_BITS_A_20_DATA  8
#define XEUCHW_CONTROL_ADDR_A_21_DATA  0x0b8
#define XEUCHW_CONTROL_BITS_A_21_DATA  8
#define XEUCHW_CONTROL_ADDR_A_22_DATA  0x0c0
#define XEUCHW_CONTROL_BITS_A_22_DATA  8
#define XEUCHW_CONTROL_ADDR_A_23_DATA  0x0c8
#define XEUCHW_CONTROL_BITS_A_23_DATA  8
#define XEUCHW_CONTROL_ADDR_A_24_DATA  0x0d0
#define XEUCHW_CONTROL_BITS_A_24_DATA  8
#define XEUCHW_CONTROL_ADDR_A_25_DATA  0x0d8
#define XEUCHW_CONTROL_BITS_A_25_DATA  8
#define XEUCHW_CONTROL_ADDR_A_26_DATA  0x0e0
#define XEUCHW_CONTROL_BITS_A_26_DATA  8
#define XEUCHW_CONTROL_ADDR_A_27_DATA  0x0e8
#define XEUCHW_CONTROL_BITS_A_27_DATA  8
#define XEUCHW_CONTROL_ADDR_A_28_DATA  0x0f0
#define XEUCHW_CONTROL_BITS_A_28_DATA  8
#define XEUCHW_CONTROL_ADDR_A_29_DATA  0x0f8
#define XEUCHW_CONTROL_BITS_A_29_DATA  8
#define XEUCHW_CONTROL_ADDR_A_30_DATA  0x100
#define XEUCHW_CONTROL_BITS_A_30_DATA  8
#define XEUCHW_CONTROL_ADDR_A_31_DATA  0x108
#define XEUCHW_CONTROL_BITS_A_31_DATA  8
#define XEUCHW_CONTROL_ADDR_A_32_DATA  0x110
#define XEUCHW_CONTROL_BITS_A_32_DATA  8
#define XEUCHW_CONTROL_ADDR_A_33_DATA  0x118
#define XEUCHW_CONTROL_BITS_A_33_DATA  8
#define XEUCHW_CONTROL_ADDR_A_34_DATA  0x120
#define XEUCHW_CONTROL_BITS_A_34_DATA  8
#define XEUCHW_CONTROL_ADDR_A_35_DATA  0x128
#define XEUCHW_CONTROL_BITS_A_35_DATA  8
#define XEUCHW_CONTROL_ADDR_A_36_DATA  0x130
#define XEUCHW_CONTROL_BITS_A_36_DATA  8
#define XEUCHW_CONTROL_ADDR_A_37_DATA  0x138
#define XEUCHW_CONTROL_BITS_A_37_DATA  8
#define XEUCHW_CONTROL_ADDR_A_38_DATA  0x140
#define XEUCHW_CONTROL_BITS_A_38_DATA  8
#define XEUCHW_CONTROL_ADDR_A_39_DATA  0x148
#define XEUCHW_CONTROL_BITS_A_39_DATA  8
#define XEUCHW_CONTROL_ADDR_A_40_DATA  0x150
#define XEUCHW_CONTROL_BITS_A_40_DATA  8
#define XEUCHW_CONTROL_ADDR_A_41_DATA  0x158
#define XEUCHW_CONTROL_BITS_A_41_DATA  8
#define XEUCHW_CONTROL_ADDR_A_42_DATA  0x160
#define XEUCHW_CONTROL_BITS_A_42_DATA  8
#define XEUCHW_CONTROL_ADDR_A_43_DATA  0x168
#define XEUCHW_CONTROL_BITS_A_43_DATA  8
#define XEUCHW_CONTROL_ADDR_A_44_DATA  0x170
#define XEUCHW_CONTROL_BITS_A_44_DATA  8
#define XEUCHW_CONTROL_ADDR_A_45_DATA  0x178
#define XEUCHW_CONTROL_BITS_A_45_DATA  8
#define XEUCHW_CONTROL_ADDR_A_46_DATA  0x180
#define XEUCHW_CONTROL_BITS_A_46_DATA  8
#define XEUCHW_CONTROL_ADDR_A_47_DATA  0x188
#define XEUCHW_CONTROL_BITS_A_47_DATA  8
#define XEUCHW_CONTROL_ADDR_A_48_DATA  0x190
#define XEUCHW_CONTROL_BITS_A_48_DATA  8
#define XEUCHW_CONTROL_ADDR_A_49_DATA  0x198
#define XEUCHW_CONTROL_BITS_A_49_DATA  8
#define XEUCHW_CONTROL_ADDR_A_50_DATA  0x1a0
#define XEUCHW_CONTROL_BITS_A_50_DATA  8
#define XEUCHW_CONTROL_ADDR_A_51_DATA  0x1a8
#define XEUCHW_CONTROL_BITS_A_51_DATA  8
#define XEUCHW_CONTROL_ADDR_A_52_DATA  0x1b0
#define XEUCHW_CONTROL_BITS_A_52_DATA  8
#define XEUCHW_CONTROL_ADDR_A_53_DATA  0x1b8
#define XEUCHW_CONTROL_BITS_A_53_DATA  8
#define XEUCHW_CONTROL_ADDR_A_54_DATA  0x1c0
#define XEUCHW_CONTROL_BITS_A_54_DATA  8
#define XEUCHW_CONTROL_ADDR_A_55_DATA  0x1c8
#define XEUCHW_CONTROL_BITS_A_55_DATA  8
#define XEUCHW_CONTROL_ADDR_A_56_DATA  0x1d0
#define XEUCHW_CONTROL_BITS_A_56_DATA  8
#define XEUCHW_CONTROL_ADDR_A_57_DATA  0x1d8
#define XEUCHW_CONTROL_BITS_A_57_DATA  8
#define XEUCHW_CONTROL_ADDR_A_58_DATA  0x1e0
#define XEUCHW_CONTROL_BITS_A_58_DATA  8
#define XEUCHW_CONTROL_ADDR_A_59_DATA  0x1e8
#define XEUCHW_CONTROL_BITS_A_59_DATA  8
#define XEUCHW_CONTROL_ADDR_A_60_DATA  0x1f0
#define XEUCHW_CONTROL_BITS_A_60_DATA  8
#define XEUCHW_CONTROL_ADDR_A_61_DATA  0x1f8
#define XEUCHW_CONTROL_BITS_A_61_DATA  8
#define XEUCHW_CONTROL_ADDR_A_62_DATA  0x200
#define XEUCHW_CONTROL_BITS_A_62_DATA  8
#define XEUCHW_CONTROL_ADDR_A_63_DATA  0x208
#define XEUCHW_CONTROL_BITS_A_63_DATA  8
#define XEUCHW_CONTROL_ADDR_A_64_DATA  0x210
#define XEUCHW_CONTROL_BITS_A_64_DATA  8
#define XEUCHW_CONTROL_ADDR_A_65_DATA  0x218
#define XEUCHW_CONTROL_BITS_A_65_DATA  8
#define XEUCHW_CONTROL_ADDR_A_66_DATA  0x220
#define XEUCHW_CONTROL_BITS_A_66_DATA  8
#define XEUCHW_CONTROL_ADDR_A_67_DATA  0x228
#define XEUCHW_CONTROL_BITS_A_67_DATA  8
#define XEUCHW_CONTROL_ADDR_A_68_DATA  0x230
#define XEUCHW_CONTROL_BITS_A_68_DATA  8
#define XEUCHW_CONTROL_ADDR_A_69_DATA  0x238
#define XEUCHW_CONTROL_BITS_A_69_DATA  8
#define XEUCHW_CONTROL_ADDR_A_70_DATA  0x240
#define XEUCHW_CONTROL_BITS_A_70_DATA  8
#define XEUCHW_CONTROL_ADDR_A_71_DATA  0x248
#define XEUCHW_CONTROL_BITS_A_71_DATA  8
#define XEUCHW_CONTROL_ADDR_A_72_DATA  0x250
#define XEUCHW_CONTROL_BITS_A_72_DATA  8
#define XEUCHW_CONTROL_ADDR_A_73_DATA  0x258
#define XEUCHW_CONTROL_BITS_A_73_DATA  8
#define XEUCHW_CONTROL_ADDR_A_74_DATA  0x260
#define XEUCHW_CONTROL_BITS_A_74_DATA  8
#define XEUCHW_CONTROL_ADDR_A_75_DATA  0x268
#define XEUCHW_CONTROL_BITS_A_75_DATA  8
#define XEUCHW_CONTROL_ADDR_A_76_DATA  0x270
#define XEUCHW_CONTROL_BITS_A_76_DATA  8
#define XEUCHW_CONTROL_ADDR_A_77_DATA  0x278
#define XEUCHW_CONTROL_BITS_A_77_DATA  8
#define XEUCHW_CONTROL_ADDR_A_78_DATA  0x280
#define XEUCHW_CONTROL_BITS_A_78_DATA  8
#define XEUCHW_CONTROL_ADDR_A_79_DATA  0x288
#define XEUCHW_CONTROL_BITS_A_79_DATA  8
#define XEUCHW_CONTROL_ADDR_A_80_DATA  0x290
#define XEUCHW_CONTROL_BITS_A_80_DATA  8
#define XEUCHW_CONTROL_ADDR_A_81_DATA  0x298
#define XEUCHW_CONTROL_BITS_A_81_DATA  8
#define XEUCHW_CONTROL_ADDR_A_82_DATA  0x2a0
#define XEUCHW_CONTROL_BITS_A_82_DATA  8
#define XEUCHW_CONTROL_ADDR_A_83_DATA  0x2a8
#define XEUCHW_CONTROL_BITS_A_83_DATA  8
#define XEUCHW_CONTROL_ADDR_A_84_DATA  0x2b0
#define XEUCHW_CONTROL_BITS_A_84_DATA  8
#define XEUCHW_CONTROL_ADDR_A_85_DATA  0x2b8
#define XEUCHW_CONTROL_BITS_A_85_DATA  8
#define XEUCHW_CONTROL_ADDR_A_86_DATA  0x2c0
#define XEUCHW_CONTROL_BITS_A_86_DATA  8
#define XEUCHW_CONTROL_ADDR_A_87_DATA  0x2c8
#define XEUCHW_CONTROL_BITS_A_87_DATA  8
#define XEUCHW_CONTROL_ADDR_A_88_DATA  0x2d0
#define XEUCHW_CONTROL_BITS_A_88_DATA  8
#define XEUCHW_CONTROL_ADDR_A_89_DATA  0x2d8
#define XEUCHW_CONTROL_BITS_A_89_DATA  8
#define XEUCHW_CONTROL_ADDR_A_90_DATA  0x2e0
#define XEUCHW_CONTROL_BITS_A_90_DATA  8
#define XEUCHW_CONTROL_ADDR_A_91_DATA  0x2e8
#define XEUCHW_CONTROL_BITS_A_91_DATA  8
#define XEUCHW_CONTROL_ADDR_A_92_DATA  0x2f0
#define XEUCHW_CONTROL_BITS_A_92_DATA  8
#define XEUCHW_CONTROL_ADDR_A_93_DATA  0x2f8
#define XEUCHW_CONTROL_BITS_A_93_DATA  8
#define XEUCHW_CONTROL_ADDR_A_94_DATA  0x300
#define XEUCHW_CONTROL_BITS_A_94_DATA  8
#define XEUCHW_CONTROL_ADDR_A_95_DATA  0x308
#define XEUCHW_CONTROL_BITS_A_95_DATA  8
#define XEUCHW_CONTROL_ADDR_A_96_DATA  0x310
#define XEUCHW_CONTROL_BITS_A_96_DATA  8
#define XEUCHW_CONTROL_ADDR_A_97_DATA  0x318
#define XEUCHW_CONTROL_BITS_A_97_DATA  8
#define XEUCHW_CONTROL_ADDR_A_98_DATA  0x320
#define XEUCHW_CONTROL_BITS_A_98_DATA  8
#define XEUCHW_CONTROL_ADDR_A_99_DATA  0x328
#define XEUCHW_CONTROL_BITS_A_99_DATA  8
#define XEUCHW_CONTROL_ADDR_A_100_DATA 0x330
#define XEUCHW_CONTROL_BITS_A_100_DATA 8
#define XEUCHW_CONTROL_ADDR_A_101_DATA 0x338
#define XEUCHW_CONTROL_BITS_A_101_DATA 8
#define XEUCHW_CONTROL_ADDR_A_102_DATA 0x340
#define XEUCHW_CONTROL_BITS_A_102_DATA 8
#define XEUCHW_CONTROL_ADDR_A_103_DATA 0x348
#define XEUCHW_CONTROL_BITS_A_103_DATA 8
#define XEUCHW_CONTROL_ADDR_A_104_DATA 0x350
#define XEUCHW_CONTROL_BITS_A_104_DATA 8
#define XEUCHW_CONTROL_ADDR_A_105_DATA 0x358
#define XEUCHW_CONTROL_BITS_A_105_DATA 8
#define XEUCHW_CONTROL_ADDR_A_106_DATA 0x360
#define XEUCHW_CONTROL_BITS_A_106_DATA 8
#define XEUCHW_CONTROL_ADDR_A_107_DATA 0x368
#define XEUCHW_CONTROL_BITS_A_107_DATA 8
#define XEUCHW_CONTROL_ADDR_A_108_DATA 0x370
#define XEUCHW_CONTROL_BITS_A_108_DATA 8
#define XEUCHW_CONTROL_ADDR_A_109_DATA 0x378
#define XEUCHW_CONTROL_BITS_A_109_DATA 8
#define XEUCHW_CONTROL_ADDR_A_110_DATA 0x380
#define XEUCHW_CONTROL_BITS_A_110_DATA 8
#define XEUCHW_CONTROL_ADDR_A_111_DATA 0x388
#define XEUCHW_CONTROL_BITS_A_111_DATA 8
#define XEUCHW_CONTROL_ADDR_A_112_DATA 0x390
#define XEUCHW_CONTROL_BITS_A_112_DATA 8
#define XEUCHW_CONTROL_ADDR_A_113_DATA 0x398
#define XEUCHW_CONTROL_BITS_A_113_DATA 8
#define XEUCHW_CONTROL_ADDR_A_114_DATA 0x3a0
#define XEUCHW_CONTROL_BITS_A_114_DATA 8
#define XEUCHW_CONTROL_ADDR_A_115_DATA 0x3a8
#define XEUCHW_CONTROL_BITS_A_115_DATA 8
#define XEUCHW_CONTROL_ADDR_A_116_DATA 0x3b0
#define XEUCHW_CONTROL_BITS_A_116_DATA 8
#define XEUCHW_CONTROL_ADDR_A_117_DATA 0x3b8
#define XEUCHW_CONTROL_BITS_A_117_DATA 8
#define XEUCHW_CONTROL_ADDR_A_118_DATA 0x3c0
#define XEUCHW_CONTROL_BITS_A_118_DATA 8
#define XEUCHW_CONTROL_ADDR_A_119_DATA 0x3c8
#define XEUCHW_CONTROL_BITS_A_119_DATA 8
#define XEUCHW_CONTROL_ADDR_A_120_DATA 0x3d0
#define XEUCHW_CONTROL_BITS_A_120_DATA 8
#define XEUCHW_CONTROL_ADDR_A_121_DATA 0x3d8
#define XEUCHW_CONTROL_BITS_A_121_DATA 8
#define XEUCHW_CONTROL_ADDR_A_122_DATA 0x3e0
#define XEUCHW_CONTROL_BITS_A_122_DATA 8
#define XEUCHW_CONTROL_ADDR_A_123_DATA 0x3e8
#define XEUCHW_CONTROL_BITS_A_123_DATA 8
#define XEUCHW_CONTROL_ADDR_A_124_DATA 0x3f0
#define XEUCHW_CONTROL_BITS_A_124_DATA 8
#define XEUCHW_CONTROL_ADDR_A_125_DATA 0x3f8
#define XEUCHW_CONTROL_BITS_A_125_DATA 8
#define XEUCHW_CONTROL_ADDR_A_126_DATA 0x400
#define XEUCHW_CONTROL_BITS_A_126_DATA 8
#define XEUCHW_CONTROL_ADDR_A_127_DATA 0x408
#define XEUCHW_CONTROL_BITS_A_127_DATA 8
#define XEUCHW_CONTROL_ADDR_B_0_DATA   0x410
#define XEUCHW_CONTROL_BITS_B_0_DATA   8
#define XEUCHW_CONTROL_ADDR_B_1_DATA   0x418
#define XEUCHW_CONTROL_BITS_B_1_DATA   8
#define XEUCHW_CONTROL_ADDR_B_2_DATA   0x420
#define XEUCHW_CONTROL_BITS_B_2_DATA   8
#define XEUCHW_CONTROL_ADDR_B_3_DATA   0x428
#define XEUCHW_CONTROL_BITS_B_3_DATA   8
#define XEUCHW_CONTROL_ADDR_B_4_DATA   0x430
#define XEUCHW_CONTROL_BITS_B_4_DATA   8
#define XEUCHW_CONTROL_ADDR_B_5_DATA   0x438
#define XEUCHW_CONTROL_BITS_B_5_DATA   8
#define XEUCHW_CONTROL_ADDR_B_6_DATA   0x440
#define XEUCHW_CONTROL_BITS_B_6_DATA   8
#define XEUCHW_CONTROL_ADDR_B_7_DATA   0x448
#define XEUCHW_CONTROL_BITS_B_7_DATA   8
#define XEUCHW_CONTROL_ADDR_B_8_DATA   0x450
#define XEUCHW_CONTROL_BITS_B_8_DATA   8
#define XEUCHW_CONTROL_ADDR_B_9_DATA   0x458
#define XEUCHW_CONTROL_BITS_B_9_DATA   8
#define XEUCHW_CONTROL_ADDR_B_10_DATA  0x460
#define XEUCHW_CONTROL_BITS_B_10_DATA  8
#define XEUCHW_CONTROL_ADDR_B_11_DATA  0x468
#define XEUCHW_CONTROL_BITS_B_11_DATA  8
#define XEUCHW_CONTROL_ADDR_B_12_DATA  0x470
#define XEUCHW_CONTROL_BITS_B_12_DATA  8
#define XEUCHW_CONTROL_ADDR_B_13_DATA  0x478
#define XEUCHW_CONTROL_BITS_B_13_DATA  8
#define XEUCHW_CONTROL_ADDR_B_14_DATA  0x480
#define XEUCHW_CONTROL_BITS_B_14_DATA  8
#define XEUCHW_CONTROL_ADDR_B_15_DATA  0x488
#define XEUCHW_CONTROL_BITS_B_15_DATA  8
#define XEUCHW_CONTROL_ADDR_B_16_DATA  0x490
#define XEUCHW_CONTROL_BITS_B_16_DATA  8
#define XEUCHW_CONTROL_ADDR_B_17_DATA  0x498
#define XEUCHW_CONTROL_BITS_B_17_DATA  8
#define XEUCHW_CONTROL_ADDR_B_18_DATA  0x4a0
#define XEUCHW_CONTROL_BITS_B_18_DATA  8
#define XEUCHW_CONTROL_ADDR_B_19_DATA  0x4a8
#define XEUCHW_CONTROL_BITS_B_19_DATA  8
#define XEUCHW_CONTROL_ADDR_B_20_DATA  0x4b0
#define XEUCHW_CONTROL_BITS_B_20_DATA  8
#define XEUCHW_CONTROL_ADDR_B_21_DATA  0x4b8
#define XEUCHW_CONTROL_BITS_B_21_DATA  8
#define XEUCHW_CONTROL_ADDR_B_22_DATA  0x4c0
#define XEUCHW_CONTROL_BITS_B_22_DATA  8
#define XEUCHW_CONTROL_ADDR_B_23_DATA  0x4c8
#define XEUCHW_CONTROL_BITS_B_23_DATA  8
#define XEUCHW_CONTROL_ADDR_B_24_DATA  0x4d0
#define XEUCHW_CONTROL_BITS_B_24_DATA  8
#define XEUCHW_CONTROL_ADDR_B_25_DATA  0x4d8
#define XEUCHW_CONTROL_BITS_B_25_DATA  8
#define XEUCHW_CONTROL_ADDR_B_26_DATA  0x4e0
#define XEUCHW_CONTROL_BITS_B_26_DATA  8
#define XEUCHW_CONTROL_ADDR_B_27_DATA  0x4e8
#define XEUCHW_CONTROL_BITS_B_27_DATA  8
#define XEUCHW_CONTROL_ADDR_B_28_DATA  0x4f0
#define XEUCHW_CONTROL_BITS_B_28_DATA  8
#define XEUCHW_CONTROL_ADDR_B_29_DATA  0x4f8
#define XEUCHW_CONTROL_BITS_B_29_DATA  8
#define XEUCHW_CONTROL_ADDR_B_30_DATA  0x500
#define XEUCHW_CONTROL_BITS_B_30_DATA  8
#define XEUCHW_CONTROL_ADDR_B_31_DATA  0x508
#define XEUCHW_CONTROL_BITS_B_31_DATA  8
#define XEUCHW_CONTROL_ADDR_B_32_DATA  0x510
#define XEUCHW_CONTROL_BITS_B_32_DATA  8
#define XEUCHW_CONTROL_ADDR_B_33_DATA  0x518
#define XEUCHW_CONTROL_BITS_B_33_DATA  8
#define XEUCHW_CONTROL_ADDR_B_34_DATA  0x520
#define XEUCHW_CONTROL_BITS_B_34_DATA  8
#define XEUCHW_CONTROL_ADDR_B_35_DATA  0x528
#define XEUCHW_CONTROL_BITS_B_35_DATA  8
#define XEUCHW_CONTROL_ADDR_B_36_DATA  0x530
#define XEUCHW_CONTROL_BITS_B_36_DATA  8
#define XEUCHW_CONTROL_ADDR_B_37_DATA  0x538
#define XEUCHW_CONTROL_BITS_B_37_DATA  8
#define XEUCHW_CONTROL_ADDR_B_38_DATA  0x540
#define XEUCHW_CONTROL_BITS_B_38_DATA  8
#define XEUCHW_CONTROL_ADDR_B_39_DATA  0x548
#define XEUCHW_CONTROL_BITS_B_39_DATA  8
#define XEUCHW_CONTROL_ADDR_B_40_DATA  0x550
#define XEUCHW_CONTROL_BITS_B_40_DATA  8
#define XEUCHW_CONTROL_ADDR_B_41_DATA  0x558
#define XEUCHW_CONTROL_BITS_B_41_DATA  8
#define XEUCHW_CONTROL_ADDR_B_42_DATA  0x560
#define XEUCHW_CONTROL_BITS_B_42_DATA  8
#define XEUCHW_CONTROL_ADDR_B_43_DATA  0x568
#define XEUCHW_CONTROL_BITS_B_43_DATA  8
#define XEUCHW_CONTROL_ADDR_B_44_DATA  0x570
#define XEUCHW_CONTROL_BITS_B_44_DATA  8
#define XEUCHW_CONTROL_ADDR_B_45_DATA  0x578
#define XEUCHW_CONTROL_BITS_B_45_DATA  8
#define XEUCHW_CONTROL_ADDR_B_46_DATA  0x580
#define XEUCHW_CONTROL_BITS_B_46_DATA  8
#define XEUCHW_CONTROL_ADDR_B_47_DATA  0x588
#define XEUCHW_CONTROL_BITS_B_47_DATA  8
#define XEUCHW_CONTROL_ADDR_B_48_DATA  0x590
#define XEUCHW_CONTROL_BITS_B_48_DATA  8
#define XEUCHW_CONTROL_ADDR_B_49_DATA  0x598
#define XEUCHW_CONTROL_BITS_B_49_DATA  8
#define XEUCHW_CONTROL_ADDR_B_50_DATA  0x5a0
#define XEUCHW_CONTROL_BITS_B_50_DATA  8
#define XEUCHW_CONTROL_ADDR_B_51_DATA  0x5a8
#define XEUCHW_CONTROL_BITS_B_51_DATA  8
#define XEUCHW_CONTROL_ADDR_B_52_DATA  0x5b0
#define XEUCHW_CONTROL_BITS_B_52_DATA  8
#define XEUCHW_CONTROL_ADDR_B_53_DATA  0x5b8
#define XEUCHW_CONTROL_BITS_B_53_DATA  8
#define XEUCHW_CONTROL_ADDR_B_54_DATA  0x5c0
#define XEUCHW_CONTROL_BITS_B_54_DATA  8
#define XEUCHW_CONTROL_ADDR_B_55_DATA  0x5c8
#define XEUCHW_CONTROL_BITS_B_55_DATA  8
#define XEUCHW_CONTROL_ADDR_B_56_DATA  0x5d0
#define XEUCHW_CONTROL_BITS_B_56_DATA  8
#define XEUCHW_CONTROL_ADDR_B_57_DATA  0x5d8
#define XEUCHW_CONTROL_BITS_B_57_DATA  8
#define XEUCHW_CONTROL_ADDR_B_58_DATA  0x5e0
#define XEUCHW_CONTROL_BITS_B_58_DATA  8
#define XEUCHW_CONTROL_ADDR_B_59_DATA  0x5e8
#define XEUCHW_CONTROL_BITS_B_59_DATA  8
#define XEUCHW_CONTROL_ADDR_B_60_DATA  0x5f0
#define XEUCHW_CONTROL_BITS_B_60_DATA  8
#define XEUCHW_CONTROL_ADDR_B_61_DATA  0x5f8
#define XEUCHW_CONTROL_BITS_B_61_DATA  8
#define XEUCHW_CONTROL_ADDR_B_62_DATA  0x600
#define XEUCHW_CONTROL_BITS_B_62_DATA  8
#define XEUCHW_CONTROL_ADDR_B_63_DATA  0x608
#define XEUCHW_CONTROL_BITS_B_63_DATA  8
#define XEUCHW_CONTROL_ADDR_B_64_DATA  0x610
#define XEUCHW_CONTROL_BITS_B_64_DATA  8
#define XEUCHW_CONTROL_ADDR_B_65_DATA  0x618
#define XEUCHW_CONTROL_BITS_B_65_DATA  8
#define XEUCHW_CONTROL_ADDR_B_66_DATA  0x620
#define XEUCHW_CONTROL_BITS_B_66_DATA  8
#define XEUCHW_CONTROL_ADDR_B_67_DATA  0x628
#define XEUCHW_CONTROL_BITS_B_67_DATA  8
#define XEUCHW_CONTROL_ADDR_B_68_DATA  0x630
#define XEUCHW_CONTROL_BITS_B_68_DATA  8
#define XEUCHW_CONTROL_ADDR_B_69_DATA  0x638
#define XEUCHW_CONTROL_BITS_B_69_DATA  8
#define XEUCHW_CONTROL_ADDR_B_70_DATA  0x640
#define XEUCHW_CONTROL_BITS_B_70_DATA  8
#define XEUCHW_CONTROL_ADDR_B_71_DATA  0x648
#define XEUCHW_CONTROL_BITS_B_71_DATA  8
#define XEUCHW_CONTROL_ADDR_B_72_DATA  0x650
#define XEUCHW_CONTROL_BITS_B_72_DATA  8
#define XEUCHW_CONTROL_ADDR_B_73_DATA  0x658
#define XEUCHW_CONTROL_BITS_B_73_DATA  8
#define XEUCHW_CONTROL_ADDR_B_74_DATA  0x660
#define XEUCHW_CONTROL_BITS_B_74_DATA  8
#define XEUCHW_CONTROL_ADDR_B_75_DATA  0x668
#define XEUCHW_CONTROL_BITS_B_75_DATA  8
#define XEUCHW_CONTROL_ADDR_B_76_DATA  0x670
#define XEUCHW_CONTROL_BITS_B_76_DATA  8
#define XEUCHW_CONTROL_ADDR_B_77_DATA  0x678
#define XEUCHW_CONTROL_BITS_B_77_DATA  8
#define XEUCHW_CONTROL_ADDR_B_78_DATA  0x680
#define XEUCHW_CONTROL_BITS_B_78_DATA  8
#define XEUCHW_CONTROL_ADDR_B_79_DATA  0x688
#define XEUCHW_CONTROL_BITS_B_79_DATA  8
#define XEUCHW_CONTROL_ADDR_B_80_DATA  0x690
#define XEUCHW_CONTROL_BITS_B_80_DATA  8
#define XEUCHW_CONTROL_ADDR_B_81_DATA  0x698
#define XEUCHW_CONTROL_BITS_B_81_DATA  8
#define XEUCHW_CONTROL_ADDR_B_82_DATA  0x6a0
#define XEUCHW_CONTROL_BITS_B_82_DATA  8
#define XEUCHW_CONTROL_ADDR_B_83_DATA  0x6a8
#define XEUCHW_CONTROL_BITS_B_83_DATA  8
#define XEUCHW_CONTROL_ADDR_B_84_DATA  0x6b0
#define XEUCHW_CONTROL_BITS_B_84_DATA  8
#define XEUCHW_CONTROL_ADDR_B_85_DATA  0x6b8
#define XEUCHW_CONTROL_BITS_B_85_DATA  8
#define XEUCHW_CONTROL_ADDR_B_86_DATA  0x6c0
#define XEUCHW_CONTROL_BITS_B_86_DATA  8
#define XEUCHW_CONTROL_ADDR_B_87_DATA  0x6c8
#define XEUCHW_CONTROL_BITS_B_87_DATA  8
#define XEUCHW_CONTROL_ADDR_B_88_DATA  0x6d0
#define XEUCHW_CONTROL_BITS_B_88_DATA  8
#define XEUCHW_CONTROL_ADDR_B_89_DATA  0x6d8
#define XEUCHW_CONTROL_BITS_B_89_DATA  8
#define XEUCHW_CONTROL_ADDR_B_90_DATA  0x6e0
#define XEUCHW_CONTROL_BITS_B_90_DATA  8
#define XEUCHW_CONTROL_ADDR_B_91_DATA  0x6e8
#define XEUCHW_CONTROL_BITS_B_91_DATA  8
#define XEUCHW_CONTROL_ADDR_B_92_DATA  0x6f0
#define XEUCHW_CONTROL_BITS_B_92_DATA  8
#define XEUCHW_CONTROL_ADDR_B_93_DATA  0x6f8
#define XEUCHW_CONTROL_BITS_B_93_DATA  8
#define XEUCHW_CONTROL_ADDR_B_94_DATA  0x700
#define XEUCHW_CONTROL_BITS_B_94_DATA  8
#define XEUCHW_CONTROL_ADDR_B_95_DATA  0x708
#define XEUCHW_CONTROL_BITS_B_95_DATA  8
#define XEUCHW_CONTROL_ADDR_B_96_DATA  0x710
#define XEUCHW_CONTROL_BITS_B_96_DATA  8
#define XEUCHW_CONTROL_ADDR_B_97_DATA  0x718
#define XEUCHW_CONTROL_BITS_B_97_DATA  8
#define XEUCHW_CONTROL_ADDR_B_98_DATA  0x720
#define XEUCHW_CONTROL_BITS_B_98_DATA  8
#define XEUCHW_CONTROL_ADDR_B_99_DATA  0x728
#define XEUCHW_CONTROL_BITS_B_99_DATA  8
#define XEUCHW_CONTROL_ADDR_B_100_DATA 0x730
#define XEUCHW_CONTROL_BITS_B_100_DATA 8
#define XEUCHW_CONTROL_ADDR_B_101_DATA 0x738
#define XEUCHW_CONTROL_BITS_B_101_DATA 8
#define XEUCHW_CONTROL_ADDR_B_102_DATA 0x740
#define XEUCHW_CONTROL_BITS_B_102_DATA 8
#define XEUCHW_CONTROL_ADDR_B_103_DATA 0x748
#define XEUCHW_CONTROL_BITS_B_103_DATA 8
#define XEUCHW_CONTROL_ADDR_B_104_DATA 0x750
#define XEUCHW_CONTROL_BITS_B_104_DATA 8
#define XEUCHW_CONTROL_ADDR_B_105_DATA 0x758
#define XEUCHW_CONTROL_BITS_B_105_DATA 8
#define XEUCHW_CONTROL_ADDR_B_106_DATA 0x760
#define XEUCHW_CONTROL_BITS_B_106_DATA 8
#define XEUCHW_CONTROL_ADDR_B_107_DATA 0x768
#define XEUCHW_CONTROL_BITS_B_107_DATA 8
#define XEUCHW_CONTROL_ADDR_B_108_DATA 0x770
#define XEUCHW_CONTROL_BITS_B_108_DATA 8
#define XEUCHW_CONTROL_ADDR_B_109_DATA 0x778
#define XEUCHW_CONTROL_BITS_B_109_DATA 8
#define XEUCHW_CONTROL_ADDR_B_110_DATA 0x780
#define XEUCHW_CONTROL_BITS_B_110_DATA 8
#define XEUCHW_CONTROL_ADDR_B_111_DATA 0x788
#define XEUCHW_CONTROL_BITS_B_111_DATA 8
#define XEUCHW_CONTROL_ADDR_B_112_DATA 0x790
#define XEUCHW_CONTROL_BITS_B_112_DATA 8
#define XEUCHW_CONTROL_ADDR_B_113_DATA 0x798
#define XEUCHW_CONTROL_BITS_B_113_DATA 8
#define XEUCHW_CONTROL_ADDR_B_114_DATA 0x7a0
#define XEUCHW_CONTROL_BITS_B_114_DATA 8
#define XEUCHW_CONTROL_ADDR_B_115_DATA 0x7a8
#define XEUCHW_CONTROL_BITS_B_115_DATA 8
#define XEUCHW_CONTROL_ADDR_B_116_DATA 0x7b0
#define XEUCHW_CONTROL_BITS_B_116_DATA 8
#define XEUCHW_CONTROL_ADDR_B_117_DATA 0x7b8
#define XEUCHW_CONTROL_BITS_B_117_DATA 8
#define XEUCHW_CONTROL_ADDR_B_118_DATA 0x7c0
#define XEUCHW_CONTROL_BITS_B_118_DATA 8
#define XEUCHW_CONTROL_ADDR_B_119_DATA 0x7c8
#define XEUCHW_CONTROL_BITS_B_119_DATA 8
#define XEUCHW_CONTROL_ADDR_B_120_DATA 0x7d0
#define XEUCHW_CONTROL_BITS_B_120_DATA 8
#define XEUCHW_CONTROL_ADDR_B_121_DATA 0x7d8
#define XEUCHW_CONTROL_BITS_B_121_DATA 8
#define XEUCHW_CONTROL_ADDR_B_122_DATA 0x7e0
#define XEUCHW_CONTROL_BITS_B_122_DATA 8
#define XEUCHW_CONTROL_ADDR_B_123_DATA 0x7e8
#define XEUCHW_CONTROL_BITS_B_123_DATA 8
#define XEUCHW_CONTROL_ADDR_B_124_DATA 0x7f0
#define XEUCHW_CONTROL_BITS_B_124_DATA 8
#define XEUCHW_CONTROL_ADDR_B_125_DATA 0x7f8
#define XEUCHW_CONTROL_BITS_B_125_DATA 8
#define XEUCHW_CONTROL_ADDR_B_126_DATA 0x800
#define XEUCHW_CONTROL_BITS_B_126_DATA 8
#define XEUCHW_CONTROL_ADDR_B_127_DATA 0x808
#define XEUCHW_CONTROL_BITS_B_127_DATA 8
#define XEUCHW_CONTROL_ADDR_C_DATA     0x810
#define XEUCHW_CONTROL_BITS_C_DATA     32
#define XEUCHW_CONTROL_ADDR_C_CTRL     0x814

