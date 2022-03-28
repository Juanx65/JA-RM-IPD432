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
    output wire [7:0]                    A_0,
    output wire [7:0]                    A_1,
    output wire [7:0]                    A_2,
    output wire [7:0]                    A_3,
    output wire [7:0]                    A_4,
    output wire [7:0]                    A_5,
    output wire [7:0]                    A_6,
    output wire [7:0]                    A_7,
    output wire [7:0]                    A_8,
    output wire [7:0]                    A_9,
    output wire [7:0]                    A_10,
    output wire [7:0]                    A_11,
    output wire [7:0]                    A_12,
    output wire [7:0]                    A_13,
    output wire [7:0]                    A_14,
    output wire [7:0]                    A_15,
    output wire [7:0]                    B_0,
    output wire [7:0]                    B_1,
    output wire [7:0]                    B_2,
    output wire [7:0]                    B_3,
    output wire [7:0]                    B_4,
    output wire [7:0]                    B_5,
    output wire [7:0]                    B_6,
    output wire [7:0]                    B_7,
    output wire [7:0]                    B_8,
    output wire [7:0]                    B_9,
    output wire [7:0]                    B_10,
    output wire [7:0]                    B_11,
    output wire [7:0]                    B_12,
    output wire [7:0]                    B_13,
    output wire [7:0]                    B_14,
    output wire [7:0]                    B_15,
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL     = 9'h000,
    ADDR_GIE         = 9'h004,
    ADDR_IER         = 9'h008,
    ADDR_ISR         = 9'h00c,
    ADDR_A_0_DATA_0  = 9'h010,
    ADDR_A_0_CTRL    = 9'h014,
    ADDR_A_1_DATA_0  = 9'h018,
    ADDR_A_1_CTRL    = 9'h01c,
    ADDR_A_2_DATA_0  = 9'h020,
    ADDR_A_2_CTRL    = 9'h024,
    ADDR_A_3_DATA_0  = 9'h028,
    ADDR_A_3_CTRL    = 9'h02c,
    ADDR_A_4_DATA_0  = 9'h030,
    ADDR_A_4_CTRL    = 9'h034,
    ADDR_A_5_DATA_0  = 9'h038,
    ADDR_A_5_CTRL    = 9'h03c,
    ADDR_A_6_DATA_0  = 9'h040,
    ADDR_A_6_CTRL    = 9'h044,
    ADDR_A_7_DATA_0  = 9'h048,
    ADDR_A_7_CTRL    = 9'h04c,
    ADDR_A_8_DATA_0  = 9'h050,
    ADDR_A_8_CTRL    = 9'h054,
    ADDR_A_9_DATA_0  = 9'h058,
    ADDR_A_9_CTRL    = 9'h05c,
    ADDR_A_10_DATA_0 = 9'h060,
    ADDR_A_10_CTRL   = 9'h064,
    ADDR_A_11_DATA_0 = 9'h068,
    ADDR_A_11_CTRL   = 9'h06c,
    ADDR_A_12_DATA_0 = 9'h070,
    ADDR_A_12_CTRL   = 9'h074,
    ADDR_A_13_DATA_0 = 9'h078,
    ADDR_A_13_CTRL   = 9'h07c,
    ADDR_A_14_DATA_0 = 9'h080,
    ADDR_A_14_CTRL   = 9'h084,
    ADDR_A_15_DATA_0 = 9'h088,
    ADDR_A_15_CTRL   = 9'h08c,
    ADDR_B_0_DATA_0  = 9'h090,
    ADDR_B_0_CTRL    = 9'h094,
    ADDR_B_1_DATA_0  = 9'h098,
    ADDR_B_1_CTRL    = 9'h09c,
    ADDR_B_2_DATA_0  = 9'h0a0,
    ADDR_B_2_CTRL    = 9'h0a4,
    ADDR_B_3_DATA_0  = 9'h0a8,
    ADDR_B_3_CTRL    = 9'h0ac,
    ADDR_B_4_DATA_0  = 9'h0b0,
    ADDR_B_4_CTRL    = 9'h0b4,
    ADDR_B_5_DATA_0  = 9'h0b8,
    ADDR_B_5_CTRL    = 9'h0bc,
    ADDR_B_6_DATA_0  = 9'h0c0,
    ADDR_B_6_CTRL    = 9'h0c4,
    ADDR_B_7_DATA_0  = 9'h0c8,
    ADDR_B_7_CTRL    = 9'h0cc,
    ADDR_B_8_DATA_0  = 9'h0d0,
    ADDR_B_8_CTRL    = 9'h0d4,
    ADDR_B_9_DATA_0  = 9'h0d8,
    ADDR_B_9_CTRL    = 9'h0dc,
    ADDR_B_10_DATA_0 = 9'h0e0,
    ADDR_B_10_CTRL   = 9'h0e4,
    ADDR_B_11_DATA_0 = 9'h0e8,
    ADDR_B_11_CTRL   = 9'h0ec,
    ADDR_B_12_DATA_0 = 9'h0f0,
    ADDR_B_12_CTRL   = 9'h0f4,
    ADDR_B_13_DATA_0 = 9'h0f8,
    ADDR_B_13_CTRL   = 9'h0fc,
    ADDR_B_14_DATA_0 = 9'h100,
    ADDR_B_14_CTRL   = 9'h104,
    ADDR_B_15_DATA_0 = 9'h108,
    ADDR_B_15_CTRL   = 9'h10c,
    ADDR_C_DATA_0    = 9'h110,
    ADDR_C_CTRL      = 9'h114,
    WRIDLE           = 2'd0,
    WRDATA           = 2'd1,
    WRRESP           = 2'd2,
    WRRESET          = 2'd3,
    RDIDLE           = 2'd0,
    RDDATA           = 2'd1,
    RDRESET          = 2'd2,
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
    reg  [7:0]                    int_A_0 = 'b0;
    reg  [7:0]                    int_A_1 = 'b0;
    reg  [7:0]                    int_A_2 = 'b0;
    reg  [7:0]                    int_A_3 = 'b0;
    reg  [7:0]                    int_A_4 = 'b0;
    reg  [7:0]                    int_A_5 = 'b0;
    reg  [7:0]                    int_A_6 = 'b0;
    reg  [7:0]                    int_A_7 = 'b0;
    reg  [7:0]                    int_A_8 = 'b0;
    reg  [7:0]                    int_A_9 = 'b0;
    reg  [7:0]                    int_A_10 = 'b0;
    reg  [7:0]                    int_A_11 = 'b0;
    reg  [7:0]                    int_A_12 = 'b0;
    reg  [7:0]                    int_A_13 = 'b0;
    reg  [7:0]                    int_A_14 = 'b0;
    reg  [7:0]                    int_A_15 = 'b0;
    reg  [7:0]                    int_B_0 = 'b0;
    reg  [7:0]                    int_B_1 = 'b0;
    reg  [7:0]                    int_B_2 = 'b0;
    reg  [7:0]                    int_B_3 = 'b0;
    reg  [7:0]                    int_B_4 = 'b0;
    reg  [7:0]                    int_B_5 = 'b0;
    reg  [7:0]                    int_B_6 = 'b0;
    reg  [7:0]                    int_B_7 = 'b0;
    reg  [7:0]                    int_B_8 = 'b0;
    reg  [7:0]                    int_B_9 = 'b0;
    reg  [7:0]                    int_B_10 = 'b0;
    reg  [7:0]                    int_B_11 = 'b0;
    reg  [7:0]                    int_B_12 = 'b0;
    reg  [7:0]                    int_B_13 = 'b0;
    reg  [7:0]                    int_B_14 = 'b0;
    reg  [7:0]                    int_B_15 = 'b0;
    reg                           int_C_ap_vld;
    reg  [31:0]                   int_C = 'b0;

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
                ADDR_A_0_DATA_0: begin
                    rdata <= int_A_0[7:0];
                end
                ADDR_A_1_DATA_0: begin
                    rdata <= int_A_1[7:0];
                end
                ADDR_A_2_DATA_0: begin
                    rdata <= int_A_2[7:0];
                end
                ADDR_A_3_DATA_0: begin
                    rdata <= int_A_3[7:0];
                end
                ADDR_A_4_DATA_0: begin
                    rdata <= int_A_4[7:0];
                end
                ADDR_A_5_DATA_0: begin
                    rdata <= int_A_5[7:0];
                end
                ADDR_A_6_DATA_0: begin
                    rdata <= int_A_6[7:0];
                end
                ADDR_A_7_DATA_0: begin
                    rdata <= int_A_7[7:0];
                end
                ADDR_A_8_DATA_0: begin
                    rdata <= int_A_8[7:0];
                end
                ADDR_A_9_DATA_0: begin
                    rdata <= int_A_9[7:0];
                end
                ADDR_A_10_DATA_0: begin
                    rdata <= int_A_10[7:0];
                end
                ADDR_A_11_DATA_0: begin
                    rdata <= int_A_11[7:0];
                end
                ADDR_A_12_DATA_0: begin
                    rdata <= int_A_12[7:0];
                end
                ADDR_A_13_DATA_0: begin
                    rdata <= int_A_13[7:0];
                end
                ADDR_A_14_DATA_0: begin
                    rdata <= int_A_14[7:0];
                end
                ADDR_A_15_DATA_0: begin
                    rdata <= int_A_15[7:0];
                end
                ADDR_B_0_DATA_0: begin
                    rdata <= int_B_0[7:0];
                end
                ADDR_B_1_DATA_0: begin
                    rdata <= int_B_1[7:0];
                end
                ADDR_B_2_DATA_0: begin
                    rdata <= int_B_2[7:0];
                end
                ADDR_B_3_DATA_0: begin
                    rdata <= int_B_3[7:0];
                end
                ADDR_B_4_DATA_0: begin
                    rdata <= int_B_4[7:0];
                end
                ADDR_B_5_DATA_0: begin
                    rdata <= int_B_5[7:0];
                end
                ADDR_B_6_DATA_0: begin
                    rdata <= int_B_6[7:0];
                end
                ADDR_B_7_DATA_0: begin
                    rdata <= int_B_7[7:0];
                end
                ADDR_B_8_DATA_0: begin
                    rdata <= int_B_8[7:0];
                end
                ADDR_B_9_DATA_0: begin
                    rdata <= int_B_9[7:0];
                end
                ADDR_B_10_DATA_0: begin
                    rdata <= int_B_10[7:0];
                end
                ADDR_B_11_DATA_0: begin
                    rdata <= int_B_11[7:0];
                end
                ADDR_B_12_DATA_0: begin
                    rdata <= int_B_12[7:0];
                end
                ADDR_B_13_DATA_0: begin
                    rdata <= int_B_13[7:0];
                end
                ADDR_B_14_DATA_0: begin
                    rdata <= int_B_14[7:0];
                end
                ADDR_B_15_DATA_0: begin
                    rdata <= int_B_15[7:0];
                end
                ADDR_C_DATA_0: begin
                    rdata <= int_C[31:0];
                end
                ADDR_C_CTRL: begin
                    rdata[0] <= int_C_ap_vld;
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
assign A_0               = int_A_0;
assign A_1               = int_A_1;
assign A_2               = int_A_2;
assign A_3               = int_A_3;
assign A_4               = int_A_4;
assign A_5               = int_A_5;
assign A_6               = int_A_6;
assign A_7               = int_A_7;
assign A_8               = int_A_8;
assign A_9               = int_A_9;
assign A_10              = int_A_10;
assign A_11              = int_A_11;
assign A_12              = int_A_12;
assign A_13              = int_A_13;
assign A_14              = int_A_14;
assign A_15              = int_A_15;
assign B_0               = int_B_0;
assign B_1               = int_B_1;
assign B_2               = int_B_2;
assign B_3               = int_B_3;
assign B_4               = int_B_4;
assign B_5               = int_B_5;
assign B_6               = int_B_6;
assign B_7               = int_B_7;
assign B_8               = int_B_8;
assign B_9               = int_B_9;
assign B_10              = int_B_10;
assign B_11              = int_B_11;
assign B_12              = int_B_12;
assign B_13              = int_B_13;
assign B_14              = int_B_14;
assign B_15              = int_B_15;
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

// int_A_0[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_0[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_0_DATA_0)
            int_A_0[7:0] <= (WDATA[31:0] & wmask) | (int_A_0[7:0] & ~wmask);
    end
end

// int_A_1[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_1[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_1_DATA_0)
            int_A_1[7:0] <= (WDATA[31:0] & wmask) | (int_A_1[7:0] & ~wmask);
    end
end

// int_A_2[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_2[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_2_DATA_0)
            int_A_2[7:0] <= (WDATA[31:0] & wmask) | (int_A_2[7:0] & ~wmask);
    end
end

// int_A_3[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_3[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_3_DATA_0)
            int_A_3[7:0] <= (WDATA[31:0] & wmask) | (int_A_3[7:0] & ~wmask);
    end
end

// int_A_4[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_4[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_4_DATA_0)
            int_A_4[7:0] <= (WDATA[31:0] & wmask) | (int_A_4[7:0] & ~wmask);
    end
end

// int_A_5[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_5[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_5_DATA_0)
            int_A_5[7:0] <= (WDATA[31:0] & wmask) | (int_A_5[7:0] & ~wmask);
    end
end

// int_A_6[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_6[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_6_DATA_0)
            int_A_6[7:0] <= (WDATA[31:0] & wmask) | (int_A_6[7:0] & ~wmask);
    end
end

// int_A_7[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_7[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_7_DATA_0)
            int_A_7[7:0] <= (WDATA[31:0] & wmask) | (int_A_7[7:0] & ~wmask);
    end
end

// int_A_8[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_8[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_8_DATA_0)
            int_A_8[7:0] <= (WDATA[31:0] & wmask) | (int_A_8[7:0] & ~wmask);
    end
end

// int_A_9[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_9[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_9_DATA_0)
            int_A_9[7:0] <= (WDATA[31:0] & wmask) | (int_A_9[7:0] & ~wmask);
    end
end

// int_A_10[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_10[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_10_DATA_0)
            int_A_10[7:0] <= (WDATA[31:0] & wmask) | (int_A_10[7:0] & ~wmask);
    end
end

// int_A_11[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_11[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_11_DATA_0)
            int_A_11[7:0] <= (WDATA[31:0] & wmask) | (int_A_11[7:0] & ~wmask);
    end
end

// int_A_12[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_12[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_12_DATA_0)
            int_A_12[7:0] <= (WDATA[31:0] & wmask) | (int_A_12[7:0] & ~wmask);
    end
end

// int_A_13[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_13[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_13_DATA_0)
            int_A_13[7:0] <= (WDATA[31:0] & wmask) | (int_A_13[7:0] & ~wmask);
    end
end

// int_A_14[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_14[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_14_DATA_0)
            int_A_14[7:0] <= (WDATA[31:0] & wmask) | (int_A_14[7:0] & ~wmask);
    end
end

// int_A_15[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_15[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_15_DATA_0)
            int_A_15[7:0] <= (WDATA[31:0] & wmask) | (int_A_15[7:0] & ~wmask);
    end
end

// int_B_0[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_0[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_0_DATA_0)
            int_B_0[7:0] <= (WDATA[31:0] & wmask) | (int_B_0[7:0] & ~wmask);
    end
end

// int_B_1[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_1[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_1_DATA_0)
            int_B_1[7:0] <= (WDATA[31:0] & wmask) | (int_B_1[7:0] & ~wmask);
    end
end

// int_B_2[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_2[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_2_DATA_0)
            int_B_2[7:0] <= (WDATA[31:0] & wmask) | (int_B_2[7:0] & ~wmask);
    end
end

// int_B_3[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_3[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_3_DATA_0)
            int_B_3[7:0] <= (WDATA[31:0] & wmask) | (int_B_3[7:0] & ~wmask);
    end
end

// int_B_4[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_4[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_4_DATA_0)
            int_B_4[7:0] <= (WDATA[31:0] & wmask) | (int_B_4[7:0] & ~wmask);
    end
end

// int_B_5[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_5[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_5_DATA_0)
            int_B_5[7:0] <= (WDATA[31:0] & wmask) | (int_B_5[7:0] & ~wmask);
    end
end

// int_B_6[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_6[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_6_DATA_0)
            int_B_6[7:0] <= (WDATA[31:0] & wmask) | (int_B_6[7:0] & ~wmask);
    end
end

// int_B_7[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_7[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_7_DATA_0)
            int_B_7[7:0] <= (WDATA[31:0] & wmask) | (int_B_7[7:0] & ~wmask);
    end
end

// int_B_8[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_8[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_8_DATA_0)
            int_B_8[7:0] <= (WDATA[31:0] & wmask) | (int_B_8[7:0] & ~wmask);
    end
end

// int_B_9[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_9[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_9_DATA_0)
            int_B_9[7:0] <= (WDATA[31:0] & wmask) | (int_B_9[7:0] & ~wmask);
    end
end

// int_B_10[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_10[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_10_DATA_0)
            int_B_10[7:0] <= (WDATA[31:0] & wmask) | (int_B_10[7:0] & ~wmask);
    end
end

// int_B_11[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_11[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_11_DATA_0)
            int_B_11[7:0] <= (WDATA[31:0] & wmask) | (int_B_11[7:0] & ~wmask);
    end
end

// int_B_12[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_12[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_12_DATA_0)
            int_B_12[7:0] <= (WDATA[31:0] & wmask) | (int_B_12[7:0] & ~wmask);
    end
end

// int_B_13[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_13[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_13_DATA_0)
            int_B_13[7:0] <= (WDATA[31:0] & wmask) | (int_B_13[7:0] & ~wmask);
    end
end

// int_B_14[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_14[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_14_DATA_0)
            int_B_14[7:0] <= (WDATA[31:0] & wmask) | (int_B_14[7:0] & ~wmask);
    end
end

// int_B_15[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_15[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_15_DATA_0)
            int_B_15[7:0] <= (WDATA[31:0] & wmask) | (int_B_15[7:0] & ~wmask);
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

endmodule
