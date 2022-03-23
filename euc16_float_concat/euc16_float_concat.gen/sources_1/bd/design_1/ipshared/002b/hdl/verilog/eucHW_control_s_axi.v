// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module eucHW_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
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
    input  wire [31:0]                   y_add,
    input  wire                          y_add_ap_vld,
    input  wire [31:0]                   y_sqrt,
    input  wire                          y_sqrt_ap_vld,
    output wire [7:0]                    x_0,
    output wire [7:0]                    x_1,
    output wire [7:0]                    x_2,
    output wire [7:0]                    x_3,
    output wire [7:0]                    x_4,
    output wire [7:0]                    x_5,
    output wire [7:0]                    x_6,
    output wire [7:0]                    x_7,
    output wire [7:0]                    x_8,
    output wire [7:0]                    x_9,
    output wire [7:0]                    x_10,
    output wire [7:0]                    x_11,
    output wire [7:0]                    x_12,
    output wire [7:0]                    x_13,
    output wire [7:0]                    x_14,
    output wire [7:0]                    x_15,
    output wire [7:0]                    x_16,
    output wire [7:0]                    x_17,
    output wire [7:0]                    x_18,
    output wire [7:0]                    x_19,
    output wire [7:0]                    x_20,
    output wire [7:0]                    x_21,
    output wire [7:0]                    x_22,
    output wire [7:0]                    x_23,
    output wire [7:0]                    x_24,
    output wire [7:0]                    x_25,
    output wire [7:0]                    x_26,
    output wire [7:0]                    x_27,
    output wire [7:0]                    x_28,
    output wire [7:0]                    x_29,
    output wire [7:0]                    x_30,
    output wire [7:0]                    x_31,
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL       = 9'h000,
    ADDR_GIE           = 9'h004,
    ADDR_IER           = 9'h008,
    ADDR_ISR           = 9'h00c,
    ADDR_Y_ADD_DATA_0  = 9'h010,
    ADDR_Y_ADD_CTRL    = 9'h014,
    ADDR_Y_SQRT_DATA_0 = 9'h020,
    ADDR_Y_SQRT_CTRL   = 9'h024,
    ADDR_X_0_DATA_0    = 9'h030,
    ADDR_X_0_CTRL      = 9'h034,
    ADDR_X_1_DATA_0    = 9'h038,
    ADDR_X_1_CTRL      = 9'h03c,
    ADDR_X_2_DATA_0    = 9'h040,
    ADDR_X_2_CTRL      = 9'h044,
    ADDR_X_3_DATA_0    = 9'h048,
    ADDR_X_3_CTRL      = 9'h04c,
    ADDR_X_4_DATA_0    = 9'h050,
    ADDR_X_4_CTRL      = 9'h054,
    ADDR_X_5_DATA_0    = 9'h058,
    ADDR_X_5_CTRL      = 9'h05c,
    ADDR_X_6_DATA_0    = 9'h060,
    ADDR_X_6_CTRL      = 9'h064,
    ADDR_X_7_DATA_0    = 9'h068,
    ADDR_X_7_CTRL      = 9'h06c,
    ADDR_X_8_DATA_0    = 9'h070,
    ADDR_X_8_CTRL      = 9'h074,
    ADDR_X_9_DATA_0    = 9'h078,
    ADDR_X_9_CTRL      = 9'h07c,
    ADDR_X_10_DATA_0   = 9'h080,
    ADDR_X_10_CTRL     = 9'h084,
    ADDR_X_11_DATA_0   = 9'h088,
    ADDR_X_11_CTRL     = 9'h08c,
    ADDR_X_12_DATA_0   = 9'h090,
    ADDR_X_12_CTRL     = 9'h094,
    ADDR_X_13_DATA_0   = 9'h098,
    ADDR_X_13_CTRL     = 9'h09c,
    ADDR_X_14_DATA_0   = 9'h0a0,
    ADDR_X_14_CTRL     = 9'h0a4,
    ADDR_X_15_DATA_0   = 9'h0a8,
    ADDR_X_15_CTRL     = 9'h0ac,
    ADDR_X_16_DATA_0   = 9'h0b0,
    ADDR_X_16_CTRL     = 9'h0b4,
    ADDR_X_17_DATA_0   = 9'h0b8,
    ADDR_X_17_CTRL     = 9'h0bc,
    ADDR_X_18_DATA_0   = 9'h0c0,
    ADDR_X_18_CTRL     = 9'h0c4,
    ADDR_X_19_DATA_0   = 9'h0c8,
    ADDR_X_19_CTRL     = 9'h0cc,
    ADDR_X_20_DATA_0   = 9'h0d0,
    ADDR_X_20_CTRL     = 9'h0d4,
    ADDR_X_21_DATA_0   = 9'h0d8,
    ADDR_X_21_CTRL     = 9'h0dc,
    ADDR_X_22_DATA_0   = 9'h0e0,
    ADDR_X_22_CTRL     = 9'h0e4,
    ADDR_X_23_DATA_0   = 9'h0e8,
    ADDR_X_23_CTRL     = 9'h0ec,
    ADDR_X_24_DATA_0   = 9'h0f0,
    ADDR_X_24_CTRL     = 9'h0f4,
    ADDR_X_25_DATA_0   = 9'h0f8,
    ADDR_X_25_CTRL     = 9'h0fc,
    ADDR_X_26_DATA_0   = 9'h100,
    ADDR_X_26_CTRL     = 9'h104,
    ADDR_X_27_DATA_0   = 9'h108,
    ADDR_X_27_CTRL     = 9'h10c,
    ADDR_X_28_DATA_0   = 9'h110,
    ADDR_X_28_CTRL     = 9'h114,
    ADDR_X_29_DATA_0   = 9'h118,
    ADDR_X_29_CTRL     = 9'h11c,
    ADDR_X_30_DATA_0   = 9'h120,
    ADDR_X_30_CTRL     = 9'h124,
    ADDR_X_31_DATA_0   = 9'h128,
    ADDR_X_31_CTRL     = 9'h12c,
    WRIDLE             = 2'd0,
    WRDATA             = 2'd1,
    WRRESP             = 2'd2,
    WRRESET            = 2'd3,
    RDIDLE             = 2'd0,
    RDDATA             = 2'd1,
    RDRESET            = 2'd2,
    ADDR_BITS                = 9;

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
    reg                           int_y_add_ap_vld;
    reg  [31:0]                   int_y_add = 'b0;
    reg                           int_y_sqrt_ap_vld;
    reg  [31:0]                   int_y_sqrt = 'b0;
    reg  [7:0]                    int_x_0 = 'b0;
    reg  [7:0]                    int_x_1 = 'b0;
    reg  [7:0]                    int_x_2 = 'b0;
    reg  [7:0]                    int_x_3 = 'b0;
    reg  [7:0]                    int_x_4 = 'b0;
    reg  [7:0]                    int_x_5 = 'b0;
    reg  [7:0]                    int_x_6 = 'b0;
    reg  [7:0]                    int_x_7 = 'b0;
    reg  [7:0]                    int_x_8 = 'b0;
    reg  [7:0]                    int_x_9 = 'b0;
    reg  [7:0]                    int_x_10 = 'b0;
    reg  [7:0]                    int_x_11 = 'b0;
    reg  [7:0]                    int_x_12 = 'b0;
    reg  [7:0]                    int_x_13 = 'b0;
    reg  [7:0]                    int_x_14 = 'b0;
    reg  [7:0]                    int_x_15 = 'b0;
    reg  [7:0]                    int_x_16 = 'b0;
    reg  [7:0]                    int_x_17 = 'b0;
    reg  [7:0]                    int_x_18 = 'b0;
    reg  [7:0]                    int_x_19 = 'b0;
    reg  [7:0]                    int_x_20 = 'b0;
    reg  [7:0]                    int_x_21 = 'b0;
    reg  [7:0]                    int_x_22 = 'b0;
    reg  [7:0]                    int_x_23 = 'b0;
    reg  [7:0]                    int_x_24 = 'b0;
    reg  [7:0]                    int_x_25 = 'b0;
    reg  [7:0]                    int_x_26 = 'b0;
    reg  [7:0]                    int_x_27 = 'b0;
    reg  [7:0]                    int_x_28 = 'b0;
    reg  [7:0]                    int_x_29 = 'b0;
    reg  [7:0]                    int_x_30 = 'b0;
    reg  [7:0]                    int_x_31 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
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
            if (WVALID)
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
assign RVALID  = (rstate == RDDATA);
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
                ADDR_Y_ADD_DATA_0: begin
                    rdata <= int_y_add[31:0];
                end
                ADDR_Y_ADD_CTRL: begin
                    rdata[0] <= int_y_add_ap_vld;
                end
                ADDR_Y_SQRT_DATA_0: begin
                    rdata <= int_y_sqrt[31:0];
                end
                ADDR_Y_SQRT_CTRL: begin
                    rdata[0] <= int_y_sqrt_ap_vld;
                end
                ADDR_X_0_DATA_0: begin
                    rdata <= int_x_0[7:0];
                end
                ADDR_X_1_DATA_0: begin
                    rdata <= int_x_1[7:0];
                end
                ADDR_X_2_DATA_0: begin
                    rdata <= int_x_2[7:0];
                end
                ADDR_X_3_DATA_0: begin
                    rdata <= int_x_3[7:0];
                end
                ADDR_X_4_DATA_0: begin
                    rdata <= int_x_4[7:0];
                end
                ADDR_X_5_DATA_0: begin
                    rdata <= int_x_5[7:0];
                end
                ADDR_X_6_DATA_0: begin
                    rdata <= int_x_6[7:0];
                end
                ADDR_X_7_DATA_0: begin
                    rdata <= int_x_7[7:0];
                end
                ADDR_X_8_DATA_0: begin
                    rdata <= int_x_8[7:0];
                end
                ADDR_X_9_DATA_0: begin
                    rdata <= int_x_9[7:0];
                end
                ADDR_X_10_DATA_0: begin
                    rdata <= int_x_10[7:0];
                end
                ADDR_X_11_DATA_0: begin
                    rdata <= int_x_11[7:0];
                end
                ADDR_X_12_DATA_0: begin
                    rdata <= int_x_12[7:0];
                end
                ADDR_X_13_DATA_0: begin
                    rdata <= int_x_13[7:0];
                end
                ADDR_X_14_DATA_0: begin
                    rdata <= int_x_14[7:0];
                end
                ADDR_X_15_DATA_0: begin
                    rdata <= int_x_15[7:0];
                end
                ADDR_X_16_DATA_0: begin
                    rdata <= int_x_16[7:0];
                end
                ADDR_X_17_DATA_0: begin
                    rdata <= int_x_17[7:0];
                end
                ADDR_X_18_DATA_0: begin
                    rdata <= int_x_18[7:0];
                end
                ADDR_X_19_DATA_0: begin
                    rdata <= int_x_19[7:0];
                end
                ADDR_X_20_DATA_0: begin
                    rdata <= int_x_20[7:0];
                end
                ADDR_X_21_DATA_0: begin
                    rdata <= int_x_21[7:0];
                end
                ADDR_X_22_DATA_0: begin
                    rdata <= int_x_22[7:0];
                end
                ADDR_X_23_DATA_0: begin
                    rdata <= int_x_23[7:0];
                end
                ADDR_X_24_DATA_0: begin
                    rdata <= int_x_24[7:0];
                end
                ADDR_X_25_DATA_0: begin
                    rdata <= int_x_25[7:0];
                end
                ADDR_X_26_DATA_0: begin
                    rdata <= int_x_26[7:0];
                end
                ADDR_X_27_DATA_0: begin
                    rdata <= int_x_27[7:0];
                end
                ADDR_X_28_DATA_0: begin
                    rdata <= int_x_28[7:0];
                end
                ADDR_X_29_DATA_0: begin
                    rdata <= int_x_29[7:0];
                end
                ADDR_X_30_DATA_0: begin
                    rdata <= int_x_30[7:0];
                end
                ADDR_X_31_DATA_0: begin
                    rdata <= int_x_31[7:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_gie & (|int_isr);
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign x_0               = int_x_0;
assign x_1               = int_x_1;
assign x_2               = int_x_2;
assign x_3               = int_x_3;
assign x_4               = int_x_4;
assign x_5               = int_x_5;
assign x_6               = int_x_6;
assign x_7               = int_x_7;
assign x_8               = int_x_8;
assign x_9               = int_x_9;
assign x_10              = int_x_10;
assign x_11              = int_x_11;
assign x_12              = int_x_12;
assign x_13              = int_x_13;
assign x_14              = int_x_14;
assign x_15              = int_x_15;
assign x_16              = int_x_16;
assign x_17              = int_x_17;
assign x_18              = int_x_18;
assign x_19              = int_x_19;
assign x_20              = int_x_20;
assign x_21              = int_x_21;
assign x_22              = int_x_22;
assign x_23              = int_x_23;
assign x_24              = int_x_24;
assign x_25              = int_x_25;
assign x_26              = int_x_26;
assign x_27              = int_x_27;
assign x_28              = int_x_28;
assign x_29              = int_x_29;
assign x_30              = int_x_30;
assign x_31              = int_x_31;
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

// int_y_add
always @(posedge ACLK) begin
    if (ARESET)
        int_y_add <= 0;
    else if (ACLK_EN) begin
        if (y_add_ap_vld)
            int_y_add <= y_add;
    end
end

// int_y_add_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_y_add_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (y_add_ap_vld)
            int_y_add_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_Y_ADD_CTRL)
            int_y_add_ap_vld <= 1'b0; // clear on read
    end
end

// int_y_sqrt
always @(posedge ACLK) begin
    if (ARESET)
        int_y_sqrt <= 0;
    else if (ACLK_EN) begin
        if (y_sqrt_ap_vld)
            int_y_sqrt <= y_sqrt;
    end
end

// int_y_sqrt_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_y_sqrt_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (y_sqrt_ap_vld)
            int_y_sqrt_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_Y_SQRT_CTRL)
            int_y_sqrt_ap_vld <= 1'b0; // clear on read
    end
end

// int_x_0[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_0[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_0_DATA_0)
            int_x_0[7:0] <= (WDATA[31:0] & wmask) | (int_x_0[7:0] & ~wmask);
    end
end

// int_x_1[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_1[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_1_DATA_0)
            int_x_1[7:0] <= (WDATA[31:0] & wmask) | (int_x_1[7:0] & ~wmask);
    end
end

// int_x_2[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_2[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_2_DATA_0)
            int_x_2[7:0] <= (WDATA[31:0] & wmask) | (int_x_2[7:0] & ~wmask);
    end
end

// int_x_3[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_3[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_3_DATA_0)
            int_x_3[7:0] <= (WDATA[31:0] & wmask) | (int_x_3[7:0] & ~wmask);
    end
end

// int_x_4[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_4[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_4_DATA_0)
            int_x_4[7:0] <= (WDATA[31:0] & wmask) | (int_x_4[7:0] & ~wmask);
    end
end

// int_x_5[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_5[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_5_DATA_0)
            int_x_5[7:0] <= (WDATA[31:0] & wmask) | (int_x_5[7:0] & ~wmask);
    end
end

// int_x_6[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_6[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_6_DATA_0)
            int_x_6[7:0] <= (WDATA[31:0] & wmask) | (int_x_6[7:0] & ~wmask);
    end
end

// int_x_7[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_7[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_7_DATA_0)
            int_x_7[7:0] <= (WDATA[31:0] & wmask) | (int_x_7[7:0] & ~wmask);
    end
end

// int_x_8[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_8[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_8_DATA_0)
            int_x_8[7:0] <= (WDATA[31:0] & wmask) | (int_x_8[7:0] & ~wmask);
    end
end

// int_x_9[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_9[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_9_DATA_0)
            int_x_9[7:0] <= (WDATA[31:0] & wmask) | (int_x_9[7:0] & ~wmask);
    end
end

// int_x_10[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_10[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_10_DATA_0)
            int_x_10[7:0] <= (WDATA[31:0] & wmask) | (int_x_10[7:0] & ~wmask);
    end
end

// int_x_11[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_11[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_11_DATA_0)
            int_x_11[7:0] <= (WDATA[31:0] & wmask) | (int_x_11[7:0] & ~wmask);
    end
end

// int_x_12[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_12[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_12_DATA_0)
            int_x_12[7:0] <= (WDATA[31:0] & wmask) | (int_x_12[7:0] & ~wmask);
    end
end

// int_x_13[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_13[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_13_DATA_0)
            int_x_13[7:0] <= (WDATA[31:0] & wmask) | (int_x_13[7:0] & ~wmask);
    end
end

// int_x_14[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_14[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_14_DATA_0)
            int_x_14[7:0] <= (WDATA[31:0] & wmask) | (int_x_14[7:0] & ~wmask);
    end
end

// int_x_15[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_15[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_15_DATA_0)
            int_x_15[7:0] <= (WDATA[31:0] & wmask) | (int_x_15[7:0] & ~wmask);
    end
end

// int_x_16[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_16[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_16_DATA_0)
            int_x_16[7:0] <= (WDATA[31:0] & wmask) | (int_x_16[7:0] & ~wmask);
    end
end

// int_x_17[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_17[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_17_DATA_0)
            int_x_17[7:0] <= (WDATA[31:0] & wmask) | (int_x_17[7:0] & ~wmask);
    end
end

// int_x_18[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_18[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_18_DATA_0)
            int_x_18[7:0] <= (WDATA[31:0] & wmask) | (int_x_18[7:0] & ~wmask);
    end
end

// int_x_19[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_19[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_19_DATA_0)
            int_x_19[7:0] <= (WDATA[31:0] & wmask) | (int_x_19[7:0] & ~wmask);
    end
end

// int_x_20[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_20[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_20_DATA_0)
            int_x_20[7:0] <= (WDATA[31:0] & wmask) | (int_x_20[7:0] & ~wmask);
    end
end

// int_x_21[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_21[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_21_DATA_0)
            int_x_21[7:0] <= (WDATA[31:0] & wmask) | (int_x_21[7:0] & ~wmask);
    end
end

// int_x_22[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_22[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_22_DATA_0)
            int_x_22[7:0] <= (WDATA[31:0] & wmask) | (int_x_22[7:0] & ~wmask);
    end
end

// int_x_23[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_23[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_23_DATA_0)
            int_x_23[7:0] <= (WDATA[31:0] & wmask) | (int_x_23[7:0] & ~wmask);
    end
end

// int_x_24[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_24[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_24_DATA_0)
            int_x_24[7:0] <= (WDATA[31:0] & wmask) | (int_x_24[7:0] & ~wmask);
    end
end

// int_x_25[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_25[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_25_DATA_0)
            int_x_25[7:0] <= (WDATA[31:0] & wmask) | (int_x_25[7:0] & ~wmask);
    end
end

// int_x_26[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_26[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_26_DATA_0)
            int_x_26[7:0] <= (WDATA[31:0] & wmask) | (int_x_26[7:0] & ~wmask);
    end
end

// int_x_27[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_27[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_27_DATA_0)
            int_x_27[7:0] <= (WDATA[31:0] & wmask) | (int_x_27[7:0] & ~wmask);
    end
end

// int_x_28[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_28[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_28_DATA_0)
            int_x_28[7:0] <= (WDATA[31:0] & wmask) | (int_x_28[7:0] & ~wmask);
    end
end

// int_x_29[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_29[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_29_DATA_0)
            int_x_29[7:0] <= (WDATA[31:0] & wmask) | (int_x_29[7:0] & ~wmask);
    end
end

// int_x_30[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_30[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_30_DATA_0)
            int_x_30[7:0] <= (WDATA[31:0] & wmask) | (int_x_30[7:0] & ~wmask);
    end
end

// int_x_31[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_31[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_31_DATA_0)
            int_x_31[7:0] <= (WDATA[31:0] & wmask) | (int_x_31[7:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
