// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Mar 23 00:00:12 2022
// Host        : JuanKaHp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/juan_/Documents/FPGA/JA-RM-IPD432/euc16_concat/euc16_concat.gen/sources_1/bd/design_1/ip/design_1_eucHW_0_0/design_1_eucHW_0_0_sim_netlist.v
// Design      : design_1_eucHW_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_eucHW_0_0,eucHW,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "eucHW,Vivado 2021.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_eucHW_0_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [8:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [8:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 9, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [8:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [8:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "15'b000000000000001" *) 
  (* ap_ST_fsm_state10 = "15'b000001000000000" *) 
  (* ap_ST_fsm_state11 = "15'b000010000000000" *) 
  (* ap_ST_fsm_state12 = "15'b000100000000000" *) 
  (* ap_ST_fsm_state13 = "15'b001000000000000" *) 
  (* ap_ST_fsm_state14 = "15'b010000000000000" *) 
  (* ap_ST_fsm_state15 = "15'b100000000000000" *) 
  (* ap_ST_fsm_state2 = "15'b000000000000010" *) 
  (* ap_ST_fsm_state3 = "15'b000000000000100" *) 
  (* ap_ST_fsm_state4 = "15'b000000000001000" *) 
  (* ap_ST_fsm_state5 = "15'b000000000010000" *) 
  (* ap_ST_fsm_state6 = "15'b000000000100000" *) 
  (* ap_ST_fsm_state7 = "15'b000000001000000" *) 
  (* ap_ST_fsm_state8 = "15'b000000010000000" *) 
  (* ap_ST_fsm_state9 = "15'b000000100000000" *) 
  design_1_eucHW_0_0_eucHW inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[7:0]}),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB({1'b0,1'b0,1'b0,s_axi_control_WSTRB[0]}),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "9" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "eucHW" *) 
(* ap_ST_fsm_state1 = "15'b000000000000001" *) (* ap_ST_fsm_state10 = "15'b000001000000000" *) (* ap_ST_fsm_state11 = "15'b000010000000000" *) 
(* ap_ST_fsm_state12 = "15'b000100000000000" *) (* ap_ST_fsm_state13 = "15'b001000000000000" *) (* ap_ST_fsm_state14 = "15'b010000000000000" *) 
(* ap_ST_fsm_state15 = "15'b100000000000000" *) (* ap_ST_fsm_state2 = "15'b000000000000010" *) (* ap_ST_fsm_state3 = "15'b000000000000100" *) 
(* ap_ST_fsm_state4 = "15'b000000000001000" *) (* ap_ST_fsm_state5 = "15'b000000000010000" *) (* ap_ST_fsm_state6 = "15'b000000000100000" *) 
(* ap_ST_fsm_state7 = "15'b000000001000000" *) (* ap_ST_fsm_state8 = "15'b000000010000000" *) (* ap_ST_fsm_state9 = "15'b000000100000000" *) 
(* hls_module = "yes" *) 
module design_1_eucHW_0_0_eucHW
   (ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [8:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [8:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [19:0]add_ln16_13_fu_767_p2;
  wire [19:0]add_ln16_13_reg_998;
  wire \add_ln16_13_reg_998[11]_i_3_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_4_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_5_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_6_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_3_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_4_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_5_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_6_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_3_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_4_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_5_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_3_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_4_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_5_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_6_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_3_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_4_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_5_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_6_n_0 ;
  wire \add_ln16_13_reg_998_reg[11]_i_1_n_0 ;
  wire \add_ln16_13_reg_998_reg[11]_i_1_n_1 ;
  wire \add_ln16_13_reg_998_reg[11]_i_1_n_2 ;
  wire \add_ln16_13_reg_998_reg[11]_i_1_n_3 ;
  wire \add_ln16_13_reg_998_reg[15]_i_1_n_0 ;
  wire \add_ln16_13_reg_998_reg[15]_i_1_n_1 ;
  wire \add_ln16_13_reg_998_reg[15]_i_1_n_2 ;
  wire \add_ln16_13_reg_998_reg[15]_i_1_n_3 ;
  wire \add_ln16_13_reg_998_reg[19]_i_1_n_1 ;
  wire \add_ln16_13_reg_998_reg[19]_i_1_n_2 ;
  wire \add_ln16_13_reg_998_reg[19]_i_1_n_3 ;
  wire \add_ln16_13_reg_998_reg[3]_i_1_n_0 ;
  wire \add_ln16_13_reg_998_reg[3]_i_1_n_1 ;
  wire \add_ln16_13_reg_998_reg[3]_i_1_n_2 ;
  wire \add_ln16_13_reg_998_reg[3]_i_1_n_3 ;
  wire \add_ln16_13_reg_998_reg[7]_i_1_n_0 ;
  wire \add_ln16_13_reg_998_reg[7]_i_1_n_1 ;
  wire \add_ln16_13_reg_998_reg[7]_i_1_n_2 ;
  wire \add_ln16_13_reg_998_reg[7]_i_1_n_3 ;
  wire [19:0]add_ln16_6_fu_729_p2;
  wire [19:0]add_ln16_6_reg_993;
  wire \add_ln16_6_reg_993[11]_i_3_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_4_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_5_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_6_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_3_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_4_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_5_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_6_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_3_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_4_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_5_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_3_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_4_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_5_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_6_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_3_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_4_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_5_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_6_n_0 ;
  wire \add_ln16_6_reg_993_reg[11]_i_1_n_0 ;
  wire \add_ln16_6_reg_993_reg[11]_i_1_n_1 ;
  wire \add_ln16_6_reg_993_reg[11]_i_1_n_2 ;
  wire \add_ln16_6_reg_993_reg[11]_i_1_n_3 ;
  wire \add_ln16_6_reg_993_reg[15]_i_1_n_0 ;
  wire \add_ln16_6_reg_993_reg[15]_i_1_n_1 ;
  wire \add_ln16_6_reg_993_reg[15]_i_1_n_2 ;
  wire \add_ln16_6_reg_993_reg[15]_i_1_n_3 ;
  wire \add_ln16_6_reg_993_reg[19]_i_1_n_1 ;
  wire \add_ln16_6_reg_993_reg[19]_i_1_n_2 ;
  wire \add_ln16_6_reg_993_reg[19]_i_1_n_3 ;
  wire \add_ln16_6_reg_993_reg[3]_i_1_n_0 ;
  wire \add_ln16_6_reg_993_reg[3]_i_1_n_1 ;
  wire \add_ln16_6_reg_993_reg[3]_i_1_n_2 ;
  wire \add_ln16_6_reg_993_reg[3]_i_1_n_3 ;
  wire \add_ln16_6_reg_993_reg[7]_i_1_n_0 ;
  wire \add_ln16_6_reg_993_reg[7]_i_1_n_1 ;
  wire \add_ln16_6_reg_993_reg[7]_i_1_n_2 ;
  wire \add_ln16_6_reg_993_reg[7]_i_1_n_3 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire \ap_CS_fsm[1]_i_4_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[10] ;
  wire \ap_CS_fsm_reg_n_0_[11] ;
  wire \ap_CS_fsm_reg_n_0_[12] ;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire \ap_CS_fsm_reg_n_0_[8] ;
  wire \ap_CS_fsm_reg_n_0_[9] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state14;
  wire ap_CS_fsm_state15;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_100;
  wire control_s_axi_U_n_101;
  wire control_s_axi_U_n_102;
  wire control_s_axi_U_n_103;
  wire control_s_axi_U_n_104;
  wire control_s_axi_U_n_105;
  wire control_s_axi_U_n_106;
  wire control_s_axi_U_n_107;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_117;
  wire control_s_axi_U_n_118;
  wire control_s_axi_U_n_119;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_120;
  wire control_s_axi_U_n_121;
  wire control_s_axi_U_n_122;
  wire control_s_axi_U_n_123;
  wire control_s_axi_U_n_124;
  wire control_s_axi_U_n_125;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_135;
  wire control_s_axi_U_n_136;
  wire control_s_axi_U_n_137;
  wire control_s_axi_U_n_138;
  wire control_s_axi_U_n_139;
  wire control_s_axi_U_n_14;
  wire control_s_axi_U_n_140;
  wire control_s_axi_U_n_141;
  wire control_s_axi_U_n_142;
  wire control_s_axi_U_n_143;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_17;
  wire control_s_axi_U_n_27;
  wire control_s_axi_U_n_28;
  wire control_s_axi_U_n_29;
  wire control_s_axi_U_n_30;
  wire control_s_axi_U_n_31;
  wire control_s_axi_U_n_32;
  wire control_s_axi_U_n_33;
  wire control_s_axi_U_n_34;
  wire control_s_axi_U_n_35;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire control_s_axi_U_n_47;
  wire control_s_axi_U_n_48;
  wire control_s_axi_U_n_49;
  wire control_s_axi_U_n_50;
  wire control_s_axi_U_n_51;
  wire control_s_axi_U_n_52;
  wire control_s_axi_U_n_53;
  wire control_s_axi_U_n_63;
  wire control_s_axi_U_n_64;
  wire control_s_axi_U_n_65;
  wire control_s_axi_U_n_66;
  wire control_s_axi_U_n_67;
  wire control_s_axi_U_n_68;
  wire control_s_axi_U_n_69;
  wire control_s_axi_U_n_70;
  wire control_s_axi_U_n_71;
  wire control_s_axi_U_n_81;
  wire control_s_axi_U_n_82;
  wire control_s_axi_U_n_83;
  wire control_s_axi_U_n_84;
  wire control_s_axi_U_n_85;
  wire control_s_axi_U_n_86;
  wire control_s_axi_U_n_87;
  wire control_s_axi_U_n_88;
  wire control_s_axi_U_n_89;
  wire control_s_axi_U_n_9;
  wire control_s_axi_U_n_99;
  wire grp_sqrt_fixed_32_32_s_fu_364_n_0;
  wire interrupt;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_0;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_1;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_10;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_11;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_12;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_13;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_14;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_15;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_16;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_17;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_2;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_3;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_4;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_5;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_6;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_7;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_8;
  wire mac_muladd_9s_9s_18s_18_4_1_U10_n_9;
  wire mac_muladd_9s_9s_18s_18_4_1_U11_n_18;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_0;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_1;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_10;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_11;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_12;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_13;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_14;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_15;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_16;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_17;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_2;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_3;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_4;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_5;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_6;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_7;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_8;
  wire mac_muladd_9s_9s_18s_18_4_1_U12_n_9;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_0;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_1;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_10;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_11;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_12;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_13;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_14;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_15;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_16;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_17;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_2;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_3;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_4;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_5;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_6;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_7;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_8;
  wire mac_muladd_9s_9s_18s_18_4_1_U13_n_9;
  wire mac_muladd_9s_9s_18s_18_4_1_U14_n_18;
  wire mac_muladd_9s_9s_18s_18_4_1_U15_n_18;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_0;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_1;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_10;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_11;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_12;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_13;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_14;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_15;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_16;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_17;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_2;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_3;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_4;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_5;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_6;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_7;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_8;
  wire mac_muladd_9s_9s_18s_18_4_1_U16_n_9;
  wire mac_muladd_9s_9s_18s_18_4_1_U17_n_18;
  wire [15:0]p_Val2_s_reg_1009;
  wire [20:0]res_2_fu_779_p2;
  wire [20:0]res_2_reg_1003;
  wire \res_2_reg_1003[11]_i_2_n_0 ;
  wire \res_2_reg_1003[11]_i_3_n_0 ;
  wire \res_2_reg_1003[11]_i_4_n_0 ;
  wire \res_2_reg_1003[11]_i_5_n_0 ;
  wire \res_2_reg_1003[15]_i_2_n_0 ;
  wire \res_2_reg_1003[15]_i_3_n_0 ;
  wire \res_2_reg_1003[15]_i_4_n_0 ;
  wire \res_2_reg_1003[15]_i_5_n_0 ;
  wire \res_2_reg_1003[19]_i_2_n_0 ;
  wire \res_2_reg_1003[19]_i_3_n_0 ;
  wire \res_2_reg_1003[19]_i_4_n_0 ;
  wire \res_2_reg_1003[19]_i_5_n_0 ;
  wire \res_2_reg_1003[19]_i_6_n_0 ;
  wire \res_2_reg_1003[3]_i_2_n_0 ;
  wire \res_2_reg_1003[3]_i_3_n_0 ;
  wire \res_2_reg_1003[3]_i_4_n_0 ;
  wire \res_2_reg_1003[3]_i_5_n_0 ;
  wire \res_2_reg_1003[7]_i_2_n_0 ;
  wire \res_2_reg_1003[7]_i_3_n_0 ;
  wire \res_2_reg_1003[7]_i_4_n_0 ;
  wire \res_2_reg_1003[7]_i_5_n_0 ;
  wire \res_2_reg_1003_reg[11]_i_1_n_0 ;
  wire \res_2_reg_1003_reg[11]_i_1_n_1 ;
  wire \res_2_reg_1003_reg[11]_i_1_n_2 ;
  wire \res_2_reg_1003_reg[11]_i_1_n_3 ;
  wire \res_2_reg_1003_reg[15]_i_1_n_0 ;
  wire \res_2_reg_1003_reg[15]_i_1_n_1 ;
  wire \res_2_reg_1003_reg[15]_i_1_n_2 ;
  wire \res_2_reg_1003_reg[15]_i_1_n_3 ;
  wire \res_2_reg_1003_reg[19]_i_1_n_0 ;
  wire \res_2_reg_1003_reg[19]_i_1_n_1 ;
  wire \res_2_reg_1003_reg[19]_i_1_n_2 ;
  wire \res_2_reg_1003_reg[19]_i_1_n_3 ;
  wire \res_2_reg_1003_reg[3]_i_1_n_0 ;
  wire \res_2_reg_1003_reg[3]_i_1_n_1 ;
  wire \res_2_reg_1003_reg[3]_i_1_n_2 ;
  wire \res_2_reg_1003_reg[3]_i_1_n_3 ;
  wire \res_2_reg_1003_reg[7]_i_1_n_0 ;
  wire \res_2_reg_1003_reg[7]_i_1_n_1 ;
  wire \res_2_reg_1003_reg[7]_i_1_n_2 ;
  wire \res_2_reg_1003_reg[7]_i_1_n_3 ;
  wire [15:0]res_I_V_47_fu_1468_p3;
  wire [8:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [8:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [30:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [17:0]sext_ln16_18_fu_709_p1;
  wire [17:0]sext_ln16_21_fu_725_p1;
  wire [17:0]sext_ln16_25_fu_747_p1;
  wire [17:0]sext_ln16_28_fu_763_p1;
  wire [8:0]sub_ln16_10_fu_537_p2;
  wire [8:0]sub_ln16_12_fu_569_p2;
  wire [8:0]sub_ln16_13_fu_583_p2;
  wire [8:0]sub_ln16_1_fu_391_p2;
  wire [8:0]sub_ln16_3_fu_423_p2;
  wire [8:0]sub_ln16_5_fu_455_p2;
  wire [8:0]sub_ln16_8_fu_505_p2;
  wire [8:0]sub_ln16_fu_377_p2;
  wire [3:3]\NLW_add_ln16_13_reg_998_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_add_ln16_6_reg_993_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_res_2_reg_1003_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_res_2_reg_1003_reg[20]_i_1_O_UNCONNECTED ;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[30] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[29] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[28] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[27] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[26] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[25] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[24] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[23] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[22] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[21] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[20] = \^s_axi_control_RDATA [30];
  assign s_axi_control_RDATA[19:0] = \^s_axi_control_RDATA [19:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_3 
       (.I0(sext_ln16_28_fu_763_p1[11]),
        .I1(sext_ln16_25_fu_747_p1[11]),
        .O(\add_ln16_13_reg_998[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_4 
       (.I0(sext_ln16_28_fu_763_p1[10]),
        .I1(sext_ln16_25_fu_747_p1[10]),
        .O(\add_ln16_13_reg_998[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_5 
       (.I0(sext_ln16_28_fu_763_p1[9]),
        .I1(sext_ln16_25_fu_747_p1[9]),
        .O(\add_ln16_13_reg_998[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_6 
       (.I0(sext_ln16_28_fu_763_p1[8]),
        .I1(sext_ln16_25_fu_747_p1[8]),
        .O(\add_ln16_13_reg_998[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_3 
       (.I0(sext_ln16_28_fu_763_p1[15]),
        .I1(sext_ln16_25_fu_747_p1[15]),
        .O(\add_ln16_13_reg_998[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_4 
       (.I0(sext_ln16_28_fu_763_p1[14]),
        .I1(sext_ln16_25_fu_747_p1[14]),
        .O(\add_ln16_13_reg_998[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_5 
       (.I0(sext_ln16_28_fu_763_p1[13]),
        .I1(sext_ln16_25_fu_747_p1[13]),
        .O(\add_ln16_13_reg_998[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_6 
       (.I0(sext_ln16_28_fu_763_p1[12]),
        .I1(sext_ln16_25_fu_747_p1[12]),
        .O(\add_ln16_13_reg_998[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_3 
       (.I0(mac_muladd_9s_9s_18s_18_4_1_U17_n_18),
        .I1(mac_muladd_9s_9s_18s_18_4_1_U11_n_18),
        .O(\add_ln16_13_reg_998[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_4 
       (.I0(sext_ln16_28_fu_763_p1[17]),
        .I1(sext_ln16_25_fu_747_p1[17]),
        .O(\add_ln16_13_reg_998[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_5 
       (.I0(sext_ln16_28_fu_763_p1[16]),
        .I1(sext_ln16_25_fu_747_p1[16]),
        .O(\add_ln16_13_reg_998[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_3 
       (.I0(sext_ln16_28_fu_763_p1[3]),
        .I1(sext_ln16_25_fu_747_p1[3]),
        .O(\add_ln16_13_reg_998[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_4 
       (.I0(sext_ln16_28_fu_763_p1[2]),
        .I1(sext_ln16_25_fu_747_p1[2]),
        .O(\add_ln16_13_reg_998[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_5 
       (.I0(sext_ln16_28_fu_763_p1[1]),
        .I1(sext_ln16_25_fu_747_p1[1]),
        .O(\add_ln16_13_reg_998[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_6 
       (.I0(sext_ln16_28_fu_763_p1[0]),
        .I1(sext_ln16_25_fu_747_p1[0]),
        .O(\add_ln16_13_reg_998[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_3 
       (.I0(sext_ln16_28_fu_763_p1[7]),
        .I1(sext_ln16_25_fu_747_p1[7]),
        .O(\add_ln16_13_reg_998[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_4 
       (.I0(sext_ln16_28_fu_763_p1[6]),
        .I1(sext_ln16_25_fu_747_p1[6]),
        .O(\add_ln16_13_reg_998[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_5 
       (.I0(sext_ln16_28_fu_763_p1[5]),
        .I1(sext_ln16_25_fu_747_p1[5]),
        .O(\add_ln16_13_reg_998[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_6 
       (.I0(sext_ln16_28_fu_763_p1[4]),
        .I1(sext_ln16_25_fu_747_p1[4]),
        .O(\add_ln16_13_reg_998[7]_i_6_n_0 ));
  FDRE \add_ln16_13_reg_998_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[0]),
        .Q(add_ln16_13_reg_998[0]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[10]),
        .Q(add_ln16_13_reg_998[10]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[11]),
        .Q(add_ln16_13_reg_998[11]),
        .R(1'b0));
  CARRY4 \add_ln16_13_reg_998_reg[11]_i_1 
       (.CI(\add_ln16_13_reg_998_reg[7]_i_1_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[11]_i_1_n_0 ,\add_ln16_13_reg_998_reg[11]_i_1_n_1 ,\add_ln16_13_reg_998_reg[11]_i_1_n_2 ,\add_ln16_13_reg_998_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_28_fu_763_p1[11:8]),
        .O(add_ln16_13_fu_767_p2[11:8]),
        .S({\add_ln16_13_reg_998[11]_i_3_n_0 ,\add_ln16_13_reg_998[11]_i_4_n_0 ,\add_ln16_13_reg_998[11]_i_5_n_0 ,\add_ln16_13_reg_998[11]_i_6_n_0 }));
  FDRE \add_ln16_13_reg_998_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[12]),
        .Q(add_ln16_13_reg_998[12]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[13]),
        .Q(add_ln16_13_reg_998[13]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[14]),
        .Q(add_ln16_13_reg_998[14]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[15]),
        .Q(add_ln16_13_reg_998[15]),
        .R(1'b0));
  CARRY4 \add_ln16_13_reg_998_reg[15]_i_1 
       (.CI(\add_ln16_13_reg_998_reg[11]_i_1_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[15]_i_1_n_0 ,\add_ln16_13_reg_998_reg[15]_i_1_n_1 ,\add_ln16_13_reg_998_reg[15]_i_1_n_2 ,\add_ln16_13_reg_998_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_28_fu_763_p1[15:12]),
        .O(add_ln16_13_fu_767_p2[15:12]),
        .S({\add_ln16_13_reg_998[15]_i_3_n_0 ,\add_ln16_13_reg_998[15]_i_4_n_0 ,\add_ln16_13_reg_998[15]_i_5_n_0 ,\add_ln16_13_reg_998[15]_i_6_n_0 }));
  FDRE \add_ln16_13_reg_998_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[16]),
        .Q(add_ln16_13_reg_998[16]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[17]),
        .Q(add_ln16_13_reg_998[17]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[18]),
        .Q(add_ln16_13_reg_998[18]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[19]),
        .Q(add_ln16_13_reg_998[19]),
        .R(1'b0));
  CARRY4 \add_ln16_13_reg_998_reg[19]_i_1 
       (.CI(\add_ln16_13_reg_998_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln16_13_reg_998_reg[19]_i_1_CO_UNCONNECTED [3],\add_ln16_13_reg_998_reg[19]_i_1_n_1 ,\add_ln16_13_reg_998_reg[19]_i_1_n_2 ,\add_ln16_13_reg_998_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mac_muladd_9s_9s_18s_18_4_1_U17_n_18,sext_ln16_28_fu_763_p1[17:16]}),
        .O(add_ln16_13_fu_767_p2[19:16]),
        .S({1'b1,\add_ln16_13_reg_998[19]_i_3_n_0 ,\add_ln16_13_reg_998[19]_i_4_n_0 ,\add_ln16_13_reg_998[19]_i_5_n_0 }));
  FDRE \add_ln16_13_reg_998_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[1]),
        .Q(add_ln16_13_reg_998[1]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[2]),
        .Q(add_ln16_13_reg_998[2]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[3]),
        .Q(add_ln16_13_reg_998[3]),
        .R(1'b0));
  CARRY4 \add_ln16_13_reg_998_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_13_reg_998_reg[3]_i_1_n_0 ,\add_ln16_13_reg_998_reg[3]_i_1_n_1 ,\add_ln16_13_reg_998_reg[3]_i_1_n_2 ,\add_ln16_13_reg_998_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_28_fu_763_p1[3:0]),
        .O(add_ln16_13_fu_767_p2[3:0]),
        .S({\add_ln16_13_reg_998[3]_i_3_n_0 ,\add_ln16_13_reg_998[3]_i_4_n_0 ,\add_ln16_13_reg_998[3]_i_5_n_0 ,\add_ln16_13_reg_998[3]_i_6_n_0 }));
  FDRE \add_ln16_13_reg_998_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[4]),
        .Q(add_ln16_13_reg_998[4]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[5]),
        .Q(add_ln16_13_reg_998[5]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[6]),
        .Q(add_ln16_13_reg_998[6]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[7]),
        .Q(add_ln16_13_reg_998[7]),
        .R(1'b0));
  CARRY4 \add_ln16_13_reg_998_reg[7]_i_1 
       (.CI(\add_ln16_13_reg_998_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[7]_i_1_n_0 ,\add_ln16_13_reg_998_reg[7]_i_1_n_1 ,\add_ln16_13_reg_998_reg[7]_i_1_n_2 ,\add_ln16_13_reg_998_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_28_fu_763_p1[7:4]),
        .O(add_ln16_13_fu_767_p2[7:4]),
        .S({\add_ln16_13_reg_998[7]_i_3_n_0 ,\add_ln16_13_reg_998[7]_i_4_n_0 ,\add_ln16_13_reg_998[7]_i_5_n_0 ,\add_ln16_13_reg_998[7]_i_6_n_0 }));
  FDRE \add_ln16_13_reg_998_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[8]),
        .Q(add_ln16_13_reg_998[8]),
        .R(1'b0));
  FDRE \add_ln16_13_reg_998_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_13_fu_767_p2[9]),
        .Q(add_ln16_13_reg_998[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_3 
       (.I0(sext_ln16_21_fu_725_p1[11]),
        .I1(sext_ln16_18_fu_709_p1[11]),
        .O(\add_ln16_6_reg_993[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_4 
       (.I0(sext_ln16_21_fu_725_p1[10]),
        .I1(sext_ln16_18_fu_709_p1[10]),
        .O(\add_ln16_6_reg_993[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_5 
       (.I0(sext_ln16_21_fu_725_p1[9]),
        .I1(sext_ln16_18_fu_709_p1[9]),
        .O(\add_ln16_6_reg_993[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_6 
       (.I0(sext_ln16_21_fu_725_p1[8]),
        .I1(sext_ln16_18_fu_709_p1[8]),
        .O(\add_ln16_6_reg_993[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_3 
       (.I0(sext_ln16_21_fu_725_p1[15]),
        .I1(sext_ln16_18_fu_709_p1[15]),
        .O(\add_ln16_6_reg_993[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_4 
       (.I0(sext_ln16_21_fu_725_p1[14]),
        .I1(sext_ln16_18_fu_709_p1[14]),
        .O(\add_ln16_6_reg_993[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_5 
       (.I0(sext_ln16_21_fu_725_p1[13]),
        .I1(sext_ln16_18_fu_709_p1[13]),
        .O(\add_ln16_6_reg_993[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_6 
       (.I0(sext_ln16_21_fu_725_p1[12]),
        .I1(sext_ln16_18_fu_709_p1[12]),
        .O(\add_ln16_6_reg_993[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_3 
       (.I0(mac_muladd_9s_9s_18s_18_4_1_U14_n_18),
        .I1(mac_muladd_9s_9s_18s_18_4_1_U15_n_18),
        .O(\add_ln16_6_reg_993[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_4 
       (.I0(sext_ln16_21_fu_725_p1[17]),
        .I1(sext_ln16_18_fu_709_p1[17]),
        .O(\add_ln16_6_reg_993[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_5 
       (.I0(sext_ln16_21_fu_725_p1[16]),
        .I1(sext_ln16_18_fu_709_p1[16]),
        .O(\add_ln16_6_reg_993[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_3 
       (.I0(sext_ln16_21_fu_725_p1[3]),
        .I1(sext_ln16_18_fu_709_p1[3]),
        .O(\add_ln16_6_reg_993[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_4 
       (.I0(sext_ln16_21_fu_725_p1[2]),
        .I1(sext_ln16_18_fu_709_p1[2]),
        .O(\add_ln16_6_reg_993[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_5 
       (.I0(sext_ln16_21_fu_725_p1[1]),
        .I1(sext_ln16_18_fu_709_p1[1]),
        .O(\add_ln16_6_reg_993[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_6 
       (.I0(sext_ln16_21_fu_725_p1[0]),
        .I1(sext_ln16_18_fu_709_p1[0]),
        .O(\add_ln16_6_reg_993[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_3 
       (.I0(sext_ln16_21_fu_725_p1[7]),
        .I1(sext_ln16_18_fu_709_p1[7]),
        .O(\add_ln16_6_reg_993[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_4 
       (.I0(sext_ln16_21_fu_725_p1[6]),
        .I1(sext_ln16_18_fu_709_p1[6]),
        .O(\add_ln16_6_reg_993[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_5 
       (.I0(sext_ln16_21_fu_725_p1[5]),
        .I1(sext_ln16_18_fu_709_p1[5]),
        .O(\add_ln16_6_reg_993[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_6 
       (.I0(sext_ln16_21_fu_725_p1[4]),
        .I1(sext_ln16_18_fu_709_p1[4]),
        .O(\add_ln16_6_reg_993[7]_i_6_n_0 ));
  FDRE \add_ln16_6_reg_993_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[0]),
        .Q(add_ln16_6_reg_993[0]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[10]),
        .Q(add_ln16_6_reg_993[10]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[11]),
        .Q(add_ln16_6_reg_993[11]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_993_reg[11]_i_1 
       (.CI(\add_ln16_6_reg_993_reg[7]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[11]_i_1_n_0 ,\add_ln16_6_reg_993_reg[11]_i_1_n_1 ,\add_ln16_6_reg_993_reg[11]_i_1_n_2 ,\add_ln16_6_reg_993_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_21_fu_725_p1[11:8]),
        .O(add_ln16_6_fu_729_p2[11:8]),
        .S({\add_ln16_6_reg_993[11]_i_3_n_0 ,\add_ln16_6_reg_993[11]_i_4_n_0 ,\add_ln16_6_reg_993[11]_i_5_n_0 ,\add_ln16_6_reg_993[11]_i_6_n_0 }));
  FDRE \add_ln16_6_reg_993_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[12]),
        .Q(add_ln16_6_reg_993[12]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[13]),
        .Q(add_ln16_6_reg_993[13]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[14]),
        .Q(add_ln16_6_reg_993[14]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[15]),
        .Q(add_ln16_6_reg_993[15]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_993_reg[15]_i_1 
       (.CI(\add_ln16_6_reg_993_reg[11]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[15]_i_1_n_0 ,\add_ln16_6_reg_993_reg[15]_i_1_n_1 ,\add_ln16_6_reg_993_reg[15]_i_1_n_2 ,\add_ln16_6_reg_993_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_21_fu_725_p1[15:12]),
        .O(add_ln16_6_fu_729_p2[15:12]),
        .S({\add_ln16_6_reg_993[15]_i_3_n_0 ,\add_ln16_6_reg_993[15]_i_4_n_0 ,\add_ln16_6_reg_993[15]_i_5_n_0 ,\add_ln16_6_reg_993[15]_i_6_n_0 }));
  FDRE \add_ln16_6_reg_993_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[16]),
        .Q(add_ln16_6_reg_993[16]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[17]),
        .Q(add_ln16_6_reg_993[17]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[18]),
        .Q(add_ln16_6_reg_993[18]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[19]),
        .Q(add_ln16_6_reg_993[19]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_993_reg[19]_i_1 
       (.CI(\add_ln16_6_reg_993_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln16_6_reg_993_reg[19]_i_1_CO_UNCONNECTED [3],\add_ln16_6_reg_993_reg[19]_i_1_n_1 ,\add_ln16_6_reg_993_reg[19]_i_1_n_2 ,\add_ln16_6_reg_993_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mac_muladd_9s_9s_18s_18_4_1_U14_n_18,sext_ln16_21_fu_725_p1[17:16]}),
        .O(add_ln16_6_fu_729_p2[19:16]),
        .S({1'b1,\add_ln16_6_reg_993[19]_i_3_n_0 ,\add_ln16_6_reg_993[19]_i_4_n_0 ,\add_ln16_6_reg_993[19]_i_5_n_0 }));
  FDRE \add_ln16_6_reg_993_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[1]),
        .Q(add_ln16_6_reg_993[1]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[2]),
        .Q(add_ln16_6_reg_993[2]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[3]),
        .Q(add_ln16_6_reg_993[3]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_993_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_6_reg_993_reg[3]_i_1_n_0 ,\add_ln16_6_reg_993_reg[3]_i_1_n_1 ,\add_ln16_6_reg_993_reg[3]_i_1_n_2 ,\add_ln16_6_reg_993_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_21_fu_725_p1[3:0]),
        .O(add_ln16_6_fu_729_p2[3:0]),
        .S({\add_ln16_6_reg_993[3]_i_3_n_0 ,\add_ln16_6_reg_993[3]_i_4_n_0 ,\add_ln16_6_reg_993[3]_i_5_n_0 ,\add_ln16_6_reg_993[3]_i_6_n_0 }));
  FDRE \add_ln16_6_reg_993_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[4]),
        .Q(add_ln16_6_reg_993[4]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[5]),
        .Q(add_ln16_6_reg_993[5]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[6]),
        .Q(add_ln16_6_reg_993[6]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[7]),
        .Q(add_ln16_6_reg_993[7]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_993_reg[7]_i_1 
       (.CI(\add_ln16_6_reg_993_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[7]_i_1_n_0 ,\add_ln16_6_reg_993_reg[7]_i_1_n_1 ,\add_ln16_6_reg_993_reg[7]_i_1_n_2 ,\add_ln16_6_reg_993_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_21_fu_725_p1[7:4]),
        .O(add_ln16_6_fu_729_p2[7:4]),
        .S({\add_ln16_6_reg_993[7]_i_3_n_0 ,\add_ln16_6_reg_993[7]_i_4_n_0 ,\add_ln16_6_reg_993[7]_i_5_n_0 ,\add_ln16_6_reg_993[7]_i_6_n_0 }));
  FDRE \add_ln16_6_reg_993_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[8]),
        .Q(add_ln16_6_reg_993[8]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_993_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln16_6_fu_729_p2[9]),
        .Q(add_ln16_6_reg_993[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[12] ),
        .I1(ap_CS_fsm_state14),
        .I2(\ap_CS_fsm_reg_n_0_[10] ),
        .I3(\ap_CS_fsm_reg_n_0_[11] ),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\ap_CS_fsm_reg_n_0_[7] ),
        .I1(\ap_CS_fsm_reg_n_0_[6] ),
        .I2(\ap_CS_fsm_reg_n_0_[9] ),
        .I3(\ap_CS_fsm_reg_n_0_[8] ),
        .I4(\ap_CS_fsm[1]_i_4_n_0 ),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(ap_CS_fsm_state5),
        .I1(\ap_CS_fsm_reg_n_0_[5] ),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
        .I3(ap_CS_fsm_state4),
        .O(\ap_CS_fsm[1]_i_4_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[9] ),
        .Q(\ap_CS_fsm_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[10] ),
        .Q(\ap_CS_fsm_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[11] ),
        .Q(\ap_CS_fsm_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[12] ),
        .Q(ap_CS_fsm_state14),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state14),
        .Q(ap_CS_fsm_state15),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[1] ),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state4),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state5),
        .Q(\ap_CS_fsm_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[5] ),
        .Q(\ap_CS_fsm_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[6] ),
        .Q(\ap_CS_fsm_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[7] ),
        .Q(\ap_CS_fsm_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[8] ),
        .Q(\ap_CS_fsm_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi control_s_axi_U
       (.A({control_s_axi_U_n_9,control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13,control_s_axi_U_n_14,control_s_axi_U_n_15,control_s_axi_U_n_16,control_s_axi_U_n_17}),
        .D(ap_NS_fsm),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q({ap_CS_fsm_state15,\ap_CS_fsm_reg_n_0_[1] ,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[1]_i_2_n_0 ),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm[1]_i_3_n_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\int_x_16_reg[7]_0 (sub_ln16_fu_377_p2),
        .\int_x_17_reg[7]_0 (sub_ln16_1_fu_391_p2),
        .\int_x_18_reg[7]_0 ({control_s_axi_U_n_81,control_s_axi_U_n_82,control_s_axi_U_n_83,control_s_axi_U_n_84,control_s_axi_U_n_85,control_s_axi_U_n_86,control_s_axi_U_n_87,control_s_axi_U_n_88,control_s_axi_U_n_89}),
        .\int_x_19_reg[7]_0 (sub_ln16_3_fu_423_p2),
        .\int_x_20_reg[7]_0 ({control_s_axi_U_n_99,control_s_axi_U_n_100,control_s_axi_U_n_101,control_s_axi_U_n_102,control_s_axi_U_n_103,control_s_axi_U_n_104,control_s_axi_U_n_105,control_s_axi_U_n_106,control_s_axi_U_n_107}),
        .\int_x_21_reg[7]_0 (sub_ln16_5_fu_455_p2),
        .\int_x_22_reg[7]_0 ({control_s_axi_U_n_117,control_s_axi_U_n_118,control_s_axi_U_n_119,control_s_axi_U_n_120,control_s_axi_U_n_121,control_s_axi_U_n_122,control_s_axi_U_n_123,control_s_axi_U_n_124,control_s_axi_U_n_125}),
        .\int_x_23_reg[7]_0 ({control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49,control_s_axi_U_n_50,control_s_axi_U_n_51,control_s_axi_U_n_52,control_s_axi_U_n_53}),
        .\int_x_24_reg[7]_0 (sub_ln16_8_fu_505_p2),
        .\int_x_25_reg[7]_0 ({control_s_axi_U_n_63,control_s_axi_U_n_64,control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68,control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71}),
        .\int_x_26_reg[7]_0 (sub_ln16_10_fu_537_p2),
        .\int_x_27_reg[7]_0 ({control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31,control_s_axi_U_n_32,control_s_axi_U_n_33,control_s_axi_U_n_34,control_s_axi_U_n_35}),
        .\int_x_28_reg[7]_0 (sub_ln16_12_fu_569_p2),
        .\int_x_29_reg[7]_0 (sub_ln16_13_fu_583_p2),
        .\int_x_31_reg[7]_0 ({control_s_axi_U_n_135,control_s_axi_U_n_136,control_s_axi_U_n_137,control_s_axi_U_n_138,control_s_axi_U_n_139,control_s_axi_U_n_140,control_s_axi_U_n_141,control_s_axi_U_n_142,control_s_axi_U_n_143}),
        .\int_y_add_reg[31]_0 (res_2_reg_1003),
        .\int_y_sqrt_reg[15]_0 (p_Val2_s_reg_1009),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA({\^s_axi_control_RDATA [30],\^s_axi_control_RDATA [19:0]}),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA[7:0]),
        .s_axi_control_WSTRB(s_axi_control_WSTRB[0]),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  design_1_eucHW_0_0_eucHW_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_364
       (.Q(res_2_reg_1003),
        .ap_clk(ap_clk),
        .\p_Val2_s_reg_1009_reg[0] (ap_CS_fsm_state14),
        .res_I_V_47_fu_1468_p3(res_I_V_47_fu_1468_p3),
        .\x_read_reg_1484_pp0_iter6_reg_reg[20]_0 (grp_sqrt_fixed_32_32_s_fu_364_n_0));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1 mac_muladd_9s_9s_18s_18_4_1_U10
       (.P({mac_muladd_9s_9s_18s_18_4_1_U10_n_0,mac_muladd_9s_9s_18s_18_4_1_U10_n_1,mac_muladd_9s_9s_18s_18_4_1_U10_n_2,mac_muladd_9s_9s_18s_18_4_1_U10_n_3,mac_muladd_9s_9s_18s_18_4_1_U10_n_4,mac_muladd_9s_9s_18s_18_4_1_U10_n_5,mac_muladd_9s_9s_18s_18_4_1_U10_n_6,mac_muladd_9s_9s_18s_18_4_1_U10_n_7,mac_muladd_9s_9s_18s_18_4_1_U10_n_8,mac_muladd_9s_9s_18s_18_4_1_U10_n_9,mac_muladd_9s_9s_18s_18_4_1_U10_n_10,mac_muladd_9s_9s_18s_18_4_1_U10_n_11,mac_muladd_9s_9s_18s_18_4_1_U10_n_12,mac_muladd_9s_9s_18s_18_4_1_U10_n_13,mac_muladd_9s_9s_18s_18_4_1_U10_n_14,mac_muladd_9s_9s_18s_18_4_1_U10_n_15,mac_muladd_9s_9s_18s_18_4_1_U10_n_16,mac_muladd_9s_9s_18s_18_4_1_U10_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_81,control_s_axi_U_n_82,control_s_axi_U_n_83,control_s_axi_U_n_84,control_s_axi_U_n_85,control_s_axi_U_n_86,control_s_axi_U_n_87,control_s_axi_U_n_88,control_s_axi_U_n_89}),
        .p_reg_reg(sub_ln16_1_fu_391_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_0 mac_muladd_9s_9s_18s_18_4_1_U11
       (.CO(mac_muladd_9s_9s_18s_18_4_1_U11_n_18),
        .P({mac_muladd_9s_9s_18s_18_4_1_U10_n_0,mac_muladd_9s_9s_18s_18_4_1_U10_n_1,mac_muladd_9s_9s_18s_18_4_1_U10_n_2,mac_muladd_9s_9s_18s_18_4_1_U10_n_3,mac_muladd_9s_9s_18s_18_4_1_U10_n_4,mac_muladd_9s_9s_18s_18_4_1_U10_n_5,mac_muladd_9s_9s_18s_18_4_1_U10_n_6,mac_muladd_9s_9s_18s_18_4_1_U10_n_7,mac_muladd_9s_9s_18s_18_4_1_U10_n_8,mac_muladd_9s_9s_18s_18_4_1_U10_n_9,mac_muladd_9s_9s_18s_18_4_1_U10_n_10,mac_muladd_9s_9s_18s_18_4_1_U10_n_11,mac_muladd_9s_9s_18s_18_4_1_U10_n_12,mac_muladd_9s_9s_18s_18_4_1_U10_n_13,mac_muladd_9s_9s_18s_18_4_1_U10_n_14,mac_muladd_9s_9s_18s_18_4_1_U10_n_15,mac_muladd_9s_9s_18s_18_4_1_U10_n_16,mac_muladd_9s_9s_18s_18_4_1_U10_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_99,control_s_axi_U_n_100,control_s_axi_U_n_101,control_s_axi_U_n_102,control_s_axi_U_n_103,control_s_axi_U_n_104,control_s_axi_U_n_105,control_s_axi_U_n_106,control_s_axi_U_n_107}),
        .p_reg_reg(sub_ln16_fu_377_p2),
        .sext_ln16_25_fu_747_p1(sext_ln16_25_fu_747_p1));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_1 mac_muladd_9s_9s_18s_18_4_1_U12
       (.P({mac_muladd_9s_9s_18s_18_4_1_U12_n_0,mac_muladd_9s_9s_18s_18_4_1_U12_n_1,mac_muladd_9s_9s_18s_18_4_1_U12_n_2,mac_muladd_9s_9s_18s_18_4_1_U12_n_3,mac_muladd_9s_9s_18s_18_4_1_U12_n_4,mac_muladd_9s_9s_18s_18_4_1_U12_n_5,mac_muladd_9s_9s_18s_18_4_1_U12_n_6,mac_muladd_9s_9s_18s_18_4_1_U12_n_7,mac_muladd_9s_9s_18s_18_4_1_U12_n_8,mac_muladd_9s_9s_18s_18_4_1_U12_n_9,mac_muladd_9s_9s_18s_18_4_1_U12_n_10,mac_muladd_9s_9s_18s_18_4_1_U12_n_11,mac_muladd_9s_9s_18s_18_4_1_U12_n_12,mac_muladd_9s_9s_18s_18_4_1_U12_n_13,mac_muladd_9s_9s_18s_18_4_1_U12_n_14,mac_muladd_9s_9s_18s_18_4_1_U12_n_15,mac_muladd_9s_9s_18s_18_4_1_U12_n_16,mac_muladd_9s_9s_18s_18_4_1_U12_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_117,control_s_axi_U_n_118,control_s_axi_U_n_119,control_s_axi_U_n_120,control_s_axi_U_n_121,control_s_axi_U_n_122,control_s_axi_U_n_123,control_s_axi_U_n_124,control_s_axi_U_n_125}),
        .p_reg_reg(sub_ln16_3_fu_423_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_2 mac_muladd_9s_9s_18s_18_4_1_U13
       (.P({mac_muladd_9s_9s_18s_18_4_1_U13_n_0,mac_muladd_9s_9s_18s_18_4_1_U13_n_1,mac_muladd_9s_9s_18s_18_4_1_U13_n_2,mac_muladd_9s_9s_18s_18_4_1_U13_n_3,mac_muladd_9s_9s_18s_18_4_1_U13_n_4,mac_muladd_9s_9s_18s_18_4_1_U13_n_5,mac_muladd_9s_9s_18s_18_4_1_U13_n_6,mac_muladd_9s_9s_18s_18_4_1_U13_n_7,mac_muladd_9s_9s_18s_18_4_1_U13_n_8,mac_muladd_9s_9s_18s_18_4_1_U13_n_9,mac_muladd_9s_9s_18s_18_4_1_U13_n_10,mac_muladd_9s_9s_18s_18_4_1_U13_n_11,mac_muladd_9s_9s_18s_18_4_1_U13_n_12,mac_muladd_9s_9s_18s_18_4_1_U13_n_13,mac_muladd_9s_9s_18s_18_4_1_U13_n_14,mac_muladd_9s_9s_18s_18_4_1_U13_n_15,mac_muladd_9s_9s_18s_18_4_1_U13_n_16,mac_muladd_9s_9s_18s_18_4_1_U13_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49,control_s_axi_U_n_50,control_s_axi_U_n_51,control_s_axi_U_n_52,control_s_axi_U_n_53}),
        .p_reg_reg(sub_ln16_8_fu_505_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_3 mac_muladd_9s_9s_18s_18_4_1_U14
       (.CO(mac_muladd_9s_9s_18s_18_4_1_U14_n_18),
        .P({mac_muladd_9s_9s_18s_18_4_1_U13_n_0,mac_muladd_9s_9s_18s_18_4_1_U13_n_1,mac_muladd_9s_9s_18s_18_4_1_U13_n_2,mac_muladd_9s_9s_18s_18_4_1_U13_n_3,mac_muladd_9s_9s_18s_18_4_1_U13_n_4,mac_muladd_9s_9s_18s_18_4_1_U13_n_5,mac_muladd_9s_9s_18s_18_4_1_U13_n_6,mac_muladd_9s_9s_18s_18_4_1_U13_n_7,mac_muladd_9s_9s_18s_18_4_1_U13_n_8,mac_muladd_9s_9s_18s_18_4_1_U13_n_9,mac_muladd_9s_9s_18s_18_4_1_U13_n_10,mac_muladd_9s_9s_18s_18_4_1_U13_n_11,mac_muladd_9s_9s_18s_18_4_1_U13_n_12,mac_muladd_9s_9s_18s_18_4_1_U13_n_13,mac_muladd_9s_9s_18s_18_4_1_U13_n_14,mac_muladd_9s_9s_18s_18_4_1_U13_n_15,mac_muladd_9s_9s_18s_18_4_1_U13_n_16,mac_muladd_9s_9s_18s_18_4_1_U13_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_63,control_s_axi_U_n_64,control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68,control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71}),
        .p_reg_reg(sub_ln16_10_fu_537_p2),
        .sext_ln16_21_fu_725_p1(sext_ln16_21_fu_725_p1));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_4 mac_muladd_9s_9s_18s_18_4_1_U15
       (.CO(mac_muladd_9s_9s_18s_18_4_1_U15_n_18),
        .P({mac_muladd_9s_9s_18s_18_4_1_U16_n_0,mac_muladd_9s_9s_18s_18_4_1_U16_n_1,mac_muladd_9s_9s_18s_18_4_1_U16_n_2,mac_muladd_9s_9s_18s_18_4_1_U16_n_3,mac_muladd_9s_9s_18s_18_4_1_U16_n_4,mac_muladd_9s_9s_18s_18_4_1_U16_n_5,mac_muladd_9s_9s_18s_18_4_1_U16_n_6,mac_muladd_9s_9s_18s_18_4_1_U16_n_7,mac_muladd_9s_9s_18s_18_4_1_U16_n_8,mac_muladd_9s_9s_18s_18_4_1_U16_n_9,mac_muladd_9s_9s_18s_18_4_1_U16_n_10,mac_muladd_9s_9s_18s_18_4_1_U16_n_11,mac_muladd_9s_9s_18s_18_4_1_U16_n_12,mac_muladd_9s_9s_18s_18_4_1_U16_n_13,mac_muladd_9s_9s_18s_18_4_1_U16_n_14,mac_muladd_9s_9s_18s_18_4_1_U16_n_15,mac_muladd_9s_9s_18s_18_4_1_U16_n_16,mac_muladd_9s_9s_18s_18_4_1_U16_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31,control_s_axi_U_n_32,control_s_axi_U_n_33,control_s_axi_U_n_34,control_s_axi_U_n_35}),
        .p_reg_reg(sub_ln16_12_fu_569_p2),
        .sext_ln16_18_fu_709_p1(sext_ln16_18_fu_709_p1));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_5 mac_muladd_9s_9s_18s_18_4_1_U16
       (.A({control_s_axi_U_n_9,control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13,control_s_axi_U_n_14,control_s_axi_U_n_15,control_s_axi_U_n_16,control_s_axi_U_n_17}),
        .P({mac_muladd_9s_9s_18s_18_4_1_U16_n_0,mac_muladd_9s_9s_18s_18_4_1_U16_n_1,mac_muladd_9s_9s_18s_18_4_1_U16_n_2,mac_muladd_9s_9s_18s_18_4_1_U16_n_3,mac_muladd_9s_9s_18s_18_4_1_U16_n_4,mac_muladd_9s_9s_18s_18_4_1_U16_n_5,mac_muladd_9s_9s_18s_18_4_1_U16_n_6,mac_muladd_9s_9s_18s_18_4_1_U16_n_7,mac_muladd_9s_9s_18s_18_4_1_U16_n_8,mac_muladd_9s_9s_18s_18_4_1_U16_n_9,mac_muladd_9s_9s_18s_18_4_1_U16_n_10,mac_muladd_9s_9s_18s_18_4_1_U16_n_11,mac_muladd_9s_9s_18s_18_4_1_U16_n_12,mac_muladd_9s_9s_18s_18_4_1_U16_n_13,mac_muladd_9s_9s_18s_18_4_1_U16_n_14,mac_muladd_9s_9s_18s_18_4_1_U16_n_15,mac_muladd_9s_9s_18s_18_4_1_U16_n_16,mac_muladd_9s_9s_18s_18_4_1_U16_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .p_reg_reg(sub_ln16_13_fu_583_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_6 mac_muladd_9s_9s_18s_18_4_1_U17
       (.CO(mac_muladd_9s_9s_18s_18_4_1_U17_n_18),
        .P({mac_muladd_9s_9s_18s_18_4_1_U12_n_0,mac_muladd_9s_9s_18s_18_4_1_U12_n_1,mac_muladd_9s_9s_18s_18_4_1_U12_n_2,mac_muladd_9s_9s_18s_18_4_1_U12_n_3,mac_muladd_9s_9s_18s_18_4_1_U12_n_4,mac_muladd_9s_9s_18s_18_4_1_U12_n_5,mac_muladd_9s_9s_18s_18_4_1_U12_n_6,mac_muladd_9s_9s_18s_18_4_1_U12_n_7,mac_muladd_9s_9s_18s_18_4_1_U12_n_8,mac_muladd_9s_9s_18s_18_4_1_U12_n_9,mac_muladd_9s_9s_18s_18_4_1_U12_n_10,mac_muladd_9s_9s_18s_18_4_1_U12_n_11,mac_muladd_9s_9s_18s_18_4_1_U12_n_12,mac_muladd_9s_9s_18s_18_4_1_U12_n_13,mac_muladd_9s_9s_18s_18_4_1_U12_n_14,mac_muladd_9s_9s_18s_18_4_1_U12_n_15,mac_muladd_9s_9s_18s_18_4_1_U12_n_16,mac_muladd_9s_9s_18s_18_4_1_U12_n_17}),
        .Q(ap_CS_fsm_state1),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_135,control_s_axi_U_n_136,control_s_axi_U_n_137,control_s_axi_U_n_138,control_s_axi_U_n_139,control_s_axi_U_n_140,control_s_axi_U_n_141,control_s_axi_U_n_142,control_s_axi_U_n_143}),
        .p_reg_reg(sub_ln16_5_fu_455_p2),
        .sext_ln16_28_fu_763_p1(sext_ln16_28_fu_763_p1));
  FDRE \p_Val2_s_reg_1009_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[0]),
        .Q(p_Val2_s_reg_1009[0]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[10]),
        .Q(p_Val2_s_reg_1009[10]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[11]),
        .Q(p_Val2_s_reg_1009[11]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[12]),
        .Q(p_Val2_s_reg_1009[12]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[13]),
        .Q(p_Val2_s_reg_1009[13]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[14]),
        .Q(p_Val2_s_reg_1009[14]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[15]),
        .Q(p_Val2_s_reg_1009[15]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[1]),
        .Q(p_Val2_s_reg_1009[1]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[2]),
        .Q(p_Val2_s_reg_1009[2]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[3]),
        .Q(p_Val2_s_reg_1009[3]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[4]),
        .Q(p_Val2_s_reg_1009[4]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[5]),
        .Q(p_Val2_s_reg_1009[5]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[6]),
        .Q(p_Val2_s_reg_1009[6]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[7]),
        .Q(p_Val2_s_reg_1009[7]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[8]),
        .Q(p_Val2_s_reg_1009[8]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  FDRE \p_Val2_s_reg_1009_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(res_I_V_47_fu_1468_p3[9]),
        .Q(p_Val2_s_reg_1009[9]),
        .R(grp_sqrt_fixed_32_32_s_fu_364_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[11]_i_2 
       (.I0(add_ln16_13_reg_998[11]),
        .I1(add_ln16_6_reg_993[11]),
        .O(\res_2_reg_1003[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[11]_i_3 
       (.I0(add_ln16_13_reg_998[10]),
        .I1(add_ln16_6_reg_993[10]),
        .O(\res_2_reg_1003[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[11]_i_4 
       (.I0(add_ln16_13_reg_998[9]),
        .I1(add_ln16_6_reg_993[9]),
        .O(\res_2_reg_1003[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[11]_i_5 
       (.I0(add_ln16_13_reg_998[8]),
        .I1(add_ln16_6_reg_993[8]),
        .O(\res_2_reg_1003[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[15]_i_2 
       (.I0(add_ln16_13_reg_998[15]),
        .I1(add_ln16_6_reg_993[15]),
        .O(\res_2_reg_1003[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[15]_i_3 
       (.I0(add_ln16_13_reg_998[14]),
        .I1(add_ln16_6_reg_993[14]),
        .O(\res_2_reg_1003[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[15]_i_4 
       (.I0(add_ln16_13_reg_998[13]),
        .I1(add_ln16_6_reg_993[13]),
        .O(\res_2_reg_1003[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[15]_i_5 
       (.I0(add_ln16_13_reg_998[12]),
        .I1(add_ln16_6_reg_993[12]),
        .O(\res_2_reg_1003[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \res_2_reg_1003[19]_i_2 
       (.I0(add_ln16_13_reg_998[19]),
        .O(\res_2_reg_1003[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[19]_i_3 
       (.I0(add_ln16_13_reg_998[19]),
        .I1(add_ln16_6_reg_993[19]),
        .O(\res_2_reg_1003[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[19]_i_4 
       (.I0(add_ln16_13_reg_998[18]),
        .I1(add_ln16_6_reg_993[18]),
        .O(\res_2_reg_1003[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[19]_i_5 
       (.I0(add_ln16_13_reg_998[17]),
        .I1(add_ln16_6_reg_993[17]),
        .O(\res_2_reg_1003[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[19]_i_6 
       (.I0(add_ln16_13_reg_998[16]),
        .I1(add_ln16_6_reg_993[16]),
        .O(\res_2_reg_1003[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[3]_i_2 
       (.I0(add_ln16_13_reg_998[3]),
        .I1(add_ln16_6_reg_993[3]),
        .O(\res_2_reg_1003[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[3]_i_3 
       (.I0(add_ln16_13_reg_998[2]),
        .I1(add_ln16_6_reg_993[2]),
        .O(\res_2_reg_1003[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[3]_i_4 
       (.I0(add_ln16_13_reg_998[1]),
        .I1(add_ln16_6_reg_993[1]),
        .O(\res_2_reg_1003[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[3]_i_5 
       (.I0(add_ln16_13_reg_998[0]),
        .I1(add_ln16_6_reg_993[0]),
        .O(\res_2_reg_1003[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[7]_i_2 
       (.I0(add_ln16_13_reg_998[7]),
        .I1(add_ln16_6_reg_993[7]),
        .O(\res_2_reg_1003[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[7]_i_3 
       (.I0(add_ln16_13_reg_998[6]),
        .I1(add_ln16_6_reg_993[6]),
        .O(\res_2_reg_1003[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[7]_i_4 
       (.I0(add_ln16_13_reg_998[5]),
        .I1(add_ln16_6_reg_993[5]),
        .O(\res_2_reg_1003[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_2_reg_1003[7]_i_5 
       (.I0(add_ln16_13_reg_998[4]),
        .I1(add_ln16_6_reg_993[4]),
        .O(\res_2_reg_1003[7]_i_5_n_0 ));
  FDRE \res_2_reg_1003_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[0]),
        .Q(res_2_reg_1003[0]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[10]),
        .Q(res_2_reg_1003[10]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[11]),
        .Q(res_2_reg_1003[11]),
        .R(1'b0));
  CARRY4 \res_2_reg_1003_reg[11]_i_1 
       (.CI(\res_2_reg_1003_reg[7]_i_1_n_0 ),
        .CO({\res_2_reg_1003_reg[11]_i_1_n_0 ,\res_2_reg_1003_reg[11]_i_1_n_1 ,\res_2_reg_1003_reg[11]_i_1_n_2 ,\res_2_reg_1003_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_998[11:8]),
        .O(res_2_fu_779_p2[11:8]),
        .S({\res_2_reg_1003[11]_i_2_n_0 ,\res_2_reg_1003[11]_i_3_n_0 ,\res_2_reg_1003[11]_i_4_n_0 ,\res_2_reg_1003[11]_i_5_n_0 }));
  FDRE \res_2_reg_1003_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[12]),
        .Q(res_2_reg_1003[12]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[13]),
        .Q(res_2_reg_1003[13]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[14]),
        .Q(res_2_reg_1003[14]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[15]),
        .Q(res_2_reg_1003[15]),
        .R(1'b0));
  CARRY4 \res_2_reg_1003_reg[15]_i_1 
       (.CI(\res_2_reg_1003_reg[11]_i_1_n_0 ),
        .CO({\res_2_reg_1003_reg[15]_i_1_n_0 ,\res_2_reg_1003_reg[15]_i_1_n_1 ,\res_2_reg_1003_reg[15]_i_1_n_2 ,\res_2_reg_1003_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_998[15:12]),
        .O(res_2_fu_779_p2[15:12]),
        .S({\res_2_reg_1003[15]_i_2_n_0 ,\res_2_reg_1003[15]_i_3_n_0 ,\res_2_reg_1003[15]_i_4_n_0 ,\res_2_reg_1003[15]_i_5_n_0 }));
  FDRE \res_2_reg_1003_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[16]),
        .Q(res_2_reg_1003[16]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[17]),
        .Q(res_2_reg_1003[17]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[18]),
        .Q(res_2_reg_1003[18]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[19]),
        .Q(res_2_reg_1003[19]),
        .R(1'b0));
  CARRY4 \res_2_reg_1003_reg[19]_i_1 
       (.CI(\res_2_reg_1003_reg[15]_i_1_n_0 ),
        .CO({\res_2_reg_1003_reg[19]_i_1_n_0 ,\res_2_reg_1003_reg[19]_i_1_n_1 ,\res_2_reg_1003_reg[19]_i_1_n_2 ,\res_2_reg_1003_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_2_reg_1003[19]_i_2_n_0 ,add_ln16_13_reg_998[18:16]}),
        .O(res_2_fu_779_p2[19:16]),
        .S({\res_2_reg_1003[19]_i_3_n_0 ,\res_2_reg_1003[19]_i_4_n_0 ,\res_2_reg_1003[19]_i_5_n_0 ,\res_2_reg_1003[19]_i_6_n_0 }));
  FDRE \res_2_reg_1003_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[1]),
        .Q(res_2_reg_1003[1]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[20]),
        .Q(res_2_reg_1003[20]),
        .R(1'b0));
  CARRY4 \res_2_reg_1003_reg[20]_i_1 
       (.CI(\res_2_reg_1003_reg[19]_i_1_n_0 ),
        .CO(\NLW_res_2_reg_1003_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_res_2_reg_1003_reg[20]_i_1_O_UNCONNECTED [3:1],res_2_fu_779_p2[20]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \res_2_reg_1003_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[2]),
        .Q(res_2_reg_1003[2]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[3]),
        .Q(res_2_reg_1003[3]),
        .R(1'b0));
  CARRY4 \res_2_reg_1003_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\res_2_reg_1003_reg[3]_i_1_n_0 ,\res_2_reg_1003_reg[3]_i_1_n_1 ,\res_2_reg_1003_reg[3]_i_1_n_2 ,\res_2_reg_1003_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_998[3:0]),
        .O(res_2_fu_779_p2[3:0]),
        .S({\res_2_reg_1003[3]_i_2_n_0 ,\res_2_reg_1003[3]_i_3_n_0 ,\res_2_reg_1003[3]_i_4_n_0 ,\res_2_reg_1003[3]_i_5_n_0 }));
  FDRE \res_2_reg_1003_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[4]),
        .Q(res_2_reg_1003[4]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[5]),
        .Q(res_2_reg_1003[5]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[6]),
        .Q(res_2_reg_1003[6]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[7]),
        .Q(res_2_reg_1003[7]),
        .R(1'b0));
  CARRY4 \res_2_reg_1003_reg[7]_i_1 
       (.CI(\res_2_reg_1003_reg[3]_i_1_n_0 ),
        .CO({\res_2_reg_1003_reg[7]_i_1_n_0 ,\res_2_reg_1003_reg[7]_i_1_n_1 ,\res_2_reg_1003_reg[7]_i_1_n_2 ,\res_2_reg_1003_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_13_reg_998[7:4]),
        .O(res_2_fu_779_p2[7:4]),
        .S({\res_2_reg_1003[7]_i_2_n_0 ,\res_2_reg_1003[7]_i_3_n_0 ,\res_2_reg_1003[7]_i_4_n_0 ,\res_2_reg_1003[7]_i_5_n_0 }));
  FDRE \res_2_reg_1003_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[8]),
        .Q(res_2_reg_1003[8]),
        .R(1'b0));
  FDRE \res_2_reg_1003_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(res_2_fu_779_p2[9]),
        .Q(res_2_reg_1003[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi
   (SR,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    interrupt,
    D,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_control_BVALID,
    A,
    \int_x_29_reg[7]_0 ,
    \int_x_27_reg[7]_0 ,
    \int_x_28_reg[7]_0 ,
    \int_x_23_reg[7]_0 ,
    \int_x_24_reg[7]_0 ,
    \int_x_25_reg[7]_0 ,
    \int_x_26_reg[7]_0 ,
    \int_x_18_reg[7]_0 ,
    \int_x_17_reg[7]_0 ,
    \int_x_20_reg[7]_0 ,
    \int_x_16_reg[7]_0 ,
    \int_x_22_reg[7]_0 ,
    \int_x_19_reg[7]_0 ,
    \int_x_31_reg[7]_0 ,
    \int_x_21_reg[7]_0 ,
    s_axi_control_RDATA,
    ap_clk,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_ARADDR,
    s_axi_control_AWVALID,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    Q,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    s_axi_control_WVALID,
    s_axi_control_BREADY,
    ap_rst_n,
    s_axi_control_AWADDR,
    \int_y_add_reg[31]_0 ,
    \int_y_sqrt_reg[15]_0 );
  output [0:0]SR;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output interrupt;
  output [1:0]D;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_control_BVALID;
  output [8:0]A;
  output [8:0]\int_x_29_reg[7]_0 ;
  output [8:0]\int_x_27_reg[7]_0 ;
  output [8:0]\int_x_28_reg[7]_0 ;
  output [8:0]\int_x_23_reg[7]_0 ;
  output [8:0]\int_x_24_reg[7]_0 ;
  output [8:0]\int_x_25_reg[7]_0 ;
  output [8:0]\int_x_26_reg[7]_0 ;
  output [8:0]\int_x_18_reg[7]_0 ;
  output [8:0]\int_x_17_reg[7]_0 ;
  output [8:0]\int_x_20_reg[7]_0 ;
  output [8:0]\int_x_16_reg[7]_0 ;
  output [8:0]\int_x_22_reg[7]_0 ;
  output [8:0]\int_x_19_reg[7]_0 ;
  output [8:0]\int_x_31_reg[7]_0 ;
  output [8:0]\int_x_21_reg[7]_0 ;
  output [20:0]s_axi_control_RDATA;
  input ap_clk;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [8:0]s_axi_control_ARADDR;
  input s_axi_control_AWVALID;
  input [7:0]s_axi_control_WDATA;
  input [0:0]s_axi_control_WSTRB;
  input [2:0]Q;
  input \ap_CS_fsm_reg[1] ;
  input \ap_CS_fsm_reg[1]_0 ;
  input s_axi_control_WVALID;
  input s_axi_control_BREADY;
  input ap_rst_n;
  input [8:0]s_axi_control_AWADDR;
  input [20:0]\int_y_add_reg[31]_0 ;
  input [15:0]\int_y_sqrt_reg[15]_0 ;

  wire [8:0]A;
  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_i_3_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire [7:0]int_x_00;
  wire \int_x_0[7]_i_1_n_0 ;
  wire \int_x_0[7]_i_3_n_0 ;
  wire [7:0]int_x_10;
  wire [7:0]int_x_100;
  wire \int_x_10[7]_i_1_n_0 ;
  wire \int_x_10[7]_i_3_n_0 ;
  wire [7:0]int_x_110;
  wire \int_x_11[7]_i_1_n_0 ;
  wire [7:0]int_x_120;
  wire \int_x_12[7]_i_1_n_0 ;
  wire [7:0]int_x_130;
  wire \int_x_13[7]_i_1_n_0 ;
  wire [7:0]int_x_140;
  wire \int_x_14[7]_i_1_n_0 ;
  wire \int_x_14[7]_i_3_n_0 ;
  wire [7:0]int_x_150;
  wire \int_x_15[7]_i_1_n_0 ;
  wire [7:0]int_x_160;
  wire \int_x_16[7]_i_1_n_0 ;
  wire [8:0]\int_x_16_reg[7]_0 ;
  wire [7:0]int_x_170;
  wire \int_x_17[7]_i_1_n_0 ;
  wire [8:0]\int_x_17_reg[7]_0 ;
  wire [7:0]int_x_180;
  wire \int_x_18[7]_i_1_n_0 ;
  wire [8:0]\int_x_18_reg[7]_0 ;
  wire [7:0]int_x_190;
  wire \int_x_19[7]_i_1_n_0 ;
  wire [8:0]\int_x_19_reg[7]_0 ;
  wire \int_x_1[7]_i_1_n_0 ;
  wire [7:0]int_x_20;
  wire [7:0]int_x_200;
  wire \int_x_20[7]_i_1_n_0 ;
  wire [8:0]\int_x_20_reg[7]_0 ;
  wire [7:0]int_x_210;
  wire \int_x_21[7]_i_1_n_0 ;
  wire [8:0]\int_x_21_reg[7]_0 ;
  wire [7:0]int_x_220;
  wire \int_x_22[7]_i_1_n_0 ;
  wire [8:0]\int_x_22_reg[7]_0 ;
  wire [7:0]int_x_230;
  wire \int_x_23[7]_i_1_n_0 ;
  wire [8:0]\int_x_23_reg[7]_0 ;
  wire [7:0]int_x_240;
  wire \int_x_24[7]_i_1_n_0 ;
  wire [8:0]\int_x_24_reg[7]_0 ;
  wire [7:0]int_x_250;
  wire \int_x_25[7]_i_1_n_0 ;
  wire [8:0]\int_x_25_reg[7]_0 ;
  wire [7:0]int_x_260;
  wire \int_x_26[7]_i_1_n_0 ;
  wire \int_x_26[7]_i_3_n_0 ;
  wire \int_x_26[7]_i_4_n_0 ;
  wire [8:0]\int_x_26_reg[7]_0 ;
  wire [7:0]int_x_270;
  wire \int_x_27[7]_i_1_n_0 ;
  wire [8:0]\int_x_27_reg[7]_0 ;
  wire [7:0]int_x_280;
  wire \int_x_28[7]_i_1_n_0 ;
  wire [8:0]\int_x_28_reg[7]_0 ;
  wire [7:0]int_x_290;
  wire \int_x_29[7]_i_1_n_0 ;
  wire [8:0]\int_x_29_reg[7]_0 ;
  wire \int_x_2[7]_i_1_n_0 ;
  wire \int_x_2[7]_i_3_n_0 ;
  wire [7:0]int_x_30;
  wire [7:0]int_x_300;
  wire \int_x_30[7]_i_1_n_0 ;
  wire \int_x_30[7]_i_3_n_0 ;
  wire [7:0]int_x_310;
  wire \int_x_31[7]_i_1_n_0 ;
  wire [8:0]\int_x_31_reg[7]_0 ;
  wire \int_x_3[7]_i_1_n_0 ;
  wire [7:0]int_x_40;
  wire \int_x_4[7]_i_1_n_0 ;
  wire [7:0]int_x_50;
  wire \int_x_5[7]_i_1_n_0 ;
  wire [7:0]int_x_60;
  wire \int_x_6[7]_i_1_n_0 ;
  wire [7:0]int_x_70;
  wire \int_x_7[7]_i_1_n_0 ;
  wire [7:0]int_x_80;
  wire \int_x_8[7]_i_1_n_0 ;
  wire [7:0]int_x_90;
  wire \int_x_9[7]_i_1_n_0 ;
  wire int_y_add_ap_vld__0;
  wire int_y_add_ap_vld_i_1_n_0;
  wire int_y_add_ap_vld_i_2_n_0;
  wire int_y_add_ap_vld_i_3_n_0;
  wire [20:0]\int_y_add_reg[31]_0 ;
  wire \int_y_add_reg_n_0_[0] ;
  wire \int_y_add_reg_n_0_[10] ;
  wire \int_y_add_reg_n_0_[11] ;
  wire \int_y_add_reg_n_0_[12] ;
  wire \int_y_add_reg_n_0_[13] ;
  wire \int_y_add_reg_n_0_[14] ;
  wire \int_y_add_reg_n_0_[15] ;
  wire \int_y_add_reg_n_0_[16] ;
  wire \int_y_add_reg_n_0_[17] ;
  wire \int_y_add_reg_n_0_[18] ;
  wire \int_y_add_reg_n_0_[19] ;
  wire \int_y_add_reg_n_0_[1] ;
  wire \int_y_add_reg_n_0_[2] ;
  wire \int_y_add_reg_n_0_[31] ;
  wire \int_y_add_reg_n_0_[3] ;
  wire \int_y_add_reg_n_0_[4] ;
  wire \int_y_add_reg_n_0_[5] ;
  wire \int_y_add_reg_n_0_[6] ;
  wire \int_y_add_reg_n_0_[7] ;
  wire \int_y_add_reg_n_0_[8] ;
  wire \int_y_add_reg_n_0_[9] ;
  wire int_y_sqrt_ap_vld__0;
  wire int_y_sqrt_ap_vld_i_1_n_0;
  wire [15:0]\int_y_sqrt_reg[15]_0 ;
  wire \int_y_sqrt_reg_n_0_[0] ;
  wire \int_y_sqrt_reg_n_0_[10] ;
  wire \int_y_sqrt_reg_n_0_[11] ;
  wire \int_y_sqrt_reg_n_0_[12] ;
  wire \int_y_sqrt_reg_n_0_[13] ;
  wire \int_y_sqrt_reg_n_0_[14] ;
  wire \int_y_sqrt_reg_n_0_[15] ;
  wire \int_y_sqrt_reg_n_0_[1] ;
  wire \int_y_sqrt_reg_n_0_[2] ;
  wire \int_y_sqrt_reg_n_0_[3] ;
  wire \int_y_sqrt_reg_n_0_[4] ;
  wire \int_y_sqrt_reg_n_0_[5] ;
  wire \int_y_sqrt_reg_n_0_[6] ;
  wire \int_y_sqrt_reg_n_0_[7] ;
  wire \int_y_sqrt_reg_n_0_[8] ;
  wire \int_y_sqrt_reg_n_0_[9] ;
  wire interrupt;
  wire m_reg_reg_i_10__0_n_0;
  wire m_reg_reg_i_10__1_n_0;
  wire m_reg_reg_i_10__2_n_0;
  wire m_reg_reg_i_10__3_n_0;
  wire m_reg_reg_i_10__4_n_0;
  wire m_reg_reg_i_10__5_n_0;
  wire m_reg_reg_i_10__6_n_0;
  wire m_reg_reg_i_10_n_0;
  wire m_reg_reg_i_11__0_n_0;
  wire m_reg_reg_i_11__1_n_0;
  wire m_reg_reg_i_11__2_n_0;
  wire m_reg_reg_i_11__3_n_0;
  wire m_reg_reg_i_11__4_n_0;
  wire m_reg_reg_i_11__5_n_0;
  wire m_reg_reg_i_11__6_n_0;
  wire m_reg_reg_i_11_n_0;
  wire m_reg_reg_i_2__0_n_0;
  wire m_reg_reg_i_2__0_n_1;
  wire m_reg_reg_i_2__0_n_2;
  wire m_reg_reg_i_2__0_n_3;
  wire m_reg_reg_i_2__1_n_0;
  wire m_reg_reg_i_2__1_n_1;
  wire m_reg_reg_i_2__1_n_2;
  wire m_reg_reg_i_2__1_n_3;
  wire m_reg_reg_i_2__2_n_0;
  wire m_reg_reg_i_2__2_n_1;
  wire m_reg_reg_i_2__2_n_2;
  wire m_reg_reg_i_2__2_n_3;
  wire m_reg_reg_i_2__3_n_0;
  wire m_reg_reg_i_2__3_n_1;
  wire m_reg_reg_i_2__3_n_2;
  wire m_reg_reg_i_2__3_n_3;
  wire m_reg_reg_i_2__4_n_0;
  wire m_reg_reg_i_2__4_n_1;
  wire m_reg_reg_i_2__4_n_2;
  wire m_reg_reg_i_2__4_n_3;
  wire m_reg_reg_i_2__5_n_0;
  wire m_reg_reg_i_2__5_n_1;
  wire m_reg_reg_i_2__5_n_2;
  wire m_reg_reg_i_2__5_n_3;
  wire m_reg_reg_i_2__6_n_0;
  wire m_reg_reg_i_2__6_n_1;
  wire m_reg_reg_i_2__6_n_2;
  wire m_reg_reg_i_2__6_n_3;
  wire m_reg_reg_i_2_n_0;
  wire m_reg_reg_i_2_n_1;
  wire m_reg_reg_i_2_n_2;
  wire m_reg_reg_i_2_n_3;
  wire m_reg_reg_i_3__0_n_0;
  wire m_reg_reg_i_3__0_n_1;
  wire m_reg_reg_i_3__0_n_2;
  wire m_reg_reg_i_3__0_n_3;
  wire m_reg_reg_i_3__1_n_0;
  wire m_reg_reg_i_3__1_n_1;
  wire m_reg_reg_i_3__1_n_2;
  wire m_reg_reg_i_3__1_n_3;
  wire m_reg_reg_i_3__2_n_0;
  wire m_reg_reg_i_3__2_n_1;
  wire m_reg_reg_i_3__2_n_2;
  wire m_reg_reg_i_3__2_n_3;
  wire m_reg_reg_i_3__3_n_0;
  wire m_reg_reg_i_3__3_n_1;
  wire m_reg_reg_i_3__3_n_2;
  wire m_reg_reg_i_3__3_n_3;
  wire m_reg_reg_i_3__4_n_0;
  wire m_reg_reg_i_3__4_n_1;
  wire m_reg_reg_i_3__4_n_2;
  wire m_reg_reg_i_3__4_n_3;
  wire m_reg_reg_i_3__5_n_0;
  wire m_reg_reg_i_3__5_n_1;
  wire m_reg_reg_i_3__5_n_2;
  wire m_reg_reg_i_3__5_n_3;
  wire m_reg_reg_i_3__6_n_0;
  wire m_reg_reg_i_3__6_n_1;
  wire m_reg_reg_i_3__6_n_2;
  wire m_reg_reg_i_3__6_n_3;
  wire m_reg_reg_i_3_n_0;
  wire m_reg_reg_i_3_n_1;
  wire m_reg_reg_i_3_n_2;
  wire m_reg_reg_i_3_n_3;
  wire m_reg_reg_i_4__0_n_0;
  wire m_reg_reg_i_4__1_n_0;
  wire m_reg_reg_i_4__2_n_0;
  wire m_reg_reg_i_4__3_n_0;
  wire m_reg_reg_i_4__4_n_0;
  wire m_reg_reg_i_4__5_n_0;
  wire m_reg_reg_i_4__6_n_0;
  wire m_reg_reg_i_4_n_0;
  wire m_reg_reg_i_5__0_n_0;
  wire m_reg_reg_i_5__1_n_0;
  wire m_reg_reg_i_5__2_n_0;
  wire m_reg_reg_i_5__3_n_0;
  wire m_reg_reg_i_5__4_n_0;
  wire m_reg_reg_i_5__5_n_0;
  wire m_reg_reg_i_5__6_n_0;
  wire m_reg_reg_i_5_n_0;
  wire m_reg_reg_i_6__0_n_0;
  wire m_reg_reg_i_6__1_n_0;
  wire m_reg_reg_i_6__2_n_0;
  wire m_reg_reg_i_6__3_n_0;
  wire m_reg_reg_i_6__4_n_0;
  wire m_reg_reg_i_6__5_n_0;
  wire m_reg_reg_i_6__6_n_0;
  wire m_reg_reg_i_6_n_0;
  wire m_reg_reg_i_7__0_n_0;
  wire m_reg_reg_i_7__1_n_0;
  wire m_reg_reg_i_7__2_n_0;
  wire m_reg_reg_i_7__3_n_0;
  wire m_reg_reg_i_7__4_n_0;
  wire m_reg_reg_i_7__5_n_0;
  wire m_reg_reg_i_7__6_n_0;
  wire m_reg_reg_i_7_n_0;
  wire m_reg_reg_i_8__0_n_0;
  wire m_reg_reg_i_8__1_n_0;
  wire m_reg_reg_i_8__2_n_0;
  wire m_reg_reg_i_8__3_n_0;
  wire m_reg_reg_i_8__4_n_0;
  wire m_reg_reg_i_8__5_n_0;
  wire m_reg_reg_i_8__6_n_0;
  wire m_reg_reg_i_8_n_0;
  wire m_reg_reg_i_9__0_n_0;
  wire m_reg_reg_i_9__1_n_0;
  wire m_reg_reg_i_9__2_n_0;
  wire m_reg_reg_i_9__3_n_0;
  wire m_reg_reg_i_9__4_n_0;
  wire m_reg_reg_i_9__5_n_0;
  wire m_reg_reg_i_9__6_n_0;
  wire m_reg_reg_i_9_n_0;
  wire [7:2]p_36_in;
  wire p_reg_reg_i_10__0_n_0;
  wire p_reg_reg_i_10__1_n_0;
  wire p_reg_reg_i_10__2_n_0;
  wire p_reg_reg_i_10__3_n_0;
  wire p_reg_reg_i_10__4_n_0;
  wire p_reg_reg_i_10__5_n_0;
  wire p_reg_reg_i_10__6_n_0;
  wire p_reg_reg_i_10_n_0;
  wire p_reg_reg_i_11__0_n_0;
  wire p_reg_reg_i_11__1_n_0;
  wire p_reg_reg_i_11__2_n_0;
  wire p_reg_reg_i_11__3_n_0;
  wire p_reg_reg_i_11__4_n_0;
  wire p_reg_reg_i_11__5_n_0;
  wire p_reg_reg_i_11__6_n_0;
  wire p_reg_reg_i_11_n_0;
  wire p_reg_reg_i_2__0_n_0;
  wire p_reg_reg_i_2__0_n_1;
  wire p_reg_reg_i_2__0_n_2;
  wire p_reg_reg_i_2__0_n_3;
  wire p_reg_reg_i_2__1_n_0;
  wire p_reg_reg_i_2__1_n_1;
  wire p_reg_reg_i_2__1_n_2;
  wire p_reg_reg_i_2__1_n_3;
  wire p_reg_reg_i_2__2_n_0;
  wire p_reg_reg_i_2__2_n_1;
  wire p_reg_reg_i_2__2_n_2;
  wire p_reg_reg_i_2__2_n_3;
  wire p_reg_reg_i_2__3_n_0;
  wire p_reg_reg_i_2__3_n_1;
  wire p_reg_reg_i_2__3_n_2;
  wire p_reg_reg_i_2__3_n_3;
  wire p_reg_reg_i_2__4_n_0;
  wire p_reg_reg_i_2__4_n_1;
  wire p_reg_reg_i_2__4_n_2;
  wire p_reg_reg_i_2__4_n_3;
  wire p_reg_reg_i_2__5_n_0;
  wire p_reg_reg_i_2__5_n_1;
  wire p_reg_reg_i_2__5_n_2;
  wire p_reg_reg_i_2__5_n_3;
  wire p_reg_reg_i_2__6_n_0;
  wire p_reg_reg_i_2__6_n_1;
  wire p_reg_reg_i_2__6_n_2;
  wire p_reg_reg_i_2__6_n_3;
  wire p_reg_reg_i_2_n_0;
  wire p_reg_reg_i_2_n_1;
  wire p_reg_reg_i_2_n_2;
  wire p_reg_reg_i_2_n_3;
  wire p_reg_reg_i_3__0_n_0;
  wire p_reg_reg_i_3__0_n_1;
  wire p_reg_reg_i_3__0_n_2;
  wire p_reg_reg_i_3__0_n_3;
  wire p_reg_reg_i_3__1_n_0;
  wire p_reg_reg_i_3__1_n_1;
  wire p_reg_reg_i_3__1_n_2;
  wire p_reg_reg_i_3__1_n_3;
  wire p_reg_reg_i_3__2_n_0;
  wire p_reg_reg_i_3__2_n_1;
  wire p_reg_reg_i_3__2_n_2;
  wire p_reg_reg_i_3__2_n_3;
  wire p_reg_reg_i_3__3_n_0;
  wire p_reg_reg_i_3__3_n_1;
  wire p_reg_reg_i_3__3_n_2;
  wire p_reg_reg_i_3__3_n_3;
  wire p_reg_reg_i_3__4_n_0;
  wire p_reg_reg_i_3__4_n_1;
  wire p_reg_reg_i_3__4_n_2;
  wire p_reg_reg_i_3__4_n_3;
  wire p_reg_reg_i_3__5_n_0;
  wire p_reg_reg_i_3__5_n_1;
  wire p_reg_reg_i_3__5_n_2;
  wire p_reg_reg_i_3__5_n_3;
  wire p_reg_reg_i_3__6_n_0;
  wire p_reg_reg_i_3__6_n_1;
  wire p_reg_reg_i_3__6_n_2;
  wire p_reg_reg_i_3__6_n_3;
  wire p_reg_reg_i_3_n_0;
  wire p_reg_reg_i_3_n_1;
  wire p_reg_reg_i_3_n_2;
  wire p_reg_reg_i_3_n_3;
  wire p_reg_reg_i_4__0_n_0;
  wire p_reg_reg_i_4__1_n_0;
  wire p_reg_reg_i_4__2_n_0;
  wire p_reg_reg_i_4__3_n_0;
  wire p_reg_reg_i_4__4_n_0;
  wire p_reg_reg_i_4__5_n_0;
  wire p_reg_reg_i_4__6_n_0;
  wire p_reg_reg_i_4_n_0;
  wire p_reg_reg_i_5__0_n_0;
  wire p_reg_reg_i_5__1_n_0;
  wire p_reg_reg_i_5__2_n_0;
  wire p_reg_reg_i_5__3_n_0;
  wire p_reg_reg_i_5__4_n_0;
  wire p_reg_reg_i_5__5_n_0;
  wire p_reg_reg_i_5__6_n_0;
  wire p_reg_reg_i_5_n_0;
  wire p_reg_reg_i_6__0_n_0;
  wire p_reg_reg_i_6__1_n_0;
  wire p_reg_reg_i_6__2_n_0;
  wire p_reg_reg_i_6__3_n_0;
  wire p_reg_reg_i_6__4_n_0;
  wire p_reg_reg_i_6__5_n_0;
  wire p_reg_reg_i_6__6_n_0;
  wire p_reg_reg_i_6_n_0;
  wire p_reg_reg_i_7__0_n_0;
  wire p_reg_reg_i_7__1_n_0;
  wire p_reg_reg_i_7__2_n_0;
  wire p_reg_reg_i_7__3_n_0;
  wire p_reg_reg_i_7__4_n_0;
  wire p_reg_reg_i_7__5_n_0;
  wire p_reg_reg_i_7__6_n_0;
  wire p_reg_reg_i_7_n_0;
  wire p_reg_reg_i_8__0_n_0;
  wire p_reg_reg_i_8__1_n_0;
  wire p_reg_reg_i_8__2_n_0;
  wire p_reg_reg_i_8__3_n_0;
  wire p_reg_reg_i_8__4_n_0;
  wire p_reg_reg_i_8__5_n_0;
  wire p_reg_reg_i_8__6_n_0;
  wire p_reg_reg_i_8_n_0;
  wire p_reg_reg_i_9__0_n_0;
  wire p_reg_reg_i_9__1_n_0;
  wire p_reg_reg_i_9__2_n_0;
  wire p_reg_reg_i_9__3_n_0;
  wire p_reg_reg_i_9__4_n_0;
  wire p_reg_reg_i_9__5_n_0;
  wire p_reg_reg_i_9__6_n_0;
  wire p_reg_reg_i_9_n_0;
  wire \rdata[0]_i_10_n_0 ;
  wire \rdata[0]_i_11_n_0 ;
  wire \rdata[0]_i_12_n_0 ;
  wire \rdata[0]_i_15_n_0 ;
  wire \rdata[0]_i_16_n_0 ;
  wire \rdata[0]_i_17_n_0 ;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[0]_i_20_n_0 ;
  wire \rdata[0]_i_21_n_0 ;
  wire \rdata[0]_i_22_n_0 ;
  wire \rdata[0]_i_23_n_0 ;
  wire \rdata[0]_i_24_n_0 ;
  wire \rdata[0]_i_25_n_0 ;
  wire \rdata[0]_i_26_n_0 ;
  wire \rdata[0]_i_27_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[0]_i_7_n_0 ;
  wire \rdata[0]_i_9_n_0 ;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[1]_i_10_n_0 ;
  wire \rdata[1]_i_11_n_0 ;
  wire \rdata[1]_i_12_n_0 ;
  wire \rdata[1]_i_13_n_0 ;
  wire \rdata[1]_i_14_n_0 ;
  wire \rdata[1]_i_15_n_0 ;
  wire \rdata[1]_i_18_n_0 ;
  wire \rdata[1]_i_19_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[1]_i_20_n_0 ;
  wire \rdata[1]_i_21_n_0 ;
  wire \rdata[1]_i_22_n_0 ;
  wire \rdata[1]_i_23_n_0 ;
  wire \rdata[1]_i_24_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[1]_i_6_n_0 ;
  wire \rdata[1]_i_7_n_0 ;
  wire \rdata[1]_i_8_n_0 ;
  wire \rdata[2]_i_10_n_0 ;
  wire \rdata[2]_i_11_n_0 ;
  wire \rdata[2]_i_12_n_0 ;
  wire \rdata[2]_i_13_n_0 ;
  wire \rdata[2]_i_14_n_0 ;
  wire \rdata[2]_i_15_n_0 ;
  wire \rdata[2]_i_16_n_0 ;
  wire \rdata[2]_i_17_n_0 ;
  wire \rdata[2]_i_18_n_0 ;
  wire \rdata[2]_i_19_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[2]_i_4_n_0 ;
  wire \rdata[2]_i_5_n_0 ;
  wire \rdata[2]_i_7_n_0 ;
  wire \rdata[2]_i_8_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[3]_i_10_n_0 ;
  wire \rdata[3]_i_11_n_0 ;
  wire \rdata[3]_i_12_n_0 ;
  wire \rdata[3]_i_13_n_0 ;
  wire \rdata[3]_i_14_n_0 ;
  wire \rdata[3]_i_15_n_0 ;
  wire \rdata[3]_i_16_n_0 ;
  wire \rdata[3]_i_17_n_0 ;
  wire \rdata[3]_i_18_n_0 ;
  wire \rdata[3]_i_19_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[3]_i_5_n_0 ;
  wire \rdata[3]_i_7_n_0 ;
  wire \rdata[3]_i_8_n_0 ;
  wire \rdata[4]_i_10_n_0 ;
  wire \rdata[4]_i_11_n_0 ;
  wire \rdata[4]_i_12_n_0 ;
  wire \rdata[4]_i_13_n_0 ;
  wire \rdata[4]_i_14_n_0 ;
  wire \rdata[4]_i_15_n_0 ;
  wire \rdata[4]_i_16_n_0 ;
  wire \rdata[4]_i_17_n_0 ;
  wire \rdata[4]_i_18_n_0 ;
  wire \rdata[4]_i_19_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[4]_i_4_n_0 ;
  wire \rdata[4]_i_5_n_0 ;
  wire \rdata[4]_i_7_n_0 ;
  wire \rdata[4]_i_8_n_0 ;
  wire \rdata[5]_i_10_n_0 ;
  wire \rdata[5]_i_11_n_0 ;
  wire \rdata[5]_i_12_n_0 ;
  wire \rdata[5]_i_13_n_0 ;
  wire \rdata[5]_i_14_n_0 ;
  wire \rdata[5]_i_15_n_0 ;
  wire \rdata[5]_i_16_n_0 ;
  wire \rdata[5]_i_17_n_0 ;
  wire \rdata[5]_i_18_n_0 ;
  wire \rdata[5]_i_19_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[5]_i_5_n_0 ;
  wire \rdata[5]_i_7_n_0 ;
  wire \rdata[5]_i_8_n_0 ;
  wire \rdata[6]_i_10_n_0 ;
  wire \rdata[6]_i_11_n_0 ;
  wire \rdata[6]_i_12_n_0 ;
  wire \rdata[6]_i_13_n_0 ;
  wire \rdata[6]_i_14_n_0 ;
  wire \rdata[6]_i_15_n_0 ;
  wire \rdata[6]_i_16_n_0 ;
  wire \rdata[6]_i_17_n_0 ;
  wire \rdata[6]_i_18_n_0 ;
  wire \rdata[6]_i_19_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[6]_i_4_n_0 ;
  wire \rdata[6]_i_5_n_0 ;
  wire \rdata[6]_i_7_n_0 ;
  wire \rdata[6]_i_8_n_0 ;
  wire \rdata[7]_i_11_n_0 ;
  wire \rdata[7]_i_12_n_0 ;
  wire \rdata[7]_i_13_n_0 ;
  wire \rdata[7]_i_14_n_0 ;
  wire \rdata[7]_i_15_n_0 ;
  wire \rdata[7]_i_16_n_0 ;
  wire \rdata[7]_i_17_n_0 ;
  wire \rdata[7]_i_18_n_0 ;
  wire \rdata[7]_i_19_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_20_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire \rdata[7]_i_8_n_0 ;
  wire \rdata[7]_i_9_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire \rdata_reg[0]_i_13_n_0 ;
  wire \rdata_reg[0]_i_14_n_0 ;
  wire \rdata_reg[0]_i_18_n_0 ;
  wire \rdata_reg[0]_i_19_n_0 ;
  wire \rdata_reg[0]_i_6_n_0 ;
  wire \rdata_reg[0]_i_8_n_0 ;
  wire \rdata_reg[1]_i_16_n_0 ;
  wire \rdata_reg[1]_i_17_n_0 ;
  wire \rdata_reg[1]_i_9_n_0 ;
  wire \rdata_reg[2]_i_1_n_0 ;
  wire \rdata_reg[2]_i_6_n_0 ;
  wire \rdata_reg[2]_i_9_n_0 ;
  wire \rdata_reg[3]_i_1_n_0 ;
  wire \rdata_reg[3]_i_6_n_0 ;
  wire \rdata_reg[3]_i_9_n_0 ;
  wire \rdata_reg[4]_i_1_n_0 ;
  wire \rdata_reg[4]_i_6_n_0 ;
  wire \rdata_reg[4]_i_9_n_0 ;
  wire \rdata_reg[5]_i_1_n_0 ;
  wire \rdata_reg[5]_i_6_n_0 ;
  wire \rdata_reg[5]_i_9_n_0 ;
  wire \rdata_reg[6]_i_1_n_0 ;
  wire \rdata_reg[6]_i_6_n_0 ;
  wire \rdata_reg[6]_i_9_n_0 ;
  wire \rdata_reg[7]_i_10_n_0 ;
  wire \rdata_reg[7]_i_2_n_0 ;
  wire \rdata_reg[7]_i_7_n_0 ;
  wire [8:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [8:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [20:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [7:0]s_axi_control_WDATA;
  wire [0:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire [7:0]x_0;
  wire [7:0]x_1;
  wire [7:0]x_10;
  wire [7:0]x_11;
  wire [7:0]x_12;
  wire [7:0]x_13;
  wire [7:0]x_14;
  wire [7:0]x_15;
  wire [7:0]x_2;
  wire [7:0]x_3;
  wire [7:0]x_4;
  wire [7:0]x_5;
  wire [7:0]x_6;
  wire [7:0]x_7;
  wire [7:0]x_8;
  wire [7:0]x_9;
  wire [7:0]zext_ln16_10_fu_447_p1;
  wire [7:0]zext_ln16_12_fu_461_p1;
  wire [7:0]zext_ln16_14_fu_479_p1;
  wire [7:0]zext_ln16_16_fu_497_p1;
  wire [7:0]zext_ln16_18_fu_511_p1;
  wire [7:0]zext_ln16_20_fu_529_p1;
  wire [7:0]zext_ln16_22_fu_543_p1;
  wire [7:0]zext_ln16_24_fu_561_p1;
  wire [7:0]zext_ln16_26_fu_575_p1;
  wire [7:0]zext_ln16_28_fu_589_p1;
  wire [7:0]zext_ln16_2_fu_383_p1;
  wire [7:0]zext_ln16_30_fu_607_p1;
  wire [7:0]zext_ln16_4_fu_397_p1;
  wire [7:0]zext_ln16_6_fu_415_p1;
  wire [7:0]zext_ln16_8_fu_429_p1;
  wire [7:0]zext_ln16_fu_369_p1;
  wire [3:0]NLW_m_reg_reg_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__0_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__0_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__1_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__1_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__2_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__2_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__3_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__3_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__4_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__4_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__5_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__5_O_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_i_1__6_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__6_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__0_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__0_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__1_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__1_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__2_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__2_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__3_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__3_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__4_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__4_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__5_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__5_O_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__6_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_control_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[2]),
        .I1(ap_start),
        .I2(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\ap_CS_fsm_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_36_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_36_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4F44)) 
    int_ap_ready_i_1
       (.I0(p_36_in[7]),
        .I1(Q[2]),
        .I2(int_task_ap_done_i_2_n_0),
        .I3(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_36_in[7]),
        .I1(Q[2]),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(s_axi_control_WSTRB),
        .I4(p_36_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_36_in[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(int_gie_i_2_n_0),
        .I4(int_gie_i_3_n_0),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[8] ),
        .O(int_gie_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    int_gie_i_3
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[7] ),
        .I4(\waddr_reg_n_0_[6] ),
        .O(int_gie_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(int_gie_i_2_n_0),
        .I3(\waddr_reg_n_0_[7] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(\waddr_reg_n_0_[4] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(Q[2]),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_WSTRB),
        .I1(int_gie_i_3_n_0),
        .I2(int_gie_i_2_n_0),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(Q[2]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2F20FFFF2F202F20)) 
    int_task_ap_done_i_1
       (.I0(ap_idle),
        .I1(p_36_in[2]),
        .I2(auto_restart_status_reg_n_0),
        .I3(Q[2]),
        .I4(int_task_ap_done_i_2_n_0),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    int_task_ap_done_i_2
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(int_y_add_ap_vld_i_2_n_0),
        .O(int_task_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[0]),
        .O(int_x_00[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[1]),
        .O(int_x_00[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[2]),
        .O(int_x_00[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[3]),
        .O(int_x_00[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[4]),
        .O(int_x_00[4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[5]),
        .O(int_x_00[5]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[6]),
        .O(int_x_00[6]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \int_x_0[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[7] ),
        .I3(\int_x_0[7]_i_3_n_0 ),
        .I4(\waddr_reg_n_0_[6] ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_x_0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_0[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_0[7]),
        .O(int_x_00[7]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \int_x_0[7]_i_3 
       (.I0(\waddr_reg_n_0_[8] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_0_[1] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_x_0[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[0]),
        .Q(x_0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[1]),
        .Q(x_0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[2]),
        .Q(x_0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[3]),
        .Q(x_0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[4]),
        .Q(x_0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[5]),
        .Q(x_0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[6]),
        .Q(x_0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_0_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_0[7]_i_1_n_0 ),
        .D(int_x_00[7]),
        .Q(x_0[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[0]),
        .O(int_x_100[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[1]),
        .O(int_x_100[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[2]),
        .O(int_x_100[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[3]),
        .O(int_x_100[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[4]),
        .O(int_x_100[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[5]),
        .O(int_x_100[5]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[6]),
        .O(int_x_100[6]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \int_x_10[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\int_x_10[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_x_10[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_10[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_10[7]),
        .O(int_x_100[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \int_x_10[7]_i_3 
       (.I0(\waddr_reg_n_0_[7] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(int_gie_i_2_n_0),
        .O(\int_x_10[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[0]),
        .Q(x_10[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[1]),
        .Q(x_10[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[2]),
        .Q(x_10[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[3]),
        .Q(x_10[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[4]),
        .Q(x_10[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[5]),
        .Q(x_10[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[6]),
        .Q(x_10[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_10_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_10[7]_i_1_n_0 ),
        .D(int_x_100[7]),
        .Q(x_10[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[0]),
        .O(int_x_110[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[1]),
        .O(int_x_110[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[2]),
        .O(int_x_110[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[3]),
        .O(int_x_110[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[4]),
        .O(int_x_110[4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[5]),
        .O(int_x_110[5]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[6]),
        .O(int_x_110[6]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \int_x_11[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\int_x_10[7]_i_3_n_0 ),
        .I4(\waddr_reg_n_0_[5] ),
        .O(\int_x_11[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_11[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_11[7]),
        .O(int_x_110[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[0]),
        .Q(x_11[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[1]),
        .Q(x_11[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[2]),
        .Q(x_11[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[3]),
        .Q(x_11[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[4]),
        .Q(x_11[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[5]),
        .Q(x_11[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[6]),
        .Q(x_11[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_11_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_11[7]_i_1_n_0 ),
        .D(int_x_110[7]),
        .Q(x_11[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[0]),
        .O(int_x_120[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[1]),
        .O(int_x_120[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[2]),
        .O(int_x_120[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[3]),
        .O(int_x_120[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[4]),
        .O(int_x_120[4]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[5]),
        .O(int_x_120[5]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[6]),
        .O(int_x_120[6]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \int_x_12[7]_i_1 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\int_x_10[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_x_12[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_12[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_12[7]),
        .O(int_x_120[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[0]),
        .Q(x_12[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[1]),
        .Q(x_12[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[2]),
        .Q(x_12[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[3]),
        .Q(x_12[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[4]),
        .Q(x_12[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[5]),
        .Q(x_12[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[6]),
        .Q(x_12[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_12_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_12[7]_i_1_n_0 ),
        .D(int_x_120[7]),
        .Q(x_12[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[0]),
        .O(int_x_130[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[1]),
        .O(int_x_130[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[2]),
        .O(int_x_130[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[3]),
        .O(int_x_130[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[4]),
        .O(int_x_130[4]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[5]),
        .O(int_x_130[5]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[6]),
        .O(int_x_130[6]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \int_x_13[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_x_10[7]_i_3_n_0 ),
        .I4(\waddr_reg_n_0_[6] ),
        .O(\int_x_13[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_13[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_13[7]),
        .O(int_x_130[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[0]),
        .Q(x_13[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[1]),
        .Q(x_13[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[2]),
        .Q(x_13[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[3]),
        .Q(x_13[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[4]),
        .Q(x_13[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[5]),
        .Q(x_13[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[6]),
        .Q(x_13[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_13_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_13[7]_i_1_n_0 ),
        .D(int_x_130[7]),
        .Q(x_13[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[0]),
        .O(int_x_140[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[1]),
        .O(int_x_140[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[2]),
        .O(int_x_140[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[3]),
        .O(int_x_140[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[4]),
        .O(int_x_140[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[5]),
        .O(int_x_140[5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[6]),
        .O(int_x_140[6]));
  LUT3 #(
    .INIT(8'h04)) 
    \int_x_14[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_x_14[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(\int_x_14[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_14[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_14[7]),
        .O(int_x_140[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \int_x_14[7]_i_3 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[7] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(int_gie_i_2_n_0),
        .O(\int_x_14[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[0]),
        .Q(x_14[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[1]),
        .Q(x_14[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[2]),
        .Q(x_14[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[3]),
        .Q(x_14[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[4]),
        .Q(x_14[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[5]),
        .Q(x_14[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[6]),
        .Q(x_14[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_14_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_14[7]_i_1_n_0 ),
        .D(int_x_140[7]),
        .Q(x_14[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[0]),
        .O(int_x_150[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[1]),
        .O(int_x_150[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[2]),
        .O(int_x_150[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[3]),
        .O(int_x_150[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[4]),
        .O(int_x_150[4]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[5]),
        .O(int_x_150[5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[6]),
        .O(int_x_150[6]));
  LUT3 #(
    .INIT(8'h20)) 
    \int_x_15[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_x_14[7]_i_3_n_0 ),
        .O(\int_x_15[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_15[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_15[7]),
        .O(int_x_150[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[0]),
        .Q(x_15[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[1]),
        .Q(x_15[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[2]),
        .Q(x_15[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[3]),
        .Q(x_15[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[4]),
        .Q(x_15[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[5]),
        .Q(x_15[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[6]),
        .Q(x_15[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_15_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_15[7]_i_1_n_0 ),
        .D(int_x_150[7]),
        .Q(x_15[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[0]),
        .O(int_x_160[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[1]),
        .O(int_x_160[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[2]),
        .O(int_x_160[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[3]),
        .O(int_x_160[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[4]),
        .O(int_x_160[4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[5]),
        .O(int_x_160[5]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[6]),
        .O(int_x_160[6]));
  LUT3 #(
    .INIT(8'h08)) 
    \int_x_16[7]_i_1 
       (.I0(\int_x_14[7]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(\int_x_16[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_16[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_fu_369_p1[7]),
        .O(int_x_160[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[0]),
        .Q(zext_ln16_fu_369_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[1]),
        .Q(zext_ln16_fu_369_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[2]),
        .Q(zext_ln16_fu_369_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[3]),
        .Q(zext_ln16_fu_369_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[4]),
        .Q(zext_ln16_fu_369_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[5]),
        .Q(zext_ln16_fu_369_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[6]),
        .Q(zext_ln16_fu_369_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_16_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_16[7]_i_1_n_0 ),
        .D(int_x_160[7]),
        .Q(zext_ln16_fu_369_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[0]),
        .O(int_x_170[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[1]),
        .O(int_x_170[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[2]),
        .O(int_x_170[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[3]),
        .O(int_x_170[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[4]),
        .O(int_x_170[4]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[5]),
        .O(int_x_170[5]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[6]),
        .O(int_x_170[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_x_17[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\int_x_14[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .O(\int_x_17[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_17[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_2_fu_383_p1[7]),
        .O(int_x_170[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[0]),
        .Q(zext_ln16_2_fu_383_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[1]),
        .Q(zext_ln16_2_fu_383_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[2]),
        .Q(zext_ln16_2_fu_383_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[3]),
        .Q(zext_ln16_2_fu_383_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[4]),
        .Q(zext_ln16_2_fu_383_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[5]),
        .Q(zext_ln16_2_fu_383_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[6]),
        .Q(zext_ln16_2_fu_383_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_17_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_17[7]_i_1_n_0 ),
        .D(int_x_170[7]),
        .Q(zext_ln16_2_fu_383_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[0]),
        .O(int_x_180[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[1]),
        .O(int_x_180[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[2]),
        .O(int_x_180[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[3]),
        .O(int_x_180[3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[4]),
        .O(int_x_180[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[5]),
        .O(int_x_180[5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[6]),
        .O(int_x_180[6]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \int_x_18[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_x_10[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_x_18[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_18[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_4_fu_397_p1[7]),
        .O(int_x_180[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[0]),
        .Q(zext_ln16_4_fu_397_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[1]),
        .Q(zext_ln16_4_fu_397_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[2]),
        .Q(zext_ln16_4_fu_397_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[3]),
        .Q(zext_ln16_4_fu_397_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[4]),
        .Q(zext_ln16_4_fu_397_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[5]),
        .Q(zext_ln16_4_fu_397_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[6]),
        .Q(zext_ln16_4_fu_397_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_18_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_18[7]_i_1_n_0 ),
        .D(int_x_180[7]),
        .Q(zext_ln16_4_fu_397_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[0]),
        .O(int_x_190[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[1]),
        .O(int_x_190[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[2]),
        .O(int_x_190[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[3]),
        .O(int_x_190[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[4]),
        .O(int_x_190[4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[5]),
        .O(int_x_190[5]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[6]),
        .O(int_x_190[6]));
  LUT5 #(
    .INIT(32'h00002000)) 
    \int_x_19[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_x_10[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[5] ),
        .O(\int_x_19[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_19[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_6_fu_415_p1[7]),
        .O(int_x_190[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[0]),
        .Q(zext_ln16_6_fu_415_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[1]),
        .Q(zext_ln16_6_fu_415_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[2]),
        .Q(zext_ln16_6_fu_415_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[3]),
        .Q(zext_ln16_6_fu_415_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[4]),
        .Q(zext_ln16_6_fu_415_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[5]),
        .Q(zext_ln16_6_fu_415_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[6]),
        .Q(zext_ln16_6_fu_415_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_19_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_19[7]_i_1_n_0 ),
        .D(int_x_190[7]),
        .Q(zext_ln16_6_fu_415_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[0]),
        .O(int_x_10[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[1]),
        .O(int_x_10[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[2]),
        .O(int_x_10[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[3]),
        .O(int_x_10[3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[4]),
        .O(int_x_10[4]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[5]),
        .O(int_x_10[5]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[6]),
        .O(int_x_10[6]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \int_x_1[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[7] ),
        .I4(\int_x_0[7]_i_3_n_0 ),
        .I5(\waddr_reg_n_0_[6] ),
        .O(\int_x_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_1[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_1[7]),
        .O(int_x_10[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[0]),
        .Q(x_1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[1]),
        .Q(x_1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[2]),
        .Q(x_1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[3]),
        .Q(x_1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[4]),
        .Q(x_1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[5]),
        .Q(x_1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[6]),
        .Q(x_1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_1_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_1[7]_i_1_n_0 ),
        .D(int_x_10[7]),
        .Q(x_1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[0]),
        .O(int_x_200[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[1]),
        .O(int_x_200[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[2]),
        .O(int_x_200[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[3]),
        .O(int_x_200[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[4]),
        .O(int_x_200[4]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[5]),
        .O(int_x_200[5]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[6]),
        .O(int_x_200[6]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \int_x_20[7]_i_1 
       (.I0(\int_x_10[7]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_x_20[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_20[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_8_fu_429_p1[7]),
        .O(int_x_200[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[0]),
        .Q(zext_ln16_8_fu_429_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[1]),
        .Q(zext_ln16_8_fu_429_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[2]),
        .Q(zext_ln16_8_fu_429_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[3]),
        .Q(zext_ln16_8_fu_429_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[4]),
        .Q(zext_ln16_8_fu_429_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[5]),
        .Q(zext_ln16_8_fu_429_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[6]),
        .Q(zext_ln16_8_fu_429_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_20_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_20[7]_i_1_n_0 ),
        .D(int_x_200[7]),
        .Q(zext_ln16_8_fu_429_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[0]),
        .O(int_x_210[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[1]),
        .O(int_x_210[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[2]),
        .O(int_x_210[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[3]),
        .O(int_x_210[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[4]),
        .O(int_x_210[4]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[5]),
        .O(int_x_210[5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[6]),
        .O(int_x_210[6]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \int_x_21[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\int_x_10[7]_i_3_n_0 ),
        .O(\int_x_21[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_21[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_10_fu_447_p1[7]),
        .O(int_x_210[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[0]),
        .Q(zext_ln16_10_fu_447_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[1]),
        .Q(zext_ln16_10_fu_447_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[2]),
        .Q(zext_ln16_10_fu_447_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[3]),
        .Q(zext_ln16_10_fu_447_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[4]),
        .Q(zext_ln16_10_fu_447_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[5]),
        .Q(zext_ln16_10_fu_447_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[6]),
        .Q(zext_ln16_10_fu_447_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_21_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_21[7]_i_1_n_0 ),
        .D(int_x_210[7]),
        .Q(zext_ln16_10_fu_447_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[0]),
        .O(int_x_220[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[1]),
        .O(int_x_220[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[2]),
        .O(int_x_220[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[3]),
        .O(int_x_220[3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[4]),
        .O(int_x_220[4]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[5]),
        .O(int_x_220[5]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[6]),
        .O(int_x_220[6]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \int_x_22[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\int_x_10[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_x_22[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_22[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_12_fu_461_p1[7]),
        .O(int_x_220[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[0]),
        .Q(zext_ln16_12_fu_461_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[1]),
        .Q(zext_ln16_12_fu_461_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[2]),
        .Q(zext_ln16_12_fu_461_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[3]),
        .Q(zext_ln16_12_fu_461_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[4]),
        .Q(zext_ln16_12_fu_461_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[5]),
        .Q(zext_ln16_12_fu_461_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[6]),
        .Q(zext_ln16_12_fu_461_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_22_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_22[7]_i_1_n_0 ),
        .D(int_x_220[7]),
        .Q(zext_ln16_12_fu_461_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[0]),
        .O(int_x_230[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[1]),
        .O(int_x_230[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[2]),
        .O(int_x_230[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[3]),
        .O(int_x_230[3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[4]),
        .O(int_x_230[4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[5]),
        .O(int_x_230[5]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[6]),
        .O(int_x_230[6]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \int_x_23[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_x_10[7]_i_3_n_0 ),
        .I4(\waddr_reg_n_0_[6] ),
        .O(\int_x_23[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_23[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_14_fu_479_p1[7]),
        .O(int_x_230[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[0]),
        .Q(zext_ln16_14_fu_479_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[1]),
        .Q(zext_ln16_14_fu_479_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[2]),
        .Q(zext_ln16_14_fu_479_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[3]),
        .Q(zext_ln16_14_fu_479_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[4]),
        .Q(zext_ln16_14_fu_479_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[5]),
        .Q(zext_ln16_14_fu_479_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[6]),
        .Q(zext_ln16_14_fu_479_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_23_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_23[7]_i_1_n_0 ),
        .D(int_x_230[7]),
        .Q(zext_ln16_14_fu_479_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[0]),
        .O(int_x_240[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[1]),
        .O(int_x_240[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[2]),
        .O(int_x_240[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[3]),
        .O(int_x_240[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[4]),
        .O(int_x_240[4]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[5]),
        .O(int_x_240[5]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[6]),
        .O(int_x_240[6]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \int_x_24[7]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\int_x_10[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[3] ),
        .O(\int_x_24[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_24[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_16_fu_497_p1[7]),
        .O(int_x_240[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[0]),
        .Q(zext_ln16_16_fu_497_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[1]),
        .Q(zext_ln16_16_fu_497_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[2]),
        .Q(zext_ln16_16_fu_497_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[3]),
        .Q(zext_ln16_16_fu_497_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[4]),
        .Q(zext_ln16_16_fu_497_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[5]),
        .Q(zext_ln16_16_fu_497_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[6]),
        .Q(zext_ln16_16_fu_497_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_24_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_24[7]_i_1_n_0 ),
        .D(int_x_240[7]),
        .Q(zext_ln16_16_fu_497_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[0]),
        .O(int_x_250[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[1]),
        .O(int_x_250[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[2]),
        .O(int_x_250[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[3]),
        .O(int_x_250[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[4]),
        .O(int_x_250[4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[5]),
        .O(int_x_250[5]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[6]),
        .O(int_x_250[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_x_25[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\int_x_10[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(\int_x_25[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_25[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_18_fu_511_p1[7]),
        .O(int_x_250[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[0]),
        .Q(zext_ln16_18_fu_511_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[1]),
        .Q(zext_ln16_18_fu_511_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[2]),
        .Q(zext_ln16_18_fu_511_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[3]),
        .Q(zext_ln16_18_fu_511_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[4]),
        .Q(zext_ln16_18_fu_511_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[5]),
        .Q(zext_ln16_18_fu_511_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[6]),
        .Q(zext_ln16_18_fu_511_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_25_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_25[7]_i_1_n_0 ),
        .D(int_x_250[7]),
        .Q(zext_ln16_18_fu_511_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[0]),
        .O(int_x_260[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[1]),
        .O(int_x_260[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[2]),
        .O(int_x_260[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[3]),
        .O(int_x_260[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[4]),
        .O(int_x_260[4]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[5]),
        .O(int_x_260[5]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[6]),
        .O(int_x_260[6]));
  LUT3 #(
    .INIT(8'h04)) 
    \int_x_26[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_x_26[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(\int_x_26[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_26[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_20_fu_529_p1[7]),
        .O(int_x_260[7]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \int_x_26[7]_i_3 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[8] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[7] ),
        .I4(\int_x_26[7]_i_4_n_0 ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\int_x_26[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \int_x_26[7]_i_4 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_0_[1] ),
        .O(\int_x_26[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[0]),
        .Q(zext_ln16_20_fu_529_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[1]),
        .Q(zext_ln16_20_fu_529_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[2]),
        .Q(zext_ln16_20_fu_529_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[3]),
        .Q(zext_ln16_20_fu_529_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[4]),
        .Q(zext_ln16_20_fu_529_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[5]),
        .Q(zext_ln16_20_fu_529_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[6]),
        .Q(zext_ln16_20_fu_529_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_26_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_26[7]_i_1_n_0 ),
        .D(int_x_260[7]),
        .Q(zext_ln16_20_fu_529_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[0]),
        .O(int_x_270[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[1]),
        .O(int_x_270[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[2]),
        .O(int_x_270[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[3]),
        .O(int_x_270[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[4]),
        .O(int_x_270[4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[5]),
        .O(int_x_270[5]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[6]),
        .O(int_x_270[6]));
  LUT3 #(
    .INIT(8'h20)) 
    \int_x_27[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_x_26[7]_i_3_n_0 ),
        .O(\int_x_27[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_27[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_22_fu_543_p1[7]),
        .O(int_x_270[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[0]),
        .Q(zext_ln16_22_fu_543_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[1]),
        .Q(zext_ln16_22_fu_543_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[2]),
        .Q(zext_ln16_22_fu_543_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[3]),
        .Q(zext_ln16_22_fu_543_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[4]),
        .Q(zext_ln16_22_fu_543_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[5]),
        .Q(zext_ln16_22_fu_543_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[6]),
        .Q(zext_ln16_22_fu_543_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_27_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_27[7]_i_1_n_0 ),
        .D(int_x_270[7]),
        .Q(zext_ln16_22_fu_543_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[0]),
        .O(int_x_280[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[1]),
        .O(int_x_280[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[2]),
        .O(int_x_280[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[3]),
        .O(int_x_280[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[4]),
        .O(int_x_280[4]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[5]),
        .O(int_x_280[5]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[6]),
        .O(int_x_280[6]));
  LUT3 #(
    .INIT(8'h08)) 
    \int_x_28[7]_i_1 
       (.I0(\int_x_26[7]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(\int_x_28[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_28[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_24_fu_561_p1[7]),
        .O(int_x_280[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[0]),
        .Q(zext_ln16_24_fu_561_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[1]),
        .Q(zext_ln16_24_fu_561_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[2]),
        .Q(zext_ln16_24_fu_561_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[3]),
        .Q(zext_ln16_24_fu_561_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[4]),
        .Q(zext_ln16_24_fu_561_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[5]),
        .Q(zext_ln16_24_fu_561_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[6]),
        .Q(zext_ln16_24_fu_561_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_28_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_28[7]_i_1_n_0 ),
        .D(int_x_280[7]),
        .Q(zext_ln16_24_fu_561_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[0]),
        .O(int_x_290[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[1]),
        .O(int_x_290[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[2]),
        .O(int_x_290[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[3]),
        .O(int_x_290[3]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[4]),
        .O(int_x_290[4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[5]),
        .O(int_x_290[5]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[6]),
        .O(int_x_290[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_x_29[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_x_26[7]_i_3_n_0 ),
        .O(\int_x_29[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_29[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_26_fu_575_p1[7]),
        .O(int_x_290[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[0]),
        .Q(zext_ln16_26_fu_575_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[1]),
        .Q(zext_ln16_26_fu_575_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[2]),
        .Q(zext_ln16_26_fu_575_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[3]),
        .Q(zext_ln16_26_fu_575_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[4]),
        .Q(zext_ln16_26_fu_575_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[5]),
        .Q(zext_ln16_26_fu_575_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[6]),
        .Q(zext_ln16_26_fu_575_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_29_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_29[7]_i_1_n_0 ),
        .D(int_x_290[7]),
        .Q(zext_ln16_26_fu_575_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[0]),
        .O(int_x_20[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[1]),
        .O(int_x_20[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[2]),
        .O(int_x_20[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[3]),
        .O(int_x_20[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[4]),
        .O(int_x_20[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[5]),
        .O(int_x_20[5]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[6]),
        .O(int_x_20[6]));
  LUT4 #(
    .INIT(16'h0004)) 
    \int_x_2[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_x_2[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\int_x_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_2[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_2[7]),
        .O(int_x_20[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \int_x_2[7]_i_3 
       (.I0(\waddr_reg_n_0_[6] ),
        .I1(\waddr_reg_n_0_[7] ),
        .I2(int_gie_i_2_n_0),
        .I3(\waddr_reg_n_0_[2] ),
        .O(\int_x_2[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[0]),
        .Q(x_2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[1]),
        .Q(x_2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[2]),
        .Q(x_2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[3]),
        .Q(x_2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[4]),
        .Q(x_2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[5]),
        .Q(x_2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[6]),
        .Q(x_2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_2_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_2[7]_i_1_n_0 ),
        .D(int_x_20[7]),
        .Q(x_2[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[0]),
        .O(int_x_300[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[1]),
        .O(int_x_300[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[2]),
        .O(int_x_300[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[3]),
        .O(int_x_300[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[4]),
        .O(int_x_300[4]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[5]),
        .O(int_x_300[5]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[6]),
        .O(int_x_300[6]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_x_30[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\int_x_30[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\int_x_30[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_30[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_28_fu_589_p1[7]),
        .O(int_x_300[7]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \int_x_30[7]_i_3 
       (.I0(\int_x_26[7]_i_4_n_0 ),
        .I1(\waddr_reg_n_0_[7] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[8] ),
        .I4(\waddr_reg_n_0_[6] ),
        .O(\int_x_30[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[0]),
        .Q(zext_ln16_28_fu_589_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[1]),
        .Q(zext_ln16_28_fu_589_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[2]),
        .Q(zext_ln16_28_fu_589_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[3]),
        .Q(zext_ln16_28_fu_589_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[4]),
        .Q(zext_ln16_28_fu_589_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[5]),
        .Q(zext_ln16_28_fu_589_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[6]),
        .Q(zext_ln16_28_fu_589_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_30_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_30[7]_i_1_n_0 ),
        .D(int_x_300[7]),
        .Q(zext_ln16_28_fu_589_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[0]),
        .O(int_x_310[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[1]),
        .O(int_x_310[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[2]),
        .O(int_x_310[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[3]),
        .O(int_x_310[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[4]),
        .O(int_x_310[4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[5]),
        .O(int_x_310[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[6]),
        .O(int_x_310[6]));
  LUT4 #(
    .INIT(16'h0080)) 
    \int_x_31[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\int_x_30[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_x_31[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_31[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(zext_ln16_30_fu_607_p1[7]),
        .O(int_x_310[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[0]),
        .Q(zext_ln16_30_fu_607_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[1]),
        .Q(zext_ln16_30_fu_607_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[2]),
        .Q(zext_ln16_30_fu_607_p1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[3]),
        .Q(zext_ln16_30_fu_607_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[4]),
        .Q(zext_ln16_30_fu_607_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[5]),
        .Q(zext_ln16_30_fu_607_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[6]),
        .Q(zext_ln16_30_fu_607_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_31_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_31[7]_i_1_n_0 ),
        .D(int_x_310[7]),
        .Q(zext_ln16_30_fu_607_p1[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[0]),
        .O(int_x_30[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[1]),
        .O(int_x_30[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[2]),
        .O(int_x_30[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[3]),
        .O(int_x_30[3]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[4]),
        .O(int_x_30[4]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[5]),
        .O(int_x_30[5]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[6]),
        .O(int_x_30[6]));
  LUT4 #(
    .INIT(16'h0020)) 
    \int_x_3[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_x_2[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .O(\int_x_3[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_3[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_3[7]),
        .O(int_x_30[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[0]),
        .Q(x_3[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[1]),
        .Q(x_3[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[2]),
        .Q(x_3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[3]),
        .Q(x_3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[4]),
        .Q(x_3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[5]),
        .Q(x_3[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[6]),
        .Q(x_3[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_3_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_3[7]_i_1_n_0 ),
        .D(int_x_30[7]),
        .Q(x_3[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[0]),
        .O(int_x_40[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[1]),
        .O(int_x_40[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[2]),
        .O(int_x_40[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[3]),
        .O(int_x_40[3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[4]),
        .O(int_x_40[4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[5]),
        .O(int_x_40[5]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[6]),
        .O(int_x_40[6]));
  LUT4 #(
    .INIT(16'h0020)) 
    \int_x_4[7]_i_1 
       (.I0(\int_x_2[7]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\int_x_4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_4[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_4[7]),
        .O(int_x_40[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[0]),
        .Q(x_4[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[1]),
        .Q(x_4[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[2]),
        .Q(x_4[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[3]),
        .Q(x_4[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[4]),
        .Q(x_4[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[5]),
        .Q(x_4[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[6]),
        .Q(x_4[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_4_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_4[7]_i_1_n_0 ),
        .D(int_x_40[7]),
        .Q(x_4[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[0]),
        .O(int_x_50[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[1]),
        .O(int_x_50[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[2]),
        .O(int_x_50[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[3]),
        .O(int_x_50[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[4]),
        .O(int_x_50[4]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[5]),
        .O(int_x_50[5]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[6]),
        .O(int_x_50[6]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_x_5[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_x_2[7]_i_3_n_0 ),
        .O(\int_x_5[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_5[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_5[7]),
        .O(int_x_50[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[0]),
        .Q(x_5[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[1]),
        .Q(x_5[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[2]),
        .Q(x_5[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[3]),
        .Q(x_5[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[4]),
        .Q(x_5[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[5]),
        .Q(x_5[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[6]),
        .Q(x_5[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_5_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_5[7]_i_1_n_0 ),
        .D(int_x_50[7]),
        .Q(x_5[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[0]),
        .O(int_x_60[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[1]),
        .O(int_x_60[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[2]),
        .O(int_x_60[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[3]),
        .O(int_x_60[3]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[4]),
        .O(int_x_60[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[5]),
        .O(int_x_60[5]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[6]),
        .O(int_x_60[6]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_x_6[7]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\int_x_2[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\int_x_6[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_6[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_6[7]),
        .O(int_x_60[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[0]),
        .Q(x_6[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[1]),
        .Q(x_6[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[2]),
        .Q(x_6[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[3]),
        .Q(x_6[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[4]),
        .Q(x_6[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[5]),
        .Q(x_6[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[6]),
        .Q(x_6[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_6_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_6[7]_i_1_n_0 ),
        .D(int_x_60[7]),
        .Q(x_6[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[0]),
        .O(int_x_70[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[1]),
        .O(int_x_70[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[2]),
        .O(int_x_70[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[3]),
        .O(int_x_70[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[4]),
        .O(int_x_70[4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[5]),
        .O(int_x_70[5]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[6]),
        .O(int_x_70[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \int_x_7[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_x_2[7]_i_3_n_0 ),
        .O(\int_x_7[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_7[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_7[7]),
        .O(int_x_70[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[0]),
        .Q(x_7[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[1]),
        .Q(x_7[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[2]),
        .Q(x_7[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[3]),
        .Q(x_7[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[4]),
        .Q(x_7[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[5]),
        .Q(x_7[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[6]),
        .Q(x_7[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_7_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_7[7]_i_1_n_0 ),
        .D(int_x_70[7]),
        .Q(x_7[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[0]),
        .O(int_x_80[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[1]),
        .O(int_x_80[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[2]),
        .O(int_x_80[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[3]),
        .O(int_x_80[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[4]),
        .O(int_x_80[4]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[5]),
        .O(int_x_80[5]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[6]),
        .O(int_x_80[6]));
  LUT4 #(
    .INIT(16'h0080)) 
    \int_x_8[7]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\int_x_2[7]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(\int_x_8[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_8[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_8[7]),
        .O(int_x_80[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[0]),
        .Q(x_8[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[1]),
        .Q(x_8[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[2]),
        .Q(x_8[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[3]),
        .Q(x_8[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[4]),
        .Q(x_8[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[5]),
        .Q(x_8[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[6]),
        .Q(x_8[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_8_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_8[7]_i_1_n_0 ),
        .D(int_x_80[7]),
        .Q(x_8[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[0]),
        .O(int_x_90[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[1]),
        .O(int_x_90[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[2]),
        .O(int_x_90[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[3]),
        .O(int_x_90[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[4]),
        .O(int_x_90[4]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[5]),
        .O(int_x_90[5]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[6]),
        .O(int_x_90[6]));
  LUT4 #(
    .INIT(16'h8000)) 
    \int_x_9[7]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\int_x_2[7]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_x_9[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x_9[7]_i_2 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB),
        .I2(x_9[7]),
        .O(int_x_90[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[0] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[0]),
        .Q(x_9[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[1] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[1]),
        .Q(x_9[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[2] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[2]),
        .Q(x_9[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[3] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[3]),
        .Q(x_9[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[4] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[4]),
        .Q(x_9[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[5] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[5]),
        .Q(x_9[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[6] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[6]),
        .Q(x_9[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_9_reg[7] 
       (.C(ap_clk),
        .CE(\int_x_9[7]_i_1_n_0 ),
        .D(int_x_90[7]),
        .Q(x_9[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFFFFAAAAAAAA)) 
    int_y_add_ap_vld_i_1
       (.I0(Q[2]),
        .I1(int_y_add_ap_vld_i_2_n_0),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(int_y_add_ap_vld__0),
        .O(int_y_add_ap_vld_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    int_y_add_ap_vld_i_2
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(ar_hs),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(int_y_add_ap_vld_i_3_n_0),
        .O(int_y_add_ap_vld_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_y_add_ap_vld_i_3
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[6]),
        .O(int_y_add_ap_vld_i_3_n_0));
  FDRE int_y_add_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_y_add_ap_vld_i_1_n_0),
        .Q(int_y_add_ap_vld__0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[0] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [0]),
        .Q(\int_y_add_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[10] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [10]),
        .Q(\int_y_add_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[11] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [11]),
        .Q(\int_y_add_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[12] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [12]),
        .Q(\int_y_add_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[13] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [13]),
        .Q(\int_y_add_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[14] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [14]),
        .Q(\int_y_add_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[15] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [15]),
        .Q(\int_y_add_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[16] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [16]),
        .Q(\int_y_add_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[17] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [17]),
        .Q(\int_y_add_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[18] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [18]),
        .Q(\int_y_add_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[19] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [19]),
        .Q(\int_y_add_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[1] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [1]),
        .Q(\int_y_add_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[2] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [2]),
        .Q(\int_y_add_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[31] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [20]),
        .Q(\int_y_add_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[3] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [3]),
        .Q(\int_y_add_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[4] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [4]),
        .Q(\int_y_add_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[5] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [5]),
        .Q(\int_y_add_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[6] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [6]),
        .Q(\int_y_add_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[7] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [7]),
        .Q(\int_y_add_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[8] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [8]),
        .Q(\int_y_add_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_add_reg[9] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_add_reg[31]_0 [9]),
        .Q(\int_y_add_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFFFFAAAAAAAA)) 
    int_y_sqrt_ap_vld_i_1
       (.I0(Q[2]),
        .I1(int_y_add_ap_vld_i_2_n_0),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(int_y_sqrt_ap_vld__0),
        .O(int_y_sqrt_ap_vld_i_1_n_0));
  FDRE int_y_sqrt_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_y_sqrt_ap_vld_i_1_n_0),
        .Q(int_y_sqrt_ap_vld__0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[0] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [0]),
        .Q(\int_y_sqrt_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[10] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [10]),
        .Q(\int_y_sqrt_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[11] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [11]),
        .Q(\int_y_sqrt_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[12] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [12]),
        .Q(\int_y_sqrt_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[13] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [13]),
        .Q(\int_y_sqrt_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[14] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [14]),
        .Q(\int_y_sqrt_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[15] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [15]),
        .Q(\int_y_sqrt_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[1] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [1]),
        .Q(\int_y_sqrt_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[2] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [2]),
        .Q(\int_y_sqrt_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[3] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [3]),
        .Q(\int_y_sqrt_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[4] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [4]),
        .Q(\int_y_sqrt_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[5] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [5]),
        .Q(\int_y_sqrt_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[6] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [6]),
        .Q(\int_y_sqrt_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[7] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [7]),
        .Q(\int_y_sqrt_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[8] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [8]),
        .Q(\int_y_sqrt_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_sqrt_reg[9] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(\int_y_sqrt_reg[15]_0 [9]),
        .Q(\int_y_sqrt_reg_n_0_[9] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  CARRY4 m_reg_reg_i_1
       (.CI(m_reg_reg_i_2_n_0),
        .CO(NLW_m_reg_reg_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1_O_UNCONNECTED[3:1],A[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10
       (.I0(zext_ln16_28_fu_589_p1[1]),
        .I1(x_14[1]),
        .O(m_reg_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__0
       (.I0(zext_ln16_22_fu_543_p1[1]),
        .I1(x_11[1]),
        .O(m_reg_reg_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__1
       (.I0(zext_ln16_14_fu_479_p1[1]),
        .I1(x_7[1]),
        .O(m_reg_reg_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__2
       (.I0(zext_ln16_18_fu_511_p1[1]),
        .I1(x_9[1]),
        .O(m_reg_reg_i_10__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__3
       (.I0(zext_ln16_4_fu_397_p1[1]),
        .I1(x_2[1]),
        .O(m_reg_reg_i_10__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__4
       (.I0(zext_ln16_8_fu_429_p1[1]),
        .I1(x_4[1]),
        .O(m_reg_reg_i_10__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__5
       (.I0(zext_ln16_12_fu_461_p1[1]),
        .I1(x_6[1]),
        .O(m_reg_reg_i_10__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__6
       (.I0(zext_ln16_30_fu_607_p1[1]),
        .I1(x_15[1]),
        .O(m_reg_reg_i_10__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11
       (.I0(zext_ln16_28_fu_589_p1[0]),
        .I1(x_14[0]),
        .O(m_reg_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__0
       (.I0(zext_ln16_22_fu_543_p1[0]),
        .I1(x_11[0]),
        .O(m_reg_reg_i_11__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__1
       (.I0(zext_ln16_14_fu_479_p1[0]),
        .I1(x_7[0]),
        .O(m_reg_reg_i_11__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__2
       (.I0(zext_ln16_18_fu_511_p1[0]),
        .I1(x_9[0]),
        .O(m_reg_reg_i_11__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__3
       (.I0(zext_ln16_4_fu_397_p1[0]),
        .I1(x_2[0]),
        .O(m_reg_reg_i_11__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__4
       (.I0(zext_ln16_8_fu_429_p1[0]),
        .I1(x_4[0]),
        .O(m_reg_reg_i_11__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__5
       (.I0(zext_ln16_12_fu_461_p1[0]),
        .I1(x_6[0]),
        .O(m_reg_reg_i_11__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__6
       (.I0(zext_ln16_30_fu_607_p1[0]),
        .I1(x_15[0]),
        .O(m_reg_reg_i_11__6_n_0));
  CARRY4 m_reg_reg_i_1__0
       (.CI(m_reg_reg_i_2__0_n_0),
        .CO(NLW_m_reg_reg_i_1__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__0_O_UNCONNECTED[3:1],\int_x_27_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_1__1
       (.CI(m_reg_reg_i_2__1_n_0),
        .CO(NLW_m_reg_reg_i_1__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__1_O_UNCONNECTED[3:1],\int_x_23_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_1__2
       (.CI(m_reg_reg_i_2__2_n_0),
        .CO(NLW_m_reg_reg_i_1__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__2_O_UNCONNECTED[3:1],\int_x_25_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_1__3
       (.CI(m_reg_reg_i_2__3_n_0),
        .CO(NLW_m_reg_reg_i_1__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__3_O_UNCONNECTED[3:1],\int_x_18_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_1__4
       (.CI(m_reg_reg_i_2__4_n_0),
        .CO(NLW_m_reg_reg_i_1__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__4_O_UNCONNECTED[3:1],\int_x_20_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_1__5
       (.CI(m_reg_reg_i_2__5_n_0),
        .CO(NLW_m_reg_reg_i_1__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__5_O_UNCONNECTED[3:1],\int_x_22_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_1__6
       (.CI(m_reg_reg_i_2__6_n_0),
        .CO(NLW_m_reg_reg_i_1__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__6_O_UNCONNECTED[3:1],\int_x_31_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_2
       (.CI(m_reg_reg_i_3_n_0),
        .CO({m_reg_reg_i_2_n_0,m_reg_reg_i_2_n_1,m_reg_reg_i_2_n_2,m_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_28_fu_589_p1[7:4]),
        .O(A[7:4]),
        .S({m_reg_reg_i_4_n_0,m_reg_reg_i_5_n_0,m_reg_reg_i_6_n_0,m_reg_reg_i_7_n_0}));
  CARRY4 m_reg_reg_i_2__0
       (.CI(m_reg_reg_i_3__0_n_0),
        .CO({m_reg_reg_i_2__0_n_0,m_reg_reg_i_2__0_n_1,m_reg_reg_i_2__0_n_2,m_reg_reg_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_22_fu_543_p1[7:4]),
        .O(\int_x_27_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__0_n_0,m_reg_reg_i_5__0_n_0,m_reg_reg_i_6__0_n_0,m_reg_reg_i_7__0_n_0}));
  CARRY4 m_reg_reg_i_2__1
       (.CI(m_reg_reg_i_3__1_n_0),
        .CO({m_reg_reg_i_2__1_n_0,m_reg_reg_i_2__1_n_1,m_reg_reg_i_2__1_n_2,m_reg_reg_i_2__1_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_14_fu_479_p1[7:4]),
        .O(\int_x_23_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__1_n_0,m_reg_reg_i_5__1_n_0,m_reg_reg_i_6__1_n_0,m_reg_reg_i_7__1_n_0}));
  CARRY4 m_reg_reg_i_2__2
       (.CI(m_reg_reg_i_3__2_n_0),
        .CO({m_reg_reg_i_2__2_n_0,m_reg_reg_i_2__2_n_1,m_reg_reg_i_2__2_n_2,m_reg_reg_i_2__2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_18_fu_511_p1[7:4]),
        .O(\int_x_25_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__2_n_0,m_reg_reg_i_5__2_n_0,m_reg_reg_i_6__2_n_0,m_reg_reg_i_7__2_n_0}));
  CARRY4 m_reg_reg_i_2__3
       (.CI(m_reg_reg_i_3__3_n_0),
        .CO({m_reg_reg_i_2__3_n_0,m_reg_reg_i_2__3_n_1,m_reg_reg_i_2__3_n_2,m_reg_reg_i_2__3_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_4_fu_397_p1[7:4]),
        .O(\int_x_18_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__3_n_0,m_reg_reg_i_5__3_n_0,m_reg_reg_i_6__3_n_0,m_reg_reg_i_7__3_n_0}));
  CARRY4 m_reg_reg_i_2__4
       (.CI(m_reg_reg_i_3__4_n_0),
        .CO({m_reg_reg_i_2__4_n_0,m_reg_reg_i_2__4_n_1,m_reg_reg_i_2__4_n_2,m_reg_reg_i_2__4_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_8_fu_429_p1[7:4]),
        .O(\int_x_20_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__4_n_0,m_reg_reg_i_5__4_n_0,m_reg_reg_i_6__4_n_0,m_reg_reg_i_7__4_n_0}));
  CARRY4 m_reg_reg_i_2__5
       (.CI(m_reg_reg_i_3__5_n_0),
        .CO({m_reg_reg_i_2__5_n_0,m_reg_reg_i_2__5_n_1,m_reg_reg_i_2__5_n_2,m_reg_reg_i_2__5_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_12_fu_461_p1[7:4]),
        .O(\int_x_22_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__5_n_0,m_reg_reg_i_5__5_n_0,m_reg_reg_i_6__5_n_0,m_reg_reg_i_7__5_n_0}));
  CARRY4 m_reg_reg_i_2__6
       (.CI(m_reg_reg_i_3__6_n_0),
        .CO({m_reg_reg_i_2__6_n_0,m_reg_reg_i_2__6_n_1,m_reg_reg_i_2__6_n_2,m_reg_reg_i_2__6_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_30_fu_607_p1[7:4]),
        .O(\int_x_31_reg[7]_0 [7:4]),
        .S({m_reg_reg_i_4__6_n_0,m_reg_reg_i_5__6_n_0,m_reg_reg_i_6__6_n_0,m_reg_reg_i_7__6_n_0}));
  CARRY4 m_reg_reg_i_3
       (.CI(1'b0),
        .CO({m_reg_reg_i_3_n_0,m_reg_reg_i_3_n_1,m_reg_reg_i_3_n_2,m_reg_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_28_fu_589_p1[3:0]),
        .O(A[3:0]),
        .S({m_reg_reg_i_8_n_0,m_reg_reg_i_9_n_0,m_reg_reg_i_10_n_0,m_reg_reg_i_11_n_0}));
  CARRY4 m_reg_reg_i_3__0
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__0_n_0,m_reg_reg_i_3__0_n_1,m_reg_reg_i_3__0_n_2,m_reg_reg_i_3__0_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_22_fu_543_p1[3:0]),
        .O(\int_x_27_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__0_n_0,m_reg_reg_i_9__0_n_0,m_reg_reg_i_10__0_n_0,m_reg_reg_i_11__0_n_0}));
  CARRY4 m_reg_reg_i_3__1
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__1_n_0,m_reg_reg_i_3__1_n_1,m_reg_reg_i_3__1_n_2,m_reg_reg_i_3__1_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_14_fu_479_p1[3:0]),
        .O(\int_x_23_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__1_n_0,m_reg_reg_i_9__1_n_0,m_reg_reg_i_10__1_n_0,m_reg_reg_i_11__1_n_0}));
  CARRY4 m_reg_reg_i_3__2
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__2_n_0,m_reg_reg_i_3__2_n_1,m_reg_reg_i_3__2_n_2,m_reg_reg_i_3__2_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_18_fu_511_p1[3:0]),
        .O(\int_x_25_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__2_n_0,m_reg_reg_i_9__2_n_0,m_reg_reg_i_10__2_n_0,m_reg_reg_i_11__2_n_0}));
  CARRY4 m_reg_reg_i_3__3
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__3_n_0,m_reg_reg_i_3__3_n_1,m_reg_reg_i_3__3_n_2,m_reg_reg_i_3__3_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_4_fu_397_p1[3:0]),
        .O(\int_x_18_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__3_n_0,m_reg_reg_i_9__3_n_0,m_reg_reg_i_10__3_n_0,m_reg_reg_i_11__3_n_0}));
  CARRY4 m_reg_reg_i_3__4
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__4_n_0,m_reg_reg_i_3__4_n_1,m_reg_reg_i_3__4_n_2,m_reg_reg_i_3__4_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_8_fu_429_p1[3:0]),
        .O(\int_x_20_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__4_n_0,m_reg_reg_i_9__4_n_0,m_reg_reg_i_10__4_n_0,m_reg_reg_i_11__4_n_0}));
  CARRY4 m_reg_reg_i_3__5
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__5_n_0,m_reg_reg_i_3__5_n_1,m_reg_reg_i_3__5_n_2,m_reg_reg_i_3__5_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_12_fu_461_p1[3:0]),
        .O(\int_x_22_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__5_n_0,m_reg_reg_i_9__5_n_0,m_reg_reg_i_10__5_n_0,m_reg_reg_i_11__5_n_0}));
  CARRY4 m_reg_reg_i_3__6
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__6_n_0,m_reg_reg_i_3__6_n_1,m_reg_reg_i_3__6_n_2,m_reg_reg_i_3__6_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_30_fu_607_p1[3:0]),
        .O(\int_x_31_reg[7]_0 [3:0]),
        .S({m_reg_reg_i_8__6_n_0,m_reg_reg_i_9__6_n_0,m_reg_reg_i_10__6_n_0,m_reg_reg_i_11__6_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4
       (.I0(zext_ln16_28_fu_589_p1[7]),
        .I1(x_14[7]),
        .O(m_reg_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__0
       (.I0(zext_ln16_22_fu_543_p1[7]),
        .I1(x_11[7]),
        .O(m_reg_reg_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__1
       (.I0(zext_ln16_14_fu_479_p1[7]),
        .I1(x_7[7]),
        .O(m_reg_reg_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__2
       (.I0(zext_ln16_18_fu_511_p1[7]),
        .I1(x_9[7]),
        .O(m_reg_reg_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__3
       (.I0(zext_ln16_4_fu_397_p1[7]),
        .I1(x_2[7]),
        .O(m_reg_reg_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__4
       (.I0(zext_ln16_8_fu_429_p1[7]),
        .I1(x_4[7]),
        .O(m_reg_reg_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__5
       (.I0(zext_ln16_12_fu_461_p1[7]),
        .I1(x_6[7]),
        .O(m_reg_reg_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_4__6
       (.I0(zext_ln16_30_fu_607_p1[7]),
        .I1(x_15[7]),
        .O(m_reg_reg_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5
       (.I0(zext_ln16_28_fu_589_p1[6]),
        .I1(x_14[6]),
        .O(m_reg_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__0
       (.I0(zext_ln16_22_fu_543_p1[6]),
        .I1(x_11[6]),
        .O(m_reg_reg_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__1
       (.I0(zext_ln16_14_fu_479_p1[6]),
        .I1(x_7[6]),
        .O(m_reg_reg_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__2
       (.I0(zext_ln16_18_fu_511_p1[6]),
        .I1(x_9[6]),
        .O(m_reg_reg_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__3
       (.I0(zext_ln16_4_fu_397_p1[6]),
        .I1(x_2[6]),
        .O(m_reg_reg_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__4
       (.I0(zext_ln16_8_fu_429_p1[6]),
        .I1(x_4[6]),
        .O(m_reg_reg_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__5
       (.I0(zext_ln16_12_fu_461_p1[6]),
        .I1(x_6[6]),
        .O(m_reg_reg_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_5__6
       (.I0(zext_ln16_30_fu_607_p1[6]),
        .I1(x_15[6]),
        .O(m_reg_reg_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6
       (.I0(zext_ln16_28_fu_589_p1[5]),
        .I1(x_14[5]),
        .O(m_reg_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__0
       (.I0(zext_ln16_22_fu_543_p1[5]),
        .I1(x_11[5]),
        .O(m_reg_reg_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__1
       (.I0(zext_ln16_14_fu_479_p1[5]),
        .I1(x_7[5]),
        .O(m_reg_reg_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__2
       (.I0(zext_ln16_18_fu_511_p1[5]),
        .I1(x_9[5]),
        .O(m_reg_reg_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__3
       (.I0(zext_ln16_4_fu_397_p1[5]),
        .I1(x_2[5]),
        .O(m_reg_reg_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__4
       (.I0(zext_ln16_8_fu_429_p1[5]),
        .I1(x_4[5]),
        .O(m_reg_reg_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__5
       (.I0(zext_ln16_12_fu_461_p1[5]),
        .I1(x_6[5]),
        .O(m_reg_reg_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_6__6
       (.I0(zext_ln16_30_fu_607_p1[5]),
        .I1(x_15[5]),
        .O(m_reg_reg_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7
       (.I0(zext_ln16_28_fu_589_p1[4]),
        .I1(x_14[4]),
        .O(m_reg_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__0
       (.I0(zext_ln16_22_fu_543_p1[4]),
        .I1(x_11[4]),
        .O(m_reg_reg_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__1
       (.I0(zext_ln16_14_fu_479_p1[4]),
        .I1(x_7[4]),
        .O(m_reg_reg_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__2
       (.I0(zext_ln16_18_fu_511_p1[4]),
        .I1(x_9[4]),
        .O(m_reg_reg_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__3
       (.I0(zext_ln16_4_fu_397_p1[4]),
        .I1(x_2[4]),
        .O(m_reg_reg_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__4
       (.I0(zext_ln16_8_fu_429_p1[4]),
        .I1(x_4[4]),
        .O(m_reg_reg_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__5
       (.I0(zext_ln16_12_fu_461_p1[4]),
        .I1(x_6[4]),
        .O(m_reg_reg_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_7__6
       (.I0(zext_ln16_30_fu_607_p1[4]),
        .I1(x_15[4]),
        .O(m_reg_reg_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8
       (.I0(zext_ln16_28_fu_589_p1[3]),
        .I1(x_14[3]),
        .O(m_reg_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__0
       (.I0(zext_ln16_22_fu_543_p1[3]),
        .I1(x_11[3]),
        .O(m_reg_reg_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__1
       (.I0(zext_ln16_14_fu_479_p1[3]),
        .I1(x_7[3]),
        .O(m_reg_reg_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__2
       (.I0(zext_ln16_18_fu_511_p1[3]),
        .I1(x_9[3]),
        .O(m_reg_reg_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__3
       (.I0(zext_ln16_4_fu_397_p1[3]),
        .I1(x_2[3]),
        .O(m_reg_reg_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__4
       (.I0(zext_ln16_8_fu_429_p1[3]),
        .I1(x_4[3]),
        .O(m_reg_reg_i_8__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__5
       (.I0(zext_ln16_12_fu_461_p1[3]),
        .I1(x_6[3]),
        .O(m_reg_reg_i_8__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__6
       (.I0(zext_ln16_30_fu_607_p1[3]),
        .I1(x_15[3]),
        .O(m_reg_reg_i_8__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9
       (.I0(zext_ln16_28_fu_589_p1[2]),
        .I1(x_14[2]),
        .O(m_reg_reg_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__0
       (.I0(zext_ln16_22_fu_543_p1[2]),
        .I1(x_11[2]),
        .O(m_reg_reg_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__1
       (.I0(zext_ln16_14_fu_479_p1[2]),
        .I1(x_7[2]),
        .O(m_reg_reg_i_9__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__2
       (.I0(zext_ln16_18_fu_511_p1[2]),
        .I1(x_9[2]),
        .O(m_reg_reg_i_9__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__3
       (.I0(zext_ln16_4_fu_397_p1[2]),
        .I1(x_2[2]),
        .O(m_reg_reg_i_9__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__4
       (.I0(zext_ln16_8_fu_429_p1[2]),
        .I1(x_4[2]),
        .O(m_reg_reg_i_9__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__5
       (.I0(zext_ln16_12_fu_461_p1[2]),
        .I1(x_6[2]),
        .O(m_reg_reg_i_9__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__6
       (.I0(zext_ln16_30_fu_607_p1[2]),
        .I1(x_15[2]),
        .O(m_reg_reg_i_9__6_n_0));
  CARRY4 p_reg_reg_i_1
       (.CI(p_reg_reg_i_2_n_0),
        .CO(NLW_p_reg_reg_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1_O_UNCONNECTED[3:1],\int_x_29_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10
       (.I0(zext_ln16_26_fu_575_p1[1]),
        .I1(x_13[1]),
        .O(p_reg_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__0
       (.I0(zext_ln16_24_fu_561_p1[1]),
        .I1(x_12[1]),
        .O(p_reg_reg_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__1
       (.I0(zext_ln16_16_fu_497_p1[1]),
        .I1(x_8[1]),
        .O(p_reg_reg_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__2
       (.I0(zext_ln16_20_fu_529_p1[1]),
        .I1(x_10[1]),
        .O(p_reg_reg_i_10__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__3
       (.I0(zext_ln16_2_fu_383_p1[1]),
        .I1(x_1[1]),
        .O(p_reg_reg_i_10__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__4
       (.I0(zext_ln16_fu_369_p1[1]),
        .I1(x_0[1]),
        .O(p_reg_reg_i_10__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__5
       (.I0(zext_ln16_6_fu_415_p1[1]),
        .I1(x_3[1]),
        .O(p_reg_reg_i_10__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__6
       (.I0(zext_ln16_10_fu_447_p1[1]),
        .I1(x_5[1]),
        .O(p_reg_reg_i_10__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11
       (.I0(zext_ln16_26_fu_575_p1[0]),
        .I1(x_13[0]),
        .O(p_reg_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__0
       (.I0(zext_ln16_24_fu_561_p1[0]),
        .I1(x_12[0]),
        .O(p_reg_reg_i_11__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__1
       (.I0(zext_ln16_16_fu_497_p1[0]),
        .I1(x_8[0]),
        .O(p_reg_reg_i_11__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__2
       (.I0(zext_ln16_20_fu_529_p1[0]),
        .I1(x_10[0]),
        .O(p_reg_reg_i_11__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__3
       (.I0(zext_ln16_2_fu_383_p1[0]),
        .I1(x_1[0]),
        .O(p_reg_reg_i_11__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__4
       (.I0(zext_ln16_fu_369_p1[0]),
        .I1(x_0[0]),
        .O(p_reg_reg_i_11__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__5
       (.I0(zext_ln16_6_fu_415_p1[0]),
        .I1(x_3[0]),
        .O(p_reg_reg_i_11__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__6
       (.I0(zext_ln16_10_fu_447_p1[0]),
        .I1(x_5[0]),
        .O(p_reg_reg_i_11__6_n_0));
  CARRY4 p_reg_reg_i_1__0
       (.CI(p_reg_reg_i_2__0_n_0),
        .CO(NLW_p_reg_reg_i_1__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__0_O_UNCONNECTED[3:1],\int_x_28_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_1__1
       (.CI(p_reg_reg_i_2__1_n_0),
        .CO(NLW_p_reg_reg_i_1__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__1_O_UNCONNECTED[3:1],\int_x_24_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_1__2
       (.CI(p_reg_reg_i_2__2_n_0),
        .CO(NLW_p_reg_reg_i_1__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__2_O_UNCONNECTED[3:1],\int_x_26_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_1__3
       (.CI(p_reg_reg_i_2__3_n_0),
        .CO(NLW_p_reg_reg_i_1__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__3_O_UNCONNECTED[3:1],\int_x_17_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_1__4
       (.CI(p_reg_reg_i_2__4_n_0),
        .CO(NLW_p_reg_reg_i_1__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__4_O_UNCONNECTED[3:1],\int_x_16_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_1__5
       (.CI(p_reg_reg_i_2__5_n_0),
        .CO(NLW_p_reg_reg_i_1__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__5_O_UNCONNECTED[3:1],\int_x_19_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_1__6
       (.CI(p_reg_reg_i_2__6_n_0),
        .CO(NLW_p_reg_reg_i_1__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__6_O_UNCONNECTED[3:1],\int_x_21_reg[7]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_2
       (.CI(p_reg_reg_i_3_n_0),
        .CO({p_reg_reg_i_2_n_0,p_reg_reg_i_2_n_1,p_reg_reg_i_2_n_2,p_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_26_fu_575_p1[7:4]),
        .O(\int_x_29_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4_n_0,p_reg_reg_i_5_n_0,p_reg_reg_i_6_n_0,p_reg_reg_i_7_n_0}));
  CARRY4 p_reg_reg_i_2__0
       (.CI(p_reg_reg_i_3__0_n_0),
        .CO({p_reg_reg_i_2__0_n_0,p_reg_reg_i_2__0_n_1,p_reg_reg_i_2__0_n_2,p_reg_reg_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_24_fu_561_p1[7:4]),
        .O(\int_x_28_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__0_n_0,p_reg_reg_i_5__0_n_0,p_reg_reg_i_6__0_n_0,p_reg_reg_i_7__0_n_0}));
  CARRY4 p_reg_reg_i_2__1
       (.CI(p_reg_reg_i_3__1_n_0),
        .CO({p_reg_reg_i_2__1_n_0,p_reg_reg_i_2__1_n_1,p_reg_reg_i_2__1_n_2,p_reg_reg_i_2__1_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_16_fu_497_p1[7:4]),
        .O(\int_x_24_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__1_n_0,p_reg_reg_i_5__1_n_0,p_reg_reg_i_6__1_n_0,p_reg_reg_i_7__1_n_0}));
  CARRY4 p_reg_reg_i_2__2
       (.CI(p_reg_reg_i_3__2_n_0),
        .CO({p_reg_reg_i_2__2_n_0,p_reg_reg_i_2__2_n_1,p_reg_reg_i_2__2_n_2,p_reg_reg_i_2__2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_20_fu_529_p1[7:4]),
        .O(\int_x_26_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__2_n_0,p_reg_reg_i_5__2_n_0,p_reg_reg_i_6__2_n_0,p_reg_reg_i_7__2_n_0}));
  CARRY4 p_reg_reg_i_2__3
       (.CI(p_reg_reg_i_3__3_n_0),
        .CO({p_reg_reg_i_2__3_n_0,p_reg_reg_i_2__3_n_1,p_reg_reg_i_2__3_n_2,p_reg_reg_i_2__3_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_2_fu_383_p1[7:4]),
        .O(\int_x_17_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__3_n_0,p_reg_reg_i_5__3_n_0,p_reg_reg_i_6__3_n_0,p_reg_reg_i_7__3_n_0}));
  CARRY4 p_reg_reg_i_2__4
       (.CI(p_reg_reg_i_3__4_n_0),
        .CO({p_reg_reg_i_2__4_n_0,p_reg_reg_i_2__4_n_1,p_reg_reg_i_2__4_n_2,p_reg_reg_i_2__4_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_fu_369_p1[7:4]),
        .O(\int_x_16_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__4_n_0,p_reg_reg_i_5__4_n_0,p_reg_reg_i_6__4_n_0,p_reg_reg_i_7__4_n_0}));
  CARRY4 p_reg_reg_i_2__5
       (.CI(p_reg_reg_i_3__5_n_0),
        .CO({p_reg_reg_i_2__5_n_0,p_reg_reg_i_2__5_n_1,p_reg_reg_i_2__5_n_2,p_reg_reg_i_2__5_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_6_fu_415_p1[7:4]),
        .O(\int_x_19_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__5_n_0,p_reg_reg_i_5__5_n_0,p_reg_reg_i_6__5_n_0,p_reg_reg_i_7__5_n_0}));
  CARRY4 p_reg_reg_i_2__6
       (.CI(p_reg_reg_i_3__6_n_0),
        .CO({p_reg_reg_i_2__6_n_0,p_reg_reg_i_2__6_n_1,p_reg_reg_i_2__6_n_2,p_reg_reg_i_2__6_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln16_10_fu_447_p1[7:4]),
        .O(\int_x_21_reg[7]_0 [7:4]),
        .S({p_reg_reg_i_4__6_n_0,p_reg_reg_i_5__6_n_0,p_reg_reg_i_6__6_n_0,p_reg_reg_i_7__6_n_0}));
  CARRY4 p_reg_reg_i_3
       (.CI(1'b0),
        .CO({p_reg_reg_i_3_n_0,p_reg_reg_i_3_n_1,p_reg_reg_i_3_n_2,p_reg_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_26_fu_575_p1[3:0]),
        .O(\int_x_29_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8_n_0,p_reg_reg_i_9_n_0,p_reg_reg_i_10_n_0,p_reg_reg_i_11_n_0}));
  CARRY4 p_reg_reg_i_3__0
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__0_n_0,p_reg_reg_i_3__0_n_1,p_reg_reg_i_3__0_n_2,p_reg_reg_i_3__0_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_24_fu_561_p1[3:0]),
        .O(\int_x_28_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__0_n_0,p_reg_reg_i_9__0_n_0,p_reg_reg_i_10__0_n_0,p_reg_reg_i_11__0_n_0}));
  CARRY4 p_reg_reg_i_3__1
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__1_n_0,p_reg_reg_i_3__1_n_1,p_reg_reg_i_3__1_n_2,p_reg_reg_i_3__1_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_16_fu_497_p1[3:0]),
        .O(\int_x_24_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__1_n_0,p_reg_reg_i_9__1_n_0,p_reg_reg_i_10__1_n_0,p_reg_reg_i_11__1_n_0}));
  CARRY4 p_reg_reg_i_3__2
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__2_n_0,p_reg_reg_i_3__2_n_1,p_reg_reg_i_3__2_n_2,p_reg_reg_i_3__2_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_20_fu_529_p1[3:0]),
        .O(\int_x_26_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__2_n_0,p_reg_reg_i_9__2_n_0,p_reg_reg_i_10__2_n_0,p_reg_reg_i_11__2_n_0}));
  CARRY4 p_reg_reg_i_3__3
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__3_n_0,p_reg_reg_i_3__3_n_1,p_reg_reg_i_3__3_n_2,p_reg_reg_i_3__3_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_2_fu_383_p1[3:0]),
        .O(\int_x_17_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__3_n_0,p_reg_reg_i_9__3_n_0,p_reg_reg_i_10__3_n_0,p_reg_reg_i_11__3_n_0}));
  CARRY4 p_reg_reg_i_3__4
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__4_n_0,p_reg_reg_i_3__4_n_1,p_reg_reg_i_3__4_n_2,p_reg_reg_i_3__4_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_fu_369_p1[3:0]),
        .O(\int_x_16_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__4_n_0,p_reg_reg_i_9__4_n_0,p_reg_reg_i_10__4_n_0,p_reg_reg_i_11__4_n_0}));
  CARRY4 p_reg_reg_i_3__5
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__5_n_0,p_reg_reg_i_3__5_n_1,p_reg_reg_i_3__5_n_2,p_reg_reg_i_3__5_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_6_fu_415_p1[3:0]),
        .O(\int_x_19_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__5_n_0,p_reg_reg_i_9__5_n_0,p_reg_reg_i_10__5_n_0,p_reg_reg_i_11__5_n_0}));
  CARRY4 p_reg_reg_i_3__6
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__6_n_0,p_reg_reg_i_3__6_n_1,p_reg_reg_i_3__6_n_2,p_reg_reg_i_3__6_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln16_10_fu_447_p1[3:0]),
        .O(\int_x_21_reg[7]_0 [3:0]),
        .S({p_reg_reg_i_8__6_n_0,p_reg_reg_i_9__6_n_0,p_reg_reg_i_10__6_n_0,p_reg_reg_i_11__6_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4
       (.I0(zext_ln16_26_fu_575_p1[7]),
        .I1(x_13[7]),
        .O(p_reg_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__0
       (.I0(zext_ln16_24_fu_561_p1[7]),
        .I1(x_12[7]),
        .O(p_reg_reg_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__1
       (.I0(zext_ln16_16_fu_497_p1[7]),
        .I1(x_8[7]),
        .O(p_reg_reg_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__2
       (.I0(zext_ln16_20_fu_529_p1[7]),
        .I1(x_10[7]),
        .O(p_reg_reg_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__3
       (.I0(zext_ln16_2_fu_383_p1[7]),
        .I1(x_1[7]),
        .O(p_reg_reg_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__4
       (.I0(zext_ln16_fu_369_p1[7]),
        .I1(x_0[7]),
        .O(p_reg_reg_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__5
       (.I0(zext_ln16_6_fu_415_p1[7]),
        .I1(x_3[7]),
        .O(p_reg_reg_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_4__6
       (.I0(zext_ln16_10_fu_447_p1[7]),
        .I1(x_5[7]),
        .O(p_reg_reg_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5
       (.I0(zext_ln16_26_fu_575_p1[6]),
        .I1(x_13[6]),
        .O(p_reg_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__0
       (.I0(zext_ln16_24_fu_561_p1[6]),
        .I1(x_12[6]),
        .O(p_reg_reg_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__1
       (.I0(zext_ln16_16_fu_497_p1[6]),
        .I1(x_8[6]),
        .O(p_reg_reg_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__2
       (.I0(zext_ln16_20_fu_529_p1[6]),
        .I1(x_10[6]),
        .O(p_reg_reg_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__3
       (.I0(zext_ln16_2_fu_383_p1[6]),
        .I1(x_1[6]),
        .O(p_reg_reg_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__4
       (.I0(zext_ln16_fu_369_p1[6]),
        .I1(x_0[6]),
        .O(p_reg_reg_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__5
       (.I0(zext_ln16_6_fu_415_p1[6]),
        .I1(x_3[6]),
        .O(p_reg_reg_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_5__6
       (.I0(zext_ln16_10_fu_447_p1[6]),
        .I1(x_5[6]),
        .O(p_reg_reg_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6
       (.I0(zext_ln16_26_fu_575_p1[5]),
        .I1(x_13[5]),
        .O(p_reg_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__0
       (.I0(zext_ln16_24_fu_561_p1[5]),
        .I1(x_12[5]),
        .O(p_reg_reg_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__1
       (.I0(zext_ln16_16_fu_497_p1[5]),
        .I1(x_8[5]),
        .O(p_reg_reg_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__2
       (.I0(zext_ln16_20_fu_529_p1[5]),
        .I1(x_10[5]),
        .O(p_reg_reg_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__3
       (.I0(zext_ln16_2_fu_383_p1[5]),
        .I1(x_1[5]),
        .O(p_reg_reg_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__4
       (.I0(zext_ln16_fu_369_p1[5]),
        .I1(x_0[5]),
        .O(p_reg_reg_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__5
       (.I0(zext_ln16_6_fu_415_p1[5]),
        .I1(x_3[5]),
        .O(p_reg_reg_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_6__6
       (.I0(zext_ln16_10_fu_447_p1[5]),
        .I1(x_5[5]),
        .O(p_reg_reg_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7
       (.I0(zext_ln16_26_fu_575_p1[4]),
        .I1(x_13[4]),
        .O(p_reg_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__0
       (.I0(zext_ln16_24_fu_561_p1[4]),
        .I1(x_12[4]),
        .O(p_reg_reg_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__1
       (.I0(zext_ln16_16_fu_497_p1[4]),
        .I1(x_8[4]),
        .O(p_reg_reg_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__2
       (.I0(zext_ln16_20_fu_529_p1[4]),
        .I1(x_10[4]),
        .O(p_reg_reg_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__3
       (.I0(zext_ln16_2_fu_383_p1[4]),
        .I1(x_1[4]),
        .O(p_reg_reg_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__4
       (.I0(zext_ln16_fu_369_p1[4]),
        .I1(x_0[4]),
        .O(p_reg_reg_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__5
       (.I0(zext_ln16_6_fu_415_p1[4]),
        .I1(x_3[4]),
        .O(p_reg_reg_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_7__6
       (.I0(zext_ln16_10_fu_447_p1[4]),
        .I1(x_5[4]),
        .O(p_reg_reg_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8
       (.I0(zext_ln16_26_fu_575_p1[3]),
        .I1(x_13[3]),
        .O(p_reg_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__0
       (.I0(zext_ln16_24_fu_561_p1[3]),
        .I1(x_12[3]),
        .O(p_reg_reg_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__1
       (.I0(zext_ln16_16_fu_497_p1[3]),
        .I1(x_8[3]),
        .O(p_reg_reg_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__2
       (.I0(zext_ln16_20_fu_529_p1[3]),
        .I1(x_10[3]),
        .O(p_reg_reg_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__3
       (.I0(zext_ln16_2_fu_383_p1[3]),
        .I1(x_1[3]),
        .O(p_reg_reg_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__4
       (.I0(zext_ln16_fu_369_p1[3]),
        .I1(x_0[3]),
        .O(p_reg_reg_i_8__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__5
       (.I0(zext_ln16_6_fu_415_p1[3]),
        .I1(x_3[3]),
        .O(p_reg_reg_i_8__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__6
       (.I0(zext_ln16_10_fu_447_p1[3]),
        .I1(x_5[3]),
        .O(p_reg_reg_i_8__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9
       (.I0(zext_ln16_26_fu_575_p1[2]),
        .I1(x_13[2]),
        .O(p_reg_reg_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__0
       (.I0(zext_ln16_24_fu_561_p1[2]),
        .I1(x_12[2]),
        .O(p_reg_reg_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__1
       (.I0(zext_ln16_16_fu_497_p1[2]),
        .I1(x_8[2]),
        .O(p_reg_reg_i_9__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__2
       (.I0(zext_ln16_20_fu_529_p1[2]),
        .I1(x_10[2]),
        .O(p_reg_reg_i_9__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__3
       (.I0(zext_ln16_2_fu_383_p1[2]),
        .I1(x_1[2]),
        .O(p_reg_reg_i_9__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__4
       (.I0(zext_ln16_fu_369_p1[2]),
        .I1(x_0[2]),
        .O(p_reg_reg_i_9__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__5
       (.I0(zext_ln16_6_fu_415_p1[2]),
        .I1(x_3[2]),
        .O(p_reg_reg_i_9__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__6
       (.I0(zext_ln16_10_fu_447_p1[2]),
        .I1(x_5[2]),
        .O(p_reg_reg_i_9__6_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(\rdata[0]_i_3_n_0 ),
        .I3(\rdata[0]_i_4_n_0 ),
        .I4(ar_hs),
        .I5(s_axi_control_RDATA[0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_10 
       (.I0(zext_ln16_18_fu_511_p1[0]),
        .I1(x_9[0]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[0]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[0]),
        .O(\rdata[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[0]_i_11 
       (.I0(x_5[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[0]_i_12 
       (.I0(x_13[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[0]),
        .O(\rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_15 
       (.I0(zext_ln16_16_fu_497_p1[0]),
        .I1(x_8[0]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[0]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[0]),
        .O(\rdata[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[0]_i_16 
       (.I0(x_4[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_17 
       (.I0(x_12[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[0] ),
        .O(\rdata[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_2 
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(\rdata_reg[0]_i_6_n_0 ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(\rdata[0]_i_7_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[0]_i_8_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_20 
       (.I0(x_11[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_22_fu_543_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[0]_i_21 
       (.I0(x_3[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[0]_i_22 
       (.I0(x_15[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[0]),
        .O(\rdata[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[0]_i_23 
       (.I0(x_7[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[0]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_24 
       (.I0(x_10[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_20_fu_529_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(ap_start),
        .O(\rdata[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[0]_i_25 
       (.I0(x_2[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[0]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_26 
       (.I0(x_14[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[0] ),
        .O(\rdata[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[0]_i_27 
       (.I0(x_6[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[0]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222E2222)) 
    \rdata[0]_i_3 
       (.I0(\rdata[0]_i_9_n_0 ),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\int_isr_reg_n_0_[0] ),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[0]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \rdata[0]_i_5 
       (.I0(\rdata[0]_i_10_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[0]_i_11_n_0 ),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[0]_i_12_n_0 ),
        .O(\rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \rdata[0]_i_7 
       (.I0(\rdata[0]_i_15_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[0]_i_16_n_0 ),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[0]_i_17_n_0 ),
        .O(\rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_9 
       (.I0(int_y_add_ap_vld__0),
        .I1(s_axi_control_ARADDR[4]),
        .I2(int_y_sqrt_ap_vld__0),
        .I3(s_axi_control_ARADDR[5]),
        .I4(int_gie_reg_n_0),
        .O(\rdata[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[10]_i_1 
       (.I0(\int_y_add_reg_n_0_[10] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[10] ),
        .O(\rdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[11]_i_1 
       (.I0(\int_y_add_reg_n_0_[11] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[11] ),
        .O(\rdata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[12]_i_1 
       (.I0(\int_y_add_reg_n_0_[12] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[12] ),
        .O(\rdata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[13]_i_1 
       (.I0(\int_y_add_reg_n_0_[13] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[13] ),
        .O(\rdata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[14]_i_1 
       (.I0(\int_y_add_reg_n_0_[14] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[14] ),
        .O(\rdata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[15]_i_1 
       (.I0(\int_y_add_reg_n_0_[15] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[15] ),
        .O(\rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \rdata[16]_i_1 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\int_y_add_reg_n_0_[16] ),
        .O(\rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \rdata[17]_i_1 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\int_y_add_reg_n_0_[17] ),
        .O(\rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \rdata[18]_i_1 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\int_y_add_reg_n_0_[18] ),
        .O(\rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \rdata[19]_i_1 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\int_y_add_reg_n_0_[19] ),
        .O(\rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8FFFFFFA8000000)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata[1]_i_3_n_0 ),
        .I2(\rdata[1]_i_4_n_0 ),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_control_ARVALID),
        .I5(s_axi_control_RDATA[1]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \rdata[1]_i_10 
       (.I0(\rdata[1]_i_18_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[1]_i_19_n_0 ),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[1]_i_20_n_0 ),
        .O(\rdata[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[1]_i_11 
       (.I0(x_15[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[1]),
        .O(\rdata[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_12 
       (.I0(x_11[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_22_fu_543_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_ier_reg_n_0_[1] ),
        .O(\rdata[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[1]_i_13 
       (.I0(zext_ln16_16_fu_497_p1[1]),
        .I1(x_8[1]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[1]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[1]),
        .O(\rdata[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[1]_i_14 
       (.I0(x_4[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_15 
       (.I0(x_12[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[1] ),
        .O(\rdata[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[1]_i_18 
       (.I0(zext_ln16_18_fu_511_p1[1]),
        .I1(x_9[1]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[1]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[1]),
        .O(\rdata[1]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[1]_i_19 
       (.I0(x_5[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[1]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \rdata[1]_i_2 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(\rdata[1]_i_5_n_0 ),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[1]_i_20 
       (.I0(x_13[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[1]),
        .O(\rdata[1]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_21 
       (.I0(x_10[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_20_fu_529_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(int_task_ap_done__0),
        .O(\rdata[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[1]_i_22 
       (.I0(x_2[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[1]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_23 
       (.I0(x_14[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[1] ),
        .O(\rdata[1]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rdata[1]_i_24 
       (.I0(x_6[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .O(\rdata[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B8FF000000)) 
    \rdata[1]_i_3 
       (.I0(\rdata[1]_i_6_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[1]_i_7_n_0 ),
        .I3(\rdata[1]_i_8_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC202C202C202)) 
    \rdata[1]_i_4 
       (.I0(\rdata_reg[1]_i_9_n_0 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(\rdata[1]_i_10_n_0 ),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[1]_i_5_n_0 ),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \rdata[1]_i_5 
       (.I0(s_axi_control_ARADDR[8]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(\int_isr_reg_n_0_[1] ),
        .I4(s_axi_control_ARADDR[5]),
        .I5(int_y_add_ap_vld_i_3_n_0),
        .O(\rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[1]_i_6 
       (.I0(x_7[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[1]_i_11_n_0 ),
        .O(\rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[1]_i_7 
       (.I0(x_3[1]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[1]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[1]_i_12_n_0 ),
        .O(\rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \rdata[1]_i_8 
       (.I0(\rdata[1]_i_13_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[1]_i_14_n_0 ),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[1]_i_15_n_0 ),
        .O(\rdata[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_10 
       (.I0(x_12[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[2] ),
        .O(\rdata[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[2]_i_11 
       (.I0(x_2[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[2]_i_16_n_0 ),
        .O(\rdata[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[2]_i_12 
       (.I0(x_6[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[2]_i_17_n_0 ),
        .O(\rdata[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[2]_i_13 
       (.I0(x_13[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[2]),
        .O(\rdata[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[2]_i_14 
       (.I0(x_3[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[2]_i_18_n_0 ),
        .O(\rdata[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[2]_i_15 
       (.I0(x_7[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[2]_i_19_n_0 ),
        .O(\rdata[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_16 
       (.I0(x_10[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_20_fu_529_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(p_36_in[2]),
        .O(\rdata[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_17 
       (.I0(x_14[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[2] ),
        .O(\rdata[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[2]_i_18 
       (.I0(x_11[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_22_fu_543_p1[2]),
        .O(\rdata[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[2]_i_19 
       (.I0(x_15[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[2]),
        .O(\rdata[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[2]_i_2 
       (.I0(\rdata[2]_i_4_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[2]_i_5_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[2]_i_6_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[2]_i_3 
       (.I0(\rdata[2]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[2]_i_8_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[2]_i_9_n_0 ),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[2]_i_4 
       (.I0(zext_ln16_16_fu_497_p1[2]),
        .I1(x_8[2]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[2]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[2]),
        .O(\rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[2]_i_5 
       (.I0(x_4[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[2]_i_10_n_0 ),
        .O(\rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[2]_i_7 
       (.I0(zext_ln16_18_fu_511_p1[2]),
        .I1(x_9[2]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[2]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[2]),
        .O(\rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[2]_i_8 
       (.I0(x_5[2]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[2]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[2]_i_13_n_0 ),
        .O(\rdata[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rdata[31]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(\rdata[31]_i_4_n_0 ),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\int_y_add_reg_n_0_[31] ),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[8]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_10 
       (.I0(x_12[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[3] ),
        .O(\rdata[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[3]_i_11 
       (.I0(x_2[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[3]_i_16_n_0 ),
        .O(\rdata[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[3]_i_12 
       (.I0(x_6[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[3]_i_17_n_0 ),
        .O(\rdata[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[3]_i_13 
       (.I0(x_13[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[3]),
        .O(\rdata[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[3]_i_14 
       (.I0(x_3[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[3]_i_18_n_0 ),
        .O(\rdata[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[3]_i_15 
       (.I0(x_7[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[3]_i_19_n_0 ),
        .O(\rdata[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_16 
       (.I0(x_10[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_20_fu_529_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(int_ap_ready__0),
        .O(\rdata[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_17 
       (.I0(x_14[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[3] ),
        .O(\rdata[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[3]_i_18 
       (.I0(x_11[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_22_fu_543_p1[3]),
        .O(\rdata[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[3]_i_19 
       (.I0(x_15[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[3]),
        .O(\rdata[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[3]_i_2 
       (.I0(\rdata[3]_i_4_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[3]_i_5_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[3]_i_6_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[3]_i_3 
       (.I0(\rdata[3]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[3]_i_8_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[3]_i_9_n_0 ),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3]_i_4 
       (.I0(zext_ln16_16_fu_497_p1[3]),
        .I1(x_8[3]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[3]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[3]),
        .O(\rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[3]_i_5 
       (.I0(x_4[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[3]_i_10_n_0 ),
        .O(\rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[3]_i_7 
       (.I0(zext_ln16_18_fu_511_p1[3]),
        .I1(x_9[3]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[3]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[3]),
        .O(\rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[3]_i_8 
       (.I0(x_5[3]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[3]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[3]_i_13_n_0 ),
        .O(\rdata[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[4]_i_10 
       (.I0(x_12[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[4] ),
        .O(\rdata[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[4]_i_11 
       (.I0(x_2[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[4]_i_16_n_0 ),
        .O(\rdata[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[4]_i_12 
       (.I0(x_6[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[4]_i_17_n_0 ),
        .O(\rdata[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[4]_i_13 
       (.I0(x_13[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[4]),
        .O(\rdata[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[4]_i_14 
       (.I0(x_3[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[4]_i_18_n_0 ),
        .O(\rdata[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[4]_i_15 
       (.I0(x_7[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[4]_i_19_n_0 ),
        .O(\rdata[4]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[4]_i_16 
       (.I0(x_10[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_20_fu_529_p1[4]),
        .O(\rdata[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[4]_i_17 
       (.I0(x_14[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[4] ),
        .O(\rdata[4]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[4]_i_18 
       (.I0(x_11[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_22_fu_543_p1[4]),
        .O(\rdata[4]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[4]_i_19 
       (.I0(x_15[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[4]),
        .O(\rdata[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[4]_i_2 
       (.I0(\rdata[4]_i_4_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[4]_i_5_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[4]_i_6_n_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[4]_i_3 
       (.I0(\rdata[4]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[4]_i_8_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[4]_i_9_n_0 ),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[4]_i_4 
       (.I0(zext_ln16_16_fu_497_p1[4]),
        .I1(x_8[4]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[4]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[4]),
        .O(\rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[4]_i_5 
       (.I0(x_4[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[4]_i_10_n_0 ),
        .O(\rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[4]_i_7 
       (.I0(zext_ln16_18_fu_511_p1[4]),
        .I1(x_9[4]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[4]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[4]),
        .O(\rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[4]_i_8 
       (.I0(x_5[4]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[4]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[4]_i_13_n_0 ),
        .O(\rdata[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[5]_i_10 
       (.I0(x_12[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[5] ),
        .O(\rdata[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[5]_i_11 
       (.I0(x_2[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[5]_i_16_n_0 ),
        .O(\rdata[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[5]_i_12 
       (.I0(x_6[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[5]_i_17_n_0 ),
        .O(\rdata[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[5]_i_13 
       (.I0(x_13[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[5]),
        .O(\rdata[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[5]_i_14 
       (.I0(x_3[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[5]_i_18_n_0 ),
        .O(\rdata[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[5]_i_15 
       (.I0(x_7[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[5]_i_19_n_0 ),
        .O(\rdata[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[5]_i_16 
       (.I0(x_10[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_20_fu_529_p1[5]),
        .O(\rdata[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[5]_i_17 
       (.I0(x_14[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[5] ),
        .O(\rdata[5]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[5]_i_18 
       (.I0(x_11[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_22_fu_543_p1[5]),
        .O(\rdata[5]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[5]_i_19 
       (.I0(x_15[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[5]),
        .O(\rdata[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[5]_i_2 
       (.I0(\rdata[5]_i_4_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[5]_i_5_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[5]_i_6_n_0 ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[5]_i_3 
       (.I0(\rdata[5]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[5]_i_8_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[5]_i_9_n_0 ),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[5]_i_4 
       (.I0(zext_ln16_16_fu_497_p1[5]),
        .I1(x_8[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[5]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[5]),
        .O(\rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[5]_i_5 
       (.I0(x_4[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[5]_i_10_n_0 ),
        .O(\rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[5]_i_7 
       (.I0(zext_ln16_18_fu_511_p1[5]),
        .I1(x_9[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[5]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[5]),
        .O(\rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[5]_i_8 
       (.I0(x_5[5]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[5]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[5]_i_13_n_0 ),
        .O(\rdata[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[6]_i_10 
       (.I0(x_12[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[6] ),
        .O(\rdata[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[6]_i_11 
       (.I0(x_2[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[6]_i_16_n_0 ),
        .O(\rdata[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[6]_i_12 
       (.I0(x_6[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[6]_i_17_n_0 ),
        .O(\rdata[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[6]_i_13 
       (.I0(x_13[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[6]),
        .O(\rdata[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[6]_i_14 
       (.I0(x_3[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[6]_i_18_n_0 ),
        .O(\rdata[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[6]_i_15 
       (.I0(x_7[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[6]_i_19_n_0 ),
        .O(\rdata[6]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[6]_i_16 
       (.I0(x_10[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_20_fu_529_p1[6]),
        .O(\rdata[6]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[6]_i_17 
       (.I0(x_14[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[6] ),
        .O(\rdata[6]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[6]_i_18 
       (.I0(x_11[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_22_fu_543_p1[6]),
        .O(\rdata[6]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[6]_i_19 
       (.I0(x_15[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[6]),
        .O(\rdata[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[6]_i_2 
       (.I0(\rdata[6]_i_4_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[6]_i_5_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[6]_i_6_n_0 ),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[6]_i_3 
       (.I0(\rdata[6]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[6]_i_8_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[6]_i_9_n_0 ),
        .O(\rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[6]_i_4 
       (.I0(zext_ln16_16_fu_497_p1[6]),
        .I1(x_8[6]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[6]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[6]),
        .O(\rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[6]_i_5 
       (.I0(x_4[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[6]_i_10_n_0 ),
        .O(\rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[6]_i_7 
       (.I0(zext_ln16_18_fu_511_p1[6]),
        .I1(x_9[6]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[6]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[6]),
        .O(\rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[6]_i_8 
       (.I0(x_5[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[6]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[6]_i_13_n_0 ),
        .O(\rdata[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h88888880)) 
    \rdata[7]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_11 
       (.I0(x_12[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_24_fu_561_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_add_reg_n_0_[7] ),
        .O(\rdata[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[7]_i_12 
       (.I0(x_2[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_4_fu_397_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[7]_i_17_n_0 ),
        .O(\rdata[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[7]_i_13 
       (.I0(x_6[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_12_fu_461_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[7]_i_18_n_0 ),
        .O(\rdata[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[7]_i_14 
       (.I0(x_13[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_26_fu_575_p1[7]),
        .O(\rdata[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[7]_i_15 
       (.I0(x_3[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_6_fu_415_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[7]_i_19_n_0 ),
        .O(\rdata[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[7]_i_16 
       (.I0(x_7[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_14_fu_479_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[7]_i_20_n_0 ),
        .O(\rdata[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_17 
       (.I0(x_10[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_20_fu_529_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(p_36_in[7]),
        .O(\rdata[7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_18 
       (.I0(x_14[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_28_fu_589_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(\int_y_sqrt_reg_n_0_[7] ),
        .O(\rdata[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[7]_i_19 
       (.I0(x_11[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_22_fu_543_p1[7]),
        .O(\rdata[7]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[7]_i_20 
       (.I0(x_15[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[8]),
        .I3(zext_ln16_30_fu_607_p1[7]),
        .O(\rdata[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[7]_i_3 
       (.I0(\rdata[7]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[7]_i_6_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[7]_i_7_n_0 ),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \rdata[7]_i_4 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[7]_i_9_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata_reg[7]_i_10_n_0 ),
        .O(\rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[7]_i_5 
       (.I0(zext_ln16_16_fu_497_p1[7]),
        .I1(x_8[7]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_fu_369_p1[7]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_0[7]),
        .O(\rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[7]_i_6 
       (.I0(x_4[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_8_fu_429_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[7]_i_11_n_0 ),
        .O(\rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[7]_i_8 
       (.I0(zext_ln16_18_fu_511_p1[7]),
        .I1(x_9[7]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(zext_ln16_2_fu_383_p1[7]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(x_1[7]),
        .O(\rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata[7]_i_9 
       (.I0(x_5[7]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(zext_ln16_10_fu_447_p1[7]),
        .I3(s_axi_control_ARADDR[8]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(\rdata[7]_i_14_n_0 ),
        .O(\rdata[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[8]_i_1 
       (.I0(\int_y_add_reg_n_0_[8] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[8] ),
        .O(\rdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[9]_i_1 
       (.I0(\int_y_add_reg_n_0_[9] ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\int_y_sqrt_reg_n_0_[9] ),
        .O(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  MUXF7 \rdata_reg[0]_i_13 
       (.I0(\rdata[0]_i_20_n_0 ),
        .I1(\rdata[0]_i_21_n_0 ),
        .O(\rdata_reg[0]_i_13_n_0 ),
        .S(s_axi_control_ARADDR[6]));
  MUXF7 \rdata_reg[0]_i_14 
       (.I0(\rdata[0]_i_22_n_0 ),
        .I1(\rdata[0]_i_23_n_0 ),
        .O(\rdata_reg[0]_i_14_n_0 ),
        .S(s_axi_control_ARADDR[6]));
  MUXF7 \rdata_reg[0]_i_18 
       (.I0(\rdata[0]_i_24_n_0 ),
        .I1(\rdata[0]_i_25_n_0 ),
        .O(\rdata_reg[0]_i_18_n_0 ),
        .S(s_axi_control_ARADDR[6]));
  MUXF7 \rdata_reg[0]_i_19 
       (.I0(\rdata[0]_i_26_n_0 ),
        .I1(\rdata[0]_i_27_n_0 ),
        .O(\rdata_reg[0]_i_19_n_0 ),
        .S(s_axi_control_ARADDR[6]));
  MUXF8 \rdata_reg[0]_i_6 
       (.I0(\rdata_reg[0]_i_13_n_0 ),
        .I1(\rdata_reg[0]_i_14_n_0 ),
        .O(\rdata_reg[0]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF8 \rdata_reg[0]_i_8 
       (.I0(\rdata_reg[0]_i_18_n_0 ),
        .I1(\rdata_reg[0]_i_19_n_0 ),
        .O(\rdata_reg[0]_i_8_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  MUXF7 \rdata_reg[1]_i_16 
       (.I0(\rdata[1]_i_21_n_0 ),
        .I1(\rdata[1]_i_22_n_0 ),
        .O(\rdata_reg[1]_i_16_n_0 ),
        .S(s_axi_control_ARADDR[6]));
  MUXF7 \rdata_reg[1]_i_17 
       (.I0(\rdata[1]_i_23_n_0 ),
        .I1(\rdata[1]_i_24_n_0 ),
        .O(\rdata_reg[1]_i_17_n_0 ),
        .S(s_axi_control_ARADDR[6]));
  MUXF8 \rdata_reg[1]_i_9 
       (.I0(\rdata_reg[1]_i_16_n_0 ),
        .I1(\rdata_reg[1]_i_17_n_0 ),
        .O(\rdata_reg[1]_i_9_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[2]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata[7]_i_1_n_0 ));
  MUXF7 \rdata_reg[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(\rdata[2]_i_3_n_0 ),
        .O(\rdata_reg[2]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[3]));
  MUXF7 \rdata_reg[2]_i_6 
       (.I0(\rdata[2]_i_11_n_0 ),
        .I1(\rdata[2]_i_12_n_0 ),
        .O(\rdata_reg[2]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[2]_i_9 
       (.I0(\rdata[2]_i_14_n_0 ),
        .I1(\rdata[2]_i_15_n_0 ),
        .O(\rdata_reg[2]_i_9_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[31]_i_3_n_0 ),
        .Q(s_axi_control_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[3]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata[7]_i_1_n_0 ));
  MUXF7 \rdata_reg[3]_i_1 
       (.I0(\rdata[3]_i_2_n_0 ),
        .I1(\rdata[3]_i_3_n_0 ),
        .O(\rdata_reg[3]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[3]));
  MUXF7 \rdata_reg[3]_i_6 
       (.I0(\rdata[3]_i_11_n_0 ),
        .I1(\rdata[3]_i_12_n_0 ),
        .O(\rdata_reg[3]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[3]_i_9 
       (.I0(\rdata[3]_i_14_n_0 ),
        .I1(\rdata[3]_i_15_n_0 ),
        .O(\rdata_reg[3]_i_9_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[4]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[4]),
        .R(\rdata[7]_i_1_n_0 ));
  MUXF7 \rdata_reg[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(\rdata[4]_i_3_n_0 ),
        .O(\rdata_reg[4]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[3]));
  MUXF7 \rdata_reg[4]_i_6 
       (.I0(\rdata[4]_i_11_n_0 ),
        .I1(\rdata[4]_i_12_n_0 ),
        .O(\rdata_reg[4]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[4]_i_9 
       (.I0(\rdata[4]_i_14_n_0 ),
        .I1(\rdata[4]_i_15_n_0 ),
        .O(\rdata_reg[4]_i_9_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[5]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[5]),
        .R(\rdata[7]_i_1_n_0 ));
  MUXF7 \rdata_reg[5]_i_1 
       (.I0(\rdata[5]_i_2_n_0 ),
        .I1(\rdata[5]_i_3_n_0 ),
        .O(\rdata_reg[5]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[3]));
  MUXF7 \rdata_reg[5]_i_6 
       (.I0(\rdata[5]_i_11_n_0 ),
        .I1(\rdata[5]_i_12_n_0 ),
        .O(\rdata_reg[5]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[5]_i_9 
       (.I0(\rdata[5]_i_14_n_0 ),
        .I1(\rdata[5]_i_15_n_0 ),
        .O(\rdata_reg[5]_i_9_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[6]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[6]),
        .R(\rdata[7]_i_1_n_0 ));
  MUXF7 \rdata_reg[6]_i_1 
       (.I0(\rdata[6]_i_2_n_0 ),
        .I1(\rdata[6]_i_3_n_0 ),
        .O(\rdata_reg[6]_i_1_n_0 ),
        .S(s_axi_control_ARADDR[3]));
  MUXF7 \rdata_reg[6]_i_6 
       (.I0(\rdata[6]_i_11_n_0 ),
        .I1(\rdata[6]_i_12_n_0 ),
        .O(\rdata_reg[6]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[6]_i_9 
       (.I0(\rdata[6]_i_14_n_0 ),
        .I1(\rdata[6]_i_15_n_0 ),
        .O(\rdata_reg[6]_i_9_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_reg[7]_i_2_n_0 ),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata[7]_i_1_n_0 ));
  MUXF7 \rdata_reg[7]_i_10 
       (.I0(\rdata[7]_i_15_n_0 ),
        .I1(\rdata[7]_i_16_n_0 ),
        .O(\rdata_reg[7]_i_10_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[7]_i_2 
       (.I0(\rdata[7]_i_3_n_0 ),
        .I1(\rdata[7]_i_4_n_0 ),
        .O(\rdata_reg[7]_i_2_n_0 ),
        .S(s_axi_control_ARADDR[3]));
  MUXF7 \rdata_reg[7]_i_7 
       (.I0(\rdata[7]_i_12_n_0 ),
        .I1(\rdata[7]_i_13_n_0 ),
        .O(\rdata_reg[7]_i_7_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[8]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[8]),
        .Q(\waddr_reg_n_0_[8] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1
   (P,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;

  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_13 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_0
   (sext_ln16_25_fu_747_p1,
    CO,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg,
    P);
  output [17:0]sext_ln16_25_fu_747_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;
  wire [17:0]sext_ln16_25_fu_747_p1;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_12 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.CO(CO),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg),
        .sext_ln16_25_fu_747_p1(sext_ln16_25_fu_747_p1));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_1
   (P,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;

  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_11 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_2
   (P,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;

  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_10 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_3
   (sext_ln16_21_fu_725_p1,
    CO,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg,
    P);
  output [17:0]sext_ln16_21_fu_725_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;
  wire [17:0]sext_ln16_21_fu_725_p1;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_9 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.CO(CO),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg),
        .sext_ln16_21_fu_725_p1(sext_ln16_21_fu_725_p1));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_4
   (sext_ln16_18_fu_709_p1,
    CO,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg,
    P);
  output [17:0]sext_ln16_18_fu_709_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;
  wire [17:0]sext_ln16_18_fu_709_p1;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_8 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.CO(CO),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg),
        .sext_ln16_18_fu_709_p1(sext_ln16_18_fu_709_p1));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_5
   (P,
    ap_clk,
    A,
    Q,
    p_reg_reg);
  output [17:0]P;
  input ap_clk;
  input [8:0]A;
  input [0:0]Q;
  input [8:0]p_reg_reg;

  wire [8:0]A;
  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]p_reg_reg;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_7 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.A(A),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .p_reg_reg_0(p_reg_reg));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_6
   (sext_ln16_28_fu_763_p1,
    CO,
    ap_clk,
    m_reg_reg,
    Q,
    p_reg_reg,
    P);
  output [17:0]sext_ln16_28_fu_763_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [0:0]Q;
  input [8:0]p_reg_reg;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]p_reg_reg;
  wire [17:0]sext_ln16_28_fu_763_p1;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.CO(CO),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .p_reg_reg_0(p_reg_reg),
        .sext_ln16_28_fu_763_p1(sext_ln16_28_fu_763_p1));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0
   (sext_ln16_28_fu_763_p1,
    CO,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0,
    P);
  output [17:0]sext_ln16_28_fu_763_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire \add_ln16_13_reg_998[11]_i_10_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_7_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_8_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_9_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_10_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_7_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_8_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_9_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_6_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_7_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_8_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_10_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_7_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_8_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_9_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_10_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_7_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_8_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_9_n_0 ;
  wire \add_ln16_13_reg_998_reg[11]_i_2_n_0 ;
  wire \add_ln16_13_reg_998_reg[11]_i_2_n_1 ;
  wire \add_ln16_13_reg_998_reg[11]_i_2_n_2 ;
  wire \add_ln16_13_reg_998_reg[11]_i_2_n_3 ;
  wire \add_ln16_13_reg_998_reg[15]_i_2_n_0 ;
  wire \add_ln16_13_reg_998_reg[15]_i_2_n_1 ;
  wire \add_ln16_13_reg_998_reg[15]_i_2_n_2 ;
  wire \add_ln16_13_reg_998_reg[15]_i_2_n_3 ;
  wire \add_ln16_13_reg_998_reg[19]_i_2_n_3 ;
  wire \add_ln16_13_reg_998_reg[3]_i_2_n_0 ;
  wire \add_ln16_13_reg_998_reg[3]_i_2_n_1 ;
  wire \add_ln16_13_reg_998_reg[3]_i_2_n_2 ;
  wire \add_ln16_13_reg_998_reg[3]_i_2_n_3 ;
  wire \add_ln16_13_reg_998_reg[7]_i_2_n_0 ;
  wire \add_ln16_13_reg_998_reg[7]_i_2_n_1 ;
  wire \add_ln16_13_reg_998_reg[7]_i_2_n_2 ;
  wire \add_ln16_13_reg_998_reg[7]_i_2_n_3 ;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_88;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire [17:0]sext_ln16_28_fu_763_p1;
  wire [3:1]\NLW_add_ln16_13_reg_998_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_13_reg_998_reg[19]_i_2_O_UNCONNECTED ;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_10 
       (.I0(p_reg_reg_n_97),
        .I1(P[8]),
        .O(\add_ln16_13_reg_998[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_7 
       (.I0(p_reg_reg_n_94),
        .I1(P[11]),
        .O(\add_ln16_13_reg_998[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_8 
       (.I0(p_reg_reg_n_95),
        .I1(P[10]),
        .O(\add_ln16_13_reg_998[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_9 
       (.I0(p_reg_reg_n_96),
        .I1(P[9]),
        .O(\add_ln16_13_reg_998[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_10 
       (.I0(p_reg_reg_n_93),
        .I1(P[12]),
        .O(\add_ln16_13_reg_998[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_7 
       (.I0(p_reg_reg_n_90),
        .I1(P[15]),
        .O(\add_ln16_13_reg_998[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_8 
       (.I0(p_reg_reg_n_91),
        .I1(P[14]),
        .O(\add_ln16_13_reg_998[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_9 
       (.I0(p_reg_reg_n_92),
        .I1(P[13]),
        .O(\add_ln16_13_reg_998[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_13_reg_998[19]_i_6 
       (.I0(p_reg_reg_n_88),
        .O(\add_ln16_13_reg_998[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_7 
       (.I0(p_reg_reg_n_88),
        .I1(P[17]),
        .O(\add_ln16_13_reg_998[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_8 
       (.I0(p_reg_reg_n_89),
        .I1(P[16]),
        .O(\add_ln16_13_reg_998[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_10 
       (.I0(p_reg_reg_n_105),
        .I1(P[0]),
        .O(\add_ln16_13_reg_998[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_7 
       (.I0(p_reg_reg_n_102),
        .I1(P[3]),
        .O(\add_ln16_13_reg_998[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_8 
       (.I0(p_reg_reg_n_103),
        .I1(P[2]),
        .O(\add_ln16_13_reg_998[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_9 
       (.I0(p_reg_reg_n_104),
        .I1(P[1]),
        .O(\add_ln16_13_reg_998[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_10 
       (.I0(p_reg_reg_n_101),
        .I1(P[4]),
        .O(\add_ln16_13_reg_998[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_7 
       (.I0(p_reg_reg_n_98),
        .I1(P[7]),
        .O(\add_ln16_13_reg_998[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_8 
       (.I0(p_reg_reg_n_99),
        .I1(P[6]),
        .O(\add_ln16_13_reg_998[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_9 
       (.I0(p_reg_reg_n_100),
        .I1(P[5]),
        .O(\add_ln16_13_reg_998[7]_i_9_n_0 ));
  CARRY4 \add_ln16_13_reg_998_reg[11]_i_2 
       (.CI(\add_ln16_13_reg_998_reg[7]_i_2_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[11]_i_2_n_0 ,\add_ln16_13_reg_998_reg[11]_i_2_n_1 ,\add_ln16_13_reg_998_reg[11]_i_2_n_2 ,\add_ln16_13_reg_998_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(sext_ln16_28_fu_763_p1[11:8]),
        .S({\add_ln16_13_reg_998[11]_i_7_n_0 ,\add_ln16_13_reg_998[11]_i_8_n_0 ,\add_ln16_13_reg_998[11]_i_9_n_0 ,\add_ln16_13_reg_998[11]_i_10_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[15]_i_2 
       (.CI(\add_ln16_13_reg_998_reg[11]_i_2_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[15]_i_2_n_0 ,\add_ln16_13_reg_998_reg[15]_i_2_n_1 ,\add_ln16_13_reg_998_reg[15]_i_2_n_2 ,\add_ln16_13_reg_998_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(sext_ln16_28_fu_763_p1[15:12]),
        .S({\add_ln16_13_reg_998[15]_i_7_n_0 ,\add_ln16_13_reg_998[15]_i_8_n_0 ,\add_ln16_13_reg_998[15]_i_9_n_0 ,\add_ln16_13_reg_998[15]_i_10_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[19]_i_2 
       (.CI(\add_ln16_13_reg_998_reg[15]_i_2_n_0 ),
        .CO({\NLW_add_ln16_13_reg_998_reg[19]_i_2_CO_UNCONNECTED [3],CO,\NLW_add_ln16_13_reg_998_reg[19]_i_2_CO_UNCONNECTED [1],\add_ln16_13_reg_998_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln16_13_reg_998[19]_i_6_n_0 ,p_reg_reg_n_89}),
        .O({\NLW_add_ln16_13_reg_998_reg[19]_i_2_O_UNCONNECTED [3:2],sext_ln16_28_fu_763_p1[17:16]}),
        .S({1'b0,1'b1,\add_ln16_13_reg_998[19]_i_7_n_0 ,\add_ln16_13_reg_998[19]_i_8_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\add_ln16_13_reg_998_reg[3]_i_2_n_0 ,\add_ln16_13_reg_998_reg[3]_i_2_n_1 ,\add_ln16_13_reg_998_reg[3]_i_2_n_2 ,\add_ln16_13_reg_998_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(sext_ln16_28_fu_763_p1[3:0]),
        .S({\add_ln16_13_reg_998[3]_i_7_n_0 ,\add_ln16_13_reg_998[3]_i_8_n_0 ,\add_ln16_13_reg_998[3]_i_9_n_0 ,\add_ln16_13_reg_998[3]_i_10_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[7]_i_2 
       (.CI(\add_ln16_13_reg_998_reg[3]_i_2_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[7]_i_2_n_0 ,\add_ln16_13_reg_998_reg[7]_i_2_n_1 ,\add_ln16_13_reg_998_reg[7]_i_2_n_2 ,\add_ln16_13_reg_998_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(sext_ln16_28_fu_763_p1[7:4]),
        .S({\add_ln16_13_reg_998[7]_i_7_n_0 ,\add_ln16_13_reg_998[7]_i_8_n_0 ,\add_ln16_13_reg_998[7]_i_9_n_0 ,\add_ln16_13_reg_998[7]_i_10_n_0 }));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],p_reg_reg_n_88,p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_10
   (P,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;

  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_11
   (P,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;

  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_12
   (sext_ln16_25_fu_747_p1,
    CO,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0,
    P);
  output [17:0]sext_ln16_25_fu_747_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire \add_ln16_13_reg_998[11]_i_12_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_13_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_14_n_0 ;
  wire \add_ln16_13_reg_998[11]_i_15_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_12_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_13_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_14_n_0 ;
  wire \add_ln16_13_reg_998[15]_i_15_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_10_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_11_n_0 ;
  wire \add_ln16_13_reg_998[19]_i_12_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_12_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_13_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_14_n_0 ;
  wire \add_ln16_13_reg_998[3]_i_15_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_12_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_13_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_14_n_0 ;
  wire \add_ln16_13_reg_998[7]_i_15_n_0 ;
  wire \add_ln16_13_reg_998_reg[11]_i_11_n_0 ;
  wire \add_ln16_13_reg_998_reg[11]_i_11_n_1 ;
  wire \add_ln16_13_reg_998_reg[11]_i_11_n_2 ;
  wire \add_ln16_13_reg_998_reg[11]_i_11_n_3 ;
  wire \add_ln16_13_reg_998_reg[15]_i_11_n_0 ;
  wire \add_ln16_13_reg_998_reg[15]_i_11_n_1 ;
  wire \add_ln16_13_reg_998_reg[15]_i_11_n_2 ;
  wire \add_ln16_13_reg_998_reg[15]_i_11_n_3 ;
  wire \add_ln16_13_reg_998_reg[19]_i_9_n_3 ;
  wire \add_ln16_13_reg_998_reg[3]_i_11_n_0 ;
  wire \add_ln16_13_reg_998_reg[3]_i_11_n_1 ;
  wire \add_ln16_13_reg_998_reg[3]_i_11_n_2 ;
  wire \add_ln16_13_reg_998_reg[3]_i_11_n_3 ;
  wire \add_ln16_13_reg_998_reg[7]_i_11_n_0 ;
  wire \add_ln16_13_reg_998_reg[7]_i_11_n_1 ;
  wire \add_ln16_13_reg_998_reg[7]_i_11_n_2 ;
  wire \add_ln16_13_reg_998_reg[7]_i_11_n_3 ;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_88;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire [17:0]sext_ln16_25_fu_747_p1;
  wire [3:1]\NLW_add_ln16_13_reg_998_reg[19]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_13_reg_998_reg[19]_i_9_O_UNCONNECTED ;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_12 
       (.I0(p_reg_reg_n_94),
        .I1(P[11]),
        .O(\add_ln16_13_reg_998[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_13 
       (.I0(p_reg_reg_n_95),
        .I1(P[10]),
        .O(\add_ln16_13_reg_998[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_14 
       (.I0(p_reg_reg_n_96),
        .I1(P[9]),
        .O(\add_ln16_13_reg_998[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[11]_i_15 
       (.I0(p_reg_reg_n_97),
        .I1(P[8]),
        .O(\add_ln16_13_reg_998[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_12 
       (.I0(p_reg_reg_n_90),
        .I1(P[15]),
        .O(\add_ln16_13_reg_998[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_13 
       (.I0(p_reg_reg_n_91),
        .I1(P[14]),
        .O(\add_ln16_13_reg_998[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_14 
       (.I0(p_reg_reg_n_92),
        .I1(P[13]),
        .O(\add_ln16_13_reg_998[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[15]_i_15 
       (.I0(p_reg_reg_n_93),
        .I1(P[12]),
        .O(\add_ln16_13_reg_998[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_13_reg_998[19]_i_10 
       (.I0(p_reg_reg_n_88),
        .O(\add_ln16_13_reg_998[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_11 
       (.I0(p_reg_reg_n_88),
        .I1(P[17]),
        .O(\add_ln16_13_reg_998[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[19]_i_12 
       (.I0(p_reg_reg_n_89),
        .I1(P[16]),
        .O(\add_ln16_13_reg_998[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_12 
       (.I0(p_reg_reg_n_102),
        .I1(P[3]),
        .O(\add_ln16_13_reg_998[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_13 
       (.I0(p_reg_reg_n_103),
        .I1(P[2]),
        .O(\add_ln16_13_reg_998[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_14 
       (.I0(p_reg_reg_n_104),
        .I1(P[1]),
        .O(\add_ln16_13_reg_998[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[3]_i_15 
       (.I0(p_reg_reg_n_105),
        .I1(P[0]),
        .O(\add_ln16_13_reg_998[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_12 
       (.I0(p_reg_reg_n_98),
        .I1(P[7]),
        .O(\add_ln16_13_reg_998[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_13 
       (.I0(p_reg_reg_n_99),
        .I1(P[6]),
        .O(\add_ln16_13_reg_998[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_14 
       (.I0(p_reg_reg_n_100),
        .I1(P[5]),
        .O(\add_ln16_13_reg_998[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_13_reg_998[7]_i_15 
       (.I0(p_reg_reg_n_101),
        .I1(P[4]),
        .O(\add_ln16_13_reg_998[7]_i_15_n_0 ));
  CARRY4 \add_ln16_13_reg_998_reg[11]_i_11 
       (.CI(\add_ln16_13_reg_998_reg[7]_i_11_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[11]_i_11_n_0 ,\add_ln16_13_reg_998_reg[11]_i_11_n_1 ,\add_ln16_13_reg_998_reg[11]_i_11_n_2 ,\add_ln16_13_reg_998_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(sext_ln16_25_fu_747_p1[11:8]),
        .S({\add_ln16_13_reg_998[11]_i_12_n_0 ,\add_ln16_13_reg_998[11]_i_13_n_0 ,\add_ln16_13_reg_998[11]_i_14_n_0 ,\add_ln16_13_reg_998[11]_i_15_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[15]_i_11 
       (.CI(\add_ln16_13_reg_998_reg[11]_i_11_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[15]_i_11_n_0 ,\add_ln16_13_reg_998_reg[15]_i_11_n_1 ,\add_ln16_13_reg_998_reg[15]_i_11_n_2 ,\add_ln16_13_reg_998_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(sext_ln16_25_fu_747_p1[15:12]),
        .S({\add_ln16_13_reg_998[15]_i_12_n_0 ,\add_ln16_13_reg_998[15]_i_13_n_0 ,\add_ln16_13_reg_998[15]_i_14_n_0 ,\add_ln16_13_reg_998[15]_i_15_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[19]_i_9 
       (.CI(\add_ln16_13_reg_998_reg[15]_i_11_n_0 ),
        .CO({\NLW_add_ln16_13_reg_998_reg[19]_i_9_CO_UNCONNECTED [3],CO,\NLW_add_ln16_13_reg_998_reg[19]_i_9_CO_UNCONNECTED [1],\add_ln16_13_reg_998_reg[19]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln16_13_reg_998[19]_i_10_n_0 ,p_reg_reg_n_89}),
        .O({\NLW_add_ln16_13_reg_998_reg[19]_i_9_O_UNCONNECTED [3:2],sext_ln16_25_fu_747_p1[17:16]}),
        .S({1'b0,1'b1,\add_ln16_13_reg_998[19]_i_11_n_0 ,\add_ln16_13_reg_998[19]_i_12_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\add_ln16_13_reg_998_reg[3]_i_11_n_0 ,\add_ln16_13_reg_998_reg[3]_i_11_n_1 ,\add_ln16_13_reg_998_reg[3]_i_11_n_2 ,\add_ln16_13_reg_998_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(sext_ln16_25_fu_747_p1[3:0]),
        .S({\add_ln16_13_reg_998[3]_i_12_n_0 ,\add_ln16_13_reg_998[3]_i_13_n_0 ,\add_ln16_13_reg_998[3]_i_14_n_0 ,\add_ln16_13_reg_998[3]_i_15_n_0 }));
  CARRY4 \add_ln16_13_reg_998_reg[7]_i_11 
       (.CI(\add_ln16_13_reg_998_reg[3]_i_11_n_0 ),
        .CO({\add_ln16_13_reg_998_reg[7]_i_11_n_0 ,\add_ln16_13_reg_998_reg[7]_i_11_n_1 ,\add_ln16_13_reg_998_reg[7]_i_11_n_2 ,\add_ln16_13_reg_998_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(sext_ln16_25_fu_747_p1[7:4]),
        .S({\add_ln16_13_reg_998[7]_i_12_n_0 ,\add_ln16_13_reg_998[7]_i_13_n_0 ,\add_ln16_13_reg_998[7]_i_14_n_0 ,\add_ln16_13_reg_998[7]_i_15_n_0 }));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],p_reg_reg_n_88,p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_13
   (P,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;

  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_7
   (P,
    ap_clk,
    A,
    Q,
    p_reg_reg_0);
  output [17:0]P;
  input ap_clk;
  input [8:0]A;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;

  wire [8:0]A;
  wire [17:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A[8],A}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_8
   (sext_ln16_18_fu_709_p1,
    CO,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0,
    P);
  output [17:0]sext_ln16_18_fu_709_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire \add_ln16_6_reg_993[11]_i_12_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_13_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_14_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_15_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_12_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_13_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_14_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_15_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_10_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_11_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_12_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_12_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_13_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_14_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_15_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_12_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_13_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_14_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_15_n_0 ;
  wire \add_ln16_6_reg_993_reg[11]_i_11_n_0 ;
  wire \add_ln16_6_reg_993_reg[11]_i_11_n_1 ;
  wire \add_ln16_6_reg_993_reg[11]_i_11_n_2 ;
  wire \add_ln16_6_reg_993_reg[11]_i_11_n_3 ;
  wire \add_ln16_6_reg_993_reg[15]_i_11_n_0 ;
  wire \add_ln16_6_reg_993_reg[15]_i_11_n_1 ;
  wire \add_ln16_6_reg_993_reg[15]_i_11_n_2 ;
  wire \add_ln16_6_reg_993_reg[15]_i_11_n_3 ;
  wire \add_ln16_6_reg_993_reg[19]_i_9_n_3 ;
  wire \add_ln16_6_reg_993_reg[3]_i_11_n_0 ;
  wire \add_ln16_6_reg_993_reg[3]_i_11_n_1 ;
  wire \add_ln16_6_reg_993_reg[3]_i_11_n_2 ;
  wire \add_ln16_6_reg_993_reg[3]_i_11_n_3 ;
  wire \add_ln16_6_reg_993_reg[7]_i_11_n_0 ;
  wire \add_ln16_6_reg_993_reg[7]_i_11_n_1 ;
  wire \add_ln16_6_reg_993_reg[7]_i_11_n_2 ;
  wire \add_ln16_6_reg_993_reg[7]_i_11_n_3 ;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_88;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire [17:0]sext_ln16_18_fu_709_p1;
  wire [3:1]\NLW_add_ln16_6_reg_993_reg[19]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_6_reg_993_reg[19]_i_9_O_UNCONNECTED ;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_12 
       (.I0(p_reg_reg_n_94),
        .I1(P[11]),
        .O(\add_ln16_6_reg_993[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_13 
       (.I0(p_reg_reg_n_95),
        .I1(P[10]),
        .O(\add_ln16_6_reg_993[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_14 
       (.I0(p_reg_reg_n_96),
        .I1(P[9]),
        .O(\add_ln16_6_reg_993[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_15 
       (.I0(p_reg_reg_n_97),
        .I1(P[8]),
        .O(\add_ln16_6_reg_993[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_12 
       (.I0(p_reg_reg_n_90),
        .I1(P[15]),
        .O(\add_ln16_6_reg_993[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_13 
       (.I0(p_reg_reg_n_91),
        .I1(P[14]),
        .O(\add_ln16_6_reg_993[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_14 
       (.I0(p_reg_reg_n_92),
        .I1(P[13]),
        .O(\add_ln16_6_reg_993[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_15 
       (.I0(p_reg_reg_n_93),
        .I1(P[12]),
        .O(\add_ln16_6_reg_993[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_6_reg_993[19]_i_10 
       (.I0(p_reg_reg_n_88),
        .O(\add_ln16_6_reg_993[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_11 
       (.I0(p_reg_reg_n_88),
        .I1(P[17]),
        .O(\add_ln16_6_reg_993[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_12 
       (.I0(p_reg_reg_n_89),
        .I1(P[16]),
        .O(\add_ln16_6_reg_993[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_12 
       (.I0(p_reg_reg_n_102),
        .I1(P[3]),
        .O(\add_ln16_6_reg_993[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_13 
       (.I0(p_reg_reg_n_103),
        .I1(P[2]),
        .O(\add_ln16_6_reg_993[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_14 
       (.I0(p_reg_reg_n_104),
        .I1(P[1]),
        .O(\add_ln16_6_reg_993[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_15 
       (.I0(p_reg_reg_n_105),
        .I1(P[0]),
        .O(\add_ln16_6_reg_993[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_12 
       (.I0(p_reg_reg_n_98),
        .I1(P[7]),
        .O(\add_ln16_6_reg_993[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_13 
       (.I0(p_reg_reg_n_99),
        .I1(P[6]),
        .O(\add_ln16_6_reg_993[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_14 
       (.I0(p_reg_reg_n_100),
        .I1(P[5]),
        .O(\add_ln16_6_reg_993[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_15 
       (.I0(p_reg_reg_n_101),
        .I1(P[4]),
        .O(\add_ln16_6_reg_993[7]_i_15_n_0 ));
  CARRY4 \add_ln16_6_reg_993_reg[11]_i_11 
       (.CI(\add_ln16_6_reg_993_reg[7]_i_11_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[11]_i_11_n_0 ,\add_ln16_6_reg_993_reg[11]_i_11_n_1 ,\add_ln16_6_reg_993_reg[11]_i_11_n_2 ,\add_ln16_6_reg_993_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(sext_ln16_18_fu_709_p1[11:8]),
        .S({\add_ln16_6_reg_993[11]_i_12_n_0 ,\add_ln16_6_reg_993[11]_i_13_n_0 ,\add_ln16_6_reg_993[11]_i_14_n_0 ,\add_ln16_6_reg_993[11]_i_15_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[15]_i_11 
       (.CI(\add_ln16_6_reg_993_reg[11]_i_11_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[15]_i_11_n_0 ,\add_ln16_6_reg_993_reg[15]_i_11_n_1 ,\add_ln16_6_reg_993_reg[15]_i_11_n_2 ,\add_ln16_6_reg_993_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(sext_ln16_18_fu_709_p1[15:12]),
        .S({\add_ln16_6_reg_993[15]_i_12_n_0 ,\add_ln16_6_reg_993[15]_i_13_n_0 ,\add_ln16_6_reg_993[15]_i_14_n_0 ,\add_ln16_6_reg_993[15]_i_15_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[19]_i_9 
       (.CI(\add_ln16_6_reg_993_reg[15]_i_11_n_0 ),
        .CO({\NLW_add_ln16_6_reg_993_reg[19]_i_9_CO_UNCONNECTED [3],CO,\NLW_add_ln16_6_reg_993_reg[19]_i_9_CO_UNCONNECTED [1],\add_ln16_6_reg_993_reg[19]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln16_6_reg_993[19]_i_10_n_0 ,p_reg_reg_n_89}),
        .O({\NLW_add_ln16_6_reg_993_reg[19]_i_9_O_UNCONNECTED [3:2],sext_ln16_18_fu_709_p1[17:16]}),
        .S({1'b0,1'b1,\add_ln16_6_reg_993[19]_i_11_n_0 ,\add_ln16_6_reg_993[19]_i_12_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\add_ln16_6_reg_993_reg[3]_i_11_n_0 ,\add_ln16_6_reg_993_reg[3]_i_11_n_1 ,\add_ln16_6_reg_993_reg[3]_i_11_n_2 ,\add_ln16_6_reg_993_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(sext_ln16_18_fu_709_p1[3:0]),
        .S({\add_ln16_6_reg_993[3]_i_12_n_0 ,\add_ln16_6_reg_993[3]_i_13_n_0 ,\add_ln16_6_reg_993[3]_i_14_n_0 ,\add_ln16_6_reg_993[3]_i_15_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[7]_i_11 
       (.CI(\add_ln16_6_reg_993_reg[3]_i_11_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[7]_i_11_n_0 ,\add_ln16_6_reg_993_reg[7]_i_11_n_1 ,\add_ln16_6_reg_993_reg[7]_i_11_n_2 ,\add_ln16_6_reg_993_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(sext_ln16_18_fu_709_p1[7:4]),
        .S({\add_ln16_6_reg_993[7]_i_12_n_0 ,\add_ln16_6_reg_993[7]_i_13_n_0 ,\add_ln16_6_reg_993[7]_i_14_n_0 ,\add_ln16_6_reg_993[7]_i_15_n_0 }));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],p_reg_reg_n_88,p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_9
   (sext_ln16_21_fu_725_p1,
    CO,
    ap_clk,
    m_reg_reg_0,
    Q,
    p_reg_reg_0,
    P);
  output [17:0]sext_ln16_21_fu_725_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [0:0]Q;
  input [8:0]p_reg_reg_0;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire [0:0]Q;
  wire \add_ln16_6_reg_993[11]_i_10_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_7_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_8_n_0 ;
  wire \add_ln16_6_reg_993[11]_i_9_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_10_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_7_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_8_n_0 ;
  wire \add_ln16_6_reg_993[15]_i_9_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_6_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_7_n_0 ;
  wire \add_ln16_6_reg_993[19]_i_8_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_10_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_7_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_8_n_0 ;
  wire \add_ln16_6_reg_993[3]_i_9_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_10_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_7_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_8_n_0 ;
  wire \add_ln16_6_reg_993[7]_i_9_n_0 ;
  wire \add_ln16_6_reg_993_reg[11]_i_2_n_0 ;
  wire \add_ln16_6_reg_993_reg[11]_i_2_n_1 ;
  wire \add_ln16_6_reg_993_reg[11]_i_2_n_2 ;
  wire \add_ln16_6_reg_993_reg[11]_i_2_n_3 ;
  wire \add_ln16_6_reg_993_reg[15]_i_2_n_0 ;
  wire \add_ln16_6_reg_993_reg[15]_i_2_n_1 ;
  wire \add_ln16_6_reg_993_reg[15]_i_2_n_2 ;
  wire \add_ln16_6_reg_993_reg[15]_i_2_n_3 ;
  wire \add_ln16_6_reg_993_reg[19]_i_2_n_3 ;
  wire \add_ln16_6_reg_993_reg[3]_i_2_n_0 ;
  wire \add_ln16_6_reg_993_reg[3]_i_2_n_1 ;
  wire \add_ln16_6_reg_993_reg[3]_i_2_n_2 ;
  wire \add_ln16_6_reg_993_reg[3]_i_2_n_3 ;
  wire \add_ln16_6_reg_993_reg[7]_i_2_n_0 ;
  wire \add_ln16_6_reg_993_reg[7]_i_2_n_1 ;
  wire \add_ln16_6_reg_993_reg[7]_i_2_n_2 ;
  wire \add_ln16_6_reg_993_reg[7]_i_2_n_3 ;
  wire ap_clk;
  wire [8:0]m_reg_reg_0;
  wire m_reg_reg_n_106;
  wire m_reg_reg_n_107;
  wire m_reg_reg_n_108;
  wire m_reg_reg_n_109;
  wire m_reg_reg_n_110;
  wire m_reg_reg_n_111;
  wire m_reg_reg_n_112;
  wire m_reg_reg_n_113;
  wire m_reg_reg_n_114;
  wire m_reg_reg_n_115;
  wire m_reg_reg_n_116;
  wire m_reg_reg_n_117;
  wire m_reg_reg_n_118;
  wire m_reg_reg_n_119;
  wire m_reg_reg_n_120;
  wire m_reg_reg_n_121;
  wire m_reg_reg_n_122;
  wire m_reg_reg_n_123;
  wire m_reg_reg_n_124;
  wire m_reg_reg_n_125;
  wire m_reg_reg_n_126;
  wire m_reg_reg_n_127;
  wire m_reg_reg_n_128;
  wire m_reg_reg_n_129;
  wire m_reg_reg_n_130;
  wire m_reg_reg_n_131;
  wire m_reg_reg_n_132;
  wire m_reg_reg_n_133;
  wire m_reg_reg_n_134;
  wire m_reg_reg_n_135;
  wire m_reg_reg_n_136;
  wire m_reg_reg_n_137;
  wire m_reg_reg_n_138;
  wire m_reg_reg_n_139;
  wire m_reg_reg_n_140;
  wire m_reg_reg_n_141;
  wire m_reg_reg_n_142;
  wire m_reg_reg_n_143;
  wire m_reg_reg_n_144;
  wire m_reg_reg_n_145;
  wire m_reg_reg_n_146;
  wire m_reg_reg_n_147;
  wire m_reg_reg_n_148;
  wire m_reg_reg_n_149;
  wire m_reg_reg_n_150;
  wire m_reg_reg_n_151;
  wire m_reg_reg_n_152;
  wire m_reg_reg_n_153;
  wire [8:0]p_reg_reg_0;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_88;
  wire p_reg_reg_n_89;
  wire p_reg_reg_n_90;
  wire p_reg_reg_n_91;
  wire p_reg_reg_n_92;
  wire p_reg_reg_n_93;
  wire p_reg_reg_n_94;
  wire p_reg_reg_n_95;
  wire p_reg_reg_n_96;
  wire p_reg_reg_n_97;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire [17:0]sext_ln16_21_fu_725_p1;
  wire [3:1]\NLW_add_ln16_6_reg_993_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_6_reg_993_reg[19]_i_2_O_UNCONNECTED ;
  wire NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_reg_reg_P_UNCONNECTED;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_10 
       (.I0(p_reg_reg_n_97),
        .I1(P[8]),
        .O(\add_ln16_6_reg_993[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_7 
       (.I0(p_reg_reg_n_94),
        .I1(P[11]),
        .O(\add_ln16_6_reg_993[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_8 
       (.I0(p_reg_reg_n_95),
        .I1(P[10]),
        .O(\add_ln16_6_reg_993[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[11]_i_9 
       (.I0(p_reg_reg_n_96),
        .I1(P[9]),
        .O(\add_ln16_6_reg_993[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_10 
       (.I0(p_reg_reg_n_93),
        .I1(P[12]),
        .O(\add_ln16_6_reg_993[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_7 
       (.I0(p_reg_reg_n_90),
        .I1(P[15]),
        .O(\add_ln16_6_reg_993[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_8 
       (.I0(p_reg_reg_n_91),
        .I1(P[14]),
        .O(\add_ln16_6_reg_993[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[15]_i_9 
       (.I0(p_reg_reg_n_92),
        .I1(P[13]),
        .O(\add_ln16_6_reg_993[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_6_reg_993[19]_i_6 
       (.I0(p_reg_reg_n_88),
        .O(\add_ln16_6_reg_993[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_7 
       (.I0(p_reg_reg_n_88),
        .I1(P[17]),
        .O(\add_ln16_6_reg_993[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[19]_i_8 
       (.I0(p_reg_reg_n_89),
        .I1(P[16]),
        .O(\add_ln16_6_reg_993[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_10 
       (.I0(p_reg_reg_n_105),
        .I1(P[0]),
        .O(\add_ln16_6_reg_993[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_7 
       (.I0(p_reg_reg_n_102),
        .I1(P[3]),
        .O(\add_ln16_6_reg_993[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_8 
       (.I0(p_reg_reg_n_103),
        .I1(P[2]),
        .O(\add_ln16_6_reg_993[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[3]_i_9 
       (.I0(p_reg_reg_n_104),
        .I1(P[1]),
        .O(\add_ln16_6_reg_993[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_10 
       (.I0(p_reg_reg_n_101),
        .I1(P[4]),
        .O(\add_ln16_6_reg_993[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_7 
       (.I0(p_reg_reg_n_98),
        .I1(P[7]),
        .O(\add_ln16_6_reg_993[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_8 
       (.I0(p_reg_reg_n_99),
        .I1(P[6]),
        .O(\add_ln16_6_reg_993[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_993[7]_i_9 
       (.I0(p_reg_reg_n_100),
        .I1(P[5]),
        .O(\add_ln16_6_reg_993[7]_i_9_n_0 ));
  CARRY4 \add_ln16_6_reg_993_reg[11]_i_2 
       (.CI(\add_ln16_6_reg_993_reg[7]_i_2_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[11]_i_2_n_0 ,\add_ln16_6_reg_993_reg[11]_i_2_n_1 ,\add_ln16_6_reg_993_reg[11]_i_2_n_2 ,\add_ln16_6_reg_993_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(sext_ln16_21_fu_725_p1[11:8]),
        .S({\add_ln16_6_reg_993[11]_i_7_n_0 ,\add_ln16_6_reg_993[11]_i_8_n_0 ,\add_ln16_6_reg_993[11]_i_9_n_0 ,\add_ln16_6_reg_993[11]_i_10_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[15]_i_2 
       (.CI(\add_ln16_6_reg_993_reg[11]_i_2_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[15]_i_2_n_0 ,\add_ln16_6_reg_993_reg[15]_i_2_n_1 ,\add_ln16_6_reg_993_reg[15]_i_2_n_2 ,\add_ln16_6_reg_993_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(sext_ln16_21_fu_725_p1[15:12]),
        .S({\add_ln16_6_reg_993[15]_i_7_n_0 ,\add_ln16_6_reg_993[15]_i_8_n_0 ,\add_ln16_6_reg_993[15]_i_9_n_0 ,\add_ln16_6_reg_993[15]_i_10_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[19]_i_2 
       (.CI(\add_ln16_6_reg_993_reg[15]_i_2_n_0 ),
        .CO({\NLW_add_ln16_6_reg_993_reg[19]_i_2_CO_UNCONNECTED [3],CO,\NLW_add_ln16_6_reg_993_reg[19]_i_2_CO_UNCONNECTED [1],\add_ln16_6_reg_993_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln16_6_reg_993[19]_i_6_n_0 ,p_reg_reg_n_89}),
        .O({\NLW_add_ln16_6_reg_993_reg[19]_i_2_O_UNCONNECTED [3:2],sext_ln16_21_fu_725_p1[17:16]}),
        .S({1'b0,1'b1,\add_ln16_6_reg_993[19]_i_7_n_0 ,\add_ln16_6_reg_993[19]_i_8_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\add_ln16_6_reg_993_reg[3]_i_2_n_0 ,\add_ln16_6_reg_993_reg[3]_i_2_n_1 ,\add_ln16_6_reg_993_reg[3]_i_2_n_2 ,\add_ln16_6_reg_993_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(sext_ln16_21_fu_725_p1[3:0]),
        .S({\add_ln16_6_reg_993[3]_i_7_n_0 ,\add_ln16_6_reg_993[3]_i_8_n_0 ,\add_ln16_6_reg_993[3]_i_9_n_0 ,\add_ln16_6_reg_993[3]_i_10_n_0 }));
  CARRY4 \add_ln16_6_reg_993_reg[7]_i_2 
       (.CI(\add_ln16_6_reg_993_reg[3]_i_2_n_0 ),
        .CO({\add_ln16_6_reg_993_reg[7]_i_2_n_0 ,\add_ln16_6_reg_993_reg[7]_i_2_n_1 ,\add_ln16_6_reg_993_reg[7]_i_2_n_2 ,\add_ln16_6_reg_993_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(sext_ln16_21_fu_725_p1[7:4]),
        .S({\add_ln16_6_reg_993[7]_i_7_n_0 ,\add_ln16_6_reg_993[7]_i_8_n_0 ,\add_ln16_6_reg_993[7]_i_9_n_0 ,\add_ln16_6_reg_993[7]_i_10_n_0 }));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_reg_reg
       (.A({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0[8],m_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_reg_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_m_reg_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_reg_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg_reg
       (.A({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0[8],p_reg_reg_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:18],p_reg_reg_n_88,p_reg_reg_n_89,p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93,p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_reg_reg_n_106,m_reg_reg_n_107,m_reg_reg_n_108,m_reg_reg_n_109,m_reg_reg_n_110,m_reg_reg_n_111,m_reg_reg_n_112,m_reg_reg_n_113,m_reg_reg_n_114,m_reg_reg_n_115,m_reg_reg_n_116,m_reg_reg_n_117,m_reg_reg_n_118,m_reg_reg_n_119,m_reg_reg_n_120,m_reg_reg_n_121,m_reg_reg_n_122,m_reg_reg_n_123,m_reg_reg_n_124,m_reg_reg_n_125,m_reg_reg_n_126,m_reg_reg_n_127,m_reg_reg_n_128,m_reg_reg_n_129,m_reg_reg_n_130,m_reg_reg_n_131,m_reg_reg_n_132,m_reg_reg_n_133,m_reg_reg_n_134,m_reg_reg_n_135,m_reg_reg_n_136,m_reg_reg_n_137,m_reg_reg_n_138,m_reg_reg_n_139,m_reg_reg_n_140,m_reg_reg_n_141,m_reg_reg_n_142,m_reg_reg_n_143,m_reg_reg_n_144,m_reg_reg_n_145,m_reg_reg_n_146,m_reg_reg_n_147,m_reg_reg_n_148,m_reg_reg_n_149,m_reg_reg_n_150,m_reg_reg_n_151,m_reg_reg_n_152,m_reg_reg_n_153}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "eucHW_sqrt_fixed_32_32_s" *) 
module design_1_eucHW_0_0_eucHW_sqrt_fixed_32_32_s
   (\x_read_reg_1484_pp0_iter6_reg_reg[20]_0 ,
    res_I_V_47_fu_1468_p3,
    ap_clk,
    Q,
    \p_Val2_s_reg_1009_reg[0] );
  output \x_read_reg_1484_pp0_iter6_reg_reg[20]_0 ;
  output [15:0]res_I_V_47_fu_1468_p3;
  input ap_clk;
  input [20:0]Q;
  input [0:0]\p_Val2_s_reg_1009_reg[0] ;

  wire [20:0]Q;
  wire ap_clk;
  wire icmp_ln443_10_fu_1095_p2_carry__0_i_1_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry__0_i_2_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry__0_i_3_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry__0_i_4_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry__0_i_5_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry__0_i_6_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry__0_n_1;
  wire icmp_ln443_10_fu_1095_p2_carry__0_n_2;
  wire icmp_ln443_10_fu_1095_p2_carry__0_n_3;
  wire icmp_ln443_10_fu_1095_p2_carry_i_1_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_2_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_3_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_4_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_5_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_6_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_7_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_i_8_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_n_0;
  wire icmp_ln443_10_fu_1095_p2_carry_n_1;
  wire icmp_ln443_10_fu_1095_p2_carry_n_2;
  wire icmp_ln443_10_fu_1095_p2_carry_n_3;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_1_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_2_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_3_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_4_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_5_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_6_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_i_7_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry__0_n_1;
  wire icmp_ln443_11_fu_1171_p2_carry__0_n_2;
  wire icmp_ln443_11_fu_1171_p2_carry__0_n_3;
  wire icmp_ln443_11_fu_1171_p2_carry_i_1_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_2_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_3_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_4_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_5_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_6_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_7_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_i_8_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_n_0;
  wire icmp_ln443_11_fu_1171_p2_carry_n_1;
  wire icmp_ln443_11_fu_1171_p2_carry_n_2;
  wire icmp_ln443_11_fu_1171_p2_carry_n_3;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_1_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_2_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_3_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_4_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_5_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_6_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_7_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_i_8_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry__0_n_1;
  wire icmp_ln443_12_fu_1252_p2_carry__0_n_2;
  wire icmp_ln443_12_fu_1252_p2_carry__0_n_3;
  wire icmp_ln443_12_fu_1252_p2_carry_i_1_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_2_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_3_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_4_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_5_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_6_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_7_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_i_8_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_n_0;
  wire icmp_ln443_12_fu_1252_p2_carry_n_1;
  wire icmp_ln443_12_fu_1252_p2_carry_n_2;
  wire icmp_ln443_12_fu_1252_p2_carry_n_3;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_1_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_2_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_3_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_4_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_5_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_6_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_7_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_i_8_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__0_n_1;
  wire icmp_ln443_13_fu_1328_p2_carry__0_n_2;
  wire icmp_ln443_13_fu_1328_p2_carry__0_n_3;
  wire icmp_ln443_13_fu_1328_p2_carry__1_i_1_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry__1_n_3;
  wire icmp_ln443_13_fu_1328_p2_carry_i_1_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_2_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_3_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_4_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_5_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_6_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_7_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_i_8_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_n_0;
  wire icmp_ln443_13_fu_1328_p2_carry_n_1;
  wire icmp_ln443_13_fu_1328_p2_carry_n_2;
  wire icmp_ln443_13_fu_1328_p2_carry_n_3;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_1_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_2_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_3_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_4_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_5_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_6_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_7_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_i_8_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__0_n_1;
  wire icmp_ln443_14_fu_1400_p2_carry__0_n_2;
  wire icmp_ln443_14_fu_1400_p2_carry__0_n_3;
  wire icmp_ln443_14_fu_1400_p2_carry__1_i_1_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__1_i_2_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry__1_n_3;
  wire icmp_ln443_14_fu_1400_p2_carry_i_1_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_2_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_3_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_4_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_5_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_6_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_7_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_i_8_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_n_0;
  wire icmp_ln443_14_fu_1400_p2_carry_n_1;
  wire icmp_ln443_14_fu_1400_p2_carry_n_2;
  wire icmp_ln443_14_fu_1400_p2_carry_n_3;
  wire icmp_ln443_1_reg_1501;
  wire \icmp_ln443_1_reg_1501[0]_i_1_n_0 ;
  wire icmp_ln443_3_fu_543_p2;
  wire icmp_ln443_3_fu_543_p2_carry_i_1_n_0;
  wire icmp_ln443_3_fu_543_p2_carry_i_2_n_0;
  wire icmp_ln443_3_fu_543_p2_carry_i_3_n_0;
  wire icmp_ln443_3_fu_543_p2_carry_i_4_n_0;
  wire icmp_ln443_3_fu_543_p2_carry_i_5_n_0;
  wire icmp_ln443_3_fu_543_p2_carry_n_2;
  wire icmp_ln443_3_fu_543_p2_carry_n_3;
  wire icmp_ln443_3_reg_1524;
  wire icmp_ln443_4_fu_618_p2_carry_i_1_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_i_2_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_i_3_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_i_4_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_i_5_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_i_6_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_i_7_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_n_1;
  wire icmp_ln443_4_fu_618_p2_carry_n_2;
  wire icmp_ln443_4_fu_618_p2_carry_n_3;
  wire icmp_ln443_5_fu_700_p2;
  wire icmp_ln443_5_fu_700_p2_carry__0_i_1_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_1_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_2_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_3_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_4_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_5_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_6_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_7_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_i_8_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_n_0;
  wire icmp_ln443_5_fu_700_p2_carry_n_1;
  wire icmp_ln443_5_fu_700_p2_carry_n_2;
  wire icmp_ln443_5_fu_700_p2_carry_n_3;
  wire icmp_ln443_5_reg_1547;
  wire icmp_ln443_6_fu_775_p2_carry__0_i_1_n_0;
  wire icmp_ln443_6_fu_775_p2_carry__0_i_2_n_0;
  wire icmp_ln443_6_fu_775_p2_carry__0_n_3;
  wire icmp_ln443_6_fu_775_p2_carry_i_1_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_2_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_3_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_4_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_5_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_6_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_7_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_i_8_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_n_0;
  wire icmp_ln443_6_fu_775_p2_carry_n_1;
  wire icmp_ln443_6_fu_775_p2_carry_n_2;
  wire icmp_ln443_6_fu_775_p2_carry_n_3;
  wire icmp_ln443_7_fu_857_p2;
  wire icmp_ln443_7_fu_857_p2_carry__0_i_1_n_0;
  wire icmp_ln443_7_fu_857_p2_carry__0_i_2_n_0;
  wire icmp_ln443_7_fu_857_p2_carry__0_i_3_n_0;
  wire icmp_ln443_7_fu_857_p2_carry__0_n_3;
  wire icmp_ln443_7_fu_857_p2_carry_i_1_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_2_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_3_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_4_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_5_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_6_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_7_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_i_8_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_n_0;
  wire icmp_ln443_7_fu_857_p2_carry_n_1;
  wire icmp_ln443_7_fu_857_p2_carry_n_2;
  wire icmp_ln443_7_fu_857_p2_carry_n_3;
  wire icmp_ln443_7_reg_1570;
  wire icmp_ln443_8_fu_932_p2_carry__0_i_1_n_0;
  wire icmp_ln443_8_fu_932_p2_carry__0_i_2_n_0;
  wire icmp_ln443_8_fu_932_p2_carry__0_i_3_n_0;
  wire icmp_ln443_8_fu_932_p2_carry__0_i_4_n_0;
  wire icmp_ln443_8_fu_932_p2_carry__0_n_2;
  wire icmp_ln443_8_fu_932_p2_carry__0_n_3;
  wire icmp_ln443_8_fu_932_p2_carry_i_1_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_2_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_3_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_4_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_5_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_6_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_7_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_i_8_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_n_0;
  wire icmp_ln443_8_fu_932_p2_carry_n_1;
  wire icmp_ln443_8_fu_932_p2_carry_n_2;
  wire icmp_ln443_8_fu_932_p2_carry_n_3;
  wire icmp_ln443_9_fu_1014_p2_carry__0_i_1_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry__0_i_2_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry__0_i_3_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry__0_i_4_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry__0_i_5_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry__0_n_1;
  wire icmp_ln443_9_fu_1014_p2_carry__0_n_2;
  wire icmp_ln443_9_fu_1014_p2_carry__0_n_3;
  wire icmp_ln443_9_fu_1014_p2_carry_i_1_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_2_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_3_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_4_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_5_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_6_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_7_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_i_8_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_n_0;
  wire icmp_ln443_9_fu_1014_p2_carry_n_1;
  wire icmp_ln443_9_fu_1014_p2_carry_n_2;
  wire icmp_ln443_9_fu_1014_p2_carry_n_3;
  wire p_0_in0;
  wire [9:1]p_Result_31_reg_1593;
  wire [11:1]p_Result_37_reg_1616;
  wire p_Result_48_fu_1456_p2_carry__0_i_10_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_10_n_1;
  wire p_Result_48_fu_1456_p2_carry__0_i_10_n_2;
  wire p_Result_48_fu_1456_p2_carry__0_i_10_n_3;
  wire p_Result_48_fu_1456_p2_carry__0_i_14_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_15_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_16_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_17_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_18_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_19_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_1_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_20_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_21_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_22_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_23_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_24_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_2_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_3_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_4_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_5_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_6_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_7_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_8_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_9_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_i_9_n_1;
  wire p_Result_48_fu_1456_p2_carry__0_i_9_n_2;
  wire p_Result_48_fu_1456_p2_carry__0_i_9_n_3;
  wire p_Result_48_fu_1456_p2_carry__0_n_0;
  wire p_Result_48_fu_1456_p2_carry__0_n_1;
  wire p_Result_48_fu_1456_p2_carry__0_n_2;
  wire p_Result_48_fu_1456_p2_carry__0_n_3;
  wire p_Result_48_fu_1456_p2_carry__1_i_10_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_1_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_2_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_3_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_4_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_5_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_6_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_7_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_i_8_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_n_0;
  wire p_Result_48_fu_1456_p2_carry__1_n_1;
  wire p_Result_48_fu_1456_p2_carry__1_n_2;
  wire p_Result_48_fu_1456_p2_carry__1_n_3;
  wire p_Result_48_fu_1456_p2_carry__2_i_1_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_i_2_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_i_3_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_i_4_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_i_5_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_i_6_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_i_7_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_n_0;
  wire p_Result_48_fu_1456_p2_carry__2_n_1;
  wire p_Result_48_fu_1456_p2_carry__2_n_2;
  wire p_Result_48_fu_1456_p2_carry__2_n_3;
  wire p_Result_48_fu_1456_p2_carry_i_11_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_11_n_1;
  wire p_Result_48_fu_1456_p2_carry_i_11_n_2;
  wire p_Result_48_fu_1456_p2_carry_i_11_n_3;
  wire p_Result_48_fu_1456_p2_carry_i_14_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_15_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_16_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_17_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_18_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_19_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_1_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_20_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_21_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_22_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_23_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_24_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_2_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_3_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_4_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_5_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_6_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_7_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_8_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_9_n_0;
  wire p_Result_48_fu_1456_p2_carry_i_9_n_1;
  wire p_Result_48_fu_1456_p2_carry_i_9_n_2;
  wire p_Result_48_fu_1456_p2_carry_i_9_n_3;
  wire p_Result_48_fu_1456_p2_carry_n_0;
  wire p_Result_48_fu_1456_p2_carry_n_1;
  wire p_Result_48_fu_1456_p2_carry_n_2;
  wire p_Result_48_fu_1456_p2_carry_n_3;
  wire [6:6]p_Result_60_fu_529_p4;
  wire [6:4]p_Result_63_fu_604_p4;
  wire [8:4]p_Result_66_fu_686_p4;
  wire [8:3]p_Result_69_fu_761_p4;
  wire [10:3]p_Result_72_fu_843_p4;
  wire [10:3]p_Result_75_fu_918_p4;
  wire [11:4]p_Result_78_fu_1000_p4;
  wire [13:0]p_Result_81_reg_1598;
  wire \p_Result_81_reg_1598[13]_i_12_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_13_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_14_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_15_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_5_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_6_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_7_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_8_n_0 ;
  wire \p_Result_81_reg_1598[13]_i_9_n_0 ;
  wire \p_Result_81_reg_1598[2]_i_1_n_0 ;
  wire \p_Result_81_reg_1598[3]_i_3_n_0 ;
  wire \p_Result_81_reg_1598[3]_i_4_n_0 ;
  wire \p_Result_81_reg_1598[3]_i_5_n_0 ;
  wire \p_Result_81_reg_1598[3]_i_6_n_0 ;
  wire \p_Result_81_reg_1598[5]_i_3_n_0 ;
  wire \p_Result_81_reg_1598[5]_i_4_n_0 ;
  wire \p_Result_81_reg_1598[5]_i_5_n_0 ;
  wire \p_Result_81_reg_1598[5]_i_6_n_0 ;
  wire \p_Result_81_reg_1598[5]_i_7_n_0 ;
  wire \p_Result_81_reg_1598[5]_i_8_n_0 ;
  wire \p_Result_81_reg_1598[7]_i_4_n_0 ;
  wire \p_Result_81_reg_1598[7]_i_5_n_0 ;
  wire \p_Result_81_reg_1598[7]_i_6_n_0 ;
  wire \p_Result_81_reg_1598[7]_i_7_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_10_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_11_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_4_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_5_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_6_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_7_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_8_n_0 ;
  wire \p_Result_81_reg_1598[9]_i_9_n_0 ;
  wire \p_Result_81_reg_1598_reg[13]_i_3_n_2 ;
  wire \p_Result_81_reg_1598_reg[13]_i_3_n_3 ;
  wire \p_Result_81_reg_1598_reg[13]_i_4_n_1 ;
  wire \p_Result_81_reg_1598_reg[13]_i_4_n_2 ;
  wire \p_Result_81_reg_1598_reg[13]_i_4_n_3 ;
  wire \p_Result_81_reg_1598_reg[3]_i_2_n_0 ;
  wire \p_Result_81_reg_1598_reg[3]_i_2_n_1 ;
  wire \p_Result_81_reg_1598_reg[3]_i_2_n_2 ;
  wire \p_Result_81_reg_1598_reg[3]_i_2_n_3 ;
  wire \p_Result_81_reg_1598_reg[5]_i_2_n_0 ;
  wire \p_Result_81_reg_1598_reg[5]_i_2_n_1 ;
  wire \p_Result_81_reg_1598_reg[5]_i_2_n_2 ;
  wire \p_Result_81_reg_1598_reg[5]_i_2_n_3 ;
  wire \p_Result_81_reg_1598_reg[7]_i_3_n_0 ;
  wire \p_Result_81_reg_1598_reg[7]_i_3_n_1 ;
  wire \p_Result_81_reg_1598_reg[7]_i_3_n_2 ;
  wire \p_Result_81_reg_1598_reg[7]_i_3_n_3 ;
  wire \p_Result_81_reg_1598_reg[9]_i_3_n_0 ;
  wire \p_Result_81_reg_1598_reg[9]_i_3_n_1 ;
  wire \p_Result_81_reg_1598_reg[9]_i_3_n_2 ;
  wire \p_Result_81_reg_1598_reg[9]_i_3_n_3 ;
  wire [13:3]p_Result_84_fu_1157_p4;
  wire [15:0]p_Result_87_reg_1621;
  wire \p_Result_87_reg_1621[11]_i_10_n_0 ;
  wire \p_Result_87_reg_1621[11]_i_4_n_0 ;
  wire \p_Result_87_reg_1621[11]_i_6_n_0 ;
  wire \p_Result_87_reg_1621[11]_i_7_n_0 ;
  wire \p_Result_87_reg_1621[11]_i_8_n_0 ;
  wire \p_Result_87_reg_1621[11]_i_9_n_0 ;
  wire \p_Result_87_reg_1621[2]_i_1_n_0 ;
  wire \p_Result_87_reg_1621[3]_i_5_n_0 ;
  wire \p_Result_87_reg_1621[3]_i_6_n_0 ;
  wire \p_Result_87_reg_1621[3]_i_7_n_0 ;
  wire \p_Result_87_reg_1621[3]_i_8_n_0 ;
  wire \p_Result_87_reg_1621[5]_i_3_n_0 ;
  wire \p_Result_87_reg_1621[5]_i_4_n_0 ;
  wire \p_Result_87_reg_1621[5]_i_5_n_0 ;
  wire \p_Result_87_reg_1621[5]_i_6_n_0 ;
  wire \p_Result_87_reg_1621[7]_i_10_n_0 ;
  wire \p_Result_87_reg_1621[7]_i_4_n_0 ;
  wire \p_Result_87_reg_1621[7]_i_6_n_0 ;
  wire \p_Result_87_reg_1621[7]_i_7_n_0 ;
  wire \p_Result_87_reg_1621[7]_i_8_n_0 ;
  wire \p_Result_87_reg_1621[7]_i_9_n_0 ;
  wire \p_Result_87_reg_1621[9]_i_3_n_0 ;
  wire \p_Result_87_reg_1621[9]_i_4_n_0 ;
  wire \p_Result_87_reg_1621[9]_i_5_n_0 ;
  wire \p_Result_87_reg_1621[9]_i_6_n_0 ;
  wire \p_Result_87_reg_1621_reg[11]_i_2_n_0 ;
  wire \p_Result_87_reg_1621_reg[11]_i_2_n_1 ;
  wire \p_Result_87_reg_1621_reg[11]_i_2_n_2 ;
  wire \p_Result_87_reg_1621_reg[11]_i_2_n_3 ;
  wire \p_Result_87_reg_1621_reg[3]_i_2_n_0 ;
  wire \p_Result_87_reg_1621_reg[3]_i_2_n_1 ;
  wire \p_Result_87_reg_1621_reg[3]_i_2_n_2 ;
  wire \p_Result_87_reg_1621_reg[3]_i_2_n_3 ;
  wire \p_Result_87_reg_1621_reg[5]_i_2_n_0 ;
  wire \p_Result_87_reg_1621_reg[5]_i_2_n_1 ;
  wire \p_Result_87_reg_1621_reg[5]_i_2_n_2 ;
  wire \p_Result_87_reg_1621_reg[5]_i_2_n_3 ;
  wire \p_Result_87_reg_1621_reg[7]_i_2_n_0 ;
  wire \p_Result_87_reg_1621_reg[7]_i_2_n_1 ;
  wire \p_Result_87_reg_1621_reg[7]_i_2_n_2 ;
  wire \p_Result_87_reg_1621_reg[7]_i_2_n_3 ;
  wire \p_Result_87_reg_1621_reg[9]_i_2_n_0 ;
  wire \p_Result_87_reg_1621_reg[9]_i_2_n_1 ;
  wire \p_Result_87_reg_1621_reg[9]_i_2_n_2 ;
  wire \p_Result_87_reg_1621_reg[9]_i_2_n_3 ;
  wire [15:3]p_Result_90_fu_1314_p4;
  wire [18:3]p_Result_93_fu_1378_p1;
  wire [17:0]p_Result_93_reg_1640;
  wire \p_Result_93_reg_1640[11]_i_10_n_0 ;
  wire \p_Result_93_reg_1640[11]_i_4_n_0 ;
  wire \p_Result_93_reg_1640[11]_i_6_n_0 ;
  wire \p_Result_93_reg_1640[11]_i_7_n_0 ;
  wire \p_Result_93_reg_1640[11]_i_8_n_0 ;
  wire \p_Result_93_reg_1640[11]_i_9_n_0 ;
  wire \p_Result_93_reg_1640[13]_i_3_n_0 ;
  wire \p_Result_93_reg_1640[13]_i_4_n_0 ;
  wire \p_Result_93_reg_1640[13]_i_5_n_0 ;
  wire \p_Result_93_reg_1640[13]_i_6_n_0 ;
  wire \p_Result_93_reg_1640[2]_i_1_n_0 ;
  wire \p_Result_93_reg_1640[3]_i_5_n_0 ;
  wire \p_Result_93_reg_1640[3]_i_6_n_0 ;
  wire \p_Result_93_reg_1640[3]_i_7_n_0 ;
  wire \p_Result_93_reg_1640[3]_i_8_n_0 ;
  wire \p_Result_93_reg_1640[5]_i_3_n_0 ;
  wire \p_Result_93_reg_1640[5]_i_4_n_0 ;
  wire \p_Result_93_reg_1640[5]_i_5_n_0 ;
  wire \p_Result_93_reg_1640[5]_i_6_n_0 ;
  wire \p_Result_93_reg_1640[7]_i_10_n_0 ;
  wire \p_Result_93_reg_1640[7]_i_4_n_0 ;
  wire \p_Result_93_reg_1640[7]_i_6_n_0 ;
  wire \p_Result_93_reg_1640[7]_i_7_n_0 ;
  wire \p_Result_93_reg_1640[7]_i_8_n_0 ;
  wire \p_Result_93_reg_1640[7]_i_9_n_0 ;
  wire \p_Result_93_reg_1640[9]_i_3_n_0 ;
  wire \p_Result_93_reg_1640[9]_i_4_n_0 ;
  wire \p_Result_93_reg_1640[9]_i_5_n_0 ;
  wire \p_Result_93_reg_1640[9]_i_6_n_0 ;
  wire \p_Result_93_reg_1640_reg[11]_i_2_n_0 ;
  wire \p_Result_93_reg_1640_reg[11]_i_2_n_1 ;
  wire \p_Result_93_reg_1640_reg[11]_i_2_n_2 ;
  wire \p_Result_93_reg_1640_reg[11]_i_2_n_3 ;
  wire \p_Result_93_reg_1640_reg[13]_i_2_n_0 ;
  wire \p_Result_93_reg_1640_reg[13]_i_2_n_1 ;
  wire \p_Result_93_reg_1640_reg[13]_i_2_n_2 ;
  wire \p_Result_93_reg_1640_reg[13]_i_2_n_3 ;
  wire \p_Result_93_reg_1640_reg[3]_i_2_n_0 ;
  wire \p_Result_93_reg_1640_reg[3]_i_2_n_1 ;
  wire \p_Result_93_reg_1640_reg[3]_i_2_n_2 ;
  wire \p_Result_93_reg_1640_reg[3]_i_2_n_3 ;
  wire \p_Result_93_reg_1640_reg[5]_i_2_n_0 ;
  wire \p_Result_93_reg_1640_reg[5]_i_2_n_1 ;
  wire \p_Result_93_reg_1640_reg[5]_i_2_n_2 ;
  wire \p_Result_93_reg_1640_reg[5]_i_2_n_3 ;
  wire \p_Result_93_reg_1640_reg[7]_i_2_n_0 ;
  wire \p_Result_93_reg_1640_reg[7]_i_2_n_1 ;
  wire \p_Result_93_reg_1640_reg[7]_i_2_n_2 ;
  wire \p_Result_93_reg_1640_reg[7]_i_2_n_3 ;
  wire \p_Result_93_reg_1640_reg[9]_i_2_n_0 ;
  wire \p_Result_93_reg_1640_reg[9]_i_2_n_1 ;
  wire \p_Result_93_reg_1640_reg[9]_i_2_n_2 ;
  wire \p_Result_93_reg_1640_reg[9]_i_2_n_3 ;
  wire \p_Val2_s_reg_1009[3]_i_2_n_0 ;
  wire [0:0]\p_Val2_s_reg_1009_reg[0] ;
  wire \p_Val2_s_reg_1009_reg[11]_i_1_n_0 ;
  wire \p_Val2_s_reg_1009_reg[11]_i_1_n_1 ;
  wire \p_Val2_s_reg_1009_reg[11]_i_1_n_2 ;
  wire \p_Val2_s_reg_1009_reg[11]_i_1_n_3 ;
  wire \p_Val2_s_reg_1009_reg[15]_i_2_n_1 ;
  wire \p_Val2_s_reg_1009_reg[15]_i_2_n_2 ;
  wire \p_Val2_s_reg_1009_reg[15]_i_2_n_3 ;
  wire \p_Val2_s_reg_1009_reg[3]_i_1_n_0 ;
  wire \p_Val2_s_reg_1009_reg[3]_i_1_n_1 ;
  wire \p_Val2_s_reg_1009_reg[3]_i_1_n_2 ;
  wire \p_Val2_s_reg_1009_reg[3]_i_1_n_3 ;
  wire \p_Val2_s_reg_1009_reg[7]_i_1_n_0 ;
  wire \p_Val2_s_reg_1009_reg[7]_i_1_n_1 ;
  wire \p_Val2_s_reg_1009_reg[7]_i_1_n_2 ;
  wire \p_Val2_s_reg_1009_reg[7]_i_1_n_3 ;
  wire [13:13]res_I_V_34_fu_423_p3;
  wire [12:12]res_I_V_35_fu_503_p3;
  wire [13:12]res_I_V_35_reg_1518;
  wire [11:11]res_I_V_36_fu_580_p3;
  wire [10:10]res_I_V_37_fu_660_p3;
  wire [13:10]res_I_V_37_reg_1541;
  wire [9:9]res_I_V_38_fu_737_p3;
  wire [7:7]res_I_V_39_fu_894_p3;
  wire [6:6]res_I_V_40_fu_974_p3;
  wire [5:5]res_I_V_41_fu_1056_p3;
  wire [4:4]res_I_V_42_fu_1132_p3;
  wire [3:3]res_I_V_43_fu_1213_p3;
  wire [2:2]res_I_V_44_fu_1289_p3;
  wire [1:1]res_I_V_45_fu_1370_p3;
  wire [13:1]res_I_V_45_reg_1633;
  wire [15:0]res_I_V_47_fu_1468_p3;
  wire [8:8]res_I_V_fu_817_p3;
  wire [13:8]res_I_V_reg_1564;
  wire [13:1]sub_ln212_10_fu_1100_p2;
  wire [14:1]sub_ln212_11_fu_1177_p2;
  wire [15:1]sub_ln212_12_fu_1257_p2;
  wire [16:1]sub_ln212_13_fu_1334_p2;
  wire [17:1]sub_ln212_14_fu_1405_p2;
  wire [6:2]sub_ln212_3_fu_549_p2;
  wire [6:0]sub_ln212_3_reg_1530;
  wire \sub_ln212_3_reg_1530[0]_i_1_n_0 ;
  wire \sub_ln212_3_reg_1530[5]_i_2_n_0 ;
  wire \sub_ln212_3_reg_1530[5]_i_3_n_0 ;
  wire \sub_ln212_3_reg_1530[5]_i_4_n_0 ;
  wire \sub_ln212_3_reg_1530[5]_i_5_n_0 ;
  wire \sub_ln212_3_reg_1530[5]_i_6_n_0 ;
  wire \sub_ln212_3_reg_1530[5]_i_7_n_0 ;
  wire \sub_ln212_3_reg_1530[6]_i_2_n_0 ;
  wire \sub_ln212_3_reg_1530_reg[5]_i_1_n_0 ;
  wire \sub_ln212_3_reg_1530_reg[5]_i_1_n_1 ;
  wire \sub_ln212_3_reg_1530_reg[5]_i_1_n_2 ;
  wire \sub_ln212_3_reg_1530_reg[5]_i_1_n_3 ;
  wire [7:2]sub_ln212_4_fu_624_p2;
  wire [8:0]sub_ln212_5_fu_706_p2;
  wire [8:0]sub_ln212_5_reg_1553;
  wire \sub_ln212_5_reg_1553[4]_i_2_n_0 ;
  wire \sub_ln212_5_reg_1553[4]_i_3_n_0 ;
  wire \sub_ln212_5_reg_1553[4]_i_4_n_0 ;
  wire \sub_ln212_5_reg_1553[4]_i_5_n_0 ;
  wire \sub_ln212_5_reg_1553[8]_i_2_n_0 ;
  wire \sub_ln212_5_reg_1553[8]_i_3_n_0 ;
  wire \sub_ln212_5_reg_1553[8]_i_4_n_0 ;
  wire \sub_ln212_5_reg_1553[8]_i_5_n_0 ;
  wire \sub_ln212_5_reg_1553[8]_i_6_n_0 ;
  wire \sub_ln212_5_reg_1553_reg[4]_i_1_n_0 ;
  wire \sub_ln212_5_reg_1553_reg[4]_i_1_n_1 ;
  wire \sub_ln212_5_reg_1553_reg[4]_i_1_n_2 ;
  wire \sub_ln212_5_reg_1553_reg[4]_i_1_n_3 ;
  wire \sub_ln212_5_reg_1553_reg[8]_i_1_n_1 ;
  wire \sub_ln212_5_reg_1553_reg[8]_i_1_n_2 ;
  wire \sub_ln212_5_reg_1553_reg[8]_i_1_n_3 ;
  wire [9:1]sub_ln212_6_fu_781_p2;
  wire [10:0]sub_ln212_7_fu_863_p2;
  wire [10:0]sub_ln212_7_reg_1576;
  wire \sub_ln212_7_reg_1576[10]_i_2_n_0 ;
  wire \sub_ln212_7_reg_1576[10]_i_3_n_0 ;
  wire \sub_ln212_7_reg_1576[4]_i_2_n_0 ;
  wire \sub_ln212_7_reg_1576[4]_i_3_n_0 ;
  wire \sub_ln212_7_reg_1576[4]_i_4_n_0 ;
  wire \sub_ln212_7_reg_1576[4]_i_5_n_0 ;
  wire \sub_ln212_7_reg_1576[8]_i_2_n_0 ;
  wire \sub_ln212_7_reg_1576[8]_i_3_n_0 ;
  wire \sub_ln212_7_reg_1576[8]_i_4_n_0 ;
  wire \sub_ln212_7_reg_1576[8]_i_5_n_0 ;
  wire \sub_ln212_7_reg_1576_reg[10]_i_1_n_3 ;
  wire \sub_ln212_7_reg_1576_reg[4]_i_1_n_0 ;
  wire \sub_ln212_7_reg_1576_reg[4]_i_1_n_1 ;
  wire \sub_ln212_7_reg_1576_reg[4]_i_1_n_2 ;
  wire \sub_ln212_7_reg_1576_reg[4]_i_1_n_3 ;
  wire \sub_ln212_7_reg_1576_reg[8]_i_1_n_0 ;
  wire \sub_ln212_7_reg_1576_reg[8]_i_1_n_1 ;
  wire \sub_ln212_7_reg_1576_reg[8]_i_1_n_2 ;
  wire \sub_ln212_7_reg_1576_reg[8]_i_1_n_3 ;
  wire [11:1]sub_ln212_8_fu_938_p2;
  wire [12:1]sub_ln212_9_fu_1020_p2;
  wire \x_l_I_V_32_reg_1489_reg[18]_srl2_n_0 ;
  wire \x_l_I_V_32_reg_1489_reg[19]_srl2_n_0 ;
  wire [28:18]x_l_I_V_34_reg_1512;
  wire \x_l_I_V_34_reg_1512[24]_i_1_n_0 ;
  wire \x_l_I_V_34_reg_1512[27]_i_1_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[14]_srl3_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[15]_srl3_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[16]_srl3_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[17]_srl3_n_0 ;
  wire [26:14]x_l_I_V_36_reg_1535;
  wire \x_l_I_V_36_reg_1535[20]_i_1_n_0 ;
  wire \x_l_I_V_36_reg_1535[21]_i_1_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_3_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_4_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_5_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_6_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_7_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_8_n_0 ;
  wire \x_l_I_V_36_reg_1535[25]_i_9_n_0 ;
  wire \x_l_I_V_36_reg_1535[26]_i_4_n_0 ;
  wire \x_l_I_V_36_reg_1535[26]_i_5_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[10]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[11]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[12]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[13]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[25]_i_2_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[25]_i_2_n_1 ;
  wire \x_l_I_V_36_reg_1535_reg[25]_i_2_n_2 ;
  wire \x_l_I_V_36_reg_1535_reg[25]_i_2_n_3 ;
  wire \x_l_I_V_36_reg_1535_reg[26]_i_2_n_3 ;
  wire [24:10]x_l_I_V_37_reg_1558;
  wire \x_l_I_V_37_reg_1558[16]_i_1_n_0 ;
  wire \x_l_I_V_37_reg_1558[20]_i_5_n_0 ;
  wire \x_l_I_V_37_reg_1558[20]_i_6_n_0 ;
  wire \x_l_I_V_37_reg_1558[20]_i_7_n_0 ;
  wire \x_l_I_V_37_reg_1558[20]_i_8_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_10_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_4_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_5_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_6_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_7_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_8_n_0 ;
  wire \x_l_I_V_37_reg_1558[24]_i_9_n_0 ;
  wire \x_l_I_V_37_reg_1558_reg[20]_i_2_n_0 ;
  wire \x_l_I_V_37_reg_1558_reg[20]_i_2_n_1 ;
  wire \x_l_I_V_37_reg_1558_reg[20]_i_2_n_2 ;
  wire \x_l_I_V_37_reg_1558_reg[20]_i_2_n_3 ;
  wire \x_l_I_V_37_reg_1558_reg[24]_i_2_n_0 ;
  wire \x_l_I_V_37_reg_1558_reg[24]_i_2_n_1 ;
  wire \x_l_I_V_37_reg_1558_reg[24]_i_2_n_2 ;
  wire \x_l_I_V_37_reg_1558_reg[24]_i_2_n_3 ;
  wire \x_l_I_V_37_reg_1558_reg[6]_srl5_n_0 ;
  wire \x_l_I_V_37_reg_1558_reg[7]_srl5_n_0 ;
  wire \x_l_I_V_37_reg_1558_reg[8]_srl5_n_0 ;
  wire \x_l_I_V_37_reg_1558_reg[9]_srl5_n_0 ;
  wire [22:11]x_l_I_V_40_fu_1048_p3;
  wire [7:6]x_l_I_V_40_reg_1581;
  wire \x_l_I_V_40_reg_1581_reg[2]_srl6_n_0 ;
  wire \x_l_I_V_40_reg_1581_reg[3]_srl6_n_0 ;
  wire \x_l_I_V_40_reg_1581_reg[4]_srl6_n_0 ;
  wire \x_l_I_V_40_reg_1581_reg[5]_srl6_n_0 ;
  wire [20:7]x_l_I_V_42_fu_1205_p3;
  wire [21:2]x_l_I_V_42_reg_1604;
  wire \x_l_I_V_42_reg_1604[20]_i_10_n_0 ;
  wire \x_l_I_V_42_reg_1604[20]_i_4_n_0 ;
  wire \x_l_I_V_42_reg_1604[20]_i_5_n_0 ;
  wire \x_l_I_V_42_reg_1604[20]_i_6_n_0 ;
  wire \x_l_I_V_42_reg_1604[20]_i_7_n_0 ;
  wire \x_l_I_V_42_reg_1604[20]_i_9_n_0 ;
  wire \x_l_I_V_42_reg_1604[21]_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604[21]_i_3_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[0]_srl7_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[1]_srl7_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[20]_i_2_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[20]_i_2_n_1 ;
  wire \x_l_I_V_42_reg_1604_reg[20]_i_2_n_2 ;
  wire \x_l_I_V_42_reg_1604_reg[20]_i_2_n_3 ;
  wire \x_l_I_V_42_reg_1604_reg[20]_i_3_n_3 ;
  wire \x_l_I_V_42_reg_1604_reg[22]_srl2_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[23]_srl2_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[23]_srl2_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[24]_srl2_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[24]_srl2_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[25]_srl3_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[25]_srl3_i_3_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[25]_srl3_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[26]_srl3_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[26]_srl3_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[27]_srl4_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[27]_srl4_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[28]_srl4_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[28]_srl4_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[29]_srl4_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[30]_srl5_i_1_n_0 ;
  wire \x_l_I_V_42_reg_1604_reg[30]_srl5_n_0 ;
  wire [30:18]x_l_I_V_44_reg_1627;
  wire \x_l_I_V_44_reg_1627[18]_i_5_n_0 ;
  wire \x_l_I_V_44_reg_1627[18]_i_6_n_0 ;
  wire \x_l_I_V_44_reg_1627[18]_i_7_n_0 ;
  wire \x_l_I_V_44_reg_1627[18]_i_8_n_0 ;
  wire \x_l_I_V_44_reg_1627[18]_i_9_n_0 ;
  wire \x_l_I_V_44_reg_1627[19]_i_1_n_0 ;
  wire \x_l_I_V_44_reg_1627[19]_i_3_n_0 ;
  wire \x_l_I_V_44_reg_1627[19]_i_4_n_0 ;
  wire \x_l_I_V_44_reg_1627[19]_i_5_n_0 ;
  wire \x_l_I_V_44_reg_1627_reg[18]_i_2_n_1 ;
  wire \x_l_I_V_44_reg_1627_reg[18]_i_2_n_2 ;
  wire \x_l_I_V_44_reg_1627_reg[18]_i_2_n_3 ;
  wire \x_l_I_V_44_reg_1627_reg[19]_i_2_n_2 ;
  wire \x_l_I_V_44_reg_1627_reg[19]_i_2_n_3 ;
  wire [13:3]x_l_I_V_45_fu_1430_p3__17;
  wire [20:20]x_read_reg_1484;
  wire [20:20]x_read_reg_1484_pp0_iter1_reg;
  wire [20:20]x_read_reg_1484_pp0_iter2_reg;
  wire [20:20]x_read_reg_1484_pp0_iter3_reg;
  wire [20:20]x_read_reg_1484_pp0_iter4_reg;
  wire [20:20]x_read_reg_1484_pp0_iter5_reg;
  wire [20:20]x_read_reg_1484_pp0_iter6_reg;
  wire \x_read_reg_1484_pp0_iter6_reg_reg[20]_0 ;
  wire [3:0]NLW_icmp_ln443_10_fu_1095_p2_carry_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln443_10_fu_1095_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_10_fu_1095_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_11_fu_1171_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_11_fu_1171_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_12_fu_1252_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_12_fu_1252_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_13_fu_1328_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_13_fu_1328_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln443_13_fu_1328_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_13_fu_1328_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_14_fu_1400_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_14_fu_1400_p2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln443_14_fu_1400_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_14_fu_1400_p2_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln443_3_fu_543_p2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_3_fu_543_p2_carry_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln443_4_fu_618_p2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_4_fu_618_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_5_fu_700_p2_carry_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln443_5_fu_700_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_5_fu_700_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_6_fu_775_p2_carry_O_UNCONNECTED;
  wire [3:1]NLW_icmp_ln443_6_fu_775_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_6_fu_775_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_7_fu_857_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln443_7_fu_857_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_7_fu_857_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_8_fu_932_p2_carry_O_UNCONNECTED;
  wire [3:2]NLW_icmp_ln443_8_fu_932_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_8_fu_932_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_9_fu_1014_p2_carry_O_UNCONNECTED;
  wire [3:3]NLW_icmp_ln443_9_fu_1014_p2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_icmp_ln443_9_fu_1014_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p_Result_48_fu_1456_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_p_Result_48_fu_1456_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p_Result_48_fu_1456_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_p_Result_48_fu_1456_p2_carry__1_i_9_CO_UNCONNECTED;
  wire [3:1]NLW_p_Result_48_fu_1456_p2_carry__1_i_9_O_UNCONNECTED;
  wire [3:0]NLW_p_Result_48_fu_1456_p2_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_p_Result_81_reg_1598_reg[13]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_p_Result_81_reg_1598_reg[13]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_p_Result_81_reg_1598_reg[13]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_p_Val2_s_reg_1009_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_sub_ln212_3_reg_1530_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sub_ln212_3_reg_1530_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_sub_ln212_5_reg_1553_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sub_ln212_7_reg_1576_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sub_ln212_7_reg_1576_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_x_l_I_V_42_reg_1604_reg[20]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_l_I_V_42_reg_1604_reg[20]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_x_l_I_V_42_reg_1604_reg[21]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_x_l_I_V_42_reg_1604_reg[21]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_x_l_I_V_42_reg_1604_reg[25]_srl3_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_x_l_I_V_42_reg_1604_reg[25]_srl3_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_x_l_I_V_44_reg_1627_reg[18]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_l_I_V_44_reg_1627_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_l_I_V_44_reg_1627_reg[19]_i_2_O_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_10_fu_1095_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_10_fu_1095_p2_carry_n_0,icmp_ln443_10_fu_1095_p2_carry_n_1,icmp_ln443_10_fu_1095_p2_carry_n_2,icmp_ln443_10_fu_1095_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_10_fu_1095_p2_carry_i_1_n_0,icmp_ln443_10_fu_1095_p2_carry_i_2_n_0,icmp_ln443_10_fu_1095_p2_carry_i_3_n_0,icmp_ln443_10_fu_1095_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_10_fu_1095_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_10_fu_1095_p2_carry_i_5_n_0,icmp_ln443_10_fu_1095_p2_carry_i_6_n_0,icmp_ln443_10_fu_1095_p2_carry_i_7_n_0,icmp_ln443_10_fu_1095_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_10_fu_1095_p2_carry__0
       (.CI(icmp_ln443_10_fu_1095_p2_carry_n_0),
        .CO({NLW_icmp_ln443_10_fu_1095_p2_carry__0_CO_UNCONNECTED[3],icmp_ln443_10_fu_1095_p2_carry__0_n_1,icmp_ln443_10_fu_1095_p2_carry__0_n_2,icmp_ln443_10_fu_1095_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,icmp_ln443_10_fu_1095_p2_carry__0_i_1_n_0,icmp_ln443_10_fu_1095_p2_carry__0_i_2_n_0,icmp_ln443_10_fu_1095_p2_carry__0_i_3_n_0}),
        .O(NLW_icmp_ln443_10_fu_1095_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln443_10_fu_1095_p2_carry__0_i_4_n_0,icmp_ln443_10_fu_1095_p2_carry__0_i_5_n_0,icmp_ln443_10_fu_1095_p2_carry__0_i_6_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    icmp_ln443_10_fu_1095_p2_carry__0_i_1
       (.I0(p_Result_81_reg_1598[12]),
        .I1(x_read_reg_1484_pp0_iter4_reg),
        .I2(p_Result_81_reg_1598[13]),
        .O(icmp_ln443_10_fu_1095_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_10_fu_1095_p2_carry__0_i_2
       (.I0(p_Result_31_reg_1593[9]),
        .I1(p_Result_81_reg_1598[10]),
        .I2(p_Result_81_reg_1598[11]),
        .I3(x_read_reg_1484_pp0_iter4_reg),
        .O(icmp_ln443_10_fu_1095_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_10_fu_1095_p2_carry__0_i_3
       (.I0(p_Result_31_reg_1593[7]),
        .I1(p_Result_81_reg_1598[8]),
        .I2(p_Result_81_reg_1598[9]),
        .I3(p_Result_31_reg_1593[8]),
        .O(icmp_ln443_10_fu_1095_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    icmp_ln443_10_fu_1095_p2_carry__0_i_4
       (.I0(x_read_reg_1484_pp0_iter4_reg),
        .I1(p_Result_81_reg_1598[12]),
        .I2(p_Result_81_reg_1598[13]),
        .O(icmp_ln443_10_fu_1095_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_10_fu_1095_p2_carry__0_i_5
       (.I0(p_Result_31_reg_1593[9]),
        .I1(p_Result_81_reg_1598[10]),
        .I2(x_read_reg_1484_pp0_iter4_reg),
        .I3(p_Result_81_reg_1598[11]),
        .O(icmp_ln443_10_fu_1095_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_10_fu_1095_p2_carry__0_i_6
       (.I0(p_Result_31_reg_1593[7]),
        .I1(p_Result_81_reg_1598[8]),
        .I2(p_Result_31_reg_1593[8]),
        .I3(p_Result_81_reg_1598[9]),
        .O(icmp_ln443_10_fu_1095_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_10_fu_1095_p2_carry_i_1
       (.I0(p_Result_31_reg_1593[5]),
        .I1(p_Result_81_reg_1598[6]),
        .I2(p_Result_81_reg_1598[7]),
        .I3(p_Result_31_reg_1593[6]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_10_fu_1095_p2_carry_i_2
       (.I0(p_Result_31_reg_1593[3]),
        .I1(p_Result_81_reg_1598[4]),
        .I2(p_Result_81_reg_1598[5]),
        .I3(p_Result_31_reg_1593[4]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_10_fu_1095_p2_carry_i_3
       (.I0(p_Result_31_reg_1593[1]),
        .I1(p_Result_81_reg_1598[2]),
        .I2(p_Result_81_reg_1598[3]),
        .I3(p_Result_31_reg_1593[2]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_10_fu_1095_p2_carry_i_4
       (.I0(p_Result_81_reg_1598[0]),
        .I1(p_Result_81_reg_1598[1]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_10_fu_1095_p2_carry_i_5
       (.I0(p_Result_31_reg_1593[5]),
        .I1(p_Result_81_reg_1598[6]),
        .I2(p_Result_31_reg_1593[6]),
        .I3(p_Result_81_reg_1598[7]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_10_fu_1095_p2_carry_i_6
       (.I0(p_Result_31_reg_1593[3]),
        .I1(p_Result_81_reg_1598[4]),
        .I2(p_Result_31_reg_1593[4]),
        .I3(p_Result_81_reg_1598[5]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_10_fu_1095_p2_carry_i_7
       (.I0(p_Result_31_reg_1593[1]),
        .I1(p_Result_81_reg_1598[2]),
        .I2(p_Result_31_reg_1593[2]),
        .I3(p_Result_81_reg_1598[3]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_10_fu_1095_p2_carry_i_8
       (.I0(p_Result_81_reg_1598[0]),
        .I1(p_Result_81_reg_1598[1]),
        .O(icmp_ln443_10_fu_1095_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_11_fu_1171_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_11_fu_1171_p2_carry_n_0,icmp_ln443_11_fu_1171_p2_carry_n_1,icmp_ln443_11_fu_1171_p2_carry_n_2,icmp_ln443_11_fu_1171_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_11_fu_1171_p2_carry_i_1_n_0,icmp_ln443_11_fu_1171_p2_carry_i_2_n_0,icmp_ln443_11_fu_1171_p2_carry_i_3_n_0,icmp_ln443_11_fu_1171_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_11_fu_1171_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_11_fu_1171_p2_carry_i_5_n_0,icmp_ln443_11_fu_1171_p2_carry_i_6_n_0,icmp_ln443_11_fu_1171_p2_carry_i_7_n_0,icmp_ln443_11_fu_1171_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_11_fu_1171_p2_carry__0
       (.CI(icmp_ln443_11_fu_1171_p2_carry_n_0),
        .CO({icmp_ln443_11_fu_1171_p2_carry__0_n_0,icmp_ln443_11_fu_1171_p2_carry__0_n_1,icmp_ln443_11_fu_1171_p2_carry__0_n_2,icmp_ln443_11_fu_1171_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,icmp_ln443_11_fu_1171_p2_carry__0_i_1_n_0,icmp_ln443_11_fu_1171_p2_carry__0_i_2_n_0,icmp_ln443_11_fu_1171_p2_carry__0_i_3_n_0}),
        .O(NLW_icmp_ln443_11_fu_1171_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_11_fu_1171_p2_carry__0_i_4_n_0,icmp_ln443_11_fu_1171_p2_carry__0_i_5_n_0,icmp_ln443_11_fu_1171_p2_carry__0_i_6_n_0,icmp_ln443_11_fu_1171_p2_carry__0_i_7_n_0}));
  LUT6 #(
    .INIT(64'h3F553FFF00000000)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_1
       (.I0(sub_ln212_10_fu_1100_p2[10]),
        .I1(p_Result_81_reg_1598[10]),
        .I2(p_Result_81_reg_1598[11]),
        .I3(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I4(sub_ln212_10_fu_1100_p2[11]),
        .I5(x_read_reg_1484_pp0_iter4_reg),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_2
       (.I0(p_Result_31_reg_1593[8]),
        .I1(sub_ln212_10_fu_1100_p2[8]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(p_Result_81_reg_1598[8]),
        .I4(p_Result_84_fu_1157_p4[11]),
        .I5(p_Result_31_reg_1593[9]),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_3
       (.I0(p_Result_31_reg_1593[6]),
        .I1(sub_ln212_10_fu_1100_p2[6]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(p_Result_81_reg_1598[6]),
        .I4(p_Result_84_fu_1157_p4[9]),
        .I5(p_Result_31_reg_1593[7]),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h1D)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_4
       (.I0(sub_ln212_10_fu_1100_p2[12]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[12]),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hA005C0C0A0050303)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_5
       (.I0(p_Result_81_reg_1598[10]),
        .I1(sub_ln212_10_fu_1100_p2[10]),
        .I2(x_read_reg_1484_pp0_iter4_reg),
        .I3(p_Result_81_reg_1598[11]),
        .I4(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I5(sub_ln212_10_fu_1100_p2[11]),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_6
       (.I0(p_Result_31_reg_1593[8]),
        .I1(p_Result_81_reg_1598[8]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(sub_ln212_10_fu_1100_p2[8]),
        .I4(p_Result_31_reg_1593[9]),
        .I5(p_Result_84_fu_1157_p4[11]),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_7
       (.I0(p_Result_31_reg_1593[6]),
        .I1(p_Result_81_reg_1598[6]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(sub_ln212_10_fu_1100_p2[6]),
        .I4(p_Result_31_reg_1593[7]),
        .I5(p_Result_84_fu_1157_p4[9]),
        .O(icmp_ln443_11_fu_1171_p2_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_8
       (.I0(p_Result_81_reg_1598[9]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[9]),
        .O(p_Result_84_fu_1157_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_9
       (.I0(p_Result_81_reg_1598[7]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[7]),
        .O(p_Result_84_fu_1157_p4[9]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_11_fu_1171_p2_carry_i_1
       (.I0(p_Result_31_reg_1593[4]),
        .I1(sub_ln212_10_fu_1100_p2[4]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(p_Result_81_reg_1598[4]),
        .I4(p_Result_84_fu_1157_p4[7]),
        .I5(p_Result_31_reg_1593[5]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_11_fu_1171_p2_carry_i_10
       (.I0(p_Result_81_reg_1598[3]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[3]),
        .O(p_Result_84_fu_1157_p4[5]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_11_fu_1171_p2_carry_i_2
       (.I0(p_Result_31_reg_1593[2]),
        .I1(sub_ln212_10_fu_1100_p2[2]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(p_Result_81_reg_1598[2]),
        .I4(p_Result_84_fu_1157_p4[5]),
        .I5(p_Result_31_reg_1593[3]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h3A3F000A)) 
    icmp_ln443_11_fu_1171_p2_carry_i_3
       (.I0(p_Result_81_reg_1598[0]),
        .I1(p_Result_81_reg_1598[1]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(sub_ln212_10_fu_1100_p2[1]),
        .I4(p_Result_31_reg_1593[1]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_11_fu_1171_p2_carry_i_4
       (.I0(x_l_I_V_40_reg_1581[6]),
        .I1(x_l_I_V_40_reg_1581[7]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_11_fu_1171_p2_carry_i_5
       (.I0(p_Result_31_reg_1593[4]),
        .I1(p_Result_81_reg_1598[4]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(sub_ln212_10_fu_1100_p2[4]),
        .I4(p_Result_31_reg_1593[5]),
        .I5(p_Result_84_fu_1157_p4[7]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_11_fu_1171_p2_carry_i_6
       (.I0(p_Result_31_reg_1593[2]),
        .I1(p_Result_81_reg_1598[2]),
        .I2(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I3(sub_ln212_10_fu_1100_p2[2]),
        .I4(p_Result_31_reg_1593[3]),
        .I5(p_Result_84_fu_1157_p4[5]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    icmp_ln443_11_fu_1171_p2_carry_i_7
       (.I0(p_Result_81_reg_1598[0]),
        .I1(p_Result_31_reg_1593[1]),
        .I2(p_Result_81_reg_1598[1]),
        .I3(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I4(sub_ln212_10_fu_1100_p2[1]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_11_fu_1171_p2_carry_i_8
       (.I0(x_l_I_V_40_reg_1581[6]),
        .I1(x_l_I_V_40_reg_1581[7]),
        .O(icmp_ln443_11_fu_1171_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_11_fu_1171_p2_carry_i_9
       (.I0(p_Result_81_reg_1598[5]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[5]),
        .O(p_Result_84_fu_1157_p4[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_12_fu_1252_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_12_fu_1252_p2_carry_n_0,icmp_ln443_12_fu_1252_p2_carry_n_1,icmp_ln443_12_fu_1252_p2_carry_n_2,icmp_ln443_12_fu_1252_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_12_fu_1252_p2_carry_i_1_n_0,icmp_ln443_12_fu_1252_p2_carry_i_2_n_0,icmp_ln443_12_fu_1252_p2_carry_i_3_n_0,icmp_ln443_12_fu_1252_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_12_fu_1252_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_12_fu_1252_p2_carry_i_5_n_0,icmp_ln443_12_fu_1252_p2_carry_i_6_n_0,icmp_ln443_12_fu_1252_p2_carry_i_7_n_0,icmp_ln443_12_fu_1252_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_12_fu_1252_p2_carry__0
       (.CI(icmp_ln443_12_fu_1252_p2_carry_n_0),
        .CO({icmp_ln443_12_fu_1252_p2_carry__0_n_0,icmp_ln443_12_fu_1252_p2_carry__0_n_1,icmp_ln443_12_fu_1252_p2_carry__0_n_2,icmp_ln443_12_fu_1252_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_12_fu_1252_p2_carry__0_i_1_n_0,icmp_ln443_12_fu_1252_p2_carry__0_i_2_n_0,icmp_ln443_12_fu_1252_p2_carry__0_i_3_n_0,icmp_ln443_12_fu_1252_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln443_12_fu_1252_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_12_fu_1252_p2_carry__0_i_5_n_0,icmp_ln443_12_fu_1252_p2_carry__0_i_6_n_0,icmp_ln443_12_fu_1252_p2_carry__0_i_7_n_0,icmp_ln443_12_fu_1252_p2_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_1
       (.I0(p_Result_87_reg_1621[14]),
        .I1(x_read_reg_1484_pp0_iter5_reg),
        .I2(p_Result_87_reg_1621[15]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_2
       (.I0(p_Result_37_reg_1616[11]),
        .I1(p_Result_87_reg_1621[12]),
        .I2(p_Result_87_reg_1621[13]),
        .I3(x_read_reg_1484_pp0_iter5_reg),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_3
       (.I0(p_Result_37_reg_1616[9]),
        .I1(p_Result_87_reg_1621[10]),
        .I2(p_Result_87_reg_1621[11]),
        .I3(p_Result_37_reg_1616[10]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_4
       (.I0(p_Result_37_reg_1616[7]),
        .I1(p_Result_87_reg_1621[8]),
        .I2(p_Result_87_reg_1621[9]),
        .I3(p_Result_37_reg_1616[8]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_5
       (.I0(x_read_reg_1484_pp0_iter5_reg),
        .I1(p_Result_87_reg_1621[14]),
        .I2(p_Result_87_reg_1621[15]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_6
       (.I0(p_Result_37_reg_1616[11]),
        .I1(p_Result_87_reg_1621[12]),
        .I2(x_read_reg_1484_pp0_iter5_reg),
        .I3(p_Result_87_reg_1621[13]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_7
       (.I0(p_Result_37_reg_1616[9]),
        .I1(p_Result_87_reg_1621[10]),
        .I2(p_Result_37_reg_1616[10]),
        .I3(p_Result_87_reg_1621[11]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_12_fu_1252_p2_carry__0_i_8
       (.I0(p_Result_37_reg_1616[7]),
        .I1(p_Result_87_reg_1621[8]),
        .I2(p_Result_37_reg_1616[8]),
        .I3(p_Result_87_reg_1621[9]),
        .O(icmp_ln443_12_fu_1252_p2_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_12_fu_1252_p2_carry_i_1
       (.I0(p_Result_37_reg_1616[5]),
        .I1(p_Result_87_reg_1621[6]),
        .I2(p_Result_87_reg_1621[7]),
        .I3(p_Result_37_reg_1616[6]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_12_fu_1252_p2_carry_i_2
       (.I0(p_Result_37_reg_1616[3]),
        .I1(p_Result_87_reg_1621[4]),
        .I2(p_Result_87_reg_1621[5]),
        .I3(p_Result_37_reg_1616[4]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_12_fu_1252_p2_carry_i_3
       (.I0(p_Result_37_reg_1616[1]),
        .I1(p_Result_87_reg_1621[2]),
        .I2(p_Result_87_reg_1621[3]),
        .I3(p_Result_37_reg_1616[2]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_12_fu_1252_p2_carry_i_4
       (.I0(p_Result_87_reg_1621[0]),
        .I1(p_Result_87_reg_1621[1]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_12_fu_1252_p2_carry_i_5
       (.I0(p_Result_37_reg_1616[5]),
        .I1(p_Result_87_reg_1621[6]),
        .I2(p_Result_37_reg_1616[6]),
        .I3(p_Result_87_reg_1621[7]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_12_fu_1252_p2_carry_i_6
       (.I0(p_Result_37_reg_1616[3]),
        .I1(p_Result_87_reg_1621[4]),
        .I2(p_Result_37_reg_1616[4]),
        .I3(p_Result_87_reg_1621[5]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_12_fu_1252_p2_carry_i_7
       (.I0(p_Result_37_reg_1616[1]),
        .I1(p_Result_87_reg_1621[2]),
        .I2(p_Result_37_reg_1616[2]),
        .I3(p_Result_87_reg_1621[3]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_12_fu_1252_p2_carry_i_8
       (.I0(p_Result_87_reg_1621[0]),
        .I1(p_Result_87_reg_1621[1]),
        .O(icmp_ln443_12_fu_1252_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_13_fu_1328_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_13_fu_1328_p2_carry_n_0,icmp_ln443_13_fu_1328_p2_carry_n_1,icmp_ln443_13_fu_1328_p2_carry_n_2,icmp_ln443_13_fu_1328_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_13_fu_1328_p2_carry_i_1_n_0,icmp_ln443_13_fu_1328_p2_carry_i_2_n_0,icmp_ln443_13_fu_1328_p2_carry_i_3_n_0,icmp_ln443_13_fu_1328_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_13_fu_1328_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_13_fu_1328_p2_carry_i_5_n_0,icmp_ln443_13_fu_1328_p2_carry_i_6_n_0,icmp_ln443_13_fu_1328_p2_carry_i_7_n_0,icmp_ln443_13_fu_1328_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_13_fu_1328_p2_carry__0
       (.CI(icmp_ln443_13_fu_1328_p2_carry_n_0),
        .CO({icmp_ln443_13_fu_1328_p2_carry__0_n_0,icmp_ln443_13_fu_1328_p2_carry__0_n_1,icmp_ln443_13_fu_1328_p2_carry__0_n_2,icmp_ln443_13_fu_1328_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_13_fu_1328_p2_carry__0_i_1_n_0,icmp_ln443_13_fu_1328_p2_carry__0_i_2_n_0,icmp_ln443_13_fu_1328_p2_carry__0_i_3_n_0,icmp_ln443_13_fu_1328_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln443_13_fu_1328_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_13_fu_1328_p2_carry__0_i_5_n_0,icmp_ln443_13_fu_1328_p2_carry__0_i_6_n_0,icmp_ln443_13_fu_1328_p2_carry__0_i_7_n_0,icmp_ln443_13_fu_1328_p2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h3F553FFF00000000)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_1
       (.I0(sub_ln212_12_fu_1257_p2[12]),
        .I1(p_Result_87_reg_1621[12]),
        .I2(p_Result_87_reg_1621[13]),
        .I3(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I4(sub_ln212_12_fu_1257_p2[13]),
        .I5(x_read_reg_1484_pp0_iter5_reg),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_10
       (.I0(p_Result_87_reg_1621[9]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[9]),
        .O(p_Result_90_fu_1314_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_11
       (.I0(p_Result_87_reg_1621[7]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[7]),
        .O(p_Result_90_fu_1314_p4[9]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_2
       (.I0(p_Result_37_reg_1616[10]),
        .I1(sub_ln212_12_fu_1257_p2[10]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(p_Result_87_reg_1621[10]),
        .I4(p_Result_90_fu_1314_p4[13]),
        .I5(p_Result_37_reg_1616[11]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_3
       (.I0(p_Result_37_reg_1616[8]),
        .I1(sub_ln212_12_fu_1257_p2[8]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(p_Result_87_reg_1621[8]),
        .I4(p_Result_90_fu_1314_p4[11]),
        .I5(p_Result_37_reg_1616[9]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_4
       (.I0(p_Result_37_reg_1616[6]),
        .I1(sub_ln212_12_fu_1257_p2[6]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(p_Result_87_reg_1621[6]),
        .I4(p_Result_90_fu_1314_p4[9]),
        .I5(p_Result_37_reg_1616[7]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hA005C0C0A0050303)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_5
       (.I0(p_Result_87_reg_1621[12]),
        .I1(sub_ln212_12_fu_1257_p2[12]),
        .I2(x_read_reg_1484_pp0_iter5_reg),
        .I3(p_Result_87_reg_1621[13]),
        .I4(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I5(sub_ln212_12_fu_1257_p2[13]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_6
       (.I0(p_Result_37_reg_1616[10]),
        .I1(p_Result_87_reg_1621[10]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(sub_ln212_12_fu_1257_p2[10]),
        .I4(p_Result_37_reg_1616[11]),
        .I5(p_Result_90_fu_1314_p4[13]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_7
       (.I0(p_Result_37_reg_1616[8]),
        .I1(p_Result_87_reg_1621[8]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(sub_ln212_12_fu_1257_p2[8]),
        .I4(p_Result_37_reg_1616[9]),
        .I5(p_Result_90_fu_1314_p4[11]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_8
       (.I0(p_Result_37_reg_1616[6]),
        .I1(p_Result_87_reg_1621[6]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(sub_ln212_12_fu_1257_p2[6]),
        .I4(p_Result_37_reg_1616[7]),
        .I5(p_Result_90_fu_1314_p4[9]),
        .O(icmp_ln443_13_fu_1328_p2_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_9
       (.I0(p_Result_87_reg_1621[11]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[11]),
        .O(p_Result_90_fu_1314_p4[13]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_13_fu_1328_p2_carry__1
       (.CI(icmp_ln443_13_fu_1328_p2_carry__0_n_0),
        .CO({NLW_icmp_ln443_13_fu_1328_p2_carry__1_CO_UNCONNECTED[3:1],icmp_ln443_13_fu_1328_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln443_13_fu_1328_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,icmp_ln443_13_fu_1328_p2_carry__1_i_1_n_0}));
  LUT3 #(
    .INIT(8'h1D)) 
    icmp_ln443_13_fu_1328_p2_carry__1_i_1
       (.I0(sub_ln212_12_fu_1257_p2[14]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[14]),
        .O(icmp_ln443_13_fu_1328_p2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_13_fu_1328_p2_carry_i_1
       (.I0(p_Result_37_reg_1616[4]),
        .I1(sub_ln212_12_fu_1257_p2[4]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(p_Result_87_reg_1621[4]),
        .I4(p_Result_90_fu_1314_p4[7]),
        .I5(p_Result_37_reg_1616[5]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_13_fu_1328_p2_carry_i_10
       (.I0(p_Result_87_reg_1621[3]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[3]),
        .O(p_Result_90_fu_1314_p4[5]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_13_fu_1328_p2_carry_i_2
       (.I0(p_Result_37_reg_1616[2]),
        .I1(sub_ln212_12_fu_1257_p2[2]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(p_Result_87_reg_1621[2]),
        .I4(p_Result_90_fu_1314_p4[5]),
        .I5(p_Result_37_reg_1616[3]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h3A3F000A)) 
    icmp_ln443_13_fu_1328_p2_carry_i_3
       (.I0(p_Result_87_reg_1621[0]),
        .I1(p_Result_87_reg_1621[1]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(sub_ln212_12_fu_1257_p2[1]),
        .I4(p_Result_37_reg_1616[1]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_13_fu_1328_p2_carry_i_4
       (.I0(x_l_I_V_42_reg_1604[2]),
        .I1(x_l_I_V_42_reg_1604[3]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_13_fu_1328_p2_carry_i_5
       (.I0(p_Result_37_reg_1616[4]),
        .I1(p_Result_87_reg_1621[4]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(sub_ln212_12_fu_1257_p2[4]),
        .I4(p_Result_37_reg_1616[5]),
        .I5(p_Result_90_fu_1314_p4[7]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_13_fu_1328_p2_carry_i_6
       (.I0(p_Result_37_reg_1616[2]),
        .I1(p_Result_87_reg_1621[2]),
        .I2(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I3(sub_ln212_12_fu_1257_p2[2]),
        .I4(p_Result_37_reg_1616[3]),
        .I5(p_Result_90_fu_1314_p4[5]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h41444111)) 
    icmp_ln443_13_fu_1328_p2_carry_i_7
       (.I0(p_Result_87_reg_1621[0]),
        .I1(p_Result_37_reg_1616[1]),
        .I2(p_Result_87_reg_1621[1]),
        .I3(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I4(sub_ln212_12_fu_1257_p2[1]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_13_fu_1328_p2_carry_i_8
       (.I0(x_l_I_V_42_reg_1604[2]),
        .I1(x_l_I_V_42_reg_1604[3]),
        .O(icmp_ln443_13_fu_1328_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_13_fu_1328_p2_carry_i_9
       (.I0(p_Result_87_reg_1621[5]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[5]),
        .O(p_Result_90_fu_1314_p4[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_14_fu_1400_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_14_fu_1400_p2_carry_n_0,icmp_ln443_14_fu_1400_p2_carry_n_1,icmp_ln443_14_fu_1400_p2_carry_n_2,icmp_ln443_14_fu_1400_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_14_fu_1400_p2_carry_i_1_n_0,icmp_ln443_14_fu_1400_p2_carry_i_2_n_0,icmp_ln443_14_fu_1400_p2_carry_i_3_n_0,icmp_ln443_14_fu_1400_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_14_fu_1400_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_14_fu_1400_p2_carry_i_5_n_0,icmp_ln443_14_fu_1400_p2_carry_i_6_n_0,icmp_ln443_14_fu_1400_p2_carry_i_7_n_0,icmp_ln443_14_fu_1400_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_14_fu_1400_p2_carry__0
       (.CI(icmp_ln443_14_fu_1400_p2_carry_n_0),
        .CO({icmp_ln443_14_fu_1400_p2_carry__0_n_0,icmp_ln443_14_fu_1400_p2_carry__0_n_1,icmp_ln443_14_fu_1400_p2_carry__0_n_2,icmp_ln443_14_fu_1400_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_14_fu_1400_p2_carry__0_i_1_n_0,icmp_ln443_14_fu_1400_p2_carry__0_i_2_n_0,icmp_ln443_14_fu_1400_p2_carry__0_i_3_n_0,icmp_ln443_14_fu_1400_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln443_14_fu_1400_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_14_fu_1400_p2_carry__0_i_5_n_0,icmp_ln443_14_fu_1400_p2_carry__0_i_6_n_0,icmp_ln443_14_fu_1400_p2_carry__0_i_7_n_0,icmp_ln443_14_fu_1400_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_1
       (.I0(res_I_V_45_reg_1633[13]),
        .I1(p_Result_93_reg_1640[14]),
        .I2(p_Result_93_reg_1640[15]),
        .I3(x_read_reg_1484_pp0_iter6_reg),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_2
       (.I0(res_I_V_45_reg_1633[11]),
        .I1(p_Result_93_reg_1640[12]),
        .I2(p_Result_93_reg_1640[13]),
        .I3(res_I_V_45_reg_1633[12]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_3
       (.I0(res_I_V_45_reg_1633[9]),
        .I1(p_Result_93_reg_1640[10]),
        .I2(p_Result_93_reg_1640[11]),
        .I3(res_I_V_45_reg_1633[10]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_4
       (.I0(res_I_V_45_reg_1633[7]),
        .I1(p_Result_93_reg_1640[8]),
        .I2(p_Result_93_reg_1640[9]),
        .I3(res_I_V_45_reg_1633[8]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_5
       (.I0(res_I_V_45_reg_1633[13]),
        .I1(p_Result_93_reg_1640[14]),
        .I2(x_read_reg_1484_pp0_iter6_reg),
        .I3(p_Result_93_reg_1640[15]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_6
       (.I0(res_I_V_45_reg_1633[11]),
        .I1(p_Result_93_reg_1640[12]),
        .I2(res_I_V_45_reg_1633[12]),
        .I3(p_Result_93_reg_1640[13]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_7
       (.I0(res_I_V_45_reg_1633[9]),
        .I1(p_Result_93_reg_1640[10]),
        .I2(res_I_V_45_reg_1633[10]),
        .I3(p_Result_93_reg_1640[11]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry__0_i_8
       (.I0(res_I_V_45_reg_1633[7]),
        .I1(p_Result_93_reg_1640[8]),
        .I2(res_I_V_45_reg_1633[8]),
        .I3(p_Result_93_reg_1640[9]),
        .O(icmp_ln443_14_fu_1400_p2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_14_fu_1400_p2_carry__1
       (.CI(icmp_ln443_14_fu_1400_p2_carry__0_n_0),
        .CO({NLW_icmp_ln443_14_fu_1400_p2_carry__1_CO_UNCONNECTED[3:1],icmp_ln443_14_fu_1400_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,icmp_ln443_14_fu_1400_p2_carry__1_i_1_n_0}),
        .O(NLW_icmp_ln443_14_fu_1400_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,icmp_ln443_14_fu_1400_p2_carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    icmp_ln443_14_fu_1400_p2_carry__1_i_1
       (.I0(p_Result_93_reg_1640[16]),
        .I1(x_read_reg_1484_pp0_iter6_reg),
        .I2(p_Result_93_reg_1640[17]),
        .O(icmp_ln443_14_fu_1400_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    icmp_ln443_14_fu_1400_p2_carry__1_i_2
       (.I0(x_read_reg_1484_pp0_iter6_reg),
        .I1(p_Result_93_reg_1640[16]),
        .I2(p_Result_93_reg_1640[17]),
        .O(icmp_ln443_14_fu_1400_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry_i_1
       (.I0(res_I_V_45_reg_1633[5]),
        .I1(p_Result_93_reg_1640[6]),
        .I2(p_Result_93_reg_1640[7]),
        .I3(res_I_V_45_reg_1633[6]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry_i_2
       (.I0(res_I_V_45_reg_1633[3]),
        .I1(p_Result_93_reg_1640[4]),
        .I2(p_Result_93_reg_1640[5]),
        .I3(res_I_V_45_reg_1633[4]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_14_fu_1400_p2_carry_i_3
       (.I0(res_I_V_45_reg_1633[1]),
        .I1(p_Result_93_reg_1640[2]),
        .I2(p_Result_93_reg_1640[3]),
        .I3(res_I_V_45_reg_1633[2]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_14_fu_1400_p2_carry_i_4
       (.I0(p_Result_93_reg_1640[0]),
        .I1(p_Result_93_reg_1640[1]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry_i_5
       (.I0(res_I_V_45_reg_1633[5]),
        .I1(p_Result_93_reg_1640[6]),
        .I2(res_I_V_45_reg_1633[6]),
        .I3(p_Result_93_reg_1640[7]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry_i_6
       (.I0(res_I_V_45_reg_1633[3]),
        .I1(p_Result_93_reg_1640[4]),
        .I2(res_I_V_45_reg_1633[4]),
        .I3(p_Result_93_reg_1640[5]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_14_fu_1400_p2_carry_i_7
       (.I0(res_I_V_45_reg_1633[1]),
        .I1(p_Result_93_reg_1640[2]),
        .I2(res_I_V_45_reg_1633[2]),
        .I3(p_Result_93_reg_1640[3]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_14_fu_1400_p2_carry_i_8
       (.I0(p_Result_93_reg_1640[0]),
        .I1(p_Result_93_reg_1640[1]),
        .O(icmp_ln443_14_fu_1400_p2_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \icmp_ln443_1_reg_1501[0]_i_1 
       (.I0(p_0_in0),
        .O(\icmp_ln443_1_reg_1501[0]_i_1_n_0 ));
  FDRE \icmp_ln443_1_reg_1501_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln443_1_reg_1501[0]_i_1_n_0 ),
        .Q(icmp_ln443_1_reg_1501),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_3_fu_543_p2_carry
       (.CI(1'b0),
        .CO({NLW_icmp_ln443_3_fu_543_p2_carry_CO_UNCONNECTED[3],icmp_ln443_3_fu_543_p2,icmp_ln443_3_fu_543_p2_carry_n_2,icmp_ln443_3_fu_543_p2_carry_n_3}),
        .CYINIT(\sub_ln212_3_reg_1530[0]_i_1_n_0 ),
        .DI({1'b0,1'b0,icmp_ln443_3_fu_543_p2_carry_i_1_n_0,icmp_ln443_3_fu_543_p2_carry_i_2_n_0}),
        .O(NLW_icmp_ln443_3_fu_543_p2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln443_3_fu_543_p2_carry_i_3_n_0,icmp_ln443_3_fu_543_p2_carry_i_4_n_0,icmp_ln443_3_fu_543_p2_carry_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    icmp_ln443_3_fu_543_p2_carry_i_1
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(icmp_ln443_3_fu_543_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    icmp_ln443_3_fu_543_p2_carry_i_2
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(icmp_ln443_3_fu_543_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    icmp_ln443_3_fu_543_p2_carry_i_3
       (.I0(x_read_reg_1484),
        .I1(icmp_ln443_1_reg_1501),
        .O(icmp_ln443_3_fu_543_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    icmp_ln443_3_fu_543_p2_carry_i_4
       (.I0(x_read_reg_1484),
        .I1(icmp_ln443_1_reg_1501),
        .O(icmp_ln443_3_fu_543_p2_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    icmp_ln443_3_fu_543_p2_carry_i_5
       (.I0(x_read_reg_1484),
        .O(icmp_ln443_3_fu_543_p2_carry_i_5_n_0));
  FDRE \icmp_ln443_3_reg_1524_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln443_3_fu_543_p2),
        .Q(icmp_ln443_3_reg_1524),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_4_fu_618_p2_carry
       (.CI(1'b0),
        .CO({NLW_icmp_ln443_4_fu_618_p2_carry_CO_UNCONNECTED[3],icmp_ln443_4_fu_618_p2_carry_n_1,icmp_ln443_4_fu_618_p2_carry_n_2,icmp_ln443_4_fu_618_p2_carry_n_3}),
        .CYINIT(icmp_ln443_4_fu_618_p2_carry_i_1_n_0),
        .DI({1'b0,icmp_ln443_4_fu_618_p2_carry_i_2_n_0,icmp_ln443_4_fu_618_p2_carry_i_3_n_0,icmp_ln443_4_fu_618_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_4_fu_618_p2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln443_4_fu_618_p2_carry_i_5_n_0,icmp_ln443_4_fu_618_p2_carry_i_6_n_0,icmp_ln443_4_fu_618_p2_carry_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    icmp_ln443_4_fu_618_p2_carry_i_1
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .O(icmp_ln443_4_fu_618_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    icmp_ln443_4_fu_618_p2_carry_i_2
       (.I0(x_l_I_V_34_reg_1512[26]),
        .I1(sub_ln212_3_reg_1530[4]),
        .I2(x_read_reg_1484_pp0_iter1_reg),
        .I3(sub_ln212_3_reg_1530[5]),
        .I4(icmp_ln443_3_reg_1524),
        .I5(x_l_I_V_34_reg_1512[27]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_4_fu_618_p2_carry_i_3
       (.I0(res_I_V_35_reg_1518[13]),
        .I1(sub_ln212_3_reg_1530[2]),
        .I2(icmp_ln443_3_reg_1524),
        .I3(x_l_I_V_34_reg_1512[24]),
        .I4(p_Result_63_fu_604_p4[5]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(icmp_ln443_4_fu_618_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h3500)) 
    icmp_ln443_4_fu_618_p2_carry_i_4
       (.I0(sub_ln212_3_reg_1530[0]),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_3_reg_1524),
        .I3(res_I_V_35_reg_1518[12]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000A5999900A5)) 
    icmp_ln443_4_fu_618_p2_carry_i_5
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(x_l_I_V_34_reg_1512[26]),
        .I2(sub_ln212_3_reg_1530[4]),
        .I3(sub_ln212_3_reg_1530[5]),
        .I4(icmp_ln443_3_reg_1524),
        .I5(x_l_I_V_34_reg_1512[27]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_4_fu_618_p2_carry_i_6
       (.I0(res_I_V_35_reg_1518[13]),
        .I1(x_l_I_V_34_reg_1512[24]),
        .I2(icmp_ln443_3_reg_1524),
        .I3(sub_ln212_3_reg_1530[2]),
        .I4(x_read_reg_1484_pp0_iter1_reg),
        .I5(p_Result_63_fu_604_p4[5]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0388)) 
    icmp_ln443_4_fu_618_p2_carry_i_7
       (.I0(sub_ln212_3_reg_1530[0]),
        .I1(res_I_V_35_reg_1518[12]),
        .I2(x_read_reg_1484_pp0_iter1_reg),
        .I3(icmp_ln443_3_reg_1524),
        .O(icmp_ln443_4_fu_618_p2_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_4_fu_618_p2_carry_i_8
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[3]),
        .O(p_Result_63_fu_604_p4[5]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_5_fu_700_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_5_fu_700_p2_carry_n_0,icmp_ln443_5_fu_700_p2_carry_n_1,icmp_ln443_5_fu_700_p2_carry_n_2,icmp_ln443_5_fu_700_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_5_fu_700_p2_carry_i_1_n_0,icmp_ln443_5_fu_700_p2_carry_i_2_n_0,icmp_ln443_5_fu_700_p2_carry_i_3_n_0,icmp_ln443_5_fu_700_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_5_fu_700_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_5_fu_700_p2_carry_i_5_n_0,icmp_ln443_5_fu_700_p2_carry_i_6_n_0,icmp_ln443_5_fu_700_p2_carry_i_7_n_0,icmp_ln443_5_fu_700_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_5_fu_700_p2_carry__0
       (.CI(icmp_ln443_5_fu_700_p2_carry_n_0),
        .CO({NLW_icmp_ln443_5_fu_700_p2_carry__0_CO_UNCONNECTED[3:1],icmp_ln443_5_fu_700_p2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln443_5_fu_700_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,icmp_ln443_5_fu_700_p2_carry__0_i_1_n_0}));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    icmp_ln443_5_fu_700_p2_carry__0_i_1
       (.I0(sub_ln212_4_fu_624_p2[6]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I2(sub_ln212_3_reg_1530[4]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_l_I_V_34_reg_1512[26]),
        .O(icmp_ln443_5_fu_700_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h3F553FFF00000000)) 
    icmp_ln443_5_fu_700_p2_carry_i_1
       (.I0(sub_ln212_4_fu_624_p2[4]),
        .I1(p_Result_63_fu_604_p4[4]),
        .I2(p_Result_63_fu_604_p4[5]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I4(sub_ln212_4_fu_624_p2[5]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(icmp_ln443_5_fu_700_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_5_fu_700_p2_carry_i_2
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(p_Result_66_fu_686_p4[4]),
        .I2(p_Result_66_fu_686_p4[5]),
        .I3(res_I_V_35_reg_1518[13]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    icmp_ln443_5_fu_700_p2_carry_i_3
       (.I0(icmp_ln443_3_reg_1524),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_4_fu_618_p2_carry_n_1),
        .O(icmp_ln443_5_fu_700_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_5_fu_700_p2_carry_i_4
       (.I0(x_l_I_V_34_reg_1512[18]),
        .I1(x_l_I_V_34_reg_1512[19]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA005C0C0A0050303)) 
    icmp_ln443_5_fu_700_p2_carry_i_5
       (.I0(p_Result_63_fu_604_p4[4]),
        .I1(sub_ln212_4_fu_624_p2[4]),
        .I2(x_read_reg_1484_pp0_iter1_reg),
        .I3(p_Result_63_fu_604_p4[5]),
        .I4(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I5(sub_ln212_4_fu_624_p2[5]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_5_fu_700_p2_carry_i_6
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(p_Result_66_fu_686_p4[4]),
        .I2(res_I_V_35_reg_1518[13]),
        .I3(p_Result_66_fu_686_p4[5]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    icmp_ln443_5_fu_700_p2_carry_i_7
       (.I0(icmp_ln443_3_reg_1524),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_4_fu_618_p2_carry_n_1),
        .O(icmp_ln443_5_fu_700_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_5_fu_700_p2_carry_i_8
       (.I0(x_l_I_V_34_reg_1512[18]),
        .I1(x_l_I_V_34_reg_1512[19]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_5_fu_700_p2_carry_i_9
       (.I0(x_l_I_V_34_reg_1512[24]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[2]),
        .O(p_Result_63_fu_604_p4[4]));
  FDRE \icmp_ln443_5_reg_1547_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln443_5_fu_700_p2),
        .Q(icmp_ln443_5_reg_1547),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_6_fu_775_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_6_fu_775_p2_carry_n_0,icmp_ln443_6_fu_775_p2_carry_n_1,icmp_ln443_6_fu_775_p2_carry_n_2,icmp_ln443_6_fu_775_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_6_fu_775_p2_carry_i_1_n_0,icmp_ln443_6_fu_775_p2_carry_i_2_n_0,icmp_ln443_6_fu_775_p2_carry_i_3_n_0,icmp_ln443_6_fu_775_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_6_fu_775_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_6_fu_775_p2_carry_i_5_n_0,icmp_ln443_6_fu_775_p2_carry_i_6_n_0,icmp_ln443_6_fu_775_p2_carry_i_7_n_0,icmp_ln443_6_fu_775_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_6_fu_775_p2_carry__0
       (.CI(icmp_ln443_6_fu_775_p2_carry_n_0),
        .CO({NLW_icmp_ln443_6_fu_775_p2_carry__0_CO_UNCONNECTED[3:1],icmp_ln443_6_fu_775_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,icmp_ln443_6_fu_775_p2_carry__0_i_1_n_0}),
        .O(NLW_icmp_ln443_6_fu_775_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,icmp_ln443_6_fu_775_p2_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    icmp_ln443_6_fu_775_p2_carry__0_i_1
       (.I0(x_l_I_V_36_reg_1535[24]),
        .I1(sub_ln212_5_reg_1553[6]),
        .I2(x_read_reg_1484_pp0_iter2_reg),
        .I3(sub_ln212_5_reg_1553[7]),
        .I4(icmp_ln443_5_reg_1547),
        .I5(x_l_I_V_36_reg_1535[25]),
        .O(icmp_ln443_6_fu_775_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000A5999900A5)) 
    icmp_ln443_6_fu_775_p2_carry__0_i_2
       (.I0(x_read_reg_1484_pp0_iter2_reg),
        .I1(x_l_I_V_36_reg_1535[24]),
        .I2(sub_ln212_5_reg_1553[6]),
        .I3(sub_ln212_5_reg_1553[7]),
        .I4(icmp_ln443_5_reg_1547),
        .I5(x_l_I_V_36_reg_1535[25]),
        .O(icmp_ln443_6_fu_775_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_6_fu_775_p2_carry_i_1
       (.I0(res_I_V_37_reg_1541[13]),
        .I1(sub_ln212_5_reg_1553[4]),
        .I2(icmp_ln443_5_reg_1547),
        .I3(x_l_I_V_36_reg_1535[22]),
        .I4(p_Result_69_fu_761_p4[7]),
        .I5(x_read_reg_1484_pp0_iter2_reg),
        .O(icmp_ln443_6_fu_775_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_6_fu_775_p2_carry_i_10
       (.I0(x_l_I_V_36_reg_1535[21]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[3]),
        .O(p_Result_69_fu_761_p4[5]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_6_fu_775_p2_carry_i_2
       (.I0(res_I_V_37_reg_1541[11]),
        .I1(sub_ln212_5_reg_1553[2]),
        .I2(icmp_ln443_5_reg_1547),
        .I3(x_l_I_V_36_reg_1535[20]),
        .I4(p_Result_69_fu_761_p4[5]),
        .I5(res_I_V_37_reg_1541[12]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h353F0005)) 
    icmp_ln443_6_fu_775_p2_carry_i_3
       (.I0(sub_ln212_5_reg_1553[0]),
        .I1(x_l_I_V_36_reg_1535[19]),
        .I2(icmp_ln443_5_reg_1547),
        .I3(sub_ln212_5_reg_1553[1]),
        .I4(res_I_V_37_reg_1541[10]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_6_fu_775_p2_carry_i_4
       (.I0(x_l_I_V_36_reg_1535[16]),
        .I1(x_l_I_V_36_reg_1535[17]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_6_fu_775_p2_carry_i_5
       (.I0(res_I_V_37_reg_1541[13]),
        .I1(x_l_I_V_36_reg_1535[22]),
        .I2(icmp_ln443_5_reg_1547),
        .I3(sub_ln212_5_reg_1553[4]),
        .I4(x_read_reg_1484_pp0_iter2_reg),
        .I5(p_Result_69_fu_761_p4[7]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_6_fu_775_p2_carry_i_6
       (.I0(res_I_V_37_reg_1541[11]),
        .I1(x_l_I_V_36_reg_1535[20]),
        .I2(icmp_ln443_5_reg_1547),
        .I3(sub_ln212_5_reg_1553[2]),
        .I4(res_I_V_37_reg_1541[12]),
        .I5(p_Result_69_fu_761_p4[5]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h5005C0C050050C0C)) 
    icmp_ln443_6_fu_775_p2_carry_i_7
       (.I0(x_l_I_V_36_reg_1535[18]),
        .I1(sub_ln212_5_reg_1553[0]),
        .I2(res_I_V_37_reg_1541[10]),
        .I3(x_l_I_V_36_reg_1535[19]),
        .I4(icmp_ln443_5_reg_1547),
        .I5(sub_ln212_5_reg_1553[1]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_6_fu_775_p2_carry_i_8
       (.I0(x_l_I_V_36_reg_1535[16]),
        .I1(x_l_I_V_36_reg_1535[17]),
        .O(icmp_ln443_6_fu_775_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_6_fu_775_p2_carry_i_9
       (.I0(x_l_I_V_36_reg_1535[23]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[5]),
        .O(p_Result_69_fu_761_p4[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_7_fu_857_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_7_fu_857_p2_carry_n_0,icmp_ln443_7_fu_857_p2_carry_n_1,icmp_ln443_7_fu_857_p2_carry_n_2,icmp_ln443_7_fu_857_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_7_fu_857_p2_carry_i_1_n_0,icmp_ln443_7_fu_857_p2_carry_i_2_n_0,icmp_ln443_7_fu_857_p2_carry_i_3_n_0,icmp_ln443_7_fu_857_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_7_fu_857_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_7_fu_857_p2_carry_i_5_n_0,icmp_ln443_7_fu_857_p2_carry_i_6_n_0,icmp_ln443_7_fu_857_p2_carry_i_7_n_0,icmp_ln443_7_fu_857_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_7_fu_857_p2_carry__0
       (.CI(icmp_ln443_7_fu_857_p2_carry_n_0),
        .CO({NLW_icmp_ln443_7_fu_857_p2_carry__0_CO_UNCONNECTED[3:2],icmp_ln443_7_fu_857_p2,icmp_ln443_7_fu_857_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,icmp_ln443_7_fu_857_p2_carry__0_i_1_n_0}),
        .O(NLW_icmp_ln443_7_fu_857_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,icmp_ln443_7_fu_857_p2_carry__0_i_2_n_0,icmp_ln443_7_fu_857_p2_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'h3F553FFF00000000)) 
    icmp_ln443_7_fu_857_p2_carry__0_i_1
       (.I0(sub_ln212_6_fu_781_p2[6]),
        .I1(p_Result_69_fu_761_p4[6]),
        .I2(p_Result_69_fu_761_p4[7]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[7]),
        .I5(x_read_reg_1484_pp0_iter2_reg),
        .O(icmp_ln443_7_fu_857_p2_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    icmp_ln443_7_fu_857_p2_carry__0_i_2
       (.I0(sub_ln212_6_fu_781_p2[8]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[6]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[24]),
        .O(icmp_ln443_7_fu_857_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hA005C0C0A0050303)) 
    icmp_ln443_7_fu_857_p2_carry__0_i_3
       (.I0(p_Result_69_fu_761_p4[6]),
        .I1(sub_ln212_6_fu_781_p2[6]),
        .I2(x_read_reg_1484_pp0_iter2_reg),
        .I3(p_Result_69_fu_761_p4[7]),
        .I4(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I5(sub_ln212_6_fu_781_p2[7]),
        .O(icmp_ln443_7_fu_857_p2_carry__0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_7_fu_857_p2_carry__0_i_4
       (.I0(x_l_I_V_36_reg_1535[22]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[4]),
        .O(p_Result_69_fu_761_p4[6]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_7_fu_857_p2_carry_i_1
       (.I0(res_I_V_37_reg_1541[12]),
        .I1(p_Result_72_fu_843_p4[6]),
        .I2(p_Result_72_fu_843_p4[7]),
        .I3(res_I_V_37_reg_1541[13]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_7_fu_857_p2_carry_i_2
       (.I0(res_I_V_37_reg_1541[10]),
        .I1(p_Result_72_fu_843_p4[4]),
        .I2(p_Result_72_fu_843_p4[5]),
        .I3(res_I_V_37_reg_1541[11]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h032203BB)) 
    icmp_ln443_7_fu_857_p2_carry_i_3
       (.I0(x_l_I_V_36_reg_1535[16]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[17]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[1]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_7_fu_857_p2_carry_i_4
       (.I0(x_l_I_V_36_reg_1535[14]),
        .I1(x_l_I_V_36_reg_1535[15]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_7_fu_857_p2_carry_i_5
       (.I0(res_I_V_37_reg_1541[12]),
        .I1(p_Result_72_fu_843_p4[6]),
        .I2(res_I_V_37_reg_1541[13]),
        .I3(p_Result_72_fu_843_p4[7]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_7_fu_857_p2_carry_i_6
       (.I0(res_I_V_37_reg_1541[10]),
        .I1(p_Result_72_fu_843_p4[4]),
        .I2(res_I_V_37_reg_1541[11]),
        .I3(p_Result_72_fu_843_p4[5]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h14111444)) 
    icmp_ln443_7_fu_857_p2_carry_i_7
       (.I0(x_l_I_V_36_reg_1535[16]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[17]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[1]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_7_fu_857_p2_carry_i_8
       (.I0(x_l_I_V_36_reg_1535[14]),
        .I1(x_l_I_V_36_reg_1535[15]),
        .O(icmp_ln443_7_fu_857_p2_carry_i_8_n_0));
  FDRE \icmp_ln443_7_reg_1570_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln443_7_fu_857_p2),
        .Q(icmp_ln443_7_reg_1570),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_8_fu_932_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_8_fu_932_p2_carry_n_0,icmp_ln443_8_fu_932_p2_carry_n_1,icmp_ln443_8_fu_932_p2_carry_n_2,icmp_ln443_8_fu_932_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_8_fu_932_p2_carry_i_1_n_0,icmp_ln443_8_fu_932_p2_carry_i_2_n_0,icmp_ln443_8_fu_932_p2_carry_i_3_n_0,icmp_ln443_8_fu_932_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_8_fu_932_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_8_fu_932_p2_carry_i_5_n_0,icmp_ln443_8_fu_932_p2_carry_i_6_n_0,icmp_ln443_8_fu_932_p2_carry_i_7_n_0,icmp_ln443_8_fu_932_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_8_fu_932_p2_carry__0
       (.CI(icmp_ln443_8_fu_932_p2_carry_n_0),
        .CO({NLW_icmp_ln443_8_fu_932_p2_carry__0_CO_UNCONNECTED[3:2],icmp_ln443_8_fu_932_p2_carry__0_n_2,icmp_ln443_8_fu_932_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,icmp_ln443_8_fu_932_p2_carry__0_i_1_n_0,icmp_ln443_8_fu_932_p2_carry__0_i_2_n_0}),
        .O(NLW_icmp_ln443_8_fu_932_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,icmp_ln443_8_fu_932_p2_carry__0_i_3_n_0,icmp_ln443_8_fu_932_p2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    icmp_ln443_8_fu_932_p2_carry__0_i_1
       (.I0(x_l_I_V_37_reg_1558[22]),
        .I1(sub_ln212_7_reg_1576[8]),
        .I2(x_read_reg_1484_pp0_iter3_reg),
        .I3(sub_ln212_7_reg_1576[9]),
        .I4(icmp_ln443_7_reg_1570),
        .I5(x_l_I_V_37_reg_1558[23]),
        .O(icmp_ln443_8_fu_932_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_8_fu_932_p2_carry__0_i_2
       (.I0(res_I_V_reg_1564[13]),
        .I1(sub_ln212_7_reg_1576[6]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(x_l_I_V_37_reg_1558[20]),
        .I4(p_Result_75_fu_918_p4[9]),
        .I5(x_read_reg_1484_pp0_iter3_reg),
        .O(icmp_ln443_8_fu_932_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000A5999900A5)) 
    icmp_ln443_8_fu_932_p2_carry__0_i_3
       (.I0(x_read_reg_1484_pp0_iter3_reg),
        .I1(x_l_I_V_37_reg_1558[22]),
        .I2(sub_ln212_7_reg_1576[8]),
        .I3(sub_ln212_7_reg_1576[9]),
        .I4(icmp_ln443_7_reg_1570),
        .I5(x_l_I_V_37_reg_1558[23]),
        .O(icmp_ln443_8_fu_932_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_8_fu_932_p2_carry__0_i_4
       (.I0(res_I_V_reg_1564[13]),
        .I1(x_l_I_V_37_reg_1558[20]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(sub_ln212_7_reg_1576[6]),
        .I4(x_read_reg_1484_pp0_iter3_reg),
        .I5(p_Result_75_fu_918_p4[9]),
        .O(icmp_ln443_8_fu_932_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_8_fu_932_p2_carry_i_1
       (.I0(res_I_V_reg_1564[11]),
        .I1(sub_ln212_7_reg_1576[4]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(x_l_I_V_37_reg_1558[18]),
        .I4(p_Result_75_fu_918_p4[7]),
        .I5(res_I_V_reg_1564[12]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_8_fu_932_p2_carry_i_2
       (.I0(res_I_V_reg_1564[9]),
        .I1(sub_ln212_7_reg_1576[2]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(x_l_I_V_37_reg_1558[16]),
        .I4(p_Result_75_fu_918_p4[5]),
        .I5(res_I_V_reg_1564[10]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h353F0005)) 
    icmp_ln443_8_fu_932_p2_carry_i_3
       (.I0(sub_ln212_7_reg_1576[0]),
        .I1(x_l_I_V_37_reg_1558[15]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(sub_ln212_7_reg_1576[1]),
        .I4(res_I_V_reg_1564[8]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_8_fu_932_p2_carry_i_4
       (.I0(x_l_I_V_37_reg_1558[12]),
        .I1(x_l_I_V_37_reg_1558[13]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_8_fu_932_p2_carry_i_5
       (.I0(res_I_V_reg_1564[11]),
        .I1(x_l_I_V_37_reg_1558[18]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(sub_ln212_7_reg_1576[4]),
        .I4(res_I_V_reg_1564[12]),
        .I5(p_Result_75_fu_918_p4[7]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A95000000009A95)) 
    icmp_ln443_8_fu_932_p2_carry_i_6
       (.I0(res_I_V_reg_1564[9]),
        .I1(x_l_I_V_37_reg_1558[16]),
        .I2(icmp_ln443_7_reg_1570),
        .I3(sub_ln212_7_reg_1576[2]),
        .I4(res_I_V_reg_1564[10]),
        .I5(p_Result_75_fu_918_p4[5]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h5005C0C050050C0C)) 
    icmp_ln443_8_fu_932_p2_carry_i_7
       (.I0(x_l_I_V_37_reg_1558[14]),
        .I1(sub_ln212_7_reg_1576[0]),
        .I2(res_I_V_reg_1564[8]),
        .I3(x_l_I_V_37_reg_1558[15]),
        .I4(icmp_ln443_7_reg_1570),
        .I5(sub_ln212_7_reg_1576[1]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_8_fu_932_p2_carry_i_8
       (.I0(x_l_I_V_37_reg_1558[12]),
        .I1(x_l_I_V_37_reg_1558[13]),
        .O(icmp_ln443_8_fu_932_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_9_fu_1014_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln443_9_fu_1014_p2_carry_n_0,icmp_ln443_9_fu_1014_p2_carry_n_1,icmp_ln443_9_fu_1014_p2_carry_n_2,icmp_ln443_9_fu_1014_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_9_fu_1014_p2_carry_i_1_n_0,icmp_ln443_9_fu_1014_p2_carry_i_2_n_0,icmp_ln443_9_fu_1014_p2_carry_i_3_n_0,icmp_ln443_9_fu_1014_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_9_fu_1014_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_9_fu_1014_p2_carry_i_5_n_0,icmp_ln443_9_fu_1014_p2_carry_i_6_n_0,icmp_ln443_9_fu_1014_p2_carry_i_7_n_0,icmp_ln443_9_fu_1014_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln443_9_fu_1014_p2_carry__0
       (.CI(icmp_ln443_9_fu_1014_p2_carry_n_0),
        .CO({NLW_icmp_ln443_9_fu_1014_p2_carry__0_CO_UNCONNECTED[3],icmp_ln443_9_fu_1014_p2_carry__0_n_1,icmp_ln443_9_fu_1014_p2_carry__0_n_2,icmp_ln443_9_fu_1014_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,icmp_ln443_9_fu_1014_p2_carry__0_i_1_n_0,icmp_ln443_9_fu_1014_p2_carry__0_i_2_n_0}),
        .O(NLW_icmp_ln443_9_fu_1014_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,icmp_ln443_9_fu_1014_p2_carry__0_i_3_n_0,icmp_ln443_9_fu_1014_p2_carry__0_i_4_n_0,icmp_ln443_9_fu_1014_p2_carry__0_i_5_n_0}));
  LUT6 #(
    .INIT(64'h3F553FFF00000000)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_1
       (.I0(sub_ln212_8_fu_938_p2[8]),
        .I1(p_Result_75_fu_918_p4[8]),
        .I2(p_Result_75_fu_918_p4[9]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[9]),
        .I5(x_read_reg_1484_pp0_iter3_reg),
        .O(icmp_ln443_9_fu_1014_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_2
       (.I0(res_I_V_reg_1564[12]),
        .I1(p_Result_78_fu_1000_p4[8]),
        .I2(p_Result_78_fu_1000_p4[9]),
        .I3(res_I_V_reg_1564[13]),
        .O(icmp_ln443_9_fu_1014_p2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_3
       (.I0(sub_ln212_8_fu_938_p2[10]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[8]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[22]),
        .O(icmp_ln443_9_fu_1014_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hA005C0C0A0050303)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_4
       (.I0(p_Result_75_fu_918_p4[8]),
        .I1(sub_ln212_8_fu_938_p2[8]),
        .I2(x_read_reg_1484_pp0_iter3_reg),
        .I3(p_Result_75_fu_918_p4[9]),
        .I4(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I5(sub_ln212_8_fu_938_p2[9]),
        .O(icmp_ln443_9_fu_1014_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_5
       (.I0(res_I_V_reg_1564[12]),
        .I1(p_Result_78_fu_1000_p4[8]),
        .I2(res_I_V_reg_1564[13]),
        .I3(p_Result_78_fu_1000_p4[9]),
        .O(icmp_ln443_9_fu_1014_p2_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_6
       (.I0(x_l_I_V_37_reg_1558[18]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[4]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[6]),
        .O(p_Result_78_fu_1000_p4[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    icmp_ln443_9_fu_1014_p2_carry__0_i_7
       (.I0(x_l_I_V_37_reg_1558[19]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[5]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[7]),
        .O(p_Result_78_fu_1000_p4[9]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_9_fu_1014_p2_carry_i_1
       (.I0(res_I_V_reg_1564[10]),
        .I1(p_Result_78_fu_1000_p4[6]),
        .I2(p_Result_78_fu_1000_p4[7]),
        .I3(res_I_V_reg_1564[11]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    icmp_ln443_9_fu_1014_p2_carry_i_10
       (.I0(x_l_I_V_37_reg_1558[17]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[3]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[5]),
        .O(p_Result_78_fu_1000_p4[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    icmp_ln443_9_fu_1014_p2_carry_i_11
       (.I0(x_l_I_V_37_reg_1558[15]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[1]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[3]),
        .O(p_Result_78_fu_1000_p4[5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln443_9_fu_1014_p2_carry_i_2
       (.I0(res_I_V_reg_1564[8]),
        .I1(p_Result_78_fu_1000_p4[4]),
        .I2(p_Result_78_fu_1000_p4[5]),
        .I3(res_I_V_reg_1564[9]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h032203BB)) 
    icmp_ln443_9_fu_1014_p2_carry_i_3
       (.I0(x_l_I_V_37_reg_1558[12]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[13]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[1]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_9_fu_1014_p2_carry_i_4
       (.I0(x_l_I_V_37_reg_1558[10]),
        .I1(x_l_I_V_37_reg_1558[11]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_9_fu_1014_p2_carry_i_5
       (.I0(res_I_V_reg_1564[10]),
        .I1(p_Result_78_fu_1000_p4[6]),
        .I2(res_I_V_reg_1564[11]),
        .I3(p_Result_78_fu_1000_p4[7]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln443_9_fu_1014_p2_carry_i_6
       (.I0(res_I_V_reg_1564[8]),
        .I1(p_Result_78_fu_1000_p4[4]),
        .I2(res_I_V_reg_1564[9]),
        .I3(p_Result_78_fu_1000_p4[5]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h14111444)) 
    icmp_ln443_9_fu_1014_p2_carry_i_7
       (.I0(x_l_I_V_37_reg_1558[12]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[13]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[1]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_9_fu_1014_p2_carry_i_8
       (.I0(x_l_I_V_37_reg_1558[10]),
        .I1(x_l_I_V_37_reg_1558[11]),
        .O(icmp_ln443_9_fu_1014_p2_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    icmp_ln443_9_fu_1014_p2_carry_i_9
       (.I0(x_l_I_V_37_reg_1558[16]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[2]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[4]),
        .O(p_Result_78_fu_1000_p4[6]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_31_reg_1593[1]_i_1 
       (.I0(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .O(res_I_V_41_fu_1056_p3));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_31_reg_1593[2]_i_1 
       (.I0(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .O(res_I_V_40_fu_974_p3));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_31_reg_1593[3]_i_1 
       (.I0(icmp_ln443_7_reg_1570),
        .O(res_I_V_39_fu_894_p3));
  FDRE \p_Result_31_reg_1593_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_41_fu_1056_p3),
        .Q(p_Result_31_reg_1593[1]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_40_fu_974_p3),
        .Q(p_Result_31_reg_1593[2]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_39_fu_894_p3),
        .Q(p_Result_31_reg_1593[3]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_reg_1564[8]),
        .Q(p_Result_31_reg_1593[4]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_reg_1564[9]),
        .Q(p_Result_31_reg_1593[5]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_reg_1564[10]),
        .Q(p_Result_31_reg_1593[6]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_reg_1564[11]),
        .Q(p_Result_31_reg_1593[7]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_reg_1564[12]),
        .Q(p_Result_31_reg_1593[8]),
        .R(1'b0));
  FDRE \p_Result_31_reg_1593_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_reg_1564[13]),
        .Q(p_Result_31_reg_1593[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_37_reg_1616[1]_i_1 
       (.I0(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .O(res_I_V_43_fu_1213_p3));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_37_reg_1616[2]_i_1 
       (.I0(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .O(res_I_V_42_fu_1132_p3));
  FDRE \p_Result_37_reg_1616_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[8]),
        .Q(p_Result_37_reg_1616[10]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[9]),
        .Q(p_Result_37_reg_1616[11]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_43_fu_1213_p3),
        .Q(p_Result_37_reg_1616[1]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_42_fu_1132_p3),
        .Q(p_Result_37_reg_1616[2]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[1]),
        .Q(p_Result_37_reg_1616[3]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[2]),
        .Q(p_Result_37_reg_1616[4]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[3]),
        .Q(p_Result_37_reg_1616[5]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[4]),
        .Q(p_Result_37_reg_1616[6]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[5]),
        .Q(p_Result_37_reg_1616[7]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[6]),
        .Q(p_Result_37_reg_1616[8]),
        .R(1'b0));
  FDRE \p_Result_37_reg_1616_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_31_reg_1593[7]),
        .Q(p_Result_37_reg_1616[9]),
        .R(1'b0));
  CARRY4 p_Result_48_fu_1456_p2_carry
       (.CI(1'b0),
        .CO({p_Result_48_fu_1456_p2_carry_n_0,p_Result_48_fu_1456_p2_carry_n_1,p_Result_48_fu_1456_p2_carry_n_2,p_Result_48_fu_1456_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p_Result_48_fu_1456_p2_carry_i_1_n_0,p_Result_48_fu_1456_p2_carry_i_2_n_0,p_Result_48_fu_1456_p2_carry_i_3_n_0,p_Result_48_fu_1456_p2_carry_i_4_n_0}),
        .O(NLW_p_Result_48_fu_1456_p2_carry_O_UNCONNECTED[3:0]),
        .S({p_Result_48_fu_1456_p2_carry_i_5_n_0,p_Result_48_fu_1456_p2_carry_i_6_n_0,p_Result_48_fu_1456_p2_carry_i_7_n_0,p_Result_48_fu_1456_p2_carry_i_8_n_0}));
  CARRY4 p_Result_48_fu_1456_p2_carry__0
       (.CI(p_Result_48_fu_1456_p2_carry_n_0),
        .CO({p_Result_48_fu_1456_p2_carry__0_n_0,p_Result_48_fu_1456_p2_carry__0_n_1,p_Result_48_fu_1456_p2_carry__0_n_2,p_Result_48_fu_1456_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_Result_48_fu_1456_p2_carry__0_i_1_n_0,p_Result_48_fu_1456_p2_carry__0_i_2_n_0,p_Result_48_fu_1456_p2_carry__0_i_3_n_0,p_Result_48_fu_1456_p2_carry__0_i_4_n_0}),
        .O(NLW_p_Result_48_fu_1456_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({p_Result_48_fu_1456_p2_carry__0_i_5_n_0,p_Result_48_fu_1456_p2_carry__0_i_6_n_0,p_Result_48_fu_1456_p2_carry__0_i_7_n_0,p_Result_48_fu_1456_p2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0F0C0F0F0F0C0A0A)) 
    p_Result_48_fu_1456_p2_carry__0_i_1
       (.I0(sub_ln212_14_fu_1405_p2[14]),
        .I1(p_Result_93_reg_1640[14]),
        .I2(x_read_reg_1484_pp0_iter6_reg),
        .I3(p_Result_93_reg_1640[15]),
        .I4(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I5(sub_ln212_14_fu_1405_p2[15]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_Result_48_fu_1456_p2_carry__0_i_10
       (.CI(p_Result_48_fu_1456_p2_carry_i_9_n_0),
        .CO({p_Result_48_fu_1456_p2_carry__0_i_10_n_0,p_Result_48_fu_1456_p2_carry__0_i_10_n_1,p_Result_48_fu_1456_p2_carry__0_i_10_n_2,p_Result_48_fu_1456_p2_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI(p_Result_93_reg_1640[12:9]),
        .O(sub_ln212_14_fu_1405_p2[12:9]),
        .S({p_Result_48_fu_1456_p2_carry__0_i_21_n_0,p_Result_48_fu_1456_p2_carry__0_i_22_n_0,p_Result_48_fu_1456_p2_carry__0_i_23_n_0,p_Result_48_fu_1456_p2_carry__0_i_24_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry__0_i_11
       (.I0(p_Result_93_reg_1640[13]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[13]),
        .O(x_l_I_V_45_fu_1430_p3__17[13]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry__0_i_12
       (.I0(p_Result_93_reg_1640[11]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[11]),
        .O(x_l_I_V_45_fu_1430_p3__17[11]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry__0_i_13
       (.I0(p_Result_93_reg_1640[9]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[9]),
        .O(x_l_I_V_45_fu_1430_p3__17[9]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry__0_i_14
       (.I0(res_I_V_45_reg_1633[13]),
        .I1(sub_ln212_14_fu_1405_p2[13]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[13]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry__0_i_15
       (.I0(res_I_V_45_reg_1633[11]),
        .I1(sub_ln212_14_fu_1405_p2[11]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[11]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry__0_i_16
       (.I0(res_I_V_45_reg_1633[9]),
        .I1(sub_ln212_14_fu_1405_p2[9]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[9]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_17
       (.I0(p_Result_93_reg_1640[16]),
        .I1(x_read_reg_1484_pp0_iter6_reg),
        .O(p_Result_48_fu_1456_p2_carry__0_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_18
       (.I0(p_Result_93_reg_1640[15]),
        .I1(x_read_reg_1484_pp0_iter6_reg),
        .O(p_Result_48_fu_1456_p2_carry__0_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_19
       (.I0(p_Result_93_reg_1640[14]),
        .I1(res_I_V_45_reg_1633[13]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    p_Result_48_fu_1456_p2_carry__0_i_2
       (.I0(sub_ln212_14_fu_1405_p2[12]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(p_Result_93_reg_1640[12]),
        .I3(res_I_V_45_reg_1633[12]),
        .I4(res_I_V_45_reg_1633[13]),
        .I5(x_l_I_V_45_fu_1430_p3__17[13]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_20
       (.I0(p_Result_93_reg_1640[13]),
        .I1(res_I_V_45_reg_1633[12]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_20_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_21
       (.I0(p_Result_93_reg_1640[12]),
        .I1(res_I_V_45_reg_1633[11]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_21_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_22
       (.I0(p_Result_93_reg_1640[11]),
        .I1(res_I_V_45_reg_1633[10]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_22_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_23
       (.I0(p_Result_93_reg_1640[10]),
        .I1(res_I_V_45_reg_1633[9]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_23_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry__0_i_24
       (.I0(p_Result_93_reg_1640[9]),
        .I1(res_I_V_45_reg_1633[8]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    p_Result_48_fu_1456_p2_carry__0_i_3
       (.I0(sub_ln212_14_fu_1405_p2[10]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(p_Result_93_reg_1640[10]),
        .I3(res_I_V_45_reg_1633[10]),
        .I4(res_I_V_45_reg_1633[11]),
        .I5(x_l_I_V_45_fu_1430_p3__17[11]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    p_Result_48_fu_1456_p2_carry__0_i_4
       (.I0(sub_ln212_14_fu_1405_p2[8]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(p_Result_93_reg_1640[8]),
        .I3(res_I_V_45_reg_1633[8]),
        .I4(res_I_V_45_reg_1633[9]),
        .I5(x_l_I_V_45_fu_1430_p3__17[9]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hA0CCA00005000533)) 
    p_Result_48_fu_1456_p2_carry__0_i_5
       (.I0(p_Result_93_reg_1640[14]),
        .I1(sub_ln212_14_fu_1405_p2[14]),
        .I2(p_Result_93_reg_1640[15]),
        .I3(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I4(sub_ln212_14_fu_1405_p2[15]),
        .I5(x_read_reg_1484_pp0_iter6_reg),
        .O(p_Result_48_fu_1456_p2_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hB8470000)) 
    p_Result_48_fu_1456_p2_carry__0_i_6
       (.I0(p_Result_93_reg_1640[12]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[12]),
        .I3(res_I_V_45_reg_1633[12]),
        .I4(p_Result_48_fu_1456_p2_carry__0_i_14_n_0),
        .O(p_Result_48_fu_1456_p2_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hB8470000)) 
    p_Result_48_fu_1456_p2_carry__0_i_7
       (.I0(p_Result_93_reg_1640[10]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[10]),
        .I3(res_I_V_45_reg_1633[10]),
        .I4(p_Result_48_fu_1456_p2_carry__0_i_15_n_0),
        .O(p_Result_48_fu_1456_p2_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8470000)) 
    p_Result_48_fu_1456_p2_carry__0_i_8
       (.I0(p_Result_93_reg_1640[8]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[8]),
        .I3(res_I_V_45_reg_1633[8]),
        .I4(p_Result_48_fu_1456_p2_carry__0_i_16_n_0),
        .O(p_Result_48_fu_1456_p2_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_Result_48_fu_1456_p2_carry__0_i_9
       (.CI(p_Result_48_fu_1456_p2_carry__0_i_10_n_0),
        .CO({p_Result_48_fu_1456_p2_carry__0_i_9_n_0,p_Result_48_fu_1456_p2_carry__0_i_9_n_1,p_Result_48_fu_1456_p2_carry__0_i_9_n_2,p_Result_48_fu_1456_p2_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(p_Result_93_reg_1640[16:13]),
        .O(sub_ln212_14_fu_1405_p2[16:13]),
        .S({p_Result_48_fu_1456_p2_carry__0_i_17_n_0,p_Result_48_fu_1456_p2_carry__0_i_18_n_0,p_Result_48_fu_1456_p2_carry__0_i_19_n_0,p_Result_48_fu_1456_p2_carry__0_i_20_n_0}));
  CARRY4 p_Result_48_fu_1456_p2_carry__1
       (.CI(p_Result_48_fu_1456_p2_carry__0_n_0),
        .CO({p_Result_48_fu_1456_p2_carry__1_n_0,p_Result_48_fu_1456_p2_carry__1_n_1,p_Result_48_fu_1456_p2_carry__1_n_2,p_Result_48_fu_1456_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p_Result_48_fu_1456_p2_carry__1_i_1_n_0,p_Result_48_fu_1456_p2_carry__1_i_2_n_0,p_Result_48_fu_1456_p2_carry__1_i_3_n_0,p_Result_48_fu_1456_p2_carry__1_i_4_n_0}),
        .O(NLW_p_Result_48_fu_1456_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({p_Result_48_fu_1456_p2_carry__1_i_5_n_0,p_Result_48_fu_1456_p2_carry__1_i_6_n_0,p_Result_48_fu_1456_p2_carry__1_i_7_n_0,p_Result_48_fu_1456_p2_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    p_Result_48_fu_1456_p2_carry__1_i_1
       (.I0(x_l_I_V_44_reg_1627[22]),
        .I1(x_l_I_V_44_reg_1627[23]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_Result_48_fu_1456_p2_carry__1_i_10
       (.I0(p_Result_93_reg_1640[17]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    p_Result_48_fu_1456_p2_carry__1_i_2
       (.I0(x_l_I_V_44_reg_1627[20]),
        .I1(x_l_I_V_44_reg_1627[21]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    p_Result_48_fu_1456_p2_carry__1_i_3
       (.I0(x_l_I_V_44_reg_1627[18]),
        .I1(x_l_I_V_44_reg_1627[19]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFCAAFC)) 
    p_Result_48_fu_1456_p2_carry__1_i_4
       (.I0(p_Result_93_reg_1640[16]),
        .I1(sub_ln212_14_fu_1405_p2[16]),
        .I2(sub_ln212_14_fu_1405_p2[17]),
        .I3(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I4(p_Result_93_reg_1640[17]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p_Result_48_fu_1456_p2_carry__1_i_5
       (.I0(x_l_I_V_44_reg_1627[22]),
        .I1(x_l_I_V_44_reg_1627[23]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p_Result_48_fu_1456_p2_carry__1_i_6
       (.I0(x_l_I_V_44_reg_1627[20]),
        .I1(x_l_I_V_44_reg_1627[21]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p_Result_48_fu_1456_p2_carry__1_i_7
       (.I0(x_l_I_V_44_reg_1627[18]),
        .I1(x_l_I_V_44_reg_1627[19]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    p_Result_48_fu_1456_p2_carry__1_i_8
       (.I0(sub_ln212_14_fu_1405_p2[16]),
        .I1(p_Result_93_reg_1640[16]),
        .I2(sub_ln212_14_fu_1405_p2[17]),
        .I3(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I4(p_Result_93_reg_1640[17]),
        .O(p_Result_48_fu_1456_p2_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_Result_48_fu_1456_p2_carry__1_i_9
       (.CI(p_Result_48_fu_1456_p2_carry__0_i_9_n_0),
        .CO(NLW_p_Result_48_fu_1456_p2_carry__1_i_9_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_Result_48_fu_1456_p2_carry__1_i_9_O_UNCONNECTED[3:1],sub_ln212_14_fu_1405_p2[17]}),
        .S({1'b0,1'b0,1'b0,p_Result_48_fu_1456_p2_carry__1_i_10_n_0}));
  CARRY4 p_Result_48_fu_1456_p2_carry__2
       (.CI(p_Result_48_fu_1456_p2_carry__1_n_0),
        .CO({p_Result_48_fu_1456_p2_carry__2_n_0,p_Result_48_fu_1456_p2_carry__2_n_1,p_Result_48_fu_1456_p2_carry__2_n_2,p_Result_48_fu_1456_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({x_l_I_V_44_reg_1627[30],p_Result_48_fu_1456_p2_carry__2_i_1_n_0,p_Result_48_fu_1456_p2_carry__2_i_2_n_0,p_Result_48_fu_1456_p2_carry__2_i_3_n_0}),
        .O(NLW_p_Result_48_fu_1456_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({p_Result_48_fu_1456_p2_carry__2_i_4_n_0,p_Result_48_fu_1456_p2_carry__2_i_5_n_0,p_Result_48_fu_1456_p2_carry__2_i_6_n_0,p_Result_48_fu_1456_p2_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    p_Result_48_fu_1456_p2_carry__2_i_1
       (.I0(x_l_I_V_44_reg_1627[28]),
        .I1(x_l_I_V_44_reg_1627[29]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    p_Result_48_fu_1456_p2_carry__2_i_2
       (.I0(x_l_I_V_44_reg_1627[26]),
        .I1(x_l_I_V_44_reg_1627[27]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    p_Result_48_fu_1456_p2_carry__2_i_3
       (.I0(x_l_I_V_44_reg_1627[24]),
        .I1(x_l_I_V_44_reg_1627[25]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_Result_48_fu_1456_p2_carry__2_i_4
       (.I0(x_l_I_V_44_reg_1627[30]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p_Result_48_fu_1456_p2_carry__2_i_5
       (.I0(x_l_I_V_44_reg_1627[28]),
        .I1(x_l_I_V_44_reg_1627[29]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p_Result_48_fu_1456_p2_carry__2_i_6
       (.I0(x_l_I_V_44_reg_1627[26]),
        .I1(x_l_I_V_44_reg_1627[27]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p_Result_48_fu_1456_p2_carry__2_i_7
       (.I0(x_l_I_V_44_reg_1627[24]),
        .I1(x_l_I_V_44_reg_1627[25]),
        .O(p_Result_48_fu_1456_p2_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    p_Result_48_fu_1456_p2_carry_i_1
       (.I0(sub_ln212_14_fu_1405_p2[6]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(p_Result_93_reg_1640[6]),
        .I3(res_I_V_45_reg_1633[6]),
        .I4(res_I_V_45_reg_1633[7]),
        .I5(x_l_I_V_45_fu_1430_p3__17[7]),
        .O(p_Result_48_fu_1456_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry_i_10
       (.I0(p_Result_93_reg_1640[7]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[7]),
        .O(x_l_I_V_45_fu_1430_p3__17[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_Result_48_fu_1456_p2_carry_i_11
       (.CI(1'b0),
        .CO({p_Result_48_fu_1456_p2_carry_i_11_n_0,p_Result_48_fu_1456_p2_carry_i_11_n_1,p_Result_48_fu_1456_p2_carry_i_11_n_2,p_Result_48_fu_1456_p2_carry_i_11_n_3}),
        .CYINIT(p_Result_93_reg_1640[0]),
        .DI(p_Result_93_reg_1640[4:1]),
        .O(sub_ln212_14_fu_1405_p2[4:1]),
        .S({p_Result_48_fu_1456_p2_carry_i_21_n_0,p_Result_48_fu_1456_p2_carry_i_22_n_0,p_Result_48_fu_1456_p2_carry_i_23_n_0,p_Result_48_fu_1456_p2_carry_i_24_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry_i_12
       (.I0(p_Result_93_reg_1640[5]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[5]),
        .O(x_l_I_V_45_fu_1430_p3__17[5]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry_i_13
       (.I0(p_Result_93_reg_1640[3]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[3]),
        .O(x_l_I_V_45_fu_1430_p3__17[3]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry_i_14
       (.I0(res_I_V_45_reg_1633[7]),
        .I1(sub_ln212_14_fu_1405_p2[7]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[7]),
        .O(p_Result_48_fu_1456_p2_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry_i_15
       (.I0(res_I_V_45_reg_1633[5]),
        .I1(sub_ln212_14_fu_1405_p2[5]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[5]),
        .O(p_Result_48_fu_1456_p2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry_i_16
       (.I0(res_I_V_45_reg_1633[3]),
        .I1(sub_ln212_14_fu_1405_p2[3]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[3]),
        .O(p_Result_48_fu_1456_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_17
       (.I0(p_Result_93_reg_1640[8]),
        .I1(res_I_V_45_reg_1633[7]),
        .O(p_Result_48_fu_1456_p2_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_18
       (.I0(p_Result_93_reg_1640[7]),
        .I1(res_I_V_45_reg_1633[6]),
        .O(p_Result_48_fu_1456_p2_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_19
       (.I0(p_Result_93_reg_1640[6]),
        .I1(res_I_V_45_reg_1633[5]),
        .O(p_Result_48_fu_1456_p2_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    p_Result_48_fu_1456_p2_carry_i_2
       (.I0(sub_ln212_14_fu_1405_p2[4]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(p_Result_93_reg_1640[4]),
        .I3(res_I_V_45_reg_1633[4]),
        .I4(res_I_V_45_reg_1633[5]),
        .I5(x_l_I_V_45_fu_1430_p3__17[5]),
        .O(p_Result_48_fu_1456_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_20
       (.I0(p_Result_93_reg_1640[5]),
        .I1(res_I_V_45_reg_1633[4]),
        .O(p_Result_48_fu_1456_p2_carry_i_20_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_21
       (.I0(p_Result_93_reg_1640[4]),
        .I1(res_I_V_45_reg_1633[3]),
        .O(p_Result_48_fu_1456_p2_carry_i_21_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_22
       (.I0(p_Result_93_reg_1640[3]),
        .I1(res_I_V_45_reg_1633[2]),
        .O(p_Result_48_fu_1456_p2_carry_i_22_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_Result_48_fu_1456_p2_carry_i_23
       (.I0(p_Result_93_reg_1640[2]),
        .I1(res_I_V_45_reg_1633[1]),
        .O(p_Result_48_fu_1456_p2_carry_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_Result_48_fu_1456_p2_carry_i_24
       (.I0(p_Result_93_reg_1640[1]),
        .O(p_Result_48_fu_1456_p2_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    p_Result_48_fu_1456_p2_carry_i_3
       (.I0(sub_ln212_14_fu_1405_p2[2]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(p_Result_93_reg_1640[2]),
        .I3(res_I_V_45_reg_1633[2]),
        .I4(res_I_V_45_reg_1633[3]),
        .I5(x_l_I_V_45_fu_1430_p3__17[3]),
        .O(p_Result_48_fu_1456_p2_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hB233B200)) 
    p_Result_48_fu_1456_p2_carry_i_4
       (.I0(p_Result_93_reg_1640[0]),
        .I1(res_I_V_45_reg_1633[1]),
        .I2(p_Result_93_reg_1640[1]),
        .I3(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I4(sub_ln212_14_fu_1405_p2[1]),
        .O(p_Result_48_fu_1456_p2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hB8470000)) 
    p_Result_48_fu_1456_p2_carry_i_5
       (.I0(p_Result_93_reg_1640[6]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[6]),
        .I3(res_I_V_45_reg_1633[6]),
        .I4(p_Result_48_fu_1456_p2_carry_i_14_n_0),
        .O(p_Result_48_fu_1456_p2_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hB8470000)) 
    p_Result_48_fu_1456_p2_carry_i_6
       (.I0(p_Result_93_reg_1640[4]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[4]),
        .I3(res_I_V_45_reg_1633[4]),
        .I4(p_Result_48_fu_1456_p2_carry_i_15_n_0),
        .O(p_Result_48_fu_1456_p2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hB8470000)) 
    p_Result_48_fu_1456_p2_carry_i_7
       (.I0(p_Result_93_reg_1640[2]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[2]),
        .I3(res_I_V_45_reg_1633[2]),
        .I4(p_Result_48_fu_1456_p2_carry_i_16_n_0),
        .O(p_Result_48_fu_1456_p2_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h45401015)) 
    p_Result_48_fu_1456_p2_carry_i_8
       (.I0(p_Result_93_reg_1640[0]),
        .I1(p_Result_93_reg_1640[1]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(sub_ln212_14_fu_1405_p2[1]),
        .I4(res_I_V_45_reg_1633[1]),
        .O(p_Result_48_fu_1456_p2_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p_Result_48_fu_1456_p2_carry_i_9
       (.CI(p_Result_48_fu_1456_p2_carry_i_11_n_0),
        .CO({p_Result_48_fu_1456_p2_carry_i_9_n_0,p_Result_48_fu_1456_p2_carry_i_9_n_1,p_Result_48_fu_1456_p2_carry_i_9_n_2,p_Result_48_fu_1456_p2_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(p_Result_93_reg_1640[8:5]),
        .O(sub_ln212_14_fu_1405_p2[8:5]),
        .S({p_Result_48_fu_1456_p2_carry_i_17_n_0,p_Result_48_fu_1456_p2_carry_i_18_n_0,p_Result_48_fu_1456_p2_carry_i_19_n_0,p_Result_48_fu_1456_p2_carry_i_20_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[10]_i_1 
       (.I0(p_Result_75_fu_918_p4[6]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[6]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[8]),
        .O(x_l_I_V_40_fu_1048_p3[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[10]_i_2 
       (.I0(x_l_I_V_37_reg_1558[18]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[4]),
        .O(p_Result_75_fu_918_p4[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[11]_i_1 
       (.I0(p_Result_75_fu_918_p4[7]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[7]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[9]),
        .O(x_l_I_V_40_fu_1048_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[11]_i_2 
       (.I0(x_l_I_V_37_reg_1558[19]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[5]),
        .O(p_Result_75_fu_918_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[12]_i_1 
       (.I0(p_Result_75_fu_918_p4[8]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[8]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[10]),
        .O(x_l_I_V_40_fu_1048_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[12]_i_2 
       (.I0(x_l_I_V_37_reg_1558[20]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[6]),
        .O(p_Result_75_fu_918_p4[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[13]_i_1 
       (.I0(p_Result_75_fu_918_p4[9]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[9]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[11]),
        .O(x_l_I_V_40_fu_1048_p3[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[13]_i_10 
       (.I0(x_l_I_V_37_reg_1558[21]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[7]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[9]),
        .O(p_Result_78_fu_1000_p4[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[13]_i_11 
       (.I0(x_l_I_V_37_reg_1558[20]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[6]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[8]),
        .O(p_Result_78_fu_1000_p4[10]));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    \p_Result_81_reg_1598[13]_i_12 
       (.I0(sub_ln212_8_fu_938_p2[10]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[8]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[22]),
        .O(\p_Result_81_reg_1598[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[13]_i_13 
       (.I0(sub_ln212_8_fu_938_p2[9]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[7]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[21]),
        .I5(x_read_reg_1484_pp0_iter3_reg),
        .O(\p_Result_81_reg_1598[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[13]_i_14 
       (.I0(sub_ln212_8_fu_938_p2[8]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[6]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[20]),
        .I5(x_read_reg_1484_pp0_iter3_reg),
        .O(\p_Result_81_reg_1598[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[13]_i_15 
       (.I0(sub_ln212_8_fu_938_p2[7]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[5]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[19]),
        .I5(res_I_V_reg_1564[13]),
        .O(\p_Result_81_reg_1598[13]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[13]_i_2 
       (.I0(x_l_I_V_37_reg_1558[21]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[7]),
        .O(p_Result_75_fu_918_p4[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[13]_i_5 
       (.I0(x_l_I_V_37_reg_1558[22]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[8]),
        .O(\p_Result_81_reg_1598[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[13]_i_6 
       (.I0(x_l_I_V_37_reg_1558[21]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[7]),
        .O(\p_Result_81_reg_1598[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \p_Result_81_reg_1598[13]_i_7 
       (.I0(sub_ln212_7_reg_1576[9]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[23]),
        .O(\p_Result_81_reg_1598[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[13]_i_8 
       (.I0(sub_ln212_7_reg_1576[8]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[22]),
        .I3(x_read_reg_1484_pp0_iter3_reg),
        .O(\p_Result_81_reg_1598[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[13]_i_9 
       (.I0(sub_ln212_7_reg_1576[7]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[21]),
        .I3(x_read_reg_1484_pp0_iter3_reg),
        .O(\p_Result_81_reg_1598[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_81_reg_1598[2]_i_1 
       (.I0(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I1(x_l_I_V_37_reg_1558[10]),
        .O(\p_Result_81_reg_1598[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[3]_i_1 
       (.I0(x_l_I_V_37_reg_1558[11]),
        .I1(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I2(sub_ln212_9_fu_1020_p2[1]),
        .O(x_l_I_V_40_fu_1048_p3[11]));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[3]_i_3 
       (.I0(sub_ln212_8_fu_938_p2[2]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[0]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[14]),
        .I5(res_I_V_reg_1564[8]),
        .O(\p_Result_81_reg_1598[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \p_Result_81_reg_1598[3]_i_4 
       (.I0(sub_ln212_8_fu_938_p2[1]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(x_l_I_V_37_reg_1558[13]),
        .I3(icmp_ln443_7_reg_1570),
        .O(\p_Result_81_reg_1598[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_81_reg_1598[3]_i_5 
       (.I0(x_l_I_V_37_reg_1558[12]),
        .O(\p_Result_81_reg_1598[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_81_reg_1598[3]_i_6 
       (.I0(x_l_I_V_37_reg_1558[11]),
        .O(\p_Result_81_reg_1598[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \p_Result_81_reg_1598[4]_i_1 
       (.I0(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I1(x_l_I_V_37_reg_1558[12]),
        .I2(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I3(sub_ln212_9_fu_1020_p2[2]),
        .O(x_l_I_V_40_fu_1048_p3[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[5]_i_1 
       (.I0(x_l_I_V_37_reg_1558[13]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[1]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[3]),
        .O(x_l_I_V_40_fu_1048_p3[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[5]_i_3 
       (.I0(x_l_I_V_37_reg_1558[16]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[2]),
        .O(\p_Result_81_reg_1598[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[5]_i_4 
       (.I0(x_l_I_V_37_reg_1558[15]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[1]),
        .O(\p_Result_81_reg_1598[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[5]_i_5 
       (.I0(sub_ln212_7_reg_1576[2]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[16]),
        .I3(res_I_V_reg_1564[9]),
        .O(\p_Result_81_reg_1598[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[5]_i_6 
       (.I0(sub_ln212_7_reg_1576[1]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[15]),
        .I3(res_I_V_reg_1564[8]),
        .O(\p_Result_81_reg_1598[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \p_Result_81_reg_1598[5]_i_7 
       (.I0(sub_ln212_7_reg_1576[0]),
        .I1(x_l_I_V_37_reg_1558[14]),
        .I2(icmp_ln443_7_reg_1570),
        .O(\p_Result_81_reg_1598[5]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_81_reg_1598[5]_i_8 
       (.I0(x_l_I_V_37_reg_1558[13]),
        .O(\p_Result_81_reg_1598[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[6]_i_1 
       (.I0(p_Result_78_fu_1000_p4[4]),
        .I1(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I2(sub_ln212_9_fu_1020_p2[4]),
        .O(x_l_I_V_40_fu_1048_p3[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[6]_i_2 
       (.I0(x_l_I_V_37_reg_1558[14]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[0]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[2]),
        .O(p_Result_78_fu_1000_p4[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[7]_i_1 
       (.I0(p_Result_75_fu_918_p4[3]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[3]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[5]),
        .O(x_l_I_V_40_fu_1048_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[7]_i_2 
       (.I0(x_l_I_V_37_reg_1558[15]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[1]),
        .O(p_Result_75_fu_918_p4[3]));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[7]_i_4 
       (.I0(sub_ln212_8_fu_938_p2[6]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[4]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[18]),
        .I5(res_I_V_reg_1564[12]),
        .O(\p_Result_81_reg_1598[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[7]_i_5 
       (.I0(sub_ln212_8_fu_938_p2[5]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[3]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[17]),
        .I5(res_I_V_reg_1564[11]),
        .O(\p_Result_81_reg_1598[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[7]_i_6 
       (.I0(sub_ln212_8_fu_938_p2[4]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[2]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[16]),
        .I5(res_I_V_reg_1564[10]),
        .O(\p_Result_81_reg_1598[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \p_Result_81_reg_1598[7]_i_7 
       (.I0(sub_ln212_8_fu_938_p2[3]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_7_reg_1576[1]),
        .I3(icmp_ln443_7_reg_1570),
        .I4(x_l_I_V_37_reg_1558[15]),
        .I5(res_I_V_reg_1564[9]),
        .O(\p_Result_81_reg_1598[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[8]_i_1 
       (.I0(p_Result_75_fu_918_p4[4]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[4]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[6]),
        .O(x_l_I_V_40_fu_1048_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[8]_i_2 
       (.I0(x_l_I_V_37_reg_1558[16]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[2]),
        .O(p_Result_75_fu_918_p4[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[9]_i_1 
       (.I0(p_Result_75_fu_918_p4[5]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[5]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[7]),
        .O(x_l_I_V_40_fu_1048_p3[17]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[9]_i_10 
       (.I0(sub_ln212_7_reg_1576[4]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[18]),
        .I3(res_I_V_reg_1564[11]),
        .O(\p_Result_81_reg_1598[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[9]_i_11 
       (.I0(sub_ln212_7_reg_1576[3]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[17]),
        .I3(res_I_V_reg_1564[10]),
        .O(\p_Result_81_reg_1598[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[9]_i_2 
       (.I0(x_l_I_V_37_reg_1558[17]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[3]),
        .O(p_Result_75_fu_918_p4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[9]_i_4 
       (.I0(x_l_I_V_37_reg_1558[20]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[6]),
        .O(\p_Result_81_reg_1598[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[9]_i_5 
       (.I0(x_l_I_V_37_reg_1558[19]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[5]),
        .O(\p_Result_81_reg_1598[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[9]_i_6 
       (.I0(x_l_I_V_37_reg_1558[18]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[4]),
        .O(\p_Result_81_reg_1598[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[9]_i_7 
       (.I0(x_l_I_V_37_reg_1558[17]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[3]),
        .O(\p_Result_81_reg_1598[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[9]_i_8 
       (.I0(sub_ln212_7_reg_1576[6]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[20]),
        .I3(res_I_V_reg_1564[13]),
        .O(\p_Result_81_reg_1598[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_81_reg_1598[9]_i_9 
       (.I0(sub_ln212_7_reg_1576[5]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(x_l_I_V_37_reg_1558[19]),
        .I3(res_I_V_reg_1564[12]),
        .O(\p_Result_81_reg_1598[9]_i_9_n_0 ));
  FDRE \p_Result_81_reg_1598_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558_reg[8]_srl5_n_0 ),
        .Q(p_Result_81_reg_1598[0]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[18]),
        .Q(p_Result_81_reg_1598[10]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[19]),
        .Q(p_Result_81_reg_1598[11]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[20]),
        .Q(p_Result_81_reg_1598[12]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[21]),
        .Q(p_Result_81_reg_1598[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_81_reg_1598_reg[13]_i_3 
       (.CI(\p_Result_81_reg_1598_reg[9]_i_3_n_0 ),
        .CO({\NLW_p_Result_81_reg_1598_reg[13]_i_3_CO_UNCONNECTED [3:2],\p_Result_81_reg_1598_reg[13]_i_3_n_2 ,\p_Result_81_reg_1598_reg[13]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\p_Result_81_reg_1598[13]_i_5_n_0 ,\p_Result_81_reg_1598[13]_i_6_n_0 }),
        .O({\NLW_p_Result_81_reg_1598_reg[13]_i_3_O_UNCONNECTED [3],sub_ln212_8_fu_938_p2[11:9]}),
        .S({1'b0,\p_Result_81_reg_1598[13]_i_7_n_0 ,\p_Result_81_reg_1598[13]_i_8_n_0 ,\p_Result_81_reg_1598[13]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_81_reg_1598_reg[13]_i_4 
       (.CI(\p_Result_81_reg_1598_reg[7]_i_3_n_0 ),
        .CO({\NLW_p_Result_81_reg_1598_reg[13]_i_4_CO_UNCONNECTED [3],\p_Result_81_reg_1598_reg[13]_i_4_n_1 ,\p_Result_81_reg_1598_reg[13]_i_4_n_2 ,\p_Result_81_reg_1598_reg[13]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_Result_78_fu_1000_p4[11:9]}),
        .O(sub_ln212_9_fu_1020_p2[12:9]),
        .S({\p_Result_81_reg_1598[13]_i_12_n_0 ,\p_Result_81_reg_1598[13]_i_13_n_0 ,\p_Result_81_reg_1598[13]_i_14_n_0 ,\p_Result_81_reg_1598[13]_i_15_n_0 }));
  FDRE \p_Result_81_reg_1598_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558_reg[9]_srl5_n_0 ),
        .Q(p_Result_81_reg_1598[1]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\p_Result_81_reg_1598[2]_i_1_n_0 ),
        .Q(p_Result_81_reg_1598[2]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[11]),
        .Q(p_Result_81_reg_1598[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_81_reg_1598_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\p_Result_81_reg_1598_reg[3]_i_2_n_0 ,\p_Result_81_reg_1598_reg[3]_i_2_n_1 ,\p_Result_81_reg_1598_reg[3]_i_2_n_2 ,\p_Result_81_reg_1598_reg[3]_i_2_n_3 }),
        .CYINIT(x_l_I_V_37_reg_1558[10]),
        .DI({p_Result_78_fu_1000_p4[4],icmp_ln443_7_reg_1570,icmp_ln443_8_fu_932_p2_carry__0_n_2,x_l_I_V_37_reg_1558[11]}),
        .O(sub_ln212_9_fu_1020_p2[4:1]),
        .S({\p_Result_81_reg_1598[3]_i_3_n_0 ,\p_Result_81_reg_1598[3]_i_4_n_0 ,\p_Result_81_reg_1598[3]_i_5_n_0 ,\p_Result_81_reg_1598[3]_i_6_n_0 }));
  FDRE \p_Result_81_reg_1598_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[12]),
        .Q(p_Result_81_reg_1598[4]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[13]),
        .Q(p_Result_81_reg_1598[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_81_reg_1598_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\p_Result_81_reg_1598_reg[5]_i_2_n_0 ,\p_Result_81_reg_1598_reg[5]_i_2_n_1 ,\p_Result_81_reg_1598_reg[5]_i_2_n_2 ,\p_Result_81_reg_1598_reg[5]_i_2_n_3 }),
        .CYINIT(x_l_I_V_37_reg_1558[12]),
        .DI({\p_Result_81_reg_1598[5]_i_3_n_0 ,\p_Result_81_reg_1598[5]_i_4_n_0 ,icmp_ln443_7_reg_1570,x_l_I_V_37_reg_1558[13]}),
        .O(sub_ln212_8_fu_938_p2[4:1]),
        .S({\p_Result_81_reg_1598[5]_i_5_n_0 ,\p_Result_81_reg_1598[5]_i_6_n_0 ,\p_Result_81_reg_1598[5]_i_7_n_0 ,\p_Result_81_reg_1598[5]_i_8_n_0 }));
  FDRE \p_Result_81_reg_1598_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[14]),
        .Q(p_Result_81_reg_1598[6]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[15]),
        .Q(p_Result_81_reg_1598[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_81_reg_1598_reg[7]_i_3 
       (.CI(\p_Result_81_reg_1598_reg[3]_i_2_n_0 ),
        .CO({\p_Result_81_reg_1598_reg[7]_i_3_n_0 ,\p_Result_81_reg_1598_reg[7]_i_3_n_1 ,\p_Result_81_reg_1598_reg[7]_i_3_n_2 ,\p_Result_81_reg_1598_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Result_78_fu_1000_p4[8:5]),
        .O(sub_ln212_9_fu_1020_p2[8:5]),
        .S({\p_Result_81_reg_1598[7]_i_4_n_0 ,\p_Result_81_reg_1598[7]_i_5_n_0 ,\p_Result_81_reg_1598[7]_i_6_n_0 ,\p_Result_81_reg_1598[7]_i_7_n_0 }));
  FDRE \p_Result_81_reg_1598_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[16]),
        .Q(p_Result_81_reg_1598[8]),
        .R(1'b0));
  FDRE \p_Result_81_reg_1598_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_40_fu_1048_p3[17]),
        .Q(p_Result_81_reg_1598[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_81_reg_1598_reg[9]_i_3 
       (.CI(\p_Result_81_reg_1598_reg[5]_i_2_n_0 ),
        .CO({\p_Result_81_reg_1598_reg[9]_i_3_n_0 ,\p_Result_81_reg_1598_reg[9]_i_3_n_1 ,\p_Result_81_reg_1598_reg[9]_i_3_n_2 ,\p_Result_81_reg_1598_reg[9]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\p_Result_81_reg_1598[9]_i_4_n_0 ,\p_Result_81_reg_1598[9]_i_5_n_0 ,\p_Result_81_reg_1598[9]_i_6_n_0 ,\p_Result_81_reg_1598[9]_i_7_n_0 }),
        .O(sub_ln212_8_fu_938_p2[8:5]),
        .S({\p_Result_81_reg_1598[9]_i_8_n_0 ,\p_Result_81_reg_1598[9]_i_9_n_0 ,\p_Result_81_reg_1598[9]_i_10_n_0 ,\p_Result_81_reg_1598[9]_i_11_n_0 }));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[10]_i_1 
       (.I0(p_Result_81_reg_1598[6]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[6]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[8]),
        .O(x_l_I_V_42_fu_1205_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[11]_i_1 
       (.I0(p_Result_81_reg_1598[7]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[7]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[9]),
        .O(x_l_I_V_42_fu_1205_p3[15]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[11]_i_10 
       (.I0(sub_ln212_10_fu_1100_p2[7]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[7]),
        .I3(p_Result_31_reg_1593[7]),
        .O(\p_Result_87_reg_1621[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[11]_i_3 
       (.I0(p_Result_81_reg_1598[10]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[10]),
        .O(p_Result_84_fu_1157_p4[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[11]_i_4 
       (.I0(p_Result_81_reg_1598[9]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[9]),
        .O(\p_Result_87_reg_1621[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[11]_i_5 
       (.I0(p_Result_81_reg_1598[8]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[8]),
        .O(p_Result_84_fu_1157_p4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[11]_i_6 
       (.I0(p_Result_81_reg_1598[7]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[7]),
        .O(\p_Result_87_reg_1621[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[11]_i_7 
       (.I0(sub_ln212_10_fu_1100_p2[10]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[10]),
        .I3(x_read_reg_1484_pp0_iter4_reg),
        .O(\p_Result_87_reg_1621[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[11]_i_8 
       (.I0(sub_ln212_10_fu_1100_p2[9]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[9]),
        .I3(p_Result_31_reg_1593[9]),
        .O(\p_Result_87_reg_1621[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[11]_i_9 
       (.I0(sub_ln212_10_fu_1100_p2[8]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[8]),
        .I3(p_Result_31_reg_1593[8]),
        .O(\p_Result_87_reg_1621[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[12]_i_1 
       (.I0(p_Result_81_reg_1598[8]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[8]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[10]),
        .O(x_l_I_V_42_fu_1205_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[13]_i_1 
       (.I0(p_Result_81_reg_1598[9]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[9]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[11]),
        .O(x_l_I_V_42_fu_1205_p3[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[14]_i_1 
       (.I0(p_Result_81_reg_1598[10]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[10]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[12]),
        .O(x_l_I_V_42_fu_1205_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[15]_i_1 
       (.I0(p_Result_81_reg_1598[11]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[11]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[13]),
        .O(x_l_I_V_42_fu_1205_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[2]_i_1 
       (.I0(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I1(x_l_I_V_40_reg_1581[6]),
        .O(\p_Result_87_reg_1621[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[3]_i_1 
       (.I0(x_l_I_V_40_reg_1581[7]),
        .I1(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I2(sub_ln212_11_fu_1177_p2[1]),
        .O(x_l_I_V_42_fu_1205_p3[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[3]_i_3 
       (.I0(p_Result_81_reg_1598[2]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[2]),
        .O(p_Result_84_fu_1157_p4[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[3]_i_4 
       (.I0(p_Result_81_reg_1598[1]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[1]),
        .O(p_Result_84_fu_1157_p4[3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[3]_i_5 
       (.I0(sub_ln212_10_fu_1100_p2[2]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[2]),
        .I3(p_Result_31_reg_1593[2]),
        .O(\p_Result_87_reg_1621[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[3]_i_6 
       (.I0(sub_ln212_10_fu_1100_p2[1]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[1]),
        .I3(p_Result_31_reg_1593[1]),
        .O(\p_Result_87_reg_1621[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_87_reg_1621[3]_i_7 
       (.I0(p_Result_81_reg_1598[0]),
        .O(\p_Result_87_reg_1621[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_87_reg_1621[3]_i_8 
       (.I0(x_l_I_V_40_reg_1581[7]),
        .O(\p_Result_87_reg_1621[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \p_Result_87_reg_1621[4]_i_1 
       (.I0(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I1(p_Result_81_reg_1598[0]),
        .I2(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I3(sub_ln212_11_fu_1177_p2[2]),
        .O(x_l_I_V_42_fu_1205_p3[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[5]_i_1 
       (.I0(p_Result_81_reg_1598[1]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[1]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[3]),
        .O(x_l_I_V_42_fu_1205_p3[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[5]_i_3 
       (.I0(p_Result_81_reg_1598[4]),
        .I1(p_Result_31_reg_1593[3]),
        .O(\p_Result_87_reg_1621[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[5]_i_4 
       (.I0(p_Result_81_reg_1598[3]),
        .I1(p_Result_31_reg_1593[2]),
        .O(\p_Result_87_reg_1621[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[5]_i_5 
       (.I0(p_Result_81_reg_1598[2]),
        .I1(p_Result_31_reg_1593[1]),
        .O(\p_Result_87_reg_1621[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_87_reg_1621[5]_i_6 
       (.I0(p_Result_81_reg_1598[1]),
        .O(\p_Result_87_reg_1621[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[6]_i_1 
       (.I0(p_Result_81_reg_1598[2]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[2]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[4]),
        .O(x_l_I_V_42_fu_1205_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[7]_i_1 
       (.I0(p_Result_81_reg_1598[3]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[3]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[5]),
        .O(x_l_I_V_42_fu_1205_p3[11]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[7]_i_10 
       (.I0(sub_ln212_10_fu_1100_p2[3]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[3]),
        .I3(p_Result_31_reg_1593[3]),
        .O(\p_Result_87_reg_1621[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[7]_i_3 
       (.I0(p_Result_81_reg_1598[6]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[6]),
        .O(p_Result_84_fu_1157_p4[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[7]_i_4 
       (.I0(p_Result_81_reg_1598[5]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[5]),
        .O(\p_Result_87_reg_1621[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[7]_i_5 
       (.I0(p_Result_81_reg_1598[4]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[4]),
        .O(p_Result_84_fu_1157_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_87_reg_1621[7]_i_6 
       (.I0(p_Result_81_reg_1598[3]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[3]),
        .O(\p_Result_87_reg_1621[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[7]_i_7 
       (.I0(sub_ln212_10_fu_1100_p2[6]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[6]),
        .I3(p_Result_31_reg_1593[6]),
        .O(\p_Result_87_reg_1621[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[7]_i_8 
       (.I0(sub_ln212_10_fu_1100_p2[5]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[5]),
        .I3(p_Result_31_reg_1593[5]),
        .O(\p_Result_87_reg_1621[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_87_reg_1621[7]_i_9 
       (.I0(sub_ln212_10_fu_1100_p2[4]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[4]),
        .I3(p_Result_31_reg_1593[4]),
        .O(\p_Result_87_reg_1621[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[8]_i_1 
       (.I0(p_Result_81_reg_1598[4]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[4]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[6]),
        .O(x_l_I_V_42_fu_1205_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[9]_i_1 
       (.I0(p_Result_81_reg_1598[5]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[5]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[7]),
        .O(x_l_I_V_42_fu_1205_p3[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[9]_i_3 
       (.I0(p_Result_81_reg_1598[8]),
        .I1(p_Result_31_reg_1593[7]),
        .O(\p_Result_87_reg_1621[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[9]_i_4 
       (.I0(p_Result_81_reg_1598[7]),
        .I1(p_Result_31_reg_1593[6]),
        .O(\p_Result_87_reg_1621[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[9]_i_5 
       (.I0(p_Result_81_reg_1598[6]),
        .I1(p_Result_31_reg_1593[5]),
        .O(\p_Result_87_reg_1621[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_87_reg_1621[9]_i_6 
       (.I0(p_Result_81_reg_1598[5]),
        .I1(p_Result_31_reg_1593[4]),
        .O(\p_Result_87_reg_1621[9]_i_6_n_0 ));
  FDRE \p_Result_87_reg_1621_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_40_reg_1581_reg[4]_srl6_n_0 ),
        .Q(p_Result_87_reg_1621[0]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[14]),
        .Q(p_Result_87_reg_1621[10]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[15]),
        .Q(p_Result_87_reg_1621[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_87_reg_1621_reg[11]_i_2 
       (.CI(\p_Result_87_reg_1621_reg[7]_i_2_n_0 ),
        .CO({\p_Result_87_reg_1621_reg[11]_i_2_n_0 ,\p_Result_87_reg_1621_reg[11]_i_2_n_1 ,\p_Result_87_reg_1621_reg[11]_i_2_n_2 ,\p_Result_87_reg_1621_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_Result_84_fu_1157_p4[12],\p_Result_87_reg_1621[11]_i_4_n_0 ,p_Result_84_fu_1157_p4[10],\p_Result_87_reg_1621[11]_i_6_n_0 }),
        .O(sub_ln212_11_fu_1177_p2[12:9]),
        .S({\p_Result_87_reg_1621[11]_i_7_n_0 ,\p_Result_87_reg_1621[11]_i_8_n_0 ,\p_Result_87_reg_1621[11]_i_9_n_0 ,\p_Result_87_reg_1621[11]_i_10_n_0 }));
  FDRE \p_Result_87_reg_1621_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[16]),
        .Q(p_Result_87_reg_1621[12]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[17]),
        .Q(p_Result_87_reg_1621[13]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[18]),
        .Q(p_Result_87_reg_1621[14]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[19]),
        .Q(p_Result_87_reg_1621[15]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_40_reg_1581_reg[5]_srl6_n_0 ),
        .Q(p_Result_87_reg_1621[1]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\p_Result_87_reg_1621[2]_i_1_n_0 ),
        .Q(p_Result_87_reg_1621[2]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[7]),
        .Q(p_Result_87_reg_1621[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_87_reg_1621_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\p_Result_87_reg_1621_reg[3]_i_2_n_0 ,\p_Result_87_reg_1621_reg[3]_i_2_n_1 ,\p_Result_87_reg_1621_reg[3]_i_2_n_2 ,\p_Result_87_reg_1621_reg[3]_i_2_n_3 }),
        .CYINIT(x_l_I_V_40_reg_1581[6]),
        .DI({p_Result_84_fu_1157_p4[4:3],icmp_ln443_10_fu_1095_p2_carry__0_n_1,x_l_I_V_40_reg_1581[7]}),
        .O(sub_ln212_11_fu_1177_p2[4:1]),
        .S({\p_Result_87_reg_1621[3]_i_5_n_0 ,\p_Result_87_reg_1621[3]_i_6_n_0 ,\p_Result_87_reg_1621[3]_i_7_n_0 ,\p_Result_87_reg_1621[3]_i_8_n_0 }));
  FDRE \p_Result_87_reg_1621_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[8]),
        .Q(p_Result_87_reg_1621[4]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[9]),
        .Q(p_Result_87_reg_1621[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_87_reg_1621_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\p_Result_87_reg_1621_reg[5]_i_2_n_0 ,\p_Result_87_reg_1621_reg[5]_i_2_n_1 ,\p_Result_87_reg_1621_reg[5]_i_2_n_2 ,\p_Result_87_reg_1621_reg[5]_i_2_n_3 }),
        .CYINIT(p_Result_81_reg_1598[0]),
        .DI(p_Result_81_reg_1598[4:1]),
        .O(sub_ln212_10_fu_1100_p2[4:1]),
        .S({\p_Result_87_reg_1621[5]_i_3_n_0 ,\p_Result_87_reg_1621[5]_i_4_n_0 ,\p_Result_87_reg_1621[5]_i_5_n_0 ,\p_Result_87_reg_1621[5]_i_6_n_0 }));
  FDRE \p_Result_87_reg_1621_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[10]),
        .Q(p_Result_87_reg_1621[6]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[11]),
        .Q(p_Result_87_reg_1621[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_87_reg_1621_reg[7]_i_2 
       (.CI(\p_Result_87_reg_1621_reg[3]_i_2_n_0 ),
        .CO({\p_Result_87_reg_1621_reg[7]_i_2_n_0 ,\p_Result_87_reg_1621_reg[7]_i_2_n_1 ,\p_Result_87_reg_1621_reg[7]_i_2_n_2 ,\p_Result_87_reg_1621_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_Result_84_fu_1157_p4[8],\p_Result_87_reg_1621[7]_i_4_n_0 ,p_Result_84_fu_1157_p4[6],\p_Result_87_reg_1621[7]_i_6_n_0 }),
        .O(sub_ln212_11_fu_1177_p2[8:5]),
        .S({\p_Result_87_reg_1621[7]_i_7_n_0 ,\p_Result_87_reg_1621[7]_i_8_n_0 ,\p_Result_87_reg_1621[7]_i_9_n_0 ,\p_Result_87_reg_1621[7]_i_10_n_0 }));
  FDRE \p_Result_87_reg_1621_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[12]),
        .Q(p_Result_87_reg_1621[8]),
        .R(1'b0));
  FDRE \p_Result_87_reg_1621_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[13]),
        .Q(p_Result_87_reg_1621[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_87_reg_1621_reg[9]_i_2 
       (.CI(\p_Result_87_reg_1621_reg[5]_i_2_n_0 ),
        .CO({\p_Result_87_reg_1621_reg[9]_i_2_n_0 ,\p_Result_87_reg_1621_reg[9]_i_2_n_1 ,\p_Result_87_reg_1621_reg[9]_i_2_n_2 ,\p_Result_87_reg_1621_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Result_81_reg_1598[8:5]),
        .O(sub_ln212_10_fu_1100_p2[8:5]),
        .S({\p_Result_87_reg_1621[9]_i_3_n_0 ,\p_Result_87_reg_1621[9]_i_4_n_0 ,\p_Result_87_reg_1621[9]_i_5_n_0 ,\p_Result_87_reg_1621[9]_i_6_n_0 }));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[10]_i_1 
       (.I0(p_Result_87_reg_1621[6]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[6]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[8]),
        .O(p_Result_93_fu_1378_p1[10]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[11]_i_1 
       (.I0(p_Result_87_reg_1621[7]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[7]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[9]),
        .O(p_Result_93_fu_1378_p1[11]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[11]_i_10 
       (.I0(sub_ln212_12_fu_1257_p2[7]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[7]),
        .I3(p_Result_37_reg_1616[7]),
        .O(\p_Result_93_reg_1640[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[11]_i_3 
       (.I0(p_Result_87_reg_1621[10]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[10]),
        .O(p_Result_90_fu_1314_p4[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[11]_i_4 
       (.I0(p_Result_87_reg_1621[9]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[9]),
        .O(\p_Result_93_reg_1640[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[11]_i_5 
       (.I0(p_Result_87_reg_1621[8]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[8]),
        .O(p_Result_90_fu_1314_p4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[11]_i_6 
       (.I0(p_Result_87_reg_1621[7]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[7]),
        .O(\p_Result_93_reg_1640[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[11]_i_7 
       (.I0(sub_ln212_12_fu_1257_p2[10]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[10]),
        .I3(p_Result_37_reg_1616[10]),
        .O(\p_Result_93_reg_1640[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[11]_i_8 
       (.I0(sub_ln212_12_fu_1257_p2[9]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[9]),
        .I3(p_Result_37_reg_1616[9]),
        .O(\p_Result_93_reg_1640[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[11]_i_9 
       (.I0(sub_ln212_12_fu_1257_p2[8]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[8]),
        .I3(p_Result_37_reg_1616[8]),
        .O(\p_Result_93_reg_1640[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[12]_i_1 
       (.I0(p_Result_87_reg_1621[8]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[8]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[10]),
        .O(p_Result_93_fu_1378_p1[12]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[13]_i_1 
       (.I0(p_Result_87_reg_1621[9]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[9]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[11]),
        .O(p_Result_93_fu_1378_p1[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[13]_i_3 
       (.I0(p_Result_87_reg_1621[12]),
        .I1(p_Result_37_reg_1616[11]),
        .O(\p_Result_93_reg_1640[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[13]_i_4 
       (.I0(p_Result_87_reg_1621[11]),
        .I1(p_Result_37_reg_1616[10]),
        .O(\p_Result_93_reg_1640[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[13]_i_5 
       (.I0(p_Result_87_reg_1621[10]),
        .I1(p_Result_37_reg_1616[9]),
        .O(\p_Result_93_reg_1640[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[13]_i_6 
       (.I0(p_Result_87_reg_1621[9]),
        .I1(p_Result_37_reg_1616[8]),
        .O(\p_Result_93_reg_1640[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[14]_i_1 
       (.I0(p_Result_87_reg_1621[10]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[10]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[12]),
        .O(p_Result_93_fu_1378_p1[14]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[15]_i_1 
       (.I0(p_Result_87_reg_1621[11]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[11]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[13]),
        .O(p_Result_93_fu_1378_p1[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[16]_i_1 
       (.I0(p_Result_87_reg_1621[12]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[12]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[14]),
        .O(p_Result_93_fu_1378_p1[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[17]_i_1 
       (.I0(p_Result_87_reg_1621[13]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[13]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[15]),
        .O(p_Result_93_fu_1378_p1[17]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[2]_i_1 
       (.I0(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I1(x_l_I_V_42_reg_1604[2]),
        .O(\p_Result_93_reg_1640[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[3]_i_1 
       (.I0(x_l_I_V_42_reg_1604[3]),
        .I1(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I2(sub_ln212_13_fu_1334_p2[1]),
        .O(p_Result_93_fu_1378_p1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[3]_i_3 
       (.I0(p_Result_87_reg_1621[2]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[2]),
        .O(p_Result_90_fu_1314_p4[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[3]_i_4 
       (.I0(p_Result_87_reg_1621[1]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[1]),
        .O(p_Result_90_fu_1314_p4[3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[3]_i_5 
       (.I0(sub_ln212_12_fu_1257_p2[2]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[2]),
        .I3(p_Result_37_reg_1616[2]),
        .O(\p_Result_93_reg_1640[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[3]_i_6 
       (.I0(sub_ln212_12_fu_1257_p2[1]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[1]),
        .I3(p_Result_37_reg_1616[1]),
        .O(\p_Result_93_reg_1640[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_93_reg_1640[3]_i_7 
       (.I0(p_Result_87_reg_1621[0]),
        .O(\p_Result_93_reg_1640[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_93_reg_1640[3]_i_8 
       (.I0(x_l_I_V_42_reg_1604[3]),
        .O(\p_Result_93_reg_1640[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \p_Result_93_reg_1640[4]_i_1 
       (.I0(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I1(p_Result_87_reg_1621[0]),
        .I2(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I3(sub_ln212_13_fu_1334_p2[2]),
        .O(p_Result_93_fu_1378_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[5]_i_1 
       (.I0(p_Result_87_reg_1621[1]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[1]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[3]),
        .O(p_Result_93_fu_1378_p1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[5]_i_3 
       (.I0(p_Result_87_reg_1621[4]),
        .I1(p_Result_37_reg_1616[3]),
        .O(\p_Result_93_reg_1640[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[5]_i_4 
       (.I0(p_Result_87_reg_1621[3]),
        .I1(p_Result_37_reg_1616[2]),
        .O(\p_Result_93_reg_1640[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[5]_i_5 
       (.I0(p_Result_87_reg_1621[2]),
        .I1(p_Result_37_reg_1616[1]),
        .O(\p_Result_93_reg_1640[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_93_reg_1640[5]_i_6 
       (.I0(p_Result_87_reg_1621[1]),
        .O(\p_Result_93_reg_1640[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[6]_i_1 
       (.I0(p_Result_87_reg_1621[2]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[2]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[4]),
        .O(p_Result_93_fu_1378_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[7]_i_1 
       (.I0(p_Result_87_reg_1621[3]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[3]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[5]),
        .O(p_Result_93_fu_1378_p1[7]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[7]_i_10 
       (.I0(sub_ln212_12_fu_1257_p2[3]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[3]),
        .I3(p_Result_37_reg_1616[3]),
        .O(\p_Result_93_reg_1640[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[7]_i_3 
       (.I0(p_Result_87_reg_1621[6]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[6]),
        .O(p_Result_90_fu_1314_p4[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[7]_i_4 
       (.I0(p_Result_87_reg_1621[5]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[5]),
        .O(\p_Result_93_reg_1640[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[7]_i_5 
       (.I0(p_Result_87_reg_1621[4]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[4]),
        .O(p_Result_90_fu_1314_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_93_reg_1640[7]_i_6 
       (.I0(p_Result_87_reg_1621[3]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[3]),
        .O(\p_Result_93_reg_1640[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[7]_i_7 
       (.I0(sub_ln212_12_fu_1257_p2[6]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[6]),
        .I3(p_Result_37_reg_1616[6]),
        .O(\p_Result_93_reg_1640[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[7]_i_8 
       (.I0(sub_ln212_12_fu_1257_p2[5]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[5]),
        .I3(p_Result_37_reg_1616[5]),
        .O(\p_Result_93_reg_1640[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \p_Result_93_reg_1640[7]_i_9 
       (.I0(sub_ln212_12_fu_1257_p2[4]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[4]),
        .I3(p_Result_37_reg_1616[4]),
        .O(\p_Result_93_reg_1640[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[8]_i_1 
       (.I0(p_Result_87_reg_1621[4]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[4]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[6]),
        .O(p_Result_93_fu_1378_p1[8]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[9]_i_1 
       (.I0(p_Result_87_reg_1621[5]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[5]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[7]),
        .O(p_Result_93_fu_1378_p1[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[9]_i_3 
       (.I0(p_Result_87_reg_1621[8]),
        .I1(p_Result_37_reg_1616[7]),
        .O(\p_Result_93_reg_1640[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[9]_i_4 
       (.I0(p_Result_87_reg_1621[7]),
        .I1(p_Result_37_reg_1616[6]),
        .O(\p_Result_93_reg_1640[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[9]_i_5 
       (.I0(p_Result_87_reg_1621[6]),
        .I1(p_Result_37_reg_1616[5]),
        .O(\p_Result_93_reg_1640[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_93_reg_1640[9]_i_6 
       (.I0(p_Result_87_reg_1621[5]),
        .I1(p_Result_37_reg_1616[4]),
        .O(\p_Result_93_reg_1640[9]_i_6_n_0 ));
  FDRE \p_Result_93_reg_1640_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[0]_srl7_n_0 ),
        .Q(p_Result_93_reg_1640[0]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[10]),
        .Q(p_Result_93_reg_1640[10]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[11]),
        .Q(p_Result_93_reg_1640[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_93_reg_1640_reg[11]_i_2 
       (.CI(\p_Result_93_reg_1640_reg[7]_i_2_n_0 ),
        .CO({\p_Result_93_reg_1640_reg[11]_i_2_n_0 ,\p_Result_93_reg_1640_reg[11]_i_2_n_1 ,\p_Result_93_reg_1640_reg[11]_i_2_n_2 ,\p_Result_93_reg_1640_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_Result_90_fu_1314_p4[12],\p_Result_93_reg_1640[11]_i_4_n_0 ,p_Result_90_fu_1314_p4[10],\p_Result_93_reg_1640[11]_i_6_n_0 }),
        .O(sub_ln212_13_fu_1334_p2[12:9]),
        .S({\p_Result_93_reg_1640[11]_i_7_n_0 ,\p_Result_93_reg_1640[11]_i_8_n_0 ,\p_Result_93_reg_1640[11]_i_9_n_0 ,\p_Result_93_reg_1640[11]_i_10_n_0 }));
  FDRE \p_Result_93_reg_1640_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[12]),
        .Q(p_Result_93_reg_1640[12]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[13]),
        .Q(p_Result_93_reg_1640[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_93_reg_1640_reg[13]_i_2 
       (.CI(\p_Result_93_reg_1640_reg[9]_i_2_n_0 ),
        .CO({\p_Result_93_reg_1640_reg[13]_i_2_n_0 ,\p_Result_93_reg_1640_reg[13]_i_2_n_1 ,\p_Result_93_reg_1640_reg[13]_i_2_n_2 ,\p_Result_93_reg_1640_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Result_87_reg_1621[12:9]),
        .O(sub_ln212_12_fu_1257_p2[12:9]),
        .S({\p_Result_93_reg_1640[13]_i_3_n_0 ,\p_Result_93_reg_1640[13]_i_4_n_0 ,\p_Result_93_reg_1640[13]_i_5_n_0 ,\p_Result_93_reg_1640[13]_i_6_n_0 }));
  FDRE \p_Result_93_reg_1640_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[14]),
        .Q(p_Result_93_reg_1640[14]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[15]),
        .Q(p_Result_93_reg_1640[15]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[16]),
        .Q(p_Result_93_reg_1640[16]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[17]),
        .Q(p_Result_93_reg_1640[17]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[1]_srl7_n_0 ),
        .Q(p_Result_93_reg_1640[1]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\p_Result_93_reg_1640[2]_i_1_n_0 ),
        .Q(p_Result_93_reg_1640[2]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[3]),
        .Q(p_Result_93_reg_1640[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_93_reg_1640_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\p_Result_93_reg_1640_reg[3]_i_2_n_0 ,\p_Result_93_reg_1640_reg[3]_i_2_n_1 ,\p_Result_93_reg_1640_reg[3]_i_2_n_2 ,\p_Result_93_reg_1640_reg[3]_i_2_n_3 }),
        .CYINIT(x_l_I_V_42_reg_1604[2]),
        .DI({p_Result_90_fu_1314_p4[4:3],icmp_ln443_12_fu_1252_p2_carry__0_n_0,x_l_I_V_42_reg_1604[3]}),
        .O(sub_ln212_13_fu_1334_p2[4:1]),
        .S({\p_Result_93_reg_1640[3]_i_5_n_0 ,\p_Result_93_reg_1640[3]_i_6_n_0 ,\p_Result_93_reg_1640[3]_i_7_n_0 ,\p_Result_93_reg_1640[3]_i_8_n_0 }));
  FDRE \p_Result_93_reg_1640_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[4]),
        .Q(p_Result_93_reg_1640[4]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[5]),
        .Q(p_Result_93_reg_1640[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_93_reg_1640_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\p_Result_93_reg_1640_reg[5]_i_2_n_0 ,\p_Result_93_reg_1640_reg[5]_i_2_n_1 ,\p_Result_93_reg_1640_reg[5]_i_2_n_2 ,\p_Result_93_reg_1640_reg[5]_i_2_n_3 }),
        .CYINIT(p_Result_87_reg_1621[0]),
        .DI(p_Result_87_reg_1621[4:1]),
        .O(sub_ln212_12_fu_1257_p2[4:1]),
        .S({\p_Result_93_reg_1640[5]_i_3_n_0 ,\p_Result_93_reg_1640[5]_i_4_n_0 ,\p_Result_93_reg_1640[5]_i_5_n_0 ,\p_Result_93_reg_1640[5]_i_6_n_0 }));
  FDRE \p_Result_93_reg_1640_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[6]),
        .Q(p_Result_93_reg_1640[6]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[7]),
        .Q(p_Result_93_reg_1640[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_93_reg_1640_reg[7]_i_2 
       (.CI(\p_Result_93_reg_1640_reg[3]_i_2_n_0 ),
        .CO({\p_Result_93_reg_1640_reg[7]_i_2_n_0 ,\p_Result_93_reg_1640_reg[7]_i_2_n_1 ,\p_Result_93_reg_1640_reg[7]_i_2_n_2 ,\p_Result_93_reg_1640_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_Result_90_fu_1314_p4[8],\p_Result_93_reg_1640[7]_i_4_n_0 ,p_Result_90_fu_1314_p4[6],\p_Result_93_reg_1640[7]_i_6_n_0 }),
        .O(sub_ln212_13_fu_1334_p2[8:5]),
        .S({\p_Result_93_reg_1640[7]_i_7_n_0 ,\p_Result_93_reg_1640[7]_i_8_n_0 ,\p_Result_93_reg_1640[7]_i_9_n_0 ,\p_Result_93_reg_1640[7]_i_10_n_0 }));
  FDRE \p_Result_93_reg_1640_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[8]),
        .Q(p_Result_93_reg_1640[8]),
        .R(1'b0));
  FDRE \p_Result_93_reg_1640_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[9]),
        .Q(p_Result_93_reg_1640[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Result_93_reg_1640_reg[9]_i_2 
       (.CI(\p_Result_93_reg_1640_reg[5]_i_2_n_0 ),
        .CO({\p_Result_93_reg_1640_reg[9]_i_2_n_0 ,\p_Result_93_reg_1640_reg[9]_i_2_n_1 ,\p_Result_93_reg_1640_reg[9]_i_2_n_2 ,\p_Result_93_reg_1640_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Result_87_reg_1621[8:5]),
        .O(sub_ln212_12_fu_1257_p2[8:5]),
        .S({\p_Result_93_reg_1640[9]_i_3_n_0 ,\p_Result_93_reg_1640[9]_i_4_n_0 ,\p_Result_93_reg_1640[9]_i_5_n_0 ,\p_Result_93_reg_1640[9]_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \p_Val2_s_reg_1009[15]_i_1 
       (.I0(x_read_reg_1484_pp0_iter6_reg),
        .I1(\p_Val2_s_reg_1009_reg[0] ),
        .O(\x_read_reg_1484_pp0_iter6_reg_reg[20]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Val2_s_reg_1009[3]_i_2 
       (.I0(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I1(p_Result_48_fu_1456_p2_carry__2_n_0),
        .O(\p_Val2_s_reg_1009[3]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_1009_reg[11]_i_1 
       (.CI(\p_Val2_s_reg_1009_reg[7]_i_1_n_0 ),
        .CO({\p_Val2_s_reg_1009_reg[11]_i_1_n_0 ,\p_Val2_s_reg_1009_reg[11]_i_1_n_1 ,\p_Val2_s_reg_1009_reg[11]_i_1_n_2 ,\p_Val2_s_reg_1009_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(res_I_V_47_fu_1468_p3[11:8]),
        .S(res_I_V_45_reg_1633[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_1009_reg[15]_i_2 
       (.CI(\p_Val2_s_reg_1009_reg[11]_i_1_n_0 ),
        .CO({\NLW_p_Val2_s_reg_1009_reg[15]_i_2_CO_UNCONNECTED [3],\p_Val2_s_reg_1009_reg[15]_i_2_n_1 ,\p_Val2_s_reg_1009_reg[15]_i_2_n_2 ,\p_Val2_s_reg_1009_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(res_I_V_47_fu_1468_p3[15:12]),
        .S({x_read_reg_1484_pp0_iter6_reg,x_read_reg_1484_pp0_iter6_reg,res_I_V_45_reg_1633[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_1009_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p_Val2_s_reg_1009_reg[3]_i_1_n_0 ,\p_Val2_s_reg_1009_reg[3]_i_1_n_1 ,\p_Val2_s_reg_1009_reg[3]_i_1_n_2 ,\p_Val2_s_reg_1009_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_Result_48_fu_1456_p2_carry__2_n_0}),
        .O(res_I_V_47_fu_1468_p3[3:0]),
        .S({res_I_V_45_reg_1633[3:1],\p_Val2_s_reg_1009[3]_i_2_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_1009_reg[7]_i_1 
       (.CI(\p_Val2_s_reg_1009_reg[3]_i_1_n_0 ),
        .CO({\p_Val2_s_reg_1009_reg[7]_i_1_n_0 ,\p_Val2_s_reg_1009_reg[7]_i_1_n_1 ,\p_Val2_s_reg_1009_reg[7]_i_1_n_2 ,\p_Val2_s_reg_1009_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(res_I_V_47_fu_1468_p3[7:4]),
        .S(res_I_V_45_reg_1633[7:4]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \res_I_V_35_reg_1518[12]_i_1 
       (.I0(x_read_reg_1484),
        .I1(icmp_ln443_1_reg_1501),
        .O(res_I_V_35_fu_503_p3));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_35_reg_1518[13]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .O(res_I_V_34_fu_423_p3));
  FDRE \res_I_V_35_reg_1518_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_35_fu_503_p3),
        .Q(res_I_V_35_reg_1518[12]),
        .R(1'b0));
  FDRE \res_I_V_35_reg_1518_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_34_fu_423_p3),
        .Q(res_I_V_35_reg_1518[13]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_37_reg_1541[10]_i_1 
       (.I0(icmp_ln443_4_fu_618_p2_carry_n_1),
        .O(res_I_V_37_fu_660_p3));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_37_reg_1541[11]_i_1 
       (.I0(icmp_ln443_3_reg_1524),
        .O(res_I_V_36_fu_580_p3));
  FDRE \res_I_V_37_reg_1541_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_37_fu_660_p3),
        .Q(res_I_V_37_reg_1541[10]),
        .R(1'b0));
  FDRE \res_I_V_37_reg_1541_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_36_fu_580_p3),
        .Q(res_I_V_37_reg_1541[11]),
        .R(1'b0));
  FDRE \res_I_V_37_reg_1541_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_35_reg_1518[12]),
        .Q(res_I_V_37_reg_1541[12]),
        .R(1'b0));
  FDRE \res_I_V_37_reg_1541_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_35_reg_1518[13]),
        .Q(res_I_V_37_reg_1541[13]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_45_reg_1633[1]_i_1 
       (.I0(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .O(res_I_V_45_fu_1370_p3));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_45_reg_1633[2]_i_1 
       (.I0(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .O(res_I_V_44_fu_1289_p3));
  FDRE \res_I_V_45_reg_1633_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[8]),
        .Q(res_I_V_45_reg_1633[10]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[9]),
        .Q(res_I_V_45_reg_1633[11]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[10]),
        .Q(res_I_V_45_reg_1633[12]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[11]),
        .Q(res_I_V_45_reg_1633[13]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_45_fu_1370_p3),
        .Q(res_I_V_45_reg_1633[1]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_44_fu_1289_p3),
        .Q(res_I_V_45_reg_1633[2]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[1]),
        .Q(res_I_V_45_reg_1633[3]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[2]),
        .Q(res_I_V_45_reg_1633[4]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[3]),
        .Q(res_I_V_45_reg_1633[5]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[4]),
        .Q(res_I_V_45_reg_1633[6]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[5]),
        .Q(res_I_V_45_reg_1633[7]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[6]),
        .Q(res_I_V_45_reg_1633[8]),
        .R(1'b0));
  FDRE \res_I_V_45_reg_1633_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_37_reg_1616[7]),
        .Q(res_I_V_45_reg_1633[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_reg_1564[8]_i_1 
       (.I0(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .O(res_I_V_fu_817_p3));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_reg_1564[9]_i_1 
       (.I0(icmp_ln443_5_reg_1547),
        .O(res_I_V_38_fu_737_p3));
  FDRE \res_I_V_reg_1564_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_37_reg_1541[10]),
        .Q(res_I_V_reg_1564[10]),
        .R(1'b0));
  FDRE \res_I_V_reg_1564_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_37_reg_1541[11]),
        .Q(res_I_V_reg_1564[11]),
        .R(1'b0));
  FDRE \res_I_V_reg_1564_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_37_reg_1541[12]),
        .Q(res_I_V_reg_1564[12]),
        .R(1'b0));
  FDRE \res_I_V_reg_1564_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_37_reg_1541[13]),
        .Q(res_I_V_reg_1564[13]),
        .R(1'b0));
  FDRE \res_I_V_reg_1564_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_fu_817_p3),
        .Q(res_I_V_reg_1564[8]),
        .R(1'b0));
  FDRE \res_I_V_reg_1564_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(res_I_V_38_fu_737_p3),
        .Q(res_I_V_reg_1564[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_3_reg_1530[0]_i_1 
       (.I0(x_read_reg_1484),
        .O(\sub_ln212_3_reg_1530[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sub_ln212_3_reg_1530[5]_i_2 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\sub_ln212_3_reg_1530[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sub_ln212_3_reg_1530[5]_i_3 
       (.I0(x_read_reg_1484),
        .O(\sub_ln212_3_reg_1530[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sub_ln212_3_reg_1530[5]_i_4 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\sub_ln212_3_reg_1530[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sub_ln212_3_reg_1530[5]_i_5 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\sub_ln212_3_reg_1530[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sub_ln212_3_reg_1530[5]_i_6 
       (.I0(x_read_reg_1484),
        .I1(icmp_ln443_1_reg_1501),
        .O(\sub_ln212_3_reg_1530[5]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_3_reg_1530[5]_i_7 
       (.I0(x_read_reg_1484),
        .O(\sub_ln212_3_reg_1530[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \sub_ln212_3_reg_1530[6]_i_2 
       (.I0(x_read_reg_1484),
        .I1(icmp_ln443_1_reg_1501),
        .O(\sub_ln212_3_reg_1530[6]_i_2_n_0 ));
  FDRE \sub_ln212_3_reg_1530_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sub_ln212_3_reg_1530[0]_i_1_n_0 ),
        .Q(sub_ln212_3_reg_1530[0]),
        .R(1'b0));
  FDRE \sub_ln212_3_reg_1530_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_3_fu_549_p2[2]),
        .Q(sub_ln212_3_reg_1530[2]),
        .R(1'b0));
  FDRE \sub_ln212_3_reg_1530_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_3_fu_549_p2[3]),
        .Q(sub_ln212_3_reg_1530[3]),
        .R(1'b0));
  FDRE \sub_ln212_3_reg_1530_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_3_fu_549_p2[4]),
        .Q(sub_ln212_3_reg_1530[4]),
        .R(1'b0));
  FDRE \sub_ln212_3_reg_1530_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_3_fu_549_p2[5]),
        .Q(sub_ln212_3_reg_1530[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_3_reg_1530_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\sub_ln212_3_reg_1530_reg[5]_i_1_n_0 ,\sub_ln212_3_reg_1530_reg[5]_i_1_n_1 ,\sub_ln212_3_reg_1530_reg[5]_i_1_n_2 ,\sub_ln212_3_reg_1530_reg[5]_i_1_n_3 }),
        .CYINIT(x_read_reg_1484),
        .DI({\sub_ln212_3_reg_1530[5]_i_2_n_0 ,\sub_ln212_3_reg_1530[5]_i_3_n_0 ,icmp_ln443_1_reg_1501,\sub_ln212_3_reg_1530[5]_i_4_n_0 }),
        .O(sub_ln212_3_fu_549_p2[5:2]),
        .S({\sub_ln212_3_reg_1530[5]_i_5_n_0 ,1'b1,\sub_ln212_3_reg_1530[5]_i_6_n_0 ,\sub_ln212_3_reg_1530[5]_i_7_n_0 }));
  FDRE \sub_ln212_3_reg_1530_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_3_fu_549_p2[6]),
        .Q(sub_ln212_3_reg_1530[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_3_reg_1530_reg[6]_i_1 
       (.CI(\sub_ln212_3_reg_1530_reg[5]_i_1_n_0 ),
        .CO(\NLW_sub_ln212_3_reg_1530_reg[6]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sub_ln212_3_reg_1530_reg[6]_i_1_O_UNCONNECTED [3:1],sub_ln212_3_fu_549_p2[6]}),
        .S({1'b0,1'b0,1'b0,\sub_ln212_3_reg_1530[6]_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_5_reg_1553[0]_i_1 
       (.I0(x_l_I_V_34_reg_1512[18]),
        .O(sub_ln212_5_fu_706_p2[0]));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_5_reg_1553[4]_i_2 
       (.I0(sub_ln212_4_fu_624_p2[2]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I2(sub_ln212_3_reg_1530[0]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_read_reg_1484_pp0_iter1_reg),
        .I5(res_I_V_35_reg_1518[12]),
        .O(\sub_ln212_5_reg_1553[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \sub_ln212_5_reg_1553[4]_i_3 
       (.I0(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_3_reg_1524),
        .O(\sub_ln212_5_reg_1553[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_5_reg_1553[4]_i_4 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .O(\sub_ln212_5_reg_1553[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_5_reg_1553[4]_i_5 
       (.I0(x_l_I_V_34_reg_1512[19]),
        .O(\sub_ln212_5_reg_1553[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \sub_ln212_5_reg_1553[8]_i_2 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .I2(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I3(sub_ln212_4_fu_624_p2[3]),
        .O(\sub_ln212_5_reg_1553[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    \sub_ln212_5_reg_1553[8]_i_3 
       (.I0(sub_ln212_4_fu_624_p2[6]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I2(sub_ln212_3_reg_1530[4]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_l_I_V_34_reg_1512[26]),
        .O(\sub_ln212_5_reg_1553[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_5_reg_1553[8]_i_4 
       (.I0(sub_ln212_4_fu_624_p2[5]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I2(sub_ln212_3_reg_1530[3]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(res_I_V_35_reg_1518[12]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(\sub_ln212_5_reg_1553[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_5_reg_1553[8]_i_5 
       (.I0(sub_ln212_4_fu_624_p2[4]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I2(sub_ln212_3_reg_1530[2]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_l_I_V_34_reg_1512[24]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(\sub_ln212_5_reg_1553[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEE2E11D1)) 
    \sub_ln212_5_reg_1553[8]_i_6 
       (.I0(sub_ln212_4_fu_624_p2[3]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I2(icmp_ln443_3_reg_1524),
        .I3(x_read_reg_1484_pp0_iter1_reg),
        .I4(res_I_V_35_reg_1518[13]),
        .O(\sub_ln212_5_reg_1553[8]_i_6_n_0 ));
  FDRE \sub_ln212_5_reg_1553_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[0]),
        .Q(sub_ln212_5_reg_1553[0]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[1]),
        .Q(sub_ln212_5_reg_1553[1]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[2]),
        .Q(sub_ln212_5_reg_1553[2]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[3]),
        .Q(sub_ln212_5_reg_1553[3]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[4]),
        .Q(sub_ln212_5_reg_1553[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_5_reg_1553_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sub_ln212_5_reg_1553_reg[4]_i_1_n_0 ,\sub_ln212_5_reg_1553_reg[4]_i_1_n_1 ,\sub_ln212_5_reg_1553_reg[4]_i_1_n_2 ,\sub_ln212_5_reg_1553_reg[4]_i_1_n_3 }),
        .CYINIT(x_l_I_V_34_reg_1512[18]),
        .DI({p_Result_66_fu_686_p4[4],icmp_ln443_3_reg_1524,icmp_ln443_4_fu_618_p2_carry_n_1,x_l_I_V_34_reg_1512[19]}),
        .O(sub_ln212_5_fu_706_p2[4:1]),
        .S({\sub_ln212_5_reg_1553[4]_i_2_n_0 ,\sub_ln212_5_reg_1553[4]_i_3_n_0 ,\sub_ln212_5_reg_1553[4]_i_4_n_0 ,\sub_ln212_5_reg_1553[4]_i_5_n_0 }));
  FDRE \sub_ln212_5_reg_1553_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[5]),
        .Q(sub_ln212_5_reg_1553[5]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[6]),
        .Q(sub_ln212_5_reg_1553[6]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[7]),
        .Q(sub_ln212_5_reg_1553[7]),
        .R(1'b0));
  FDRE \sub_ln212_5_reg_1553_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_5_fu_706_p2[8]),
        .Q(sub_ln212_5_reg_1553[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_5_reg_1553_reg[8]_i_1 
       (.CI(\sub_ln212_5_reg_1553_reg[4]_i_1_n_0 ),
        .CO({\NLW_sub_ln212_5_reg_1553_reg[8]_i_1_CO_UNCONNECTED [3],\sub_ln212_5_reg_1553_reg[8]_i_1_n_1 ,\sub_ln212_5_reg_1553_reg[8]_i_1_n_2 ,\sub_ln212_5_reg_1553_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_Result_66_fu_686_p4[7:6],\sub_ln212_5_reg_1553[8]_i_2_n_0 }),
        .O(sub_ln212_5_fu_706_p2[8:5]),
        .S({\sub_ln212_5_reg_1553[8]_i_3_n_0 ,\sub_ln212_5_reg_1553[8]_i_4_n_0 ,\sub_ln212_5_reg_1553[8]_i_5_n_0 ,\sub_ln212_5_reg_1553[8]_i_6_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_7_reg_1576[0]_i_1 
       (.I0(x_l_I_V_36_reg_1535[14]),
        .O(sub_ln212_7_fu_863_p2[0]));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    \sub_ln212_7_reg_1576[10]_i_2 
       (.I0(sub_ln212_6_fu_781_p2[8]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[6]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[24]),
        .O(\sub_ln212_7_reg_1576[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_7_reg_1576[10]_i_3 
       (.I0(sub_ln212_6_fu_781_p2[7]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[5]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[23]),
        .I5(x_read_reg_1484_pp0_iter2_reg),
        .O(\sub_ln212_7_reg_1576[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_7_reg_1576[4]_i_2 
       (.I0(sub_ln212_6_fu_781_p2[2]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[0]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[18]),
        .I5(res_I_V_37_reg_1541[10]),
        .O(\sub_ln212_7_reg_1576[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \sub_ln212_7_reg_1576[4]_i_3 
       (.I0(sub_ln212_6_fu_781_p2[1]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(x_l_I_V_36_reg_1535[17]),
        .I3(icmp_ln443_5_reg_1547),
        .O(\sub_ln212_7_reg_1576[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_7_reg_1576[4]_i_4 
       (.I0(x_l_I_V_36_reg_1535[16]),
        .O(\sub_ln212_7_reg_1576[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_7_reg_1576[4]_i_5 
       (.I0(x_l_I_V_36_reg_1535[15]),
        .O(\sub_ln212_7_reg_1576[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_7_reg_1576[8]_i_2 
       (.I0(sub_ln212_6_fu_781_p2[6]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[4]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[22]),
        .I5(x_read_reg_1484_pp0_iter2_reg),
        .O(\sub_ln212_7_reg_1576[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_7_reg_1576[8]_i_3 
       (.I0(sub_ln212_6_fu_781_p2[5]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[3]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[21]),
        .I5(res_I_V_37_reg_1541[13]),
        .O(\sub_ln212_7_reg_1576[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_7_reg_1576[8]_i_4 
       (.I0(sub_ln212_6_fu_781_p2[4]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[2]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[20]),
        .I5(res_I_V_37_reg_1541[12]),
        .O(\sub_ln212_7_reg_1576[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_7_reg_1576[8]_i_5 
       (.I0(sub_ln212_6_fu_781_p2[3]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_5_reg_1553[1]),
        .I3(icmp_ln443_5_reg_1547),
        .I4(x_l_I_V_36_reg_1535[19]),
        .I5(res_I_V_37_reg_1541[11]),
        .O(\sub_ln212_7_reg_1576[8]_i_5_n_0 ));
  FDRE \sub_ln212_7_reg_1576_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[0]),
        .Q(sub_ln212_7_reg_1576[0]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[10]),
        .Q(sub_ln212_7_reg_1576[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_7_reg_1576_reg[10]_i_1 
       (.CI(\sub_ln212_7_reg_1576_reg[8]_i_1_n_0 ),
        .CO({\NLW_sub_ln212_7_reg_1576_reg[10]_i_1_CO_UNCONNECTED [3:1],\sub_ln212_7_reg_1576_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_Result_72_fu_843_p4[9]}),
        .O({\NLW_sub_ln212_7_reg_1576_reg[10]_i_1_O_UNCONNECTED [3:2],sub_ln212_7_fu_863_p2[10:9]}),
        .S({1'b0,1'b0,\sub_ln212_7_reg_1576[10]_i_2_n_0 ,\sub_ln212_7_reg_1576[10]_i_3_n_0 }));
  FDRE \sub_ln212_7_reg_1576_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[1]),
        .Q(sub_ln212_7_reg_1576[1]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[2]),
        .Q(sub_ln212_7_reg_1576[2]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[3]),
        .Q(sub_ln212_7_reg_1576[3]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[4]),
        .Q(sub_ln212_7_reg_1576[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_7_reg_1576_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sub_ln212_7_reg_1576_reg[4]_i_1_n_0 ,\sub_ln212_7_reg_1576_reg[4]_i_1_n_1 ,\sub_ln212_7_reg_1576_reg[4]_i_1_n_2 ,\sub_ln212_7_reg_1576_reg[4]_i_1_n_3 }),
        .CYINIT(x_l_I_V_36_reg_1535[14]),
        .DI({p_Result_72_fu_843_p4[4],icmp_ln443_5_reg_1547,icmp_ln443_6_fu_775_p2_carry__0_n_3,x_l_I_V_36_reg_1535[15]}),
        .O(sub_ln212_7_fu_863_p2[4:1]),
        .S({\sub_ln212_7_reg_1576[4]_i_2_n_0 ,\sub_ln212_7_reg_1576[4]_i_3_n_0 ,\sub_ln212_7_reg_1576[4]_i_4_n_0 ,\sub_ln212_7_reg_1576[4]_i_5_n_0 }));
  FDRE \sub_ln212_7_reg_1576_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[5]),
        .Q(sub_ln212_7_reg_1576[5]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[6]),
        .Q(sub_ln212_7_reg_1576[6]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[7]),
        .Q(sub_ln212_7_reg_1576[7]),
        .R(1'b0));
  FDRE \sub_ln212_7_reg_1576_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[8]),
        .Q(sub_ln212_7_reg_1576[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sub_ln212_7_reg_1576_reg[8]_i_1 
       (.CI(\sub_ln212_7_reg_1576_reg[4]_i_1_n_0 ),
        .CO({\sub_ln212_7_reg_1576_reg[8]_i_1_n_0 ,\sub_ln212_7_reg_1576_reg[8]_i_1_n_1 ,\sub_ln212_7_reg_1576_reg[8]_i_1_n_2 ,\sub_ln212_7_reg_1576_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Result_72_fu_843_p4[8:5]),
        .O(sub_ln212_7_fu_863_p2[8:5]),
        .S({\sub_ln212_7_reg_1576[8]_i_2_n_0 ,\sub_ln212_7_reg_1576[8]_i_3_n_0 ,\sub_ln212_7_reg_1576[8]_i_4_n_0 ,\sub_ln212_7_reg_1576[8]_i_5_n_0 }));
  FDRE \sub_ln212_7_reg_1576_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sub_ln212_7_fu_863_p2[9]),
        .Q(sub_ln212_7_reg_1576[9]),
        .R(1'b0));
  FDRE \x_int_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(p_0_in0),
        .R(1'b0));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_32_reg_1489_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_32_reg_1489_reg[18]_srl2 " *) 
  SRL16E \x_l_I_V_32_reg_1489_reg[18]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[18]),
        .Q(\x_l_I_V_32_reg_1489_reg[18]_srl2_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_32_reg_1489_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_32_reg_1489_reg[19]_srl2 " *) 
  SRL16E \x_l_I_V_32_reg_1489_reg[19]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[19]),
        .Q(\x_l_I_V_32_reg_1489_reg[19]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x_l_I_V_34_reg_1512[24]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\x_l_I_V_34_reg_1512[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \x_l_I_V_34_reg_1512[27]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\x_l_I_V_34_reg_1512[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \x_l_I_V_34_reg_1512[28]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(p_Result_60_fu_529_p4));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg[14]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[14]),
        .Q(\x_l_I_V_34_reg_1512_reg[14]_srl3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg[15]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[15]),
        .Q(\x_l_I_V_34_reg_1512_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg[16]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[16]),
        .Q(\x_l_I_V_34_reg_1512_reg[16]_srl3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_34_reg_1512_reg[17]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[17]),
        .Q(\x_l_I_V_34_reg_1512_reg[17]_srl3_n_0 ));
  FDRE \x_l_I_V_34_reg_1512_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_32_reg_1489_reg[18]_srl2_n_0 ),
        .Q(x_l_I_V_34_reg_1512[18]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_32_reg_1489_reg[19]_srl2_n_0 ),
        .Q(x_l_I_V_34_reg_1512[19]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512[24]_i_1_n_0 ),
        .Q(x_l_I_V_34_reg_1512[24]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484),
        .Q(x_l_I_V_34_reg_1512[26]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512[27]_i_1_n_0 ),
        .Q(x_l_I_V_34_reg_1512[27]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_60_fu_529_p4),
        .Q(x_l_I_V_34_reg_1512[28]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_36_reg_1535[20]_i_1 
       (.I0(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .O(\x_l_I_V_36_reg_1535[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \x_l_I_V_36_reg_1535[21]_i_1 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_1),
        .O(\x_l_I_V_36_reg_1535[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[22]_i_1 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[0]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I4(sub_ln212_4_fu_624_p2[2]),
        .O(p_Result_66_fu_686_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    \x_l_I_V_36_reg_1535[23]_i_1 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .I2(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I3(sub_ln212_4_fu_624_p2[3]),
        .O(p_Result_66_fu_686_p4[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[24]_i_1 
       (.I0(x_l_I_V_34_reg_1512[24]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[2]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I4(sub_ln212_4_fu_624_p2[4]),
        .O(p_Result_66_fu_686_p4[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[25]_i_1 
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[3]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I4(sub_ln212_4_fu_624_p2[5]),
        .O(p_Result_66_fu_686_p4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_36_reg_1535[25]_i_3 
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[3]),
        .O(\x_l_I_V_36_reg_1535[25]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_36_reg_1535[25]_i_4 
       (.I0(x_l_I_V_34_reg_1512[24]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[2]),
        .O(\x_l_I_V_36_reg_1535[25]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \x_l_I_V_36_reg_1535[25]_i_5 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .O(\x_l_I_V_36_reg_1535[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_36_reg_1535[25]_i_6 
       (.I0(sub_ln212_3_reg_1530[3]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(res_I_V_35_reg_1518[12]),
        .I3(x_read_reg_1484_pp0_iter1_reg),
        .O(\x_l_I_V_36_reg_1535[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_36_reg_1535[25]_i_7 
       (.I0(sub_ln212_3_reg_1530[2]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[24]),
        .I3(res_I_V_35_reg_1518[13]),
        .O(\x_l_I_V_36_reg_1535[25]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \x_l_I_V_36_reg_1535[25]_i_8 
       (.I0(icmp_ln443_3_reg_1524),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(res_I_V_35_reg_1518[12]),
        .O(\x_l_I_V_36_reg_1535[25]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \x_l_I_V_36_reg_1535[25]_i_9 
       (.I0(sub_ln212_3_reg_1530[0]),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_3_reg_1524),
        .O(\x_l_I_V_36_reg_1535[25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[26]_i_1 
       (.I0(x_l_I_V_34_reg_1512[26]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[4]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I4(sub_ln212_4_fu_624_p2[6]),
        .O(p_Result_66_fu_686_p4[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_36_reg_1535[26]_i_3 
       (.I0(x_l_I_V_34_reg_1512[26]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[4]),
        .O(p_Result_63_fu_604_p4[6]));
  LUT3 #(
    .INIT(8'h1D)) 
    \x_l_I_V_36_reg_1535[26]_i_4 
       (.I0(sub_ln212_3_reg_1530[5]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[27]),
        .O(\x_l_I_V_36_reg_1535[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_36_reg_1535[26]_i_5 
       (.I0(sub_ln212_3_reg_1530[4]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[26]),
        .I3(x_read_reg_1484_pp0_iter1_reg),
        .O(\x_l_I_V_36_reg_1535[26]_i_5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg[10]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[10]),
        .Q(\x_l_I_V_36_reg_1535_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg[11]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[11]),
        .Q(\x_l_I_V_36_reg_1535_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg[12]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[12]),
        .Q(\x_l_I_V_36_reg_1535_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_36_reg_1535_reg[13]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[13]),
        .Q(\x_l_I_V_36_reg_1535_reg[13]_srl4_n_0 ));
  FDRE \x_l_I_V_36_reg_1535_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[14]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[14]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[15]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[15]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[16]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[16]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[17]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[17]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_34_reg_1512[18]),
        .Q(x_l_I_V_36_reg_1535[18]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_34_reg_1512[19]),
        .Q(x_l_I_V_36_reg_1535[19]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535[20]_i_1_n_0 ),
        .Q(x_l_I_V_36_reg_1535[20]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535[21]_i_1_n_0 ),
        .Q(x_l_I_V_36_reg_1535[21]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[4]),
        .Q(x_l_I_V_36_reg_1535[22]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[5]),
        .Q(x_l_I_V_36_reg_1535[23]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[6]),
        .Q(x_l_I_V_36_reg_1535[24]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[7]),
        .Q(x_l_I_V_36_reg_1535[25]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_36_reg_1535_reg[25]_i_2 
       (.CI(1'b0),
        .CO({\x_l_I_V_36_reg_1535_reg[25]_i_2_n_0 ,\x_l_I_V_36_reg_1535_reg[25]_i_2_n_1 ,\x_l_I_V_36_reg_1535_reg[25]_i_2_n_2 ,\x_l_I_V_36_reg_1535_reg[25]_i_2_n_3 }),
        .CYINIT(x_read_reg_1484_pp0_iter1_reg),
        .DI({\x_l_I_V_36_reg_1535[25]_i_3_n_0 ,\x_l_I_V_36_reg_1535[25]_i_4_n_0 ,\x_l_I_V_36_reg_1535[25]_i_5_n_0 ,icmp_ln443_3_reg_1524}),
        .O(sub_ln212_4_fu_624_p2[5:2]),
        .S({\x_l_I_V_36_reg_1535[25]_i_6_n_0 ,\x_l_I_V_36_reg_1535[25]_i_7_n_0 ,\x_l_I_V_36_reg_1535[25]_i_8_n_0 ,\x_l_I_V_36_reg_1535[25]_i_9_n_0 }));
  FDRE \x_l_I_V_36_reg_1535_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[8]),
        .Q(x_l_I_V_36_reg_1535[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_36_reg_1535_reg[26]_i_2 
       (.CI(\x_l_I_V_36_reg_1535_reg[25]_i_2_n_0 ),
        .CO({\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_CO_UNCONNECTED [3:1],\x_l_I_V_36_reg_1535_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_Result_63_fu_604_p4[6]}),
        .O({\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_O_UNCONNECTED [3:2],sub_ln212_4_fu_624_p2[7:6]}),
        .S({1'b0,1'b0,\x_l_I_V_36_reg_1535[26]_i_4_n_0 ,\x_l_I_V_36_reg_1535[26]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_37_reg_1558[16]_i_1 
       (.I0(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I1(x_l_I_V_36_reg_1535[16]),
        .O(\x_l_I_V_37_reg_1558[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[17]_i_1 
       (.I0(x_l_I_V_36_reg_1535[17]),
        .I1(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I2(sub_ln212_6_fu_781_p2[1]),
        .O(p_Result_72_fu_843_p4[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[18]_i_1 
       (.I0(x_l_I_V_36_reg_1535[18]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[0]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[2]),
        .O(p_Result_72_fu_843_p4[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[19]_i_1 
       (.I0(x_l_I_V_36_reg_1535[19]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[1]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[3]),
        .O(p_Result_72_fu_843_p4[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[20]_i_1 
       (.I0(x_l_I_V_36_reg_1535[20]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[2]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[4]),
        .O(p_Result_72_fu_843_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[20]_i_3 
       (.I0(x_l_I_V_36_reg_1535[20]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[2]),
        .O(p_Result_69_fu_761_p4[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[20]_i_4 
       (.I0(x_l_I_V_36_reg_1535[19]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[1]),
        .O(p_Result_69_fu_761_p4[3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_37_reg_1558[20]_i_5 
       (.I0(sub_ln212_5_reg_1553[2]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[20]),
        .I3(res_I_V_37_reg_1541[11]),
        .O(\x_l_I_V_37_reg_1558[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_37_reg_1558[20]_i_6 
       (.I0(sub_ln212_5_reg_1553[1]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[19]),
        .I3(res_I_V_37_reg_1541[10]),
        .O(\x_l_I_V_37_reg_1558[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \x_l_I_V_37_reg_1558[20]_i_7 
       (.I0(sub_ln212_5_reg_1553[0]),
        .I1(x_l_I_V_36_reg_1535[18]),
        .I2(icmp_ln443_5_reg_1547),
        .O(\x_l_I_V_37_reg_1558[20]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_l_I_V_37_reg_1558[20]_i_8 
       (.I0(x_l_I_V_36_reg_1535[17]),
        .O(\x_l_I_V_37_reg_1558[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[21]_i_1 
       (.I0(x_l_I_V_36_reg_1535[21]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[3]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[5]),
        .O(p_Result_72_fu_843_p4[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[22]_i_1 
       (.I0(x_l_I_V_36_reg_1535[22]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[4]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[6]),
        .O(p_Result_72_fu_843_p4[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[23]_i_1 
       (.I0(x_l_I_V_36_reg_1535[23]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[5]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[7]),
        .O(p_Result_72_fu_843_p4[9]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_37_reg_1558[24]_i_1 
       (.I0(x_l_I_V_36_reg_1535[24]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[6]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[8]),
        .O(p_Result_72_fu_843_p4[10]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_37_reg_1558[24]_i_10 
       (.I0(sub_ln212_5_reg_1553[3]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[21]),
        .I3(res_I_V_37_reg_1541[12]),
        .O(\x_l_I_V_37_reg_1558[24]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[24]_i_3 
       (.I0(x_l_I_V_36_reg_1535[24]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[6]),
        .O(p_Result_69_fu_761_p4[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[24]_i_4 
       (.I0(x_l_I_V_36_reg_1535[23]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[5]),
        .O(\x_l_I_V_37_reg_1558[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[24]_i_5 
       (.I0(x_l_I_V_36_reg_1535[22]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[4]),
        .O(\x_l_I_V_37_reg_1558[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_37_reg_1558[24]_i_6 
       (.I0(x_l_I_V_36_reg_1535[21]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[3]),
        .O(\x_l_I_V_37_reg_1558[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_37_reg_1558[24]_i_7 
       (.I0(sub_ln212_5_reg_1553[6]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[24]),
        .I3(x_read_reg_1484_pp0_iter2_reg),
        .O(\x_l_I_V_37_reg_1558[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_37_reg_1558[24]_i_8 
       (.I0(sub_ln212_5_reg_1553[5]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[23]),
        .I3(x_read_reg_1484_pp0_iter2_reg),
        .O(\x_l_I_V_37_reg_1558[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_37_reg_1558[24]_i_9 
       (.I0(sub_ln212_5_reg_1553[4]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[22]),
        .I3(res_I_V_37_reg_1541[13]),
        .O(\x_l_I_V_37_reg_1558[24]_i_9_n_0 ));
  FDRE \x_l_I_V_37_reg_1558_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[10]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[10]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[11]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[11]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[12]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[12]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[13]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[13]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_36_reg_1535[14]),
        .Q(x_l_I_V_37_reg_1558[14]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_36_reg_1535[15]),
        .Q(x_l_I_V_37_reg_1558[15]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558[16]_i_1_n_0 ),
        .Q(x_l_I_V_37_reg_1558[16]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[3]),
        .Q(x_l_I_V_37_reg_1558[17]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[4]),
        .Q(x_l_I_V_37_reg_1558[18]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[5]),
        .Q(x_l_I_V_37_reg_1558[19]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[6]),
        .Q(x_l_I_V_37_reg_1558[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_37_reg_1558_reg[20]_i_2 
       (.CI(1'b0),
        .CO({\x_l_I_V_37_reg_1558_reg[20]_i_2_n_0 ,\x_l_I_V_37_reg_1558_reg[20]_i_2_n_1 ,\x_l_I_V_37_reg_1558_reg[20]_i_2_n_2 ,\x_l_I_V_37_reg_1558_reg[20]_i_2_n_3 }),
        .CYINIT(x_l_I_V_36_reg_1535[16]),
        .DI({p_Result_69_fu_761_p4[4:3],icmp_ln443_5_reg_1547,x_l_I_V_36_reg_1535[17]}),
        .O(sub_ln212_6_fu_781_p2[4:1]),
        .S({\x_l_I_V_37_reg_1558[20]_i_5_n_0 ,\x_l_I_V_37_reg_1558[20]_i_6_n_0 ,\x_l_I_V_37_reg_1558[20]_i_7_n_0 ,\x_l_I_V_37_reg_1558[20]_i_8_n_0 }));
  FDRE \x_l_I_V_37_reg_1558_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[7]),
        .Q(x_l_I_V_37_reg_1558[21]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[8]),
        .Q(x_l_I_V_37_reg_1558[22]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[9]),
        .Q(x_l_I_V_37_reg_1558[23]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_72_fu_843_p4[10]),
        .Q(x_l_I_V_37_reg_1558[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_37_reg_1558_reg[24]_i_2 
       (.CI(\x_l_I_V_37_reg_1558_reg[20]_i_2_n_0 ),
        .CO({\x_l_I_V_37_reg_1558_reg[24]_i_2_n_0 ,\x_l_I_V_37_reg_1558_reg[24]_i_2_n_1 ,\x_l_I_V_37_reg_1558_reg[24]_i_2_n_2 ,\x_l_I_V_37_reg_1558_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_Result_69_fu_761_p4[8],\x_l_I_V_37_reg_1558[24]_i_4_n_0 ,\x_l_I_V_37_reg_1558[24]_i_5_n_0 ,\x_l_I_V_37_reg_1558[24]_i_6_n_0 }),
        .O(sub_ln212_6_fu_781_p2[8:5]),
        .S({\x_l_I_V_37_reg_1558[24]_i_7_n_0 ,\x_l_I_V_37_reg_1558[24]_i_8_n_0 ,\x_l_I_V_37_reg_1558[24]_i_9_n_0 ,\x_l_I_V_37_reg_1558[24]_i_10_n_0 }));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg[6]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[6]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[6]),
        .Q(\x_l_I_V_37_reg_1558_reg[6]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg[7]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[7]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[7]),
        .Q(\x_l_I_V_37_reg_1558_reg[7]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg[8]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[8]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[8]),
        .Q(\x_l_I_V_37_reg_1558_reg[8]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_37_reg_1558_reg[9]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[9]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[9]),
        .Q(\x_l_I_V_37_reg_1558_reg[9]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg[2]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[2]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[2]),
        .Q(\x_l_I_V_40_reg_1581_reg[2]_srl6_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg[3]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[3]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[3]),
        .Q(\x_l_I_V_40_reg_1581_reg[3]_srl6_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg[4]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[4]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[4]),
        .Q(\x_l_I_V_40_reg_1581_reg[4]_srl6_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_40_reg_1581_reg[5]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[5]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[5]),
        .Q(\x_l_I_V_40_reg_1581_reg[5]_srl6_n_0 ));
  FDRE \x_l_I_V_40_reg_1581_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558_reg[6]_srl5_n_0 ),
        .Q(x_l_I_V_40_reg_1581[6]),
        .R(1'b0));
  FDRE \x_l_I_V_40_reg_1581_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558_reg[7]_srl5_n_0 ),
        .Q(x_l_I_V_40_reg_1581[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604[20]_i_1 
       (.I0(p_Result_81_reg_1598[12]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[12]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[14]),
        .O(x_l_I_V_42_fu_1205_p3[20]));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_42_reg_1604[20]_i_10 
       (.I0(sub_ln212_10_fu_1100_p2[11]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[11]),
        .I3(x_read_reg_1484_pp0_iter4_reg),
        .O(\x_l_I_V_42_reg_1604[20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_42_reg_1604[20]_i_4 
       (.I0(p_Result_81_reg_1598[12]),
        .I1(x_read_reg_1484_pp0_iter4_reg),
        .O(\x_l_I_V_42_reg_1604[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_42_reg_1604[20]_i_5 
       (.I0(p_Result_81_reg_1598[11]),
        .I1(x_read_reg_1484_pp0_iter4_reg),
        .O(\x_l_I_V_42_reg_1604[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_42_reg_1604[20]_i_6 
       (.I0(p_Result_81_reg_1598[10]),
        .I1(p_Result_31_reg_1593[9]),
        .O(\x_l_I_V_42_reg_1604[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_42_reg_1604[20]_i_7 
       (.I0(p_Result_81_reg_1598[9]),
        .I1(p_Result_31_reg_1593[8]),
        .O(\x_l_I_V_42_reg_1604[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604[20]_i_8 
       (.I0(p_Result_81_reg_1598[11]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[11]),
        .O(p_Result_84_fu_1157_p4[13]));
  LUT3 #(
    .INIT(8'h1D)) 
    \x_l_I_V_42_reg_1604[20]_i_9 
       (.I0(sub_ln212_10_fu_1100_p2[12]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(p_Result_81_reg_1598[12]),
        .O(\x_l_I_V_42_reg_1604[20]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604[21]_i_1 
       (.I0(p_Result_81_reg_1598[13]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[13]),
        .O(\x_l_I_V_42_reg_1604[21]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_l_I_V_42_reg_1604[21]_i_3 
       (.I0(p_Result_81_reg_1598[13]),
        .O(\x_l_I_V_42_reg_1604[21]_i_3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[0]_srl7 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[0]),
        .Q(\x_l_I_V_42_reg_1604_reg[0]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[1]_srl7 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[1]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(Q[1]),
        .Q(\x_l_I_V_42_reg_1604_reg[1]_srl7_n_0 ));
  FDRE \x_l_I_V_42_reg_1604_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_fu_1205_p3[20]),
        .Q(x_l_I_V_42_reg_1604[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_42_reg_1604_reg[20]_i_2 
       (.CI(\p_Result_87_reg_1621_reg[9]_i_2_n_0 ),
        .CO({\x_l_I_V_42_reg_1604_reg[20]_i_2_n_0 ,\x_l_I_V_42_reg_1604_reg[20]_i_2_n_1 ,\x_l_I_V_42_reg_1604_reg[20]_i_2_n_2 ,\x_l_I_V_42_reg_1604_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Result_81_reg_1598[12:9]),
        .O(sub_ln212_10_fu_1100_p2[12:9]),
        .S({\x_l_I_V_42_reg_1604[20]_i_4_n_0 ,\x_l_I_V_42_reg_1604[20]_i_5_n_0 ,\x_l_I_V_42_reg_1604[20]_i_6_n_0 ,\x_l_I_V_42_reg_1604[20]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_42_reg_1604_reg[20]_i_3 
       (.CI(\p_Result_87_reg_1621_reg[11]_i_2_n_0 ),
        .CO({\NLW_x_l_I_V_42_reg_1604_reg[20]_i_3_CO_UNCONNECTED [3:1],\x_l_I_V_42_reg_1604_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_Result_84_fu_1157_p4[13]}),
        .O({\NLW_x_l_I_V_42_reg_1604_reg[20]_i_3_O_UNCONNECTED [3:2],sub_ln212_11_fu_1177_p2[14:13]}),
        .S({1'b0,1'b0,\x_l_I_V_42_reg_1604[20]_i_9_n_0 ,\x_l_I_V_42_reg_1604[20]_i_10_n_0 }));
  FDRE \x_l_I_V_42_reg_1604_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604[21]_i_1_n_0 ),
        .Q(x_l_I_V_42_reg_1604[21]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_42_reg_1604_reg[21]_i_2 
       (.CI(\x_l_I_V_42_reg_1604_reg[20]_i_2_n_0 ),
        .CO(\NLW_x_l_I_V_42_reg_1604_reg[21]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_l_I_V_42_reg_1604_reg[21]_i_2_O_UNCONNECTED [3:1],sub_ln212_10_fu_1100_p2[13]}),
        .S({1'b0,1'b0,1'b0,\x_l_I_V_42_reg_1604[21]_i_3_n_0 }));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[22]_srl2 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(x_l_I_V_40_fu_1048_p3[22]),
        .Q(\x_l_I_V_42_reg_1604_reg[22]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[22]_srl2_i_1 
       (.I0(p_Result_75_fu_918_p4[10]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[10]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[12]),
        .O(x_l_I_V_40_fu_1048_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[22]_srl2_i_2 
       (.I0(x_l_I_V_37_reg_1558[22]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[8]),
        .O(p_Result_75_fu_918_p4[10]));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[23]_srl2 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[23]_srl2_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[23]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[23]_srl2_i_1 
       (.I0(x_l_I_V_37_reg_1558[23]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[9]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[11]),
        .O(\x_l_I_V_42_reg_1604_reg[23]_srl2_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[24]_srl2 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[24]_srl2_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[24]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[24]_srl2_i_1 
       (.I0(x_l_I_V_37_reg_1558[24]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[10]),
        .O(\x_l_I_V_42_reg_1604_reg[24]_srl2_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[25]_srl3 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[25]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[25]_srl3_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[25]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[25]_srl3_i_1 
       (.I0(x_l_I_V_36_reg_1535[25]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[7]),
        .I3(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I4(sub_ln212_6_fu_781_p2[9]),
        .O(\x_l_I_V_42_reg_1604_reg[25]_srl3_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_42_reg_1604_reg[25]_srl3_i_2 
       (.CI(\x_l_I_V_37_reg_1558_reg[24]_i_2_n_0 ),
        .CO(\NLW_x_l_I_V_42_reg_1604_reg[25]_srl3_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_l_I_V_42_reg_1604_reg[25]_srl3_i_2_O_UNCONNECTED [3:1],sub_ln212_6_fu_781_p2[9]}),
        .S({1'b0,1'b0,1'b0,\x_l_I_V_42_reg_1604_reg[25]_srl3_i_3_n_0 }));
  LUT3 #(
    .INIT(8'h1D)) 
    \x_l_I_V_42_reg_1604_reg[25]_srl3_i_3 
       (.I0(sub_ln212_5_reg_1553[7]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(x_l_I_V_36_reg_1535[25]),
        .O(\x_l_I_V_42_reg_1604_reg[25]_srl3_i_3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[26]_srl3 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[26]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[26]_srl3_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[26]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[26]_srl3_i_1 
       (.I0(x_l_I_V_36_reg_1535[26]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[8]),
        .O(\x_l_I_V_42_reg_1604_reg[26]_srl3_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[27]_srl4 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[27]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[27]_srl4_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[27]_srl4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[27]_srl4_i_1 
       (.I0(x_l_I_V_34_reg_1512[27]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[5]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_1),
        .I4(sub_ln212_4_fu_624_p2[7]),
        .O(\x_l_I_V_42_reg_1604_reg[27]_srl4_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[28]_srl4 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[28]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[28]_srl4_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[28]_srl4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[28]_srl4_i_1 
       (.I0(x_l_I_V_34_reg_1512[28]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[6]),
        .O(\x_l_I_V_42_reg_1604_reg[28]_srl4_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[29]_srl4 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[29]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(x_l_I_V_34_reg_1512[24]),
        .Q(\x_l_I_V_42_reg_1604_reg[29]_srl4_n_0 ));
  FDRE \x_l_I_V_42_reg_1604_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_40_reg_1581_reg[2]_srl6_n_0 ),
        .Q(x_l_I_V_42_reg_1604[2]),
        .R(1'b0));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_364/x_l_I_V_42_reg_1604_reg[30]_srl5 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[30]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[30]_srl5_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[30]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_l_I_V_42_reg_1604_reg[30]_srl5_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\x_l_I_V_42_reg_1604_reg[30]_srl5_i_1_n_0 ));
  FDRE \x_l_I_V_42_reg_1604_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_40_reg_1581_reg[3]_srl6_n_0 ),
        .Q(x_l_I_V_42_reg_1604[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_44_reg_1627[18]_i_1 
       (.I0(p_Result_87_reg_1621[14]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[14]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[16]),
        .O(p_Result_93_fu_1378_p1[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_44_reg_1627[18]_i_3 
       (.I0(p_Result_87_reg_1621[13]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[13]),
        .O(p_Result_90_fu_1314_p4[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_44_reg_1627[18]_i_4 
       (.I0(p_Result_87_reg_1621[12]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[12]),
        .O(p_Result_90_fu_1314_p4[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_44_reg_1627[18]_i_5 
       (.I0(p_Result_87_reg_1621[11]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[11]),
        .O(\x_l_I_V_44_reg_1627[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \x_l_I_V_44_reg_1627[18]_i_6 
       (.I0(sub_ln212_12_fu_1257_p2[14]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[14]),
        .O(\x_l_I_V_44_reg_1627[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_44_reg_1627[18]_i_7 
       (.I0(sub_ln212_12_fu_1257_p2[13]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[13]),
        .I3(x_read_reg_1484_pp0_iter5_reg),
        .O(\x_l_I_V_44_reg_1627[18]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_44_reg_1627[18]_i_8 
       (.I0(sub_ln212_12_fu_1257_p2[12]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[12]),
        .I3(x_read_reg_1484_pp0_iter5_reg),
        .O(\x_l_I_V_44_reg_1627[18]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_44_reg_1627[18]_i_9 
       (.I0(sub_ln212_12_fu_1257_p2[11]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(p_Result_87_reg_1621[11]),
        .I3(p_Result_37_reg_1616[11]),
        .O(\x_l_I_V_44_reg_1627[18]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_44_reg_1627[19]_i_1 
       (.I0(p_Result_87_reg_1621[15]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[15]),
        .O(\x_l_I_V_44_reg_1627[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_l_I_V_44_reg_1627[19]_i_3 
       (.I0(p_Result_87_reg_1621[15]),
        .O(\x_l_I_V_44_reg_1627[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_44_reg_1627[19]_i_4 
       (.I0(p_Result_87_reg_1621[14]),
        .I1(x_read_reg_1484_pp0_iter5_reg),
        .O(\x_l_I_V_44_reg_1627[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_44_reg_1627[19]_i_5 
       (.I0(p_Result_87_reg_1621[13]),
        .I1(x_read_reg_1484_pp0_iter5_reg),
        .O(\x_l_I_V_44_reg_1627[19]_i_5_n_0 ));
  FDRE \x_l_I_V_44_reg_1627_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_93_fu_1378_p1[18]),
        .Q(x_l_I_V_44_reg_1627[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_44_reg_1627_reg[18]_i_2 
       (.CI(\p_Result_93_reg_1640_reg[11]_i_2_n_0 ),
        .CO({\NLW_x_l_I_V_44_reg_1627_reg[18]_i_2_CO_UNCONNECTED [3],\x_l_I_V_44_reg_1627_reg[18]_i_2_n_1 ,\x_l_I_V_44_reg_1627_reg[18]_i_2_n_2 ,\x_l_I_V_44_reg_1627_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_Result_90_fu_1314_p4[15:14],\x_l_I_V_44_reg_1627[18]_i_5_n_0 }),
        .O(sub_ln212_13_fu_1334_p2[16:13]),
        .S({\x_l_I_V_44_reg_1627[18]_i_6_n_0 ,\x_l_I_V_44_reg_1627[18]_i_7_n_0 ,\x_l_I_V_44_reg_1627[18]_i_8_n_0 ,\x_l_I_V_44_reg_1627[18]_i_9_n_0 }));
  FDRE \x_l_I_V_44_reg_1627_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_44_reg_1627[19]_i_1_n_0 ),
        .Q(x_l_I_V_44_reg_1627[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_44_reg_1627_reg[19]_i_2 
       (.CI(\p_Result_93_reg_1640_reg[13]_i_2_n_0 ),
        .CO({\NLW_x_l_I_V_44_reg_1627_reg[19]_i_2_CO_UNCONNECTED [3:2],\x_l_I_V_44_reg_1627_reg[19]_i_2_n_2 ,\x_l_I_V_44_reg_1627_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_Result_87_reg_1621[14:13]}),
        .O({\NLW_x_l_I_V_44_reg_1627_reg[19]_i_2_O_UNCONNECTED [3],sub_ln212_12_fu_1257_p2[15:13]}),
        .S({1'b0,\x_l_I_V_44_reg_1627[19]_i_3_n_0 ,\x_l_I_V_44_reg_1627[19]_i_4_n_0 ,\x_l_I_V_44_reg_1627[19]_i_5_n_0 }));
  FDRE \x_l_I_V_44_reg_1627_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_reg_1604[20]),
        .Q(x_l_I_V_44_reg_1627[20]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_l_I_V_42_reg_1604[21]),
        .Q(x_l_I_V_44_reg_1627[21]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[22]_srl2_n_0 ),
        .Q(x_l_I_V_44_reg_1627[22]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[23]_srl2_n_0 ),
        .Q(x_l_I_V_44_reg_1627[23]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[24]_srl2_n_0 ),
        .Q(x_l_I_V_44_reg_1627[24]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[25]_srl3_n_0 ),
        .Q(x_l_I_V_44_reg_1627[25]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[26]_srl3_n_0 ),
        .Q(x_l_I_V_44_reg_1627[26]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[27]_srl4_n_0 ),
        .Q(x_l_I_V_44_reg_1627[27]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[28]_srl4_n_0 ),
        .Q(x_l_I_V_44_reg_1627[28]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[29]_srl4_n_0 ),
        .Q(x_l_I_V_44_reg_1627[29]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[30]_srl5_n_0 ),
        .Q(x_l_I_V_44_reg_1627[30]),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter1_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484),
        .Q(x_read_reg_1484_pp0_iter1_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter2_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter1_reg),
        .Q(x_read_reg_1484_pp0_iter2_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter3_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter2_reg),
        .Q(x_read_reg_1484_pp0_iter3_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter4_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter3_reg),
        .Q(x_read_reg_1484_pp0_iter4_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter5_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter4_reg),
        .Q(x_read_reg_1484_pp0_iter5_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter6_reg_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter5_reg),
        .Q(x_read_reg_1484_pp0_iter6_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in0),
        .Q(x_read_reg_1484),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
