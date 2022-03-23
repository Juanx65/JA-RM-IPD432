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
// 0x010 : Data signal of y_add
//         bit 31~0 - y_add[31:0] (Read)
// 0x014 : Control signal of y_add
//         bit 0  - y_add_ap_vld (Read/COR)
//         others - reserved
// 0x020 : Data signal of y_sqrt
//         bit 31~0 - y_sqrt[31:0] (Read)
// 0x024 : Control signal of y_sqrt
//         bit 0  - y_sqrt_ap_vld (Read/COR)
//         others - reserved
// 0x030 : Data signal of x_0
//         bit 7~0 - x_0[7:0] (Read/Write)
//         others  - reserved
// 0x034 : reserved
// 0x038 : Data signal of x_1
//         bit 7~0 - x_1[7:0] (Read/Write)
//         others  - reserved
// 0x03c : reserved
// 0x040 : Data signal of x_2
//         bit 7~0 - x_2[7:0] (Read/Write)
//         others  - reserved
// 0x044 : reserved
// 0x048 : Data signal of x_3
//         bit 7~0 - x_3[7:0] (Read/Write)
//         others  - reserved
// 0x04c : reserved
// 0x050 : Data signal of x_4
//         bit 7~0 - x_4[7:0] (Read/Write)
//         others  - reserved
// 0x054 : reserved
// 0x058 : Data signal of x_5
//         bit 7~0 - x_5[7:0] (Read/Write)
//         others  - reserved
// 0x05c : reserved
// 0x060 : Data signal of x_6
//         bit 7~0 - x_6[7:0] (Read/Write)
//         others  - reserved
// 0x064 : reserved
// 0x068 : Data signal of x_7
//         bit 7~0 - x_7[7:0] (Read/Write)
//         others  - reserved
// 0x06c : reserved
// 0x070 : Data signal of x_8
//         bit 7~0 - x_8[7:0] (Read/Write)
//         others  - reserved
// 0x074 : reserved
// 0x078 : Data signal of x_9
//         bit 7~0 - x_9[7:0] (Read/Write)
//         others  - reserved
// 0x07c : reserved
// 0x080 : Data signal of x_10
//         bit 7~0 - x_10[7:0] (Read/Write)
//         others  - reserved
// 0x084 : reserved
// 0x088 : Data signal of x_11
//         bit 7~0 - x_11[7:0] (Read/Write)
//         others  - reserved
// 0x08c : reserved
// 0x090 : Data signal of x_12
//         bit 7~0 - x_12[7:0] (Read/Write)
//         others  - reserved
// 0x094 : reserved
// 0x098 : Data signal of x_13
//         bit 7~0 - x_13[7:0] (Read/Write)
//         others  - reserved
// 0x09c : reserved
// 0x0a0 : Data signal of x_14
//         bit 7~0 - x_14[7:0] (Read/Write)
//         others  - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of x_15
//         bit 7~0 - x_15[7:0] (Read/Write)
//         others  - reserved
// 0x0ac : reserved
// 0x0b0 : Data signal of x_16
//         bit 7~0 - x_16[7:0] (Read/Write)
//         others  - reserved
// 0x0b4 : reserved
// 0x0b8 : Data signal of x_17
//         bit 7~0 - x_17[7:0] (Read/Write)
//         others  - reserved
// 0x0bc : reserved
// 0x0c0 : Data signal of x_18
//         bit 7~0 - x_18[7:0] (Read/Write)
//         others  - reserved
// 0x0c4 : reserved
// 0x0c8 : Data signal of x_19
//         bit 7~0 - x_19[7:0] (Read/Write)
//         others  - reserved
// 0x0cc : reserved
// 0x0d0 : Data signal of x_20
//         bit 7~0 - x_20[7:0] (Read/Write)
//         others  - reserved
// 0x0d4 : reserved
// 0x0d8 : Data signal of x_21
//         bit 7~0 - x_21[7:0] (Read/Write)
//         others  - reserved
// 0x0dc : reserved
// 0x0e0 : Data signal of x_22
//         bit 7~0 - x_22[7:0] (Read/Write)
//         others  - reserved
// 0x0e4 : reserved
// 0x0e8 : Data signal of x_23
//         bit 7~0 - x_23[7:0] (Read/Write)
//         others  - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of x_24
//         bit 7~0 - x_24[7:0] (Read/Write)
//         others  - reserved
// 0x0f4 : reserved
// 0x0f8 : Data signal of x_25
//         bit 7~0 - x_25[7:0] (Read/Write)
//         others  - reserved
// 0x0fc : reserved
// 0x100 : Data signal of x_26
//         bit 7~0 - x_26[7:0] (Read/Write)
//         others  - reserved
// 0x104 : reserved
// 0x108 : Data signal of x_27
//         bit 7~0 - x_27[7:0] (Read/Write)
//         others  - reserved
// 0x10c : reserved
// 0x110 : Data signal of x_28
//         bit 7~0 - x_28[7:0] (Read/Write)
//         others  - reserved
// 0x114 : reserved
// 0x118 : Data signal of x_29
//         bit 7~0 - x_29[7:0] (Read/Write)
//         others  - reserved
// 0x11c : reserved
// 0x120 : Data signal of x_30
//         bit 7~0 - x_30[7:0] (Read/Write)
//         others  - reserved
// 0x124 : reserved
// 0x128 : Data signal of x_31
//         bit 7~0 - x_31[7:0] (Read/Write)
//         others  - reserved
// 0x12c : reserved
// 0x130 : Data signal of x_32
//         bit 7~0 - x_32[7:0] (Read/Write)
//         others  - reserved
// 0x134 : reserved
// 0x138 : Data signal of x_33
//         bit 7~0 - x_33[7:0] (Read/Write)
//         others  - reserved
// 0x13c : reserved
// 0x140 : Data signal of x_34
//         bit 7~0 - x_34[7:0] (Read/Write)
//         others  - reserved
// 0x144 : reserved
// 0x148 : Data signal of x_35
//         bit 7~0 - x_35[7:0] (Read/Write)
//         others  - reserved
// 0x14c : reserved
// 0x150 : Data signal of x_36
//         bit 7~0 - x_36[7:0] (Read/Write)
//         others  - reserved
// 0x154 : reserved
// 0x158 : Data signal of x_37
//         bit 7~0 - x_37[7:0] (Read/Write)
//         others  - reserved
// 0x15c : reserved
// 0x160 : Data signal of x_38
//         bit 7~0 - x_38[7:0] (Read/Write)
//         others  - reserved
// 0x164 : reserved
// 0x168 : Data signal of x_39
//         bit 7~0 - x_39[7:0] (Read/Write)
//         others  - reserved
// 0x16c : reserved
// 0x170 : Data signal of x_40
//         bit 7~0 - x_40[7:0] (Read/Write)
//         others  - reserved
// 0x174 : reserved
// 0x178 : Data signal of x_41
//         bit 7~0 - x_41[7:0] (Read/Write)
//         others  - reserved
// 0x17c : reserved
// 0x180 : Data signal of x_42
//         bit 7~0 - x_42[7:0] (Read/Write)
//         others  - reserved
// 0x184 : reserved
// 0x188 : Data signal of x_43
//         bit 7~0 - x_43[7:0] (Read/Write)
//         others  - reserved
// 0x18c : reserved
// 0x190 : Data signal of x_44
//         bit 7~0 - x_44[7:0] (Read/Write)
//         others  - reserved
// 0x194 : reserved
// 0x198 : Data signal of x_45
//         bit 7~0 - x_45[7:0] (Read/Write)
//         others  - reserved
// 0x19c : reserved
// 0x1a0 : Data signal of x_46
//         bit 7~0 - x_46[7:0] (Read/Write)
//         others  - reserved
// 0x1a4 : reserved
// 0x1a8 : Data signal of x_47
//         bit 7~0 - x_47[7:0] (Read/Write)
//         others  - reserved
// 0x1ac : reserved
// 0x1b0 : Data signal of x_48
//         bit 7~0 - x_48[7:0] (Read/Write)
//         others  - reserved
// 0x1b4 : reserved
// 0x1b8 : Data signal of x_49
//         bit 7~0 - x_49[7:0] (Read/Write)
//         others  - reserved
// 0x1bc : reserved
// 0x1c0 : Data signal of x_50
//         bit 7~0 - x_50[7:0] (Read/Write)
//         others  - reserved
// 0x1c4 : reserved
// 0x1c8 : Data signal of x_51
//         bit 7~0 - x_51[7:0] (Read/Write)
//         others  - reserved
// 0x1cc : reserved
// 0x1d0 : Data signal of x_52
//         bit 7~0 - x_52[7:0] (Read/Write)
//         others  - reserved
// 0x1d4 : reserved
// 0x1d8 : Data signal of x_53
//         bit 7~0 - x_53[7:0] (Read/Write)
//         others  - reserved
// 0x1dc : reserved
// 0x1e0 : Data signal of x_54
//         bit 7~0 - x_54[7:0] (Read/Write)
//         others  - reserved
// 0x1e4 : reserved
// 0x1e8 : Data signal of x_55
//         bit 7~0 - x_55[7:0] (Read/Write)
//         others  - reserved
// 0x1ec : reserved
// 0x1f0 : Data signal of x_56
//         bit 7~0 - x_56[7:0] (Read/Write)
//         others  - reserved
// 0x1f4 : reserved
// 0x1f8 : Data signal of x_57
//         bit 7~0 - x_57[7:0] (Read/Write)
//         others  - reserved
// 0x1fc : reserved
// 0x200 : Data signal of x_58
//         bit 7~0 - x_58[7:0] (Read/Write)
//         others  - reserved
// 0x204 : reserved
// 0x208 : Data signal of x_59
//         bit 7~0 - x_59[7:0] (Read/Write)
//         others  - reserved
// 0x20c : reserved
// 0x210 : Data signal of x_60
//         bit 7~0 - x_60[7:0] (Read/Write)
//         others  - reserved
// 0x214 : reserved
// 0x218 : Data signal of x_61
//         bit 7~0 - x_61[7:0] (Read/Write)
//         others  - reserved
// 0x21c : reserved
// 0x220 : Data signal of x_62
//         bit 7~0 - x_62[7:0] (Read/Write)
//         others  - reserved
// 0x224 : reserved
// 0x228 : Data signal of x_63
//         bit 7~0 - x_63[7:0] (Read/Write)
//         others  - reserved
// 0x22c : reserved
// 0x230 : Data signal of x_64
//         bit 7~0 - x_64[7:0] (Read/Write)
//         others  - reserved
// 0x234 : reserved
// 0x238 : Data signal of x_65
//         bit 7~0 - x_65[7:0] (Read/Write)
//         others  - reserved
// 0x23c : reserved
// 0x240 : Data signal of x_66
//         bit 7~0 - x_66[7:0] (Read/Write)
//         others  - reserved
// 0x244 : reserved
// 0x248 : Data signal of x_67
//         bit 7~0 - x_67[7:0] (Read/Write)
//         others  - reserved
// 0x24c : reserved
// 0x250 : Data signal of x_68
//         bit 7~0 - x_68[7:0] (Read/Write)
//         others  - reserved
// 0x254 : reserved
// 0x258 : Data signal of x_69
//         bit 7~0 - x_69[7:0] (Read/Write)
//         others  - reserved
// 0x25c : reserved
// 0x260 : Data signal of x_70
//         bit 7~0 - x_70[7:0] (Read/Write)
//         others  - reserved
// 0x264 : reserved
// 0x268 : Data signal of x_71
//         bit 7~0 - x_71[7:0] (Read/Write)
//         others  - reserved
// 0x26c : reserved
// 0x270 : Data signal of x_72
//         bit 7~0 - x_72[7:0] (Read/Write)
//         others  - reserved
// 0x274 : reserved
// 0x278 : Data signal of x_73
//         bit 7~0 - x_73[7:0] (Read/Write)
//         others  - reserved
// 0x27c : reserved
// 0x280 : Data signal of x_74
//         bit 7~0 - x_74[7:0] (Read/Write)
//         others  - reserved
// 0x284 : reserved
// 0x288 : Data signal of x_75
//         bit 7~0 - x_75[7:0] (Read/Write)
//         others  - reserved
// 0x28c : reserved
// 0x290 : Data signal of x_76
//         bit 7~0 - x_76[7:0] (Read/Write)
//         others  - reserved
// 0x294 : reserved
// 0x298 : Data signal of x_77
//         bit 7~0 - x_77[7:0] (Read/Write)
//         others  - reserved
// 0x29c : reserved
// 0x2a0 : Data signal of x_78
//         bit 7~0 - x_78[7:0] (Read/Write)
//         others  - reserved
// 0x2a4 : reserved
// 0x2a8 : Data signal of x_79
//         bit 7~0 - x_79[7:0] (Read/Write)
//         others  - reserved
// 0x2ac : reserved
// 0x2b0 : Data signal of x_80
//         bit 7~0 - x_80[7:0] (Read/Write)
//         others  - reserved
// 0x2b4 : reserved
// 0x2b8 : Data signal of x_81
//         bit 7~0 - x_81[7:0] (Read/Write)
//         others  - reserved
// 0x2bc : reserved
// 0x2c0 : Data signal of x_82
//         bit 7~0 - x_82[7:0] (Read/Write)
//         others  - reserved
// 0x2c4 : reserved
// 0x2c8 : Data signal of x_83
//         bit 7~0 - x_83[7:0] (Read/Write)
//         others  - reserved
// 0x2cc : reserved
// 0x2d0 : Data signal of x_84
//         bit 7~0 - x_84[7:0] (Read/Write)
//         others  - reserved
// 0x2d4 : reserved
// 0x2d8 : Data signal of x_85
//         bit 7~0 - x_85[7:0] (Read/Write)
//         others  - reserved
// 0x2dc : reserved
// 0x2e0 : Data signal of x_86
//         bit 7~0 - x_86[7:0] (Read/Write)
//         others  - reserved
// 0x2e4 : reserved
// 0x2e8 : Data signal of x_87
//         bit 7~0 - x_87[7:0] (Read/Write)
//         others  - reserved
// 0x2ec : reserved
// 0x2f0 : Data signal of x_88
//         bit 7~0 - x_88[7:0] (Read/Write)
//         others  - reserved
// 0x2f4 : reserved
// 0x2f8 : Data signal of x_89
//         bit 7~0 - x_89[7:0] (Read/Write)
//         others  - reserved
// 0x2fc : reserved
// 0x300 : Data signal of x_90
//         bit 7~0 - x_90[7:0] (Read/Write)
//         others  - reserved
// 0x304 : reserved
// 0x308 : Data signal of x_91
//         bit 7~0 - x_91[7:0] (Read/Write)
//         others  - reserved
// 0x30c : reserved
// 0x310 : Data signal of x_92
//         bit 7~0 - x_92[7:0] (Read/Write)
//         others  - reserved
// 0x314 : reserved
// 0x318 : Data signal of x_93
//         bit 7~0 - x_93[7:0] (Read/Write)
//         others  - reserved
// 0x31c : reserved
// 0x320 : Data signal of x_94
//         bit 7~0 - x_94[7:0] (Read/Write)
//         others  - reserved
// 0x324 : reserved
// 0x328 : Data signal of x_95
//         bit 7~0 - x_95[7:0] (Read/Write)
//         others  - reserved
// 0x32c : reserved
// 0x330 : Data signal of x_96
//         bit 7~0 - x_96[7:0] (Read/Write)
//         others  - reserved
// 0x334 : reserved
// 0x338 : Data signal of x_97
//         bit 7~0 - x_97[7:0] (Read/Write)
//         others  - reserved
// 0x33c : reserved
// 0x340 : Data signal of x_98
//         bit 7~0 - x_98[7:0] (Read/Write)
//         others  - reserved
// 0x344 : reserved
// 0x348 : Data signal of x_99
//         bit 7~0 - x_99[7:0] (Read/Write)
//         others  - reserved
// 0x34c : reserved
// 0x350 : Data signal of x_100
//         bit 7~0 - x_100[7:0] (Read/Write)
//         others  - reserved
// 0x354 : reserved
// 0x358 : Data signal of x_101
//         bit 7~0 - x_101[7:0] (Read/Write)
//         others  - reserved
// 0x35c : reserved
// 0x360 : Data signal of x_102
//         bit 7~0 - x_102[7:0] (Read/Write)
//         others  - reserved
// 0x364 : reserved
// 0x368 : Data signal of x_103
//         bit 7~0 - x_103[7:0] (Read/Write)
//         others  - reserved
// 0x36c : reserved
// 0x370 : Data signal of x_104
//         bit 7~0 - x_104[7:0] (Read/Write)
//         others  - reserved
// 0x374 : reserved
// 0x378 : Data signal of x_105
//         bit 7~0 - x_105[7:0] (Read/Write)
//         others  - reserved
// 0x37c : reserved
// 0x380 : Data signal of x_106
//         bit 7~0 - x_106[7:0] (Read/Write)
//         others  - reserved
// 0x384 : reserved
// 0x388 : Data signal of x_107
//         bit 7~0 - x_107[7:0] (Read/Write)
//         others  - reserved
// 0x38c : reserved
// 0x390 : Data signal of x_108
//         bit 7~0 - x_108[7:0] (Read/Write)
//         others  - reserved
// 0x394 : reserved
// 0x398 : Data signal of x_109
//         bit 7~0 - x_109[7:0] (Read/Write)
//         others  - reserved
// 0x39c : reserved
// 0x3a0 : Data signal of x_110
//         bit 7~0 - x_110[7:0] (Read/Write)
//         others  - reserved
// 0x3a4 : reserved
// 0x3a8 : Data signal of x_111
//         bit 7~0 - x_111[7:0] (Read/Write)
//         others  - reserved
// 0x3ac : reserved
// 0x3b0 : Data signal of x_112
//         bit 7~0 - x_112[7:0] (Read/Write)
//         others  - reserved
// 0x3b4 : reserved
// 0x3b8 : Data signal of x_113
//         bit 7~0 - x_113[7:0] (Read/Write)
//         others  - reserved
// 0x3bc : reserved
// 0x3c0 : Data signal of x_114
//         bit 7~0 - x_114[7:0] (Read/Write)
//         others  - reserved
// 0x3c4 : reserved
// 0x3c8 : Data signal of x_115
//         bit 7~0 - x_115[7:0] (Read/Write)
//         others  - reserved
// 0x3cc : reserved
// 0x3d0 : Data signal of x_116
//         bit 7~0 - x_116[7:0] (Read/Write)
//         others  - reserved
// 0x3d4 : reserved
// 0x3d8 : Data signal of x_117
//         bit 7~0 - x_117[7:0] (Read/Write)
//         others  - reserved
// 0x3dc : reserved
// 0x3e0 : Data signal of x_118
//         bit 7~0 - x_118[7:0] (Read/Write)
//         others  - reserved
// 0x3e4 : reserved
// 0x3e8 : Data signal of x_119
//         bit 7~0 - x_119[7:0] (Read/Write)
//         others  - reserved
// 0x3ec : reserved
// 0x3f0 : Data signal of x_120
//         bit 7~0 - x_120[7:0] (Read/Write)
//         others  - reserved
// 0x3f4 : reserved
// 0x3f8 : Data signal of x_121
//         bit 7~0 - x_121[7:0] (Read/Write)
//         others  - reserved
// 0x3fc : reserved
// 0x400 : Data signal of x_122
//         bit 7~0 - x_122[7:0] (Read/Write)
//         others  - reserved
// 0x404 : reserved
// 0x408 : Data signal of x_123
//         bit 7~0 - x_123[7:0] (Read/Write)
//         others  - reserved
// 0x40c : reserved
// 0x410 : Data signal of x_124
//         bit 7~0 - x_124[7:0] (Read/Write)
//         others  - reserved
// 0x414 : reserved
// 0x418 : Data signal of x_125
//         bit 7~0 - x_125[7:0] (Read/Write)
//         others  - reserved
// 0x41c : reserved
// 0x420 : Data signal of x_126
//         bit 7~0 - x_126[7:0] (Read/Write)
//         others  - reserved
// 0x424 : reserved
// 0x428 : Data signal of x_127
//         bit 7~0 - x_127[7:0] (Read/Write)
//         others  - reserved
// 0x42c : reserved
// 0x430 : Data signal of x_128
//         bit 7~0 - x_128[7:0] (Read/Write)
//         others  - reserved
// 0x434 : reserved
// 0x438 : Data signal of x_129
//         bit 7~0 - x_129[7:0] (Read/Write)
//         others  - reserved
// 0x43c : reserved
// 0x440 : Data signal of x_130
//         bit 7~0 - x_130[7:0] (Read/Write)
//         others  - reserved
// 0x444 : reserved
// 0x448 : Data signal of x_131
//         bit 7~0 - x_131[7:0] (Read/Write)
//         others  - reserved
// 0x44c : reserved
// 0x450 : Data signal of x_132
//         bit 7~0 - x_132[7:0] (Read/Write)
//         others  - reserved
// 0x454 : reserved
// 0x458 : Data signal of x_133
//         bit 7~0 - x_133[7:0] (Read/Write)
//         others  - reserved
// 0x45c : reserved
// 0x460 : Data signal of x_134
//         bit 7~0 - x_134[7:0] (Read/Write)
//         others  - reserved
// 0x464 : reserved
// 0x468 : Data signal of x_135
//         bit 7~0 - x_135[7:0] (Read/Write)
//         others  - reserved
// 0x46c : reserved
// 0x470 : Data signal of x_136
//         bit 7~0 - x_136[7:0] (Read/Write)
//         others  - reserved
// 0x474 : reserved
// 0x478 : Data signal of x_137
//         bit 7~0 - x_137[7:0] (Read/Write)
//         others  - reserved
// 0x47c : reserved
// 0x480 : Data signal of x_138
//         bit 7~0 - x_138[7:0] (Read/Write)
//         others  - reserved
// 0x484 : reserved
// 0x488 : Data signal of x_139
//         bit 7~0 - x_139[7:0] (Read/Write)
//         others  - reserved
// 0x48c : reserved
// 0x490 : Data signal of x_140
//         bit 7~0 - x_140[7:0] (Read/Write)
//         others  - reserved
// 0x494 : reserved
// 0x498 : Data signal of x_141
//         bit 7~0 - x_141[7:0] (Read/Write)
//         others  - reserved
// 0x49c : reserved
// 0x4a0 : Data signal of x_142
//         bit 7~0 - x_142[7:0] (Read/Write)
//         others  - reserved
// 0x4a4 : reserved
// 0x4a8 : Data signal of x_143
//         bit 7~0 - x_143[7:0] (Read/Write)
//         others  - reserved
// 0x4ac : reserved
// 0x4b0 : Data signal of x_144
//         bit 7~0 - x_144[7:0] (Read/Write)
//         others  - reserved
// 0x4b4 : reserved
// 0x4b8 : Data signal of x_145
//         bit 7~0 - x_145[7:0] (Read/Write)
//         others  - reserved
// 0x4bc : reserved
// 0x4c0 : Data signal of x_146
//         bit 7~0 - x_146[7:0] (Read/Write)
//         others  - reserved
// 0x4c4 : reserved
// 0x4c8 : Data signal of x_147
//         bit 7~0 - x_147[7:0] (Read/Write)
//         others  - reserved
// 0x4cc : reserved
// 0x4d0 : Data signal of x_148
//         bit 7~0 - x_148[7:0] (Read/Write)
//         others  - reserved
// 0x4d4 : reserved
// 0x4d8 : Data signal of x_149
//         bit 7~0 - x_149[7:0] (Read/Write)
//         others  - reserved
// 0x4dc : reserved
// 0x4e0 : Data signal of x_150
//         bit 7~0 - x_150[7:0] (Read/Write)
//         others  - reserved
// 0x4e4 : reserved
// 0x4e8 : Data signal of x_151
//         bit 7~0 - x_151[7:0] (Read/Write)
//         others  - reserved
// 0x4ec : reserved
// 0x4f0 : Data signal of x_152
//         bit 7~0 - x_152[7:0] (Read/Write)
//         others  - reserved
// 0x4f4 : reserved
// 0x4f8 : Data signal of x_153
//         bit 7~0 - x_153[7:0] (Read/Write)
//         others  - reserved
// 0x4fc : reserved
// 0x500 : Data signal of x_154
//         bit 7~0 - x_154[7:0] (Read/Write)
//         others  - reserved
// 0x504 : reserved
// 0x508 : Data signal of x_155
//         bit 7~0 - x_155[7:0] (Read/Write)
//         others  - reserved
// 0x50c : reserved
// 0x510 : Data signal of x_156
//         bit 7~0 - x_156[7:0] (Read/Write)
//         others  - reserved
// 0x514 : reserved
// 0x518 : Data signal of x_157
//         bit 7~0 - x_157[7:0] (Read/Write)
//         others  - reserved
// 0x51c : reserved
// 0x520 : Data signal of x_158
//         bit 7~0 - x_158[7:0] (Read/Write)
//         others  - reserved
// 0x524 : reserved
// 0x528 : Data signal of x_159
//         bit 7~0 - x_159[7:0] (Read/Write)
//         others  - reserved
// 0x52c : reserved
// 0x530 : Data signal of x_160
//         bit 7~0 - x_160[7:0] (Read/Write)
//         others  - reserved
// 0x534 : reserved
// 0x538 : Data signal of x_161
//         bit 7~0 - x_161[7:0] (Read/Write)
//         others  - reserved
// 0x53c : reserved
// 0x540 : Data signal of x_162
//         bit 7~0 - x_162[7:0] (Read/Write)
//         others  - reserved
// 0x544 : reserved
// 0x548 : Data signal of x_163
//         bit 7~0 - x_163[7:0] (Read/Write)
//         others  - reserved
// 0x54c : reserved
// 0x550 : Data signal of x_164
//         bit 7~0 - x_164[7:0] (Read/Write)
//         others  - reserved
// 0x554 : reserved
// 0x558 : Data signal of x_165
//         bit 7~0 - x_165[7:0] (Read/Write)
//         others  - reserved
// 0x55c : reserved
// 0x560 : Data signal of x_166
//         bit 7~0 - x_166[7:0] (Read/Write)
//         others  - reserved
// 0x564 : reserved
// 0x568 : Data signal of x_167
//         bit 7~0 - x_167[7:0] (Read/Write)
//         others  - reserved
// 0x56c : reserved
// 0x570 : Data signal of x_168
//         bit 7~0 - x_168[7:0] (Read/Write)
//         others  - reserved
// 0x574 : reserved
// 0x578 : Data signal of x_169
//         bit 7~0 - x_169[7:0] (Read/Write)
//         others  - reserved
// 0x57c : reserved
// 0x580 : Data signal of x_170
//         bit 7~0 - x_170[7:0] (Read/Write)
//         others  - reserved
// 0x584 : reserved
// 0x588 : Data signal of x_171
//         bit 7~0 - x_171[7:0] (Read/Write)
//         others  - reserved
// 0x58c : reserved
// 0x590 : Data signal of x_172
//         bit 7~0 - x_172[7:0] (Read/Write)
//         others  - reserved
// 0x594 : reserved
// 0x598 : Data signal of x_173
//         bit 7~0 - x_173[7:0] (Read/Write)
//         others  - reserved
// 0x59c : reserved
// 0x5a0 : Data signal of x_174
//         bit 7~0 - x_174[7:0] (Read/Write)
//         others  - reserved
// 0x5a4 : reserved
// 0x5a8 : Data signal of x_175
//         bit 7~0 - x_175[7:0] (Read/Write)
//         others  - reserved
// 0x5ac : reserved
// 0x5b0 : Data signal of x_176
//         bit 7~0 - x_176[7:0] (Read/Write)
//         others  - reserved
// 0x5b4 : reserved
// 0x5b8 : Data signal of x_177
//         bit 7~0 - x_177[7:0] (Read/Write)
//         others  - reserved
// 0x5bc : reserved
// 0x5c0 : Data signal of x_178
//         bit 7~0 - x_178[7:0] (Read/Write)
//         others  - reserved
// 0x5c4 : reserved
// 0x5c8 : Data signal of x_179
//         bit 7~0 - x_179[7:0] (Read/Write)
//         others  - reserved
// 0x5cc : reserved
// 0x5d0 : Data signal of x_180
//         bit 7~0 - x_180[7:0] (Read/Write)
//         others  - reserved
// 0x5d4 : reserved
// 0x5d8 : Data signal of x_181
//         bit 7~0 - x_181[7:0] (Read/Write)
//         others  - reserved
// 0x5dc : reserved
// 0x5e0 : Data signal of x_182
//         bit 7~0 - x_182[7:0] (Read/Write)
//         others  - reserved
// 0x5e4 : reserved
// 0x5e8 : Data signal of x_183
//         bit 7~0 - x_183[7:0] (Read/Write)
//         others  - reserved
// 0x5ec : reserved
// 0x5f0 : Data signal of x_184
//         bit 7~0 - x_184[7:0] (Read/Write)
//         others  - reserved
// 0x5f4 : reserved
// 0x5f8 : Data signal of x_185
//         bit 7~0 - x_185[7:0] (Read/Write)
//         others  - reserved
// 0x5fc : reserved
// 0x600 : Data signal of x_186
//         bit 7~0 - x_186[7:0] (Read/Write)
//         others  - reserved
// 0x604 : reserved
// 0x608 : Data signal of x_187
//         bit 7~0 - x_187[7:0] (Read/Write)
//         others  - reserved
// 0x60c : reserved
// 0x610 : Data signal of x_188
//         bit 7~0 - x_188[7:0] (Read/Write)
//         others  - reserved
// 0x614 : reserved
// 0x618 : Data signal of x_189
//         bit 7~0 - x_189[7:0] (Read/Write)
//         others  - reserved
// 0x61c : reserved
// 0x620 : Data signal of x_190
//         bit 7~0 - x_190[7:0] (Read/Write)
//         others  - reserved
// 0x624 : reserved
// 0x628 : Data signal of x_191
//         bit 7~0 - x_191[7:0] (Read/Write)
//         others  - reserved
// 0x62c : reserved
// 0x630 : Data signal of x_192
//         bit 7~0 - x_192[7:0] (Read/Write)
//         others  - reserved
// 0x634 : reserved
// 0x638 : Data signal of x_193
//         bit 7~0 - x_193[7:0] (Read/Write)
//         others  - reserved
// 0x63c : reserved
// 0x640 : Data signal of x_194
//         bit 7~0 - x_194[7:0] (Read/Write)
//         others  - reserved
// 0x644 : reserved
// 0x648 : Data signal of x_195
//         bit 7~0 - x_195[7:0] (Read/Write)
//         others  - reserved
// 0x64c : reserved
// 0x650 : Data signal of x_196
//         bit 7~0 - x_196[7:0] (Read/Write)
//         others  - reserved
// 0x654 : reserved
// 0x658 : Data signal of x_197
//         bit 7~0 - x_197[7:0] (Read/Write)
//         others  - reserved
// 0x65c : reserved
// 0x660 : Data signal of x_198
//         bit 7~0 - x_198[7:0] (Read/Write)
//         others  - reserved
// 0x664 : reserved
// 0x668 : Data signal of x_199
//         bit 7~0 - x_199[7:0] (Read/Write)
//         others  - reserved
// 0x66c : reserved
// 0x670 : Data signal of x_200
//         bit 7~0 - x_200[7:0] (Read/Write)
//         others  - reserved
// 0x674 : reserved
// 0x678 : Data signal of x_201
//         bit 7~0 - x_201[7:0] (Read/Write)
//         others  - reserved
// 0x67c : reserved
// 0x680 : Data signal of x_202
//         bit 7~0 - x_202[7:0] (Read/Write)
//         others  - reserved
// 0x684 : reserved
// 0x688 : Data signal of x_203
//         bit 7~0 - x_203[7:0] (Read/Write)
//         others  - reserved
// 0x68c : reserved
// 0x690 : Data signal of x_204
//         bit 7~0 - x_204[7:0] (Read/Write)
//         others  - reserved
// 0x694 : reserved
// 0x698 : Data signal of x_205
//         bit 7~0 - x_205[7:0] (Read/Write)
//         others  - reserved
// 0x69c : reserved
// 0x6a0 : Data signal of x_206
//         bit 7~0 - x_206[7:0] (Read/Write)
//         others  - reserved
// 0x6a4 : reserved
// 0x6a8 : Data signal of x_207
//         bit 7~0 - x_207[7:0] (Read/Write)
//         others  - reserved
// 0x6ac : reserved
// 0x6b0 : Data signal of x_208
//         bit 7~0 - x_208[7:0] (Read/Write)
//         others  - reserved
// 0x6b4 : reserved
// 0x6b8 : Data signal of x_209
//         bit 7~0 - x_209[7:0] (Read/Write)
//         others  - reserved
// 0x6bc : reserved
// 0x6c0 : Data signal of x_210
//         bit 7~0 - x_210[7:0] (Read/Write)
//         others  - reserved
// 0x6c4 : reserved
// 0x6c8 : Data signal of x_211
//         bit 7~0 - x_211[7:0] (Read/Write)
//         others  - reserved
// 0x6cc : reserved
// 0x6d0 : Data signal of x_212
//         bit 7~0 - x_212[7:0] (Read/Write)
//         others  - reserved
// 0x6d4 : reserved
// 0x6d8 : Data signal of x_213
//         bit 7~0 - x_213[7:0] (Read/Write)
//         others  - reserved
// 0x6dc : reserved
// 0x6e0 : Data signal of x_214
//         bit 7~0 - x_214[7:0] (Read/Write)
//         others  - reserved
// 0x6e4 : reserved
// 0x6e8 : Data signal of x_215
//         bit 7~0 - x_215[7:0] (Read/Write)
//         others  - reserved
// 0x6ec : reserved
// 0x6f0 : Data signal of x_216
//         bit 7~0 - x_216[7:0] (Read/Write)
//         others  - reserved
// 0x6f4 : reserved
// 0x6f8 : Data signal of x_217
//         bit 7~0 - x_217[7:0] (Read/Write)
//         others  - reserved
// 0x6fc : reserved
// 0x700 : Data signal of x_218
//         bit 7~0 - x_218[7:0] (Read/Write)
//         others  - reserved
// 0x704 : reserved
// 0x708 : Data signal of x_219
//         bit 7~0 - x_219[7:0] (Read/Write)
//         others  - reserved
// 0x70c : reserved
// 0x710 : Data signal of x_220
//         bit 7~0 - x_220[7:0] (Read/Write)
//         others  - reserved
// 0x714 : reserved
// 0x718 : Data signal of x_221
//         bit 7~0 - x_221[7:0] (Read/Write)
//         others  - reserved
// 0x71c : reserved
// 0x720 : Data signal of x_222
//         bit 7~0 - x_222[7:0] (Read/Write)
//         others  - reserved
// 0x724 : reserved
// 0x728 : Data signal of x_223
//         bit 7~0 - x_223[7:0] (Read/Write)
//         others  - reserved
// 0x72c : reserved
// 0x730 : Data signal of x_224
//         bit 7~0 - x_224[7:0] (Read/Write)
//         others  - reserved
// 0x734 : reserved
// 0x738 : Data signal of x_225
//         bit 7~0 - x_225[7:0] (Read/Write)
//         others  - reserved
// 0x73c : reserved
// 0x740 : Data signal of x_226
//         bit 7~0 - x_226[7:0] (Read/Write)
//         others  - reserved
// 0x744 : reserved
// 0x748 : Data signal of x_227
//         bit 7~0 - x_227[7:0] (Read/Write)
//         others  - reserved
// 0x74c : reserved
// 0x750 : Data signal of x_228
//         bit 7~0 - x_228[7:0] (Read/Write)
//         others  - reserved
// 0x754 : reserved
// 0x758 : Data signal of x_229
//         bit 7~0 - x_229[7:0] (Read/Write)
//         others  - reserved
// 0x75c : reserved
// 0x760 : Data signal of x_230
//         bit 7~0 - x_230[7:0] (Read/Write)
//         others  - reserved
// 0x764 : reserved
// 0x768 : Data signal of x_231
//         bit 7~0 - x_231[7:0] (Read/Write)
//         others  - reserved
// 0x76c : reserved
// 0x770 : Data signal of x_232
//         bit 7~0 - x_232[7:0] (Read/Write)
//         others  - reserved
// 0x774 : reserved
// 0x778 : Data signal of x_233
//         bit 7~0 - x_233[7:0] (Read/Write)
//         others  - reserved
// 0x77c : reserved
// 0x780 : Data signal of x_234
//         bit 7~0 - x_234[7:0] (Read/Write)
//         others  - reserved
// 0x784 : reserved
// 0x788 : Data signal of x_235
//         bit 7~0 - x_235[7:0] (Read/Write)
//         others  - reserved
// 0x78c : reserved
// 0x790 : Data signal of x_236
//         bit 7~0 - x_236[7:0] (Read/Write)
//         others  - reserved
// 0x794 : reserved
// 0x798 : Data signal of x_237
//         bit 7~0 - x_237[7:0] (Read/Write)
//         others  - reserved
// 0x79c : reserved
// 0x7a0 : Data signal of x_238
//         bit 7~0 - x_238[7:0] (Read/Write)
//         others  - reserved
// 0x7a4 : reserved
// 0x7a8 : Data signal of x_239
//         bit 7~0 - x_239[7:0] (Read/Write)
//         others  - reserved
// 0x7ac : reserved
// 0x7b0 : Data signal of x_240
//         bit 7~0 - x_240[7:0] (Read/Write)
//         others  - reserved
// 0x7b4 : reserved
// 0x7b8 : Data signal of x_241
//         bit 7~0 - x_241[7:0] (Read/Write)
//         others  - reserved
// 0x7bc : reserved
// 0x7c0 : Data signal of x_242
//         bit 7~0 - x_242[7:0] (Read/Write)
//         others  - reserved
// 0x7c4 : reserved
// 0x7c8 : Data signal of x_243
//         bit 7~0 - x_243[7:0] (Read/Write)
//         others  - reserved
// 0x7cc : reserved
// 0x7d0 : Data signal of x_244
//         bit 7~0 - x_244[7:0] (Read/Write)
//         others  - reserved
// 0x7d4 : reserved
// 0x7d8 : Data signal of x_245
//         bit 7~0 - x_245[7:0] (Read/Write)
//         others  - reserved
// 0x7dc : reserved
// 0x7e0 : Data signal of x_246
//         bit 7~0 - x_246[7:0] (Read/Write)
//         others  - reserved
// 0x7e4 : reserved
// 0x7e8 : Data signal of x_247
//         bit 7~0 - x_247[7:0] (Read/Write)
//         others  - reserved
// 0x7ec : reserved
// 0x7f0 : Data signal of x_248
//         bit 7~0 - x_248[7:0] (Read/Write)
//         others  - reserved
// 0x7f4 : reserved
// 0x7f8 : Data signal of x_249
//         bit 7~0 - x_249[7:0] (Read/Write)
//         others  - reserved
// 0x7fc : reserved
// 0x800 : Data signal of x_250
//         bit 7~0 - x_250[7:0] (Read/Write)
//         others  - reserved
// 0x804 : reserved
// 0x808 : Data signal of x_251
//         bit 7~0 - x_251[7:0] (Read/Write)
//         others  - reserved
// 0x80c : reserved
// 0x810 : Data signal of x_252
//         bit 7~0 - x_252[7:0] (Read/Write)
//         others  - reserved
// 0x814 : reserved
// 0x818 : Data signal of x_253
//         bit 7~0 - x_253[7:0] (Read/Write)
//         others  - reserved
// 0x81c : reserved
// 0x820 : Data signal of x_254
//         bit 7~0 - x_254[7:0] (Read/Write)
//         others  - reserved
// 0x824 : reserved
// 0x828 : Data signal of x_255
//         bit 7~0 - x_255[7:0] (Read/Write)
//         others  - reserved
// 0x82c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEUCHW_CONTROL_ADDR_AP_CTRL     0x000
#define XEUCHW_CONTROL_ADDR_GIE         0x004
#define XEUCHW_CONTROL_ADDR_IER         0x008
#define XEUCHW_CONTROL_ADDR_ISR         0x00c
#define XEUCHW_CONTROL_ADDR_Y_ADD_DATA  0x010
#define XEUCHW_CONTROL_BITS_Y_ADD_DATA  32
#define XEUCHW_CONTROL_ADDR_Y_ADD_CTRL  0x014
#define XEUCHW_CONTROL_ADDR_Y_SQRT_DATA 0x020
#define XEUCHW_CONTROL_BITS_Y_SQRT_DATA 32
#define XEUCHW_CONTROL_ADDR_Y_SQRT_CTRL 0x024
#define XEUCHW_CONTROL_ADDR_X_0_DATA    0x030
#define XEUCHW_CONTROL_BITS_X_0_DATA    8
#define XEUCHW_CONTROL_ADDR_X_1_DATA    0x038
#define XEUCHW_CONTROL_BITS_X_1_DATA    8
#define XEUCHW_CONTROL_ADDR_X_2_DATA    0x040
#define XEUCHW_CONTROL_BITS_X_2_DATA    8
#define XEUCHW_CONTROL_ADDR_X_3_DATA    0x048
#define XEUCHW_CONTROL_BITS_X_3_DATA    8
#define XEUCHW_CONTROL_ADDR_X_4_DATA    0x050
#define XEUCHW_CONTROL_BITS_X_4_DATA    8
#define XEUCHW_CONTROL_ADDR_X_5_DATA    0x058
#define XEUCHW_CONTROL_BITS_X_5_DATA    8
#define XEUCHW_CONTROL_ADDR_X_6_DATA    0x060
#define XEUCHW_CONTROL_BITS_X_6_DATA    8
#define XEUCHW_CONTROL_ADDR_X_7_DATA    0x068
#define XEUCHW_CONTROL_BITS_X_7_DATA    8
#define XEUCHW_CONTROL_ADDR_X_8_DATA    0x070
#define XEUCHW_CONTROL_BITS_X_8_DATA    8
#define XEUCHW_CONTROL_ADDR_X_9_DATA    0x078
#define XEUCHW_CONTROL_BITS_X_9_DATA    8
#define XEUCHW_CONTROL_ADDR_X_10_DATA   0x080
#define XEUCHW_CONTROL_BITS_X_10_DATA   8
#define XEUCHW_CONTROL_ADDR_X_11_DATA   0x088
#define XEUCHW_CONTROL_BITS_X_11_DATA   8
#define XEUCHW_CONTROL_ADDR_X_12_DATA   0x090
#define XEUCHW_CONTROL_BITS_X_12_DATA   8
#define XEUCHW_CONTROL_ADDR_X_13_DATA   0x098
#define XEUCHW_CONTROL_BITS_X_13_DATA   8
#define XEUCHW_CONTROL_ADDR_X_14_DATA   0x0a0
#define XEUCHW_CONTROL_BITS_X_14_DATA   8
#define XEUCHW_CONTROL_ADDR_X_15_DATA   0x0a8
#define XEUCHW_CONTROL_BITS_X_15_DATA   8
#define XEUCHW_CONTROL_ADDR_X_16_DATA   0x0b0
#define XEUCHW_CONTROL_BITS_X_16_DATA   8
#define XEUCHW_CONTROL_ADDR_X_17_DATA   0x0b8
#define XEUCHW_CONTROL_BITS_X_17_DATA   8
#define XEUCHW_CONTROL_ADDR_X_18_DATA   0x0c0
#define XEUCHW_CONTROL_BITS_X_18_DATA   8
#define XEUCHW_CONTROL_ADDR_X_19_DATA   0x0c8
#define XEUCHW_CONTROL_BITS_X_19_DATA   8
#define XEUCHW_CONTROL_ADDR_X_20_DATA   0x0d0
#define XEUCHW_CONTROL_BITS_X_20_DATA   8
#define XEUCHW_CONTROL_ADDR_X_21_DATA   0x0d8
#define XEUCHW_CONTROL_BITS_X_21_DATA   8
#define XEUCHW_CONTROL_ADDR_X_22_DATA   0x0e0
#define XEUCHW_CONTROL_BITS_X_22_DATA   8
#define XEUCHW_CONTROL_ADDR_X_23_DATA   0x0e8
#define XEUCHW_CONTROL_BITS_X_23_DATA   8
#define XEUCHW_CONTROL_ADDR_X_24_DATA   0x0f0
#define XEUCHW_CONTROL_BITS_X_24_DATA   8
#define XEUCHW_CONTROL_ADDR_X_25_DATA   0x0f8
#define XEUCHW_CONTROL_BITS_X_25_DATA   8
#define XEUCHW_CONTROL_ADDR_X_26_DATA   0x100
#define XEUCHW_CONTROL_BITS_X_26_DATA   8
#define XEUCHW_CONTROL_ADDR_X_27_DATA   0x108
#define XEUCHW_CONTROL_BITS_X_27_DATA   8
#define XEUCHW_CONTROL_ADDR_X_28_DATA   0x110
#define XEUCHW_CONTROL_BITS_X_28_DATA   8
#define XEUCHW_CONTROL_ADDR_X_29_DATA   0x118
#define XEUCHW_CONTROL_BITS_X_29_DATA   8
#define XEUCHW_CONTROL_ADDR_X_30_DATA   0x120
#define XEUCHW_CONTROL_BITS_X_30_DATA   8
#define XEUCHW_CONTROL_ADDR_X_31_DATA   0x128
#define XEUCHW_CONTROL_BITS_X_31_DATA   8
#define XEUCHW_CONTROL_ADDR_X_32_DATA   0x130
#define XEUCHW_CONTROL_BITS_X_32_DATA   8
#define XEUCHW_CONTROL_ADDR_X_33_DATA   0x138
#define XEUCHW_CONTROL_BITS_X_33_DATA   8
#define XEUCHW_CONTROL_ADDR_X_34_DATA   0x140
#define XEUCHW_CONTROL_BITS_X_34_DATA   8
#define XEUCHW_CONTROL_ADDR_X_35_DATA   0x148
#define XEUCHW_CONTROL_BITS_X_35_DATA   8
#define XEUCHW_CONTROL_ADDR_X_36_DATA   0x150
#define XEUCHW_CONTROL_BITS_X_36_DATA   8
#define XEUCHW_CONTROL_ADDR_X_37_DATA   0x158
#define XEUCHW_CONTROL_BITS_X_37_DATA   8
#define XEUCHW_CONTROL_ADDR_X_38_DATA   0x160
#define XEUCHW_CONTROL_BITS_X_38_DATA   8
#define XEUCHW_CONTROL_ADDR_X_39_DATA   0x168
#define XEUCHW_CONTROL_BITS_X_39_DATA   8
#define XEUCHW_CONTROL_ADDR_X_40_DATA   0x170
#define XEUCHW_CONTROL_BITS_X_40_DATA   8
#define XEUCHW_CONTROL_ADDR_X_41_DATA   0x178
#define XEUCHW_CONTROL_BITS_X_41_DATA   8
#define XEUCHW_CONTROL_ADDR_X_42_DATA   0x180
#define XEUCHW_CONTROL_BITS_X_42_DATA   8
#define XEUCHW_CONTROL_ADDR_X_43_DATA   0x188
#define XEUCHW_CONTROL_BITS_X_43_DATA   8
#define XEUCHW_CONTROL_ADDR_X_44_DATA   0x190
#define XEUCHW_CONTROL_BITS_X_44_DATA   8
#define XEUCHW_CONTROL_ADDR_X_45_DATA   0x198
#define XEUCHW_CONTROL_BITS_X_45_DATA   8
#define XEUCHW_CONTROL_ADDR_X_46_DATA   0x1a0
#define XEUCHW_CONTROL_BITS_X_46_DATA   8
#define XEUCHW_CONTROL_ADDR_X_47_DATA   0x1a8
#define XEUCHW_CONTROL_BITS_X_47_DATA   8
#define XEUCHW_CONTROL_ADDR_X_48_DATA   0x1b0
#define XEUCHW_CONTROL_BITS_X_48_DATA   8
#define XEUCHW_CONTROL_ADDR_X_49_DATA   0x1b8
#define XEUCHW_CONTROL_BITS_X_49_DATA   8
#define XEUCHW_CONTROL_ADDR_X_50_DATA   0x1c0
#define XEUCHW_CONTROL_BITS_X_50_DATA   8
#define XEUCHW_CONTROL_ADDR_X_51_DATA   0x1c8
#define XEUCHW_CONTROL_BITS_X_51_DATA   8
#define XEUCHW_CONTROL_ADDR_X_52_DATA   0x1d0
#define XEUCHW_CONTROL_BITS_X_52_DATA   8
#define XEUCHW_CONTROL_ADDR_X_53_DATA   0x1d8
#define XEUCHW_CONTROL_BITS_X_53_DATA   8
#define XEUCHW_CONTROL_ADDR_X_54_DATA   0x1e0
#define XEUCHW_CONTROL_BITS_X_54_DATA   8
#define XEUCHW_CONTROL_ADDR_X_55_DATA   0x1e8
#define XEUCHW_CONTROL_BITS_X_55_DATA   8
#define XEUCHW_CONTROL_ADDR_X_56_DATA   0x1f0
#define XEUCHW_CONTROL_BITS_X_56_DATA   8
#define XEUCHW_CONTROL_ADDR_X_57_DATA   0x1f8
#define XEUCHW_CONTROL_BITS_X_57_DATA   8
#define XEUCHW_CONTROL_ADDR_X_58_DATA   0x200
#define XEUCHW_CONTROL_BITS_X_58_DATA   8
#define XEUCHW_CONTROL_ADDR_X_59_DATA   0x208
#define XEUCHW_CONTROL_BITS_X_59_DATA   8
#define XEUCHW_CONTROL_ADDR_X_60_DATA   0x210
#define XEUCHW_CONTROL_BITS_X_60_DATA   8
#define XEUCHW_CONTROL_ADDR_X_61_DATA   0x218
#define XEUCHW_CONTROL_BITS_X_61_DATA   8
#define XEUCHW_CONTROL_ADDR_X_62_DATA   0x220
#define XEUCHW_CONTROL_BITS_X_62_DATA   8
#define XEUCHW_CONTROL_ADDR_X_63_DATA   0x228
#define XEUCHW_CONTROL_BITS_X_63_DATA   8
#define XEUCHW_CONTROL_ADDR_X_64_DATA   0x230
#define XEUCHW_CONTROL_BITS_X_64_DATA   8
#define XEUCHW_CONTROL_ADDR_X_65_DATA   0x238
#define XEUCHW_CONTROL_BITS_X_65_DATA   8
#define XEUCHW_CONTROL_ADDR_X_66_DATA   0x240
#define XEUCHW_CONTROL_BITS_X_66_DATA   8
#define XEUCHW_CONTROL_ADDR_X_67_DATA   0x248
#define XEUCHW_CONTROL_BITS_X_67_DATA   8
#define XEUCHW_CONTROL_ADDR_X_68_DATA   0x250
#define XEUCHW_CONTROL_BITS_X_68_DATA   8
#define XEUCHW_CONTROL_ADDR_X_69_DATA   0x258
#define XEUCHW_CONTROL_BITS_X_69_DATA   8
#define XEUCHW_CONTROL_ADDR_X_70_DATA   0x260
#define XEUCHW_CONTROL_BITS_X_70_DATA   8
#define XEUCHW_CONTROL_ADDR_X_71_DATA   0x268
#define XEUCHW_CONTROL_BITS_X_71_DATA   8
#define XEUCHW_CONTROL_ADDR_X_72_DATA   0x270
#define XEUCHW_CONTROL_BITS_X_72_DATA   8
#define XEUCHW_CONTROL_ADDR_X_73_DATA   0x278
#define XEUCHW_CONTROL_BITS_X_73_DATA   8
#define XEUCHW_CONTROL_ADDR_X_74_DATA   0x280
#define XEUCHW_CONTROL_BITS_X_74_DATA   8
#define XEUCHW_CONTROL_ADDR_X_75_DATA   0x288
#define XEUCHW_CONTROL_BITS_X_75_DATA   8
#define XEUCHW_CONTROL_ADDR_X_76_DATA   0x290
#define XEUCHW_CONTROL_BITS_X_76_DATA   8
#define XEUCHW_CONTROL_ADDR_X_77_DATA   0x298
#define XEUCHW_CONTROL_BITS_X_77_DATA   8
#define XEUCHW_CONTROL_ADDR_X_78_DATA   0x2a0
#define XEUCHW_CONTROL_BITS_X_78_DATA   8
#define XEUCHW_CONTROL_ADDR_X_79_DATA   0x2a8
#define XEUCHW_CONTROL_BITS_X_79_DATA   8
#define XEUCHW_CONTROL_ADDR_X_80_DATA   0x2b0
#define XEUCHW_CONTROL_BITS_X_80_DATA   8
#define XEUCHW_CONTROL_ADDR_X_81_DATA   0x2b8
#define XEUCHW_CONTROL_BITS_X_81_DATA   8
#define XEUCHW_CONTROL_ADDR_X_82_DATA   0x2c0
#define XEUCHW_CONTROL_BITS_X_82_DATA   8
#define XEUCHW_CONTROL_ADDR_X_83_DATA   0x2c8
#define XEUCHW_CONTROL_BITS_X_83_DATA   8
#define XEUCHW_CONTROL_ADDR_X_84_DATA   0x2d0
#define XEUCHW_CONTROL_BITS_X_84_DATA   8
#define XEUCHW_CONTROL_ADDR_X_85_DATA   0x2d8
#define XEUCHW_CONTROL_BITS_X_85_DATA   8
#define XEUCHW_CONTROL_ADDR_X_86_DATA   0x2e0
#define XEUCHW_CONTROL_BITS_X_86_DATA   8
#define XEUCHW_CONTROL_ADDR_X_87_DATA   0x2e8
#define XEUCHW_CONTROL_BITS_X_87_DATA   8
#define XEUCHW_CONTROL_ADDR_X_88_DATA   0x2f0
#define XEUCHW_CONTROL_BITS_X_88_DATA   8
#define XEUCHW_CONTROL_ADDR_X_89_DATA   0x2f8
#define XEUCHW_CONTROL_BITS_X_89_DATA   8
#define XEUCHW_CONTROL_ADDR_X_90_DATA   0x300
#define XEUCHW_CONTROL_BITS_X_90_DATA   8
#define XEUCHW_CONTROL_ADDR_X_91_DATA   0x308
#define XEUCHW_CONTROL_BITS_X_91_DATA   8
#define XEUCHW_CONTROL_ADDR_X_92_DATA   0x310
#define XEUCHW_CONTROL_BITS_X_92_DATA   8
#define XEUCHW_CONTROL_ADDR_X_93_DATA   0x318
#define XEUCHW_CONTROL_BITS_X_93_DATA   8
#define XEUCHW_CONTROL_ADDR_X_94_DATA   0x320
#define XEUCHW_CONTROL_BITS_X_94_DATA   8
#define XEUCHW_CONTROL_ADDR_X_95_DATA   0x328
#define XEUCHW_CONTROL_BITS_X_95_DATA   8
#define XEUCHW_CONTROL_ADDR_X_96_DATA   0x330
#define XEUCHW_CONTROL_BITS_X_96_DATA   8
#define XEUCHW_CONTROL_ADDR_X_97_DATA   0x338
#define XEUCHW_CONTROL_BITS_X_97_DATA   8
#define XEUCHW_CONTROL_ADDR_X_98_DATA   0x340
#define XEUCHW_CONTROL_BITS_X_98_DATA   8
#define XEUCHW_CONTROL_ADDR_X_99_DATA   0x348
#define XEUCHW_CONTROL_BITS_X_99_DATA   8
#define XEUCHW_CONTROL_ADDR_X_100_DATA  0x350
#define XEUCHW_CONTROL_BITS_X_100_DATA  8
#define XEUCHW_CONTROL_ADDR_X_101_DATA  0x358
#define XEUCHW_CONTROL_BITS_X_101_DATA  8
#define XEUCHW_CONTROL_ADDR_X_102_DATA  0x360
#define XEUCHW_CONTROL_BITS_X_102_DATA  8
#define XEUCHW_CONTROL_ADDR_X_103_DATA  0x368
#define XEUCHW_CONTROL_BITS_X_103_DATA  8
#define XEUCHW_CONTROL_ADDR_X_104_DATA  0x370
#define XEUCHW_CONTROL_BITS_X_104_DATA  8
#define XEUCHW_CONTROL_ADDR_X_105_DATA  0x378
#define XEUCHW_CONTROL_BITS_X_105_DATA  8
#define XEUCHW_CONTROL_ADDR_X_106_DATA  0x380
#define XEUCHW_CONTROL_BITS_X_106_DATA  8
#define XEUCHW_CONTROL_ADDR_X_107_DATA  0x388
#define XEUCHW_CONTROL_BITS_X_107_DATA  8
#define XEUCHW_CONTROL_ADDR_X_108_DATA  0x390
#define XEUCHW_CONTROL_BITS_X_108_DATA  8
#define XEUCHW_CONTROL_ADDR_X_109_DATA  0x398
#define XEUCHW_CONTROL_BITS_X_109_DATA  8
#define XEUCHW_CONTROL_ADDR_X_110_DATA  0x3a0
#define XEUCHW_CONTROL_BITS_X_110_DATA  8
#define XEUCHW_CONTROL_ADDR_X_111_DATA  0x3a8
#define XEUCHW_CONTROL_BITS_X_111_DATA  8
#define XEUCHW_CONTROL_ADDR_X_112_DATA  0x3b0
#define XEUCHW_CONTROL_BITS_X_112_DATA  8
#define XEUCHW_CONTROL_ADDR_X_113_DATA  0x3b8
#define XEUCHW_CONTROL_BITS_X_113_DATA  8
#define XEUCHW_CONTROL_ADDR_X_114_DATA  0x3c0
#define XEUCHW_CONTROL_BITS_X_114_DATA  8
#define XEUCHW_CONTROL_ADDR_X_115_DATA  0x3c8
#define XEUCHW_CONTROL_BITS_X_115_DATA  8
#define XEUCHW_CONTROL_ADDR_X_116_DATA  0x3d0
#define XEUCHW_CONTROL_BITS_X_116_DATA  8
#define XEUCHW_CONTROL_ADDR_X_117_DATA  0x3d8
#define XEUCHW_CONTROL_BITS_X_117_DATA  8
#define XEUCHW_CONTROL_ADDR_X_118_DATA  0x3e0
#define XEUCHW_CONTROL_BITS_X_118_DATA  8
#define XEUCHW_CONTROL_ADDR_X_119_DATA  0x3e8
#define XEUCHW_CONTROL_BITS_X_119_DATA  8
#define XEUCHW_CONTROL_ADDR_X_120_DATA  0x3f0
#define XEUCHW_CONTROL_BITS_X_120_DATA  8
#define XEUCHW_CONTROL_ADDR_X_121_DATA  0x3f8
#define XEUCHW_CONTROL_BITS_X_121_DATA  8
#define XEUCHW_CONTROL_ADDR_X_122_DATA  0x400
#define XEUCHW_CONTROL_BITS_X_122_DATA  8
#define XEUCHW_CONTROL_ADDR_X_123_DATA  0x408
#define XEUCHW_CONTROL_BITS_X_123_DATA  8
#define XEUCHW_CONTROL_ADDR_X_124_DATA  0x410
#define XEUCHW_CONTROL_BITS_X_124_DATA  8
#define XEUCHW_CONTROL_ADDR_X_125_DATA  0x418
#define XEUCHW_CONTROL_BITS_X_125_DATA  8
#define XEUCHW_CONTROL_ADDR_X_126_DATA  0x420
#define XEUCHW_CONTROL_BITS_X_126_DATA  8
#define XEUCHW_CONTROL_ADDR_X_127_DATA  0x428
#define XEUCHW_CONTROL_BITS_X_127_DATA  8
#define XEUCHW_CONTROL_ADDR_X_128_DATA  0x430
#define XEUCHW_CONTROL_BITS_X_128_DATA  8
#define XEUCHW_CONTROL_ADDR_X_129_DATA  0x438
#define XEUCHW_CONTROL_BITS_X_129_DATA  8
#define XEUCHW_CONTROL_ADDR_X_130_DATA  0x440
#define XEUCHW_CONTROL_BITS_X_130_DATA  8
#define XEUCHW_CONTROL_ADDR_X_131_DATA  0x448
#define XEUCHW_CONTROL_BITS_X_131_DATA  8
#define XEUCHW_CONTROL_ADDR_X_132_DATA  0x450
#define XEUCHW_CONTROL_BITS_X_132_DATA  8
#define XEUCHW_CONTROL_ADDR_X_133_DATA  0x458
#define XEUCHW_CONTROL_BITS_X_133_DATA  8
#define XEUCHW_CONTROL_ADDR_X_134_DATA  0x460
#define XEUCHW_CONTROL_BITS_X_134_DATA  8
#define XEUCHW_CONTROL_ADDR_X_135_DATA  0x468
#define XEUCHW_CONTROL_BITS_X_135_DATA  8
#define XEUCHW_CONTROL_ADDR_X_136_DATA  0x470
#define XEUCHW_CONTROL_BITS_X_136_DATA  8
#define XEUCHW_CONTROL_ADDR_X_137_DATA  0x478
#define XEUCHW_CONTROL_BITS_X_137_DATA  8
#define XEUCHW_CONTROL_ADDR_X_138_DATA  0x480
#define XEUCHW_CONTROL_BITS_X_138_DATA  8
#define XEUCHW_CONTROL_ADDR_X_139_DATA  0x488
#define XEUCHW_CONTROL_BITS_X_139_DATA  8
#define XEUCHW_CONTROL_ADDR_X_140_DATA  0x490
#define XEUCHW_CONTROL_BITS_X_140_DATA  8
#define XEUCHW_CONTROL_ADDR_X_141_DATA  0x498
#define XEUCHW_CONTROL_BITS_X_141_DATA  8
#define XEUCHW_CONTROL_ADDR_X_142_DATA  0x4a0
#define XEUCHW_CONTROL_BITS_X_142_DATA  8
#define XEUCHW_CONTROL_ADDR_X_143_DATA  0x4a8
#define XEUCHW_CONTROL_BITS_X_143_DATA  8
#define XEUCHW_CONTROL_ADDR_X_144_DATA  0x4b0
#define XEUCHW_CONTROL_BITS_X_144_DATA  8
#define XEUCHW_CONTROL_ADDR_X_145_DATA  0x4b8
#define XEUCHW_CONTROL_BITS_X_145_DATA  8
#define XEUCHW_CONTROL_ADDR_X_146_DATA  0x4c0
#define XEUCHW_CONTROL_BITS_X_146_DATA  8
#define XEUCHW_CONTROL_ADDR_X_147_DATA  0x4c8
#define XEUCHW_CONTROL_BITS_X_147_DATA  8
#define XEUCHW_CONTROL_ADDR_X_148_DATA  0x4d0
#define XEUCHW_CONTROL_BITS_X_148_DATA  8
#define XEUCHW_CONTROL_ADDR_X_149_DATA  0x4d8
#define XEUCHW_CONTROL_BITS_X_149_DATA  8
#define XEUCHW_CONTROL_ADDR_X_150_DATA  0x4e0
#define XEUCHW_CONTROL_BITS_X_150_DATA  8
#define XEUCHW_CONTROL_ADDR_X_151_DATA  0x4e8
#define XEUCHW_CONTROL_BITS_X_151_DATA  8
#define XEUCHW_CONTROL_ADDR_X_152_DATA  0x4f0
#define XEUCHW_CONTROL_BITS_X_152_DATA  8
#define XEUCHW_CONTROL_ADDR_X_153_DATA  0x4f8
#define XEUCHW_CONTROL_BITS_X_153_DATA  8
#define XEUCHW_CONTROL_ADDR_X_154_DATA  0x500
#define XEUCHW_CONTROL_BITS_X_154_DATA  8
#define XEUCHW_CONTROL_ADDR_X_155_DATA  0x508
#define XEUCHW_CONTROL_BITS_X_155_DATA  8
#define XEUCHW_CONTROL_ADDR_X_156_DATA  0x510
#define XEUCHW_CONTROL_BITS_X_156_DATA  8
#define XEUCHW_CONTROL_ADDR_X_157_DATA  0x518
#define XEUCHW_CONTROL_BITS_X_157_DATA  8
#define XEUCHW_CONTROL_ADDR_X_158_DATA  0x520
#define XEUCHW_CONTROL_BITS_X_158_DATA  8
#define XEUCHW_CONTROL_ADDR_X_159_DATA  0x528
#define XEUCHW_CONTROL_BITS_X_159_DATA  8
#define XEUCHW_CONTROL_ADDR_X_160_DATA  0x530
#define XEUCHW_CONTROL_BITS_X_160_DATA  8
#define XEUCHW_CONTROL_ADDR_X_161_DATA  0x538
#define XEUCHW_CONTROL_BITS_X_161_DATA  8
#define XEUCHW_CONTROL_ADDR_X_162_DATA  0x540
#define XEUCHW_CONTROL_BITS_X_162_DATA  8
#define XEUCHW_CONTROL_ADDR_X_163_DATA  0x548
#define XEUCHW_CONTROL_BITS_X_163_DATA  8
#define XEUCHW_CONTROL_ADDR_X_164_DATA  0x550
#define XEUCHW_CONTROL_BITS_X_164_DATA  8
#define XEUCHW_CONTROL_ADDR_X_165_DATA  0x558
#define XEUCHW_CONTROL_BITS_X_165_DATA  8
#define XEUCHW_CONTROL_ADDR_X_166_DATA  0x560
#define XEUCHW_CONTROL_BITS_X_166_DATA  8
#define XEUCHW_CONTROL_ADDR_X_167_DATA  0x568
#define XEUCHW_CONTROL_BITS_X_167_DATA  8
#define XEUCHW_CONTROL_ADDR_X_168_DATA  0x570
#define XEUCHW_CONTROL_BITS_X_168_DATA  8
#define XEUCHW_CONTROL_ADDR_X_169_DATA  0x578
#define XEUCHW_CONTROL_BITS_X_169_DATA  8
#define XEUCHW_CONTROL_ADDR_X_170_DATA  0x580
#define XEUCHW_CONTROL_BITS_X_170_DATA  8
#define XEUCHW_CONTROL_ADDR_X_171_DATA  0x588
#define XEUCHW_CONTROL_BITS_X_171_DATA  8
#define XEUCHW_CONTROL_ADDR_X_172_DATA  0x590
#define XEUCHW_CONTROL_BITS_X_172_DATA  8
#define XEUCHW_CONTROL_ADDR_X_173_DATA  0x598
#define XEUCHW_CONTROL_BITS_X_173_DATA  8
#define XEUCHW_CONTROL_ADDR_X_174_DATA  0x5a0
#define XEUCHW_CONTROL_BITS_X_174_DATA  8
#define XEUCHW_CONTROL_ADDR_X_175_DATA  0x5a8
#define XEUCHW_CONTROL_BITS_X_175_DATA  8
#define XEUCHW_CONTROL_ADDR_X_176_DATA  0x5b0
#define XEUCHW_CONTROL_BITS_X_176_DATA  8
#define XEUCHW_CONTROL_ADDR_X_177_DATA  0x5b8
#define XEUCHW_CONTROL_BITS_X_177_DATA  8
#define XEUCHW_CONTROL_ADDR_X_178_DATA  0x5c0
#define XEUCHW_CONTROL_BITS_X_178_DATA  8
#define XEUCHW_CONTROL_ADDR_X_179_DATA  0x5c8
#define XEUCHW_CONTROL_BITS_X_179_DATA  8
#define XEUCHW_CONTROL_ADDR_X_180_DATA  0x5d0
#define XEUCHW_CONTROL_BITS_X_180_DATA  8
#define XEUCHW_CONTROL_ADDR_X_181_DATA  0x5d8
#define XEUCHW_CONTROL_BITS_X_181_DATA  8
#define XEUCHW_CONTROL_ADDR_X_182_DATA  0x5e0
#define XEUCHW_CONTROL_BITS_X_182_DATA  8
#define XEUCHW_CONTROL_ADDR_X_183_DATA  0x5e8
#define XEUCHW_CONTROL_BITS_X_183_DATA  8
#define XEUCHW_CONTROL_ADDR_X_184_DATA  0x5f0
#define XEUCHW_CONTROL_BITS_X_184_DATA  8
#define XEUCHW_CONTROL_ADDR_X_185_DATA  0x5f8
#define XEUCHW_CONTROL_BITS_X_185_DATA  8
#define XEUCHW_CONTROL_ADDR_X_186_DATA  0x600
#define XEUCHW_CONTROL_BITS_X_186_DATA  8
#define XEUCHW_CONTROL_ADDR_X_187_DATA  0x608
#define XEUCHW_CONTROL_BITS_X_187_DATA  8
#define XEUCHW_CONTROL_ADDR_X_188_DATA  0x610
#define XEUCHW_CONTROL_BITS_X_188_DATA  8
#define XEUCHW_CONTROL_ADDR_X_189_DATA  0x618
#define XEUCHW_CONTROL_BITS_X_189_DATA  8
#define XEUCHW_CONTROL_ADDR_X_190_DATA  0x620
#define XEUCHW_CONTROL_BITS_X_190_DATA  8
#define XEUCHW_CONTROL_ADDR_X_191_DATA  0x628
#define XEUCHW_CONTROL_BITS_X_191_DATA  8
#define XEUCHW_CONTROL_ADDR_X_192_DATA  0x630
#define XEUCHW_CONTROL_BITS_X_192_DATA  8
#define XEUCHW_CONTROL_ADDR_X_193_DATA  0x638
#define XEUCHW_CONTROL_BITS_X_193_DATA  8
#define XEUCHW_CONTROL_ADDR_X_194_DATA  0x640
#define XEUCHW_CONTROL_BITS_X_194_DATA  8
#define XEUCHW_CONTROL_ADDR_X_195_DATA  0x648
#define XEUCHW_CONTROL_BITS_X_195_DATA  8
#define XEUCHW_CONTROL_ADDR_X_196_DATA  0x650
#define XEUCHW_CONTROL_BITS_X_196_DATA  8
#define XEUCHW_CONTROL_ADDR_X_197_DATA  0x658
#define XEUCHW_CONTROL_BITS_X_197_DATA  8
#define XEUCHW_CONTROL_ADDR_X_198_DATA  0x660
#define XEUCHW_CONTROL_BITS_X_198_DATA  8
#define XEUCHW_CONTROL_ADDR_X_199_DATA  0x668
#define XEUCHW_CONTROL_BITS_X_199_DATA  8
#define XEUCHW_CONTROL_ADDR_X_200_DATA  0x670
#define XEUCHW_CONTROL_BITS_X_200_DATA  8
#define XEUCHW_CONTROL_ADDR_X_201_DATA  0x678
#define XEUCHW_CONTROL_BITS_X_201_DATA  8
#define XEUCHW_CONTROL_ADDR_X_202_DATA  0x680
#define XEUCHW_CONTROL_BITS_X_202_DATA  8
#define XEUCHW_CONTROL_ADDR_X_203_DATA  0x688
#define XEUCHW_CONTROL_BITS_X_203_DATA  8
#define XEUCHW_CONTROL_ADDR_X_204_DATA  0x690
#define XEUCHW_CONTROL_BITS_X_204_DATA  8
#define XEUCHW_CONTROL_ADDR_X_205_DATA  0x698
#define XEUCHW_CONTROL_BITS_X_205_DATA  8
#define XEUCHW_CONTROL_ADDR_X_206_DATA  0x6a0
#define XEUCHW_CONTROL_BITS_X_206_DATA  8
#define XEUCHW_CONTROL_ADDR_X_207_DATA  0x6a8
#define XEUCHW_CONTROL_BITS_X_207_DATA  8
#define XEUCHW_CONTROL_ADDR_X_208_DATA  0x6b0
#define XEUCHW_CONTROL_BITS_X_208_DATA  8
#define XEUCHW_CONTROL_ADDR_X_209_DATA  0x6b8
#define XEUCHW_CONTROL_BITS_X_209_DATA  8
#define XEUCHW_CONTROL_ADDR_X_210_DATA  0x6c0
#define XEUCHW_CONTROL_BITS_X_210_DATA  8
#define XEUCHW_CONTROL_ADDR_X_211_DATA  0x6c8
#define XEUCHW_CONTROL_BITS_X_211_DATA  8
#define XEUCHW_CONTROL_ADDR_X_212_DATA  0x6d0
#define XEUCHW_CONTROL_BITS_X_212_DATA  8
#define XEUCHW_CONTROL_ADDR_X_213_DATA  0x6d8
#define XEUCHW_CONTROL_BITS_X_213_DATA  8
#define XEUCHW_CONTROL_ADDR_X_214_DATA  0x6e0
#define XEUCHW_CONTROL_BITS_X_214_DATA  8
#define XEUCHW_CONTROL_ADDR_X_215_DATA  0x6e8
#define XEUCHW_CONTROL_BITS_X_215_DATA  8
#define XEUCHW_CONTROL_ADDR_X_216_DATA  0x6f0
#define XEUCHW_CONTROL_BITS_X_216_DATA  8
#define XEUCHW_CONTROL_ADDR_X_217_DATA  0x6f8
#define XEUCHW_CONTROL_BITS_X_217_DATA  8
#define XEUCHW_CONTROL_ADDR_X_218_DATA  0x700
#define XEUCHW_CONTROL_BITS_X_218_DATA  8
#define XEUCHW_CONTROL_ADDR_X_219_DATA  0x708
#define XEUCHW_CONTROL_BITS_X_219_DATA  8
#define XEUCHW_CONTROL_ADDR_X_220_DATA  0x710
#define XEUCHW_CONTROL_BITS_X_220_DATA  8
#define XEUCHW_CONTROL_ADDR_X_221_DATA  0x718
#define XEUCHW_CONTROL_BITS_X_221_DATA  8
#define XEUCHW_CONTROL_ADDR_X_222_DATA  0x720
#define XEUCHW_CONTROL_BITS_X_222_DATA  8
#define XEUCHW_CONTROL_ADDR_X_223_DATA  0x728
#define XEUCHW_CONTROL_BITS_X_223_DATA  8
#define XEUCHW_CONTROL_ADDR_X_224_DATA  0x730
#define XEUCHW_CONTROL_BITS_X_224_DATA  8
#define XEUCHW_CONTROL_ADDR_X_225_DATA  0x738
#define XEUCHW_CONTROL_BITS_X_225_DATA  8
#define XEUCHW_CONTROL_ADDR_X_226_DATA  0x740
#define XEUCHW_CONTROL_BITS_X_226_DATA  8
#define XEUCHW_CONTROL_ADDR_X_227_DATA  0x748
#define XEUCHW_CONTROL_BITS_X_227_DATA  8
#define XEUCHW_CONTROL_ADDR_X_228_DATA  0x750
#define XEUCHW_CONTROL_BITS_X_228_DATA  8
#define XEUCHW_CONTROL_ADDR_X_229_DATA  0x758
#define XEUCHW_CONTROL_BITS_X_229_DATA  8
#define XEUCHW_CONTROL_ADDR_X_230_DATA  0x760
#define XEUCHW_CONTROL_BITS_X_230_DATA  8
#define XEUCHW_CONTROL_ADDR_X_231_DATA  0x768
#define XEUCHW_CONTROL_BITS_X_231_DATA  8
#define XEUCHW_CONTROL_ADDR_X_232_DATA  0x770
#define XEUCHW_CONTROL_BITS_X_232_DATA  8
#define XEUCHW_CONTROL_ADDR_X_233_DATA  0x778
#define XEUCHW_CONTROL_BITS_X_233_DATA  8
#define XEUCHW_CONTROL_ADDR_X_234_DATA  0x780
#define XEUCHW_CONTROL_BITS_X_234_DATA  8
#define XEUCHW_CONTROL_ADDR_X_235_DATA  0x788
#define XEUCHW_CONTROL_BITS_X_235_DATA  8
#define XEUCHW_CONTROL_ADDR_X_236_DATA  0x790
#define XEUCHW_CONTROL_BITS_X_236_DATA  8
#define XEUCHW_CONTROL_ADDR_X_237_DATA  0x798
#define XEUCHW_CONTROL_BITS_X_237_DATA  8
#define XEUCHW_CONTROL_ADDR_X_238_DATA  0x7a0
#define XEUCHW_CONTROL_BITS_X_238_DATA  8
#define XEUCHW_CONTROL_ADDR_X_239_DATA  0x7a8
#define XEUCHW_CONTROL_BITS_X_239_DATA  8
#define XEUCHW_CONTROL_ADDR_X_240_DATA  0x7b0
#define XEUCHW_CONTROL_BITS_X_240_DATA  8
#define XEUCHW_CONTROL_ADDR_X_241_DATA  0x7b8
#define XEUCHW_CONTROL_BITS_X_241_DATA  8
#define XEUCHW_CONTROL_ADDR_X_242_DATA  0x7c0
#define XEUCHW_CONTROL_BITS_X_242_DATA  8
#define XEUCHW_CONTROL_ADDR_X_243_DATA  0x7c8
#define XEUCHW_CONTROL_BITS_X_243_DATA  8
#define XEUCHW_CONTROL_ADDR_X_244_DATA  0x7d0
#define XEUCHW_CONTROL_BITS_X_244_DATA  8
#define XEUCHW_CONTROL_ADDR_X_245_DATA  0x7d8
#define XEUCHW_CONTROL_BITS_X_245_DATA  8
#define XEUCHW_CONTROL_ADDR_X_246_DATA  0x7e0
#define XEUCHW_CONTROL_BITS_X_246_DATA  8
#define XEUCHW_CONTROL_ADDR_X_247_DATA  0x7e8
#define XEUCHW_CONTROL_BITS_X_247_DATA  8
#define XEUCHW_CONTROL_ADDR_X_248_DATA  0x7f0
#define XEUCHW_CONTROL_BITS_X_248_DATA  8
#define XEUCHW_CONTROL_ADDR_X_249_DATA  0x7f8
#define XEUCHW_CONTROL_BITS_X_249_DATA  8
#define XEUCHW_CONTROL_ADDR_X_250_DATA  0x800
#define XEUCHW_CONTROL_BITS_X_250_DATA  8
#define XEUCHW_CONTROL_ADDR_X_251_DATA  0x808
#define XEUCHW_CONTROL_BITS_X_251_DATA  8
#define XEUCHW_CONTROL_ADDR_X_252_DATA  0x810
#define XEUCHW_CONTROL_BITS_X_252_DATA  8
#define XEUCHW_CONTROL_ADDR_X_253_DATA  0x818
#define XEUCHW_CONTROL_BITS_X_253_DATA  8
#define XEUCHW_CONTROL_ADDR_X_254_DATA  0x820
#define XEUCHW_CONTROL_BITS_X_254_DATA  8
#define XEUCHW_CONTROL_ADDR_X_255_DATA  0x828
#define XEUCHW_CONTROL_BITS_X_255_DATA  8

