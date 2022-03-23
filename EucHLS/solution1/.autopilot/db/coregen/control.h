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
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL     0x000
#define CONTROL_ADDR_GIE         0x004
#define CONTROL_ADDR_IER         0x008
#define CONTROL_ADDR_ISR         0x00c
#define CONTROL_ADDR_Y_ADD_DATA  0x010
#define CONTROL_BITS_Y_ADD_DATA  32
#define CONTROL_ADDR_Y_ADD_CTRL  0x014
#define CONTROL_ADDR_Y_SQRT_DATA 0x020
#define CONTROL_BITS_Y_SQRT_DATA 32
#define CONTROL_ADDR_Y_SQRT_CTRL 0x024
#define CONTROL_ADDR_X_0_DATA    0x030
#define CONTROL_BITS_X_0_DATA    8
#define CONTROL_ADDR_X_1_DATA    0x038
#define CONTROL_BITS_X_1_DATA    8
#define CONTROL_ADDR_X_2_DATA    0x040
#define CONTROL_BITS_X_2_DATA    8
#define CONTROL_ADDR_X_3_DATA    0x048
#define CONTROL_BITS_X_3_DATA    8
#define CONTROL_ADDR_X_4_DATA    0x050
#define CONTROL_BITS_X_4_DATA    8
#define CONTROL_ADDR_X_5_DATA    0x058
#define CONTROL_BITS_X_5_DATA    8
#define CONTROL_ADDR_X_6_DATA    0x060
#define CONTROL_BITS_X_6_DATA    8
#define CONTROL_ADDR_X_7_DATA    0x068
#define CONTROL_BITS_X_7_DATA    8
#define CONTROL_ADDR_X_8_DATA    0x070
#define CONTROL_BITS_X_8_DATA    8
#define CONTROL_ADDR_X_9_DATA    0x078
#define CONTROL_BITS_X_9_DATA    8
#define CONTROL_ADDR_X_10_DATA   0x080
#define CONTROL_BITS_X_10_DATA   8
#define CONTROL_ADDR_X_11_DATA   0x088
#define CONTROL_BITS_X_11_DATA   8
#define CONTROL_ADDR_X_12_DATA   0x090
#define CONTROL_BITS_X_12_DATA   8
#define CONTROL_ADDR_X_13_DATA   0x098
#define CONTROL_BITS_X_13_DATA   8
#define CONTROL_ADDR_X_14_DATA   0x0a0
#define CONTROL_BITS_X_14_DATA   8
#define CONTROL_ADDR_X_15_DATA   0x0a8
#define CONTROL_BITS_X_15_DATA   8
#define CONTROL_ADDR_X_16_DATA   0x0b0
#define CONTROL_BITS_X_16_DATA   8
#define CONTROL_ADDR_X_17_DATA   0x0b8
#define CONTROL_BITS_X_17_DATA   8
#define CONTROL_ADDR_X_18_DATA   0x0c0
#define CONTROL_BITS_X_18_DATA   8
#define CONTROL_ADDR_X_19_DATA   0x0c8
#define CONTROL_BITS_X_19_DATA   8
#define CONTROL_ADDR_X_20_DATA   0x0d0
#define CONTROL_BITS_X_20_DATA   8
#define CONTROL_ADDR_X_21_DATA   0x0d8
#define CONTROL_BITS_X_21_DATA   8
#define CONTROL_ADDR_X_22_DATA   0x0e0
#define CONTROL_BITS_X_22_DATA   8
#define CONTROL_ADDR_X_23_DATA   0x0e8
#define CONTROL_BITS_X_23_DATA   8
#define CONTROL_ADDR_X_24_DATA   0x0f0
#define CONTROL_BITS_X_24_DATA   8
#define CONTROL_ADDR_X_25_DATA   0x0f8
#define CONTROL_BITS_X_25_DATA   8
#define CONTROL_ADDR_X_26_DATA   0x100
#define CONTROL_BITS_X_26_DATA   8
#define CONTROL_ADDR_X_27_DATA   0x108
#define CONTROL_BITS_X_27_DATA   8
#define CONTROL_ADDR_X_28_DATA   0x110
#define CONTROL_BITS_X_28_DATA   8
#define CONTROL_ADDR_X_29_DATA   0x118
#define CONTROL_BITS_X_29_DATA   8
#define CONTROL_ADDR_X_30_DATA   0x120
#define CONTROL_BITS_X_30_DATA   8
#define CONTROL_ADDR_X_31_DATA   0x128
#define CONTROL_BITS_X_31_DATA   8
