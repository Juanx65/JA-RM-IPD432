// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Mar 25 15:17:18 2022
// Host        : JuanKaHp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_P3_2/euc64_int/Vivado/euc64_int/euc64_int.gen/sources_1/bd/design_1/ip/design_1_eucHW_0_0/design_1_eucHW_0_0_sim_netlist.v
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [7:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [7:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
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
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "8" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "12'b000000000010" *) 
  (* ap_ST_fsm_state1 = "12'b000000000001" *) 
  (* ap_ST_fsm_state10 = "12'b000000010000" *) 
  (* ap_ST_fsm_state11 = "12'b000000100000" *) 
  (* ap_ST_fsm_state12 = "12'b000001000000" *) 
  (* ap_ST_fsm_state13 = "12'b000010000000" *) 
  (* ap_ST_fsm_state14 = "12'b000100000000" *) 
  (* ap_ST_fsm_state15 = "12'b001000000000" *) 
  (* ap_ST_fsm_state16 = "12'b010000000000" *) 
  (* ap_ST_fsm_state17 = "12'b100000000000" *) 
  (* ap_ST_fsm_state8 = "12'b000000000100" *) 
  (* ap_ST_fsm_state9 = "12'b000000001000" *) 
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
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "8" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "eucHW" *) 
(* ap_ST_fsm_pp0_stage0 = "12'b000000000010" *) (* ap_ST_fsm_state1 = "12'b000000000001" *) (* ap_ST_fsm_state10 = "12'b000000010000" *) 
(* ap_ST_fsm_state11 = "12'b000000100000" *) (* ap_ST_fsm_state12 = "12'b000001000000" *) (* ap_ST_fsm_state13 = "12'b000010000000" *) 
(* ap_ST_fsm_state14 = "12'b000100000000" *) (* ap_ST_fsm_state15 = "12'b001000000000" *) (* ap_ST_fsm_state16 = "12'b010000000000" *) 
(* ap_ST_fsm_state17 = "12'b100000000000" *) (* ap_ST_fsm_state8 = "12'b000000000100" *) (* ap_ST_fsm_state9 = "12'b000000001000" *) 
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
  input [7:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [7:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [2:0]A_1_address0;
  wire [19:0]add_ln38_6_fu_614_p2;
  wire [19:0]add_ln38_6_reg_847;
  wire \add_ln38_6_reg_847[11]_i_3_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_4_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_5_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_6_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_3_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_4_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_5_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_6_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_3_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_4_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_5_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_3_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_4_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_5_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_6_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_3_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_4_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_5_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_6_n_0 ;
  wire \add_ln38_6_reg_847_reg[11]_i_1_n_0 ;
  wire \add_ln38_6_reg_847_reg[11]_i_1_n_1 ;
  wire \add_ln38_6_reg_847_reg[11]_i_1_n_2 ;
  wire \add_ln38_6_reg_847_reg[11]_i_1_n_3 ;
  wire \add_ln38_6_reg_847_reg[15]_i_1_n_0 ;
  wire \add_ln38_6_reg_847_reg[15]_i_1_n_1 ;
  wire \add_ln38_6_reg_847_reg[15]_i_1_n_2 ;
  wire \add_ln38_6_reg_847_reg[15]_i_1_n_3 ;
  wire \add_ln38_6_reg_847_reg[19]_i_1_n_1 ;
  wire \add_ln38_6_reg_847_reg[19]_i_1_n_2 ;
  wire \add_ln38_6_reg_847_reg[19]_i_1_n_3 ;
  wire \add_ln38_6_reg_847_reg[3]_i_1_n_0 ;
  wire \add_ln38_6_reg_847_reg[3]_i_1_n_1 ;
  wire \add_ln38_6_reg_847_reg[3]_i_1_n_2 ;
  wire \add_ln38_6_reg_847_reg[3]_i_1_n_3 ;
  wire \add_ln38_6_reg_847_reg[7]_i_1_n_0 ;
  wire \add_ln38_6_reg_847_reg[7]_i_1_n_1 ;
  wire \add_ln38_6_reg_847_reg[7]_i_1_n_2 ;
  wire \add_ln38_6_reg_847_reg[7]_i_1_n_3 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire \ap_CS_fsm[1]_i_4_n_0 ;
  wire \ap_CS_fsm[2]_i_1_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire \ap_CS_fsm_reg_n_0_[8] ;
  wire \ap_CS_fsm_reg_n_0_[9] ;
  wire ap_CS_fsm_state16;
  wire ap_CS_fsm_state17;
  wire [1:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state2;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_2;
  wire control_s_axi_U_n_23;
  wire control_s_axi_U_n_24;
  wire control_s_axi_U_n_25;
  wire control_s_axi_U_n_26;
  wire control_s_axi_U_n_27;
  wire control_s_axi_U_n_28;
  wire control_s_axi_U_n_29;
  wire control_s_axi_U_n_30;
  wire control_s_axi_U_n_31;
  wire control_s_axi_U_n_41;
  wire control_s_axi_U_n_42;
  wire control_s_axi_U_n_43;
  wire control_s_axi_U_n_44;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire control_s_axi_U_n_47;
  wire control_s_axi_U_n_48;
  wire control_s_axi_U_n_49;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_59;
  wire control_s_axi_U_n_6;
  wire control_s_axi_U_n_60;
  wire control_s_axi_U_n_61;
  wire control_s_axi_U_n_62;
  wire control_s_axi_U_n_63;
  wire control_s_axi_U_n_64;
  wire control_s_axi_U_n_65;
  wire control_s_axi_U_n_66;
  wire control_s_axi_U_n_67;
  wire control_s_axi_U_n_7;
  wire control_s_axi_U_n_8;
  wire control_s_axi_U_n_9;
  wire grp_sqrt_fixed_32_32_s_fu_355_n_0;
  wire \i_fu_136[3]_i_1_n_0 ;
  wire \i_fu_136[4]_i_1_n_0 ;
  wire \i_fu_136[5]_i_1_n_0 ;
  wire \i_fu_136[6]_i_1_n_0 ;
  wire interrupt;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_0;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_1;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_10;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_11;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_12;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_13;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_14;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_15;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_16;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_17;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_2;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_3;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_4;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_5;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_6;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_7;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_8;
  wire mac_muladd_9s_9s_18s_18_4_1_U6_n_9;
  wire mac_muladd_9s_9s_18s_18_4_1_U7_n_18;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_0;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_1;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_10;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_11;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_12;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_13;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_14;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_15;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_16;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_17;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_2;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_3;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_4;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_5;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_6;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_7;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_8;
  wire mac_muladd_9s_9s_18s_18_4_1_U8_n_9;
  wire mac_muladd_9s_9s_18s_18_4_1_U9_n_18;
  wire [15:0]p_Val2_s_reg_857;
  wire [15:0]res_I_V_47_fu_1468_p3;
  wire \result_fu_132[0]_i_3_n_0 ;
  wire \result_fu_132[0]_i_4_n_0 ;
  wire \result_fu_132[0]_i_5_n_0 ;
  wire \result_fu_132[0]_i_6_n_0 ;
  wire \result_fu_132[12]_i_2_n_0 ;
  wire \result_fu_132[12]_i_3_n_0 ;
  wire \result_fu_132[12]_i_4_n_0 ;
  wire \result_fu_132[12]_i_5_n_0 ;
  wire \result_fu_132[16]_i_2_n_0 ;
  wire \result_fu_132[16]_i_3_n_0 ;
  wire \result_fu_132[16]_i_4_n_0 ;
  wire \result_fu_132[16]_i_5_n_0 ;
  wire \result_fu_132[20]_i_2_n_0 ;
  wire \result_fu_132[20]_i_3_n_0 ;
  wire \result_fu_132[20]_i_4_n_0 ;
  wire \result_fu_132[4]_i_2_n_0 ;
  wire \result_fu_132[4]_i_3_n_0 ;
  wire \result_fu_132[4]_i_4_n_0 ;
  wire \result_fu_132[4]_i_5_n_0 ;
  wire \result_fu_132[8]_i_2_n_0 ;
  wire \result_fu_132[8]_i_3_n_0 ;
  wire \result_fu_132[8]_i_4_n_0 ;
  wire \result_fu_132[8]_i_5_n_0 ;
  wire [22:0]result_fu_132_reg;
  wire \result_fu_132_reg[0]_i_2_n_0 ;
  wire \result_fu_132_reg[0]_i_2_n_1 ;
  wire \result_fu_132_reg[0]_i_2_n_2 ;
  wire \result_fu_132_reg[0]_i_2_n_3 ;
  wire \result_fu_132_reg[0]_i_2_n_4 ;
  wire \result_fu_132_reg[0]_i_2_n_5 ;
  wire \result_fu_132_reg[0]_i_2_n_6 ;
  wire \result_fu_132_reg[0]_i_2_n_7 ;
  wire \result_fu_132_reg[12]_i_1_n_0 ;
  wire \result_fu_132_reg[12]_i_1_n_1 ;
  wire \result_fu_132_reg[12]_i_1_n_2 ;
  wire \result_fu_132_reg[12]_i_1_n_3 ;
  wire \result_fu_132_reg[12]_i_1_n_4 ;
  wire \result_fu_132_reg[12]_i_1_n_5 ;
  wire \result_fu_132_reg[12]_i_1_n_6 ;
  wire \result_fu_132_reg[12]_i_1_n_7 ;
  wire \result_fu_132_reg[16]_i_1_n_0 ;
  wire \result_fu_132_reg[16]_i_1_n_1 ;
  wire \result_fu_132_reg[16]_i_1_n_2 ;
  wire \result_fu_132_reg[16]_i_1_n_3 ;
  wire \result_fu_132_reg[16]_i_1_n_4 ;
  wire \result_fu_132_reg[16]_i_1_n_5 ;
  wire \result_fu_132_reg[16]_i_1_n_6 ;
  wire \result_fu_132_reg[16]_i_1_n_7 ;
  wire \result_fu_132_reg[20]_i_1_n_2 ;
  wire \result_fu_132_reg[20]_i_1_n_3 ;
  wire \result_fu_132_reg[20]_i_1_n_5 ;
  wire \result_fu_132_reg[20]_i_1_n_6 ;
  wire \result_fu_132_reg[20]_i_1_n_7 ;
  wire \result_fu_132_reg[4]_i_1_n_0 ;
  wire \result_fu_132_reg[4]_i_1_n_1 ;
  wire \result_fu_132_reg[4]_i_1_n_2 ;
  wire \result_fu_132_reg[4]_i_1_n_3 ;
  wire \result_fu_132_reg[4]_i_1_n_4 ;
  wire \result_fu_132_reg[4]_i_1_n_5 ;
  wire \result_fu_132_reg[4]_i_1_n_6 ;
  wire \result_fu_132_reg[4]_i_1_n_7 ;
  wire \result_fu_132_reg[8]_i_1_n_0 ;
  wire \result_fu_132_reg[8]_i_1_n_1 ;
  wire \result_fu_132_reg[8]_i_1_n_2 ;
  wire \result_fu_132_reg[8]_i_1_n_3 ;
  wire \result_fu_132_reg[8]_i_1_n_4 ;
  wire \result_fu_132_reg[8]_i_1_n_5 ;
  wire \result_fu_132_reg[8]_i_1_n_6 ;
  wire \result_fu_132_reg[8]_i_1_n_7 ;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
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
  wire [17:0]sext_ln38_10_fu_594_p1;
  wire [17:0]sext_ln38_13_fu_610_p1;
  wire [8:0]sub_ln38_2_fu_512_p2;
  wire [8:0]sub_ln38_4_fu_526_p2;
  wire [8:0]sub_ln38_6_fu_540_p2;
  wire [8:0]sub_ln38_fu_498_p2;
  wire \zext_ln38_reg_691[0]_i_1_n_0 ;
  wire \zext_ln38_reg_691[1]_i_1_n_0 ;
  wire \zext_ln38_reg_691[2]_i_1_n_0 ;
  wire \zext_ln38_reg_691_reg_n_0_[0] ;
  wire \zext_ln38_reg_691_reg_n_0_[1] ;
  wire \zext_ln38_reg_691_reg_n_0_[2] ;
  wire [3:3]\NLW_add_ln38_6_reg_847_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_result_fu_132_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_fu_132_reg[20]_i_1_O_UNCONNECTED ;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_3 
       (.I0(sext_ln38_13_fu_610_p1[11]),
        .I1(sext_ln38_10_fu_594_p1[11]),
        .O(\add_ln38_6_reg_847[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_4 
       (.I0(sext_ln38_13_fu_610_p1[10]),
        .I1(sext_ln38_10_fu_594_p1[10]),
        .O(\add_ln38_6_reg_847[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_5 
       (.I0(sext_ln38_13_fu_610_p1[9]),
        .I1(sext_ln38_10_fu_594_p1[9]),
        .O(\add_ln38_6_reg_847[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_6 
       (.I0(sext_ln38_13_fu_610_p1[8]),
        .I1(sext_ln38_10_fu_594_p1[8]),
        .O(\add_ln38_6_reg_847[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_3 
       (.I0(sext_ln38_13_fu_610_p1[15]),
        .I1(sext_ln38_10_fu_594_p1[15]),
        .O(\add_ln38_6_reg_847[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_4 
       (.I0(sext_ln38_13_fu_610_p1[14]),
        .I1(sext_ln38_10_fu_594_p1[14]),
        .O(\add_ln38_6_reg_847[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_5 
       (.I0(sext_ln38_13_fu_610_p1[13]),
        .I1(sext_ln38_10_fu_594_p1[13]),
        .O(\add_ln38_6_reg_847[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_6 
       (.I0(sext_ln38_13_fu_610_p1[12]),
        .I1(sext_ln38_10_fu_594_p1[12]),
        .O(\add_ln38_6_reg_847[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_3 
       (.I0(mac_muladd_9s_9s_18s_18_4_1_U9_n_18),
        .I1(mac_muladd_9s_9s_18s_18_4_1_U7_n_18),
        .O(\add_ln38_6_reg_847[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_4 
       (.I0(sext_ln38_13_fu_610_p1[17]),
        .I1(sext_ln38_10_fu_594_p1[17]),
        .O(\add_ln38_6_reg_847[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_5 
       (.I0(sext_ln38_13_fu_610_p1[16]),
        .I1(sext_ln38_10_fu_594_p1[16]),
        .O(\add_ln38_6_reg_847[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_3 
       (.I0(sext_ln38_13_fu_610_p1[3]),
        .I1(sext_ln38_10_fu_594_p1[3]),
        .O(\add_ln38_6_reg_847[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_4 
       (.I0(sext_ln38_13_fu_610_p1[2]),
        .I1(sext_ln38_10_fu_594_p1[2]),
        .O(\add_ln38_6_reg_847[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_5 
       (.I0(sext_ln38_13_fu_610_p1[1]),
        .I1(sext_ln38_10_fu_594_p1[1]),
        .O(\add_ln38_6_reg_847[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_6 
       (.I0(sext_ln38_13_fu_610_p1[0]),
        .I1(sext_ln38_10_fu_594_p1[0]),
        .O(\add_ln38_6_reg_847[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_3 
       (.I0(sext_ln38_13_fu_610_p1[7]),
        .I1(sext_ln38_10_fu_594_p1[7]),
        .O(\add_ln38_6_reg_847[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_4 
       (.I0(sext_ln38_13_fu_610_p1[6]),
        .I1(sext_ln38_10_fu_594_p1[6]),
        .O(\add_ln38_6_reg_847[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_5 
       (.I0(sext_ln38_13_fu_610_p1[5]),
        .I1(sext_ln38_10_fu_594_p1[5]),
        .O(\add_ln38_6_reg_847[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_6 
       (.I0(sext_ln38_13_fu_610_p1[4]),
        .I1(sext_ln38_10_fu_594_p1[4]),
        .O(\add_ln38_6_reg_847[7]_i_6_n_0 ));
  FDRE \add_ln38_6_reg_847_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[0]),
        .Q(add_ln38_6_reg_847[0]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[10]),
        .Q(add_ln38_6_reg_847[10]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[11]),
        .Q(add_ln38_6_reg_847[11]),
        .R(1'b0));
  CARRY4 \add_ln38_6_reg_847_reg[11]_i_1 
       (.CI(\add_ln38_6_reg_847_reg[7]_i_1_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[11]_i_1_n_0 ,\add_ln38_6_reg_847_reg[11]_i_1_n_1 ,\add_ln38_6_reg_847_reg[11]_i_1_n_2 ,\add_ln38_6_reg_847_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln38_13_fu_610_p1[11:8]),
        .O(add_ln38_6_fu_614_p2[11:8]),
        .S({\add_ln38_6_reg_847[11]_i_3_n_0 ,\add_ln38_6_reg_847[11]_i_4_n_0 ,\add_ln38_6_reg_847[11]_i_5_n_0 ,\add_ln38_6_reg_847[11]_i_6_n_0 }));
  FDRE \add_ln38_6_reg_847_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[12]),
        .Q(add_ln38_6_reg_847[12]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[13]),
        .Q(add_ln38_6_reg_847[13]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[14]),
        .Q(add_ln38_6_reg_847[14]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[15]),
        .Q(add_ln38_6_reg_847[15]),
        .R(1'b0));
  CARRY4 \add_ln38_6_reg_847_reg[15]_i_1 
       (.CI(\add_ln38_6_reg_847_reg[11]_i_1_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[15]_i_1_n_0 ,\add_ln38_6_reg_847_reg[15]_i_1_n_1 ,\add_ln38_6_reg_847_reg[15]_i_1_n_2 ,\add_ln38_6_reg_847_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln38_13_fu_610_p1[15:12]),
        .O(add_ln38_6_fu_614_p2[15:12]),
        .S({\add_ln38_6_reg_847[15]_i_3_n_0 ,\add_ln38_6_reg_847[15]_i_4_n_0 ,\add_ln38_6_reg_847[15]_i_5_n_0 ,\add_ln38_6_reg_847[15]_i_6_n_0 }));
  FDRE \add_ln38_6_reg_847_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[16]),
        .Q(add_ln38_6_reg_847[16]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[17]),
        .Q(add_ln38_6_reg_847[17]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[18]),
        .Q(add_ln38_6_reg_847[18]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[19]),
        .Q(add_ln38_6_reg_847[19]),
        .R(1'b0));
  CARRY4 \add_ln38_6_reg_847_reg[19]_i_1 
       (.CI(\add_ln38_6_reg_847_reg[15]_i_1_n_0 ),
        .CO({\NLW_add_ln38_6_reg_847_reg[19]_i_1_CO_UNCONNECTED [3],\add_ln38_6_reg_847_reg[19]_i_1_n_1 ,\add_ln38_6_reg_847_reg[19]_i_1_n_2 ,\add_ln38_6_reg_847_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mac_muladd_9s_9s_18s_18_4_1_U9_n_18,sext_ln38_13_fu_610_p1[17:16]}),
        .O(add_ln38_6_fu_614_p2[19:16]),
        .S({1'b1,\add_ln38_6_reg_847[19]_i_3_n_0 ,\add_ln38_6_reg_847[19]_i_4_n_0 ,\add_ln38_6_reg_847[19]_i_5_n_0 }));
  FDRE \add_ln38_6_reg_847_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[1]),
        .Q(add_ln38_6_reg_847[1]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[2]),
        .Q(add_ln38_6_reg_847[2]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[3]),
        .Q(add_ln38_6_reg_847[3]),
        .R(1'b0));
  CARRY4 \add_ln38_6_reg_847_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln38_6_reg_847_reg[3]_i_1_n_0 ,\add_ln38_6_reg_847_reg[3]_i_1_n_1 ,\add_ln38_6_reg_847_reg[3]_i_1_n_2 ,\add_ln38_6_reg_847_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln38_13_fu_610_p1[3:0]),
        .O(add_ln38_6_fu_614_p2[3:0]),
        .S({\add_ln38_6_reg_847[3]_i_3_n_0 ,\add_ln38_6_reg_847[3]_i_4_n_0 ,\add_ln38_6_reg_847[3]_i_5_n_0 ,\add_ln38_6_reg_847[3]_i_6_n_0 }));
  FDRE \add_ln38_6_reg_847_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[4]),
        .Q(add_ln38_6_reg_847[4]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[5]),
        .Q(add_ln38_6_reg_847[5]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[6]),
        .Q(add_ln38_6_reg_847[6]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[7]),
        .Q(add_ln38_6_reg_847[7]),
        .R(1'b0));
  CARRY4 \add_ln38_6_reg_847_reg[7]_i_1 
       (.CI(\add_ln38_6_reg_847_reg[3]_i_1_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[7]_i_1_n_0 ,\add_ln38_6_reg_847_reg[7]_i_1_n_1 ,\add_ln38_6_reg_847_reg[7]_i_1_n_2 ,\add_ln38_6_reg_847_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln38_13_fu_610_p1[7:4]),
        .O(add_ln38_6_fu_614_p2[7:4]),
        .S({\add_ln38_6_reg_847[7]_i_3_n_0 ,\add_ln38_6_reg_847[7]_i_4_n_0 ,\add_ln38_6_reg_847[7]_i_5_n_0 ,\add_ln38_6_reg_847[7]_i_6_n_0 }));
  FDRE \add_ln38_6_reg_847_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[8]),
        .Q(add_ln38_6_reg_847[8]),
        .R(1'b0));
  FDRE \add_ln38_6_reg_847_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(add_ln38_6_fu_614_p2[9]),
        .Q(add_ln38_6_reg_847[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBF00BFBF)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_condition_pp0_exit_iter0_state2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter4),
        .I4(ap_enable_reg_pp0_iter5),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\ap_CS_fsm_reg_n_0_[8] ),
        .I1(\ap_CS_fsm_reg_n_0_[7] ),
        .I2(ap_CS_fsm_state16),
        .I3(\ap_CS_fsm_reg_n_0_[9] ),
        .I4(\ap_CS_fsm[1]_i_4_n_0 ),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\ap_CS_fsm_reg_n_0_[5] ),
        .I1(\ap_CS_fsm_reg_n_0_[6] ),
        .I2(\ap_CS_fsm_reg_n_0_[3] ),
        .I3(\ap_CS_fsm_reg_n_0_[4] ),
        .O(\ap_CS_fsm[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter5),
        .I2(ap_enable_reg_pp0_iter4),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_condition_pp0_exit_iter0_state2),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm[2]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[9] ),
        .Q(ap_CS_fsm_state16),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state16),
        .Q(ap_CS_fsm_state17),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[3] ),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[4] ),
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
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_2),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_rst_n),
        .I2(ap_condition_pp0_exit_iter0_state2),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi control_s_axi_U
       (.A_1_address0(A_1_address0),
        .C(p_Val2_s_reg_857),
        .D(ap_NS_fsm),
        .Q({ap_CS_fsm_state17,\ap_CS_fsm_reg_n_0_[2] ,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[1]_i_2_n_0 ),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm[1]_i_3_n_0 ),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_condition_pp0_exit_iter0_state2(ap_condition_pp0_exit_iter0_state2),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(control_s_axi_U_n_2),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .b_reg0({control_s_axi_U_n_5,control_s_axi_U_n_6,control_s_axi_U_n_7,control_s_axi_U_n_8,control_s_axi_U_n_9,control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13}),
        .\int_B_0_shift0_reg[0]_0 (\zext_ln38_reg_691_reg_n_0_[0] ),
        .\int_B_0_shift0_reg[1]_0 (\zext_ln38_reg_691_reg_n_0_[1] ),
        .interrupt(interrupt),
        .m_reg_reg_i_2__0({control_s_axi_U_n_23,control_s_axi_U_n_24,control_s_axi_U_n_25,control_s_axi_U_n_26,control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31}),
        .m_reg_reg_i_2__1({control_s_axi_U_n_41,control_s_axi_U_n_42,control_s_axi_U_n_43,control_s_axi_U_n_44,control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49}),
        .m_reg_reg_i_2__2({control_s_axi_U_n_59,control_s_axi_U_n_60,control_s_axi_U_n_61,control_s_axi_U_n_62,control_s_axi_U_n_63,control_s_axi_U_n_64,control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67}),
        .mem_reg(\zext_ln38_reg_691_reg_n_0_[2] ),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sub_ln38_2_fu_512_p2(sub_ln38_2_fu_512_p2),
        .sub_ln38_4_fu_526_p2(sub_ln38_4_fu_526_p2),
        .sub_ln38_6_fu_540_p2(sub_ln38_6_fu_540_p2),
        .sub_ln38_fu_498_p2(sub_ln38_fu_498_p2));
  design_1_eucHW_0_0_eucHW_sqrt_fixed_32_32_s grp_sqrt_fixed_32_32_s_fu_355
       (.Q(ap_CS_fsm_state16),
        .ap_clk(ap_clk),
        .res_I_V_47_fu_1468_p3(res_I_V_47_fu_1468_p3),
        .result_fu_132_reg(result_fu_132_reg),
        .\x_read_reg_1484_pp0_iter6_reg_reg[22]_0 (grp_sqrt_fixed_32_32_s_fu_355_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \i_fu_136[3]_i_1 
       (.I0(ap_condition_pp0_exit_iter0_state2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(A_1_address0[0]),
        .O(\i_fu_136[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \i_fu_136[4]_i_1 
       (.I0(A_1_address0[0]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_condition_pp0_exit_iter0_state2),
        .I4(A_1_address0[1]),
        .O(\i_fu_136[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \i_fu_136[5]_i_1 
       (.I0(A_1_address0[0]),
        .I1(A_1_address0[1]),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_condition_pp0_exit_iter0_state2),
        .I5(A_1_address0[2]),
        .O(\i_fu_136[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \i_fu_136[6]_i_1 
       (.I0(A_1_address0[1]),
        .I1(A_1_address0[0]),
        .I2(A_1_address0[2]),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_condition_pp0_exit_iter0_state2),
        .O(\i_fu_136[6]_i_1_n_0 ));
  FDRE \i_fu_136_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_fu_136[3]_i_1_n_0 ),
        .Q(A_1_address0[0]),
        .R(ap_NS_fsm1));
  FDRE \i_fu_136_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_fu_136[4]_i_1_n_0 ),
        .Q(A_1_address0[1]),
        .R(ap_NS_fsm1));
  FDRE \i_fu_136_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_fu_136[5]_i_1_n_0 ),
        .Q(A_1_address0[2]),
        .R(ap_NS_fsm1));
  FDRE \i_fu_136_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_fu_136[6]_i_1_n_0 ),
        .Q(ap_condition_pp0_exit_iter0_state2),
        .R(ap_NS_fsm1));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1 mac_muladd_9s_9s_18s_18_4_1_U6
       (.P({mac_muladd_9s_9s_18s_18_4_1_U6_n_0,mac_muladd_9s_9s_18s_18_4_1_U6_n_1,mac_muladd_9s_9s_18s_18_4_1_U6_n_2,mac_muladd_9s_9s_18s_18_4_1_U6_n_3,mac_muladd_9s_9s_18s_18_4_1_U6_n_4,mac_muladd_9s_9s_18s_18_4_1_U6_n_5,mac_muladd_9s_9s_18s_18_4_1_U6_n_6,mac_muladd_9s_9s_18s_18_4_1_U6_n_7,mac_muladd_9s_9s_18s_18_4_1_U6_n_8,mac_muladd_9s_9s_18s_18_4_1_U6_n_9,mac_muladd_9s_9s_18s_18_4_1_U6_n_10,mac_muladd_9s_9s_18s_18_4_1_U6_n_11,mac_muladd_9s_9s_18s_18_4_1_U6_n_12,mac_muladd_9s_9s_18s_18_4_1_U6_n_13,mac_muladd_9s_9s_18s_18_4_1_U6_n_14,mac_muladd_9s_9s_18s_18_4_1_U6_n_15,mac_muladd_9s_9s_18s_18_4_1_U6_n_16,mac_muladd_9s_9s_18s_18_4_1_U6_n_17}),
        .ap_clk(ap_clk),
        .b_reg0({control_s_axi_U_n_5,control_s_axi_U_n_6,control_s_axi_U_n_7,control_s_axi_U_n_8,control_s_axi_U_n_9,control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13}),
        .sub_ln38_fu_498_p2(sub_ln38_fu_498_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_0 mac_muladd_9s_9s_18s_18_4_1_U7
       (.CO(mac_muladd_9s_9s_18s_18_4_1_U7_n_18),
        .P({mac_muladd_9s_9s_18s_18_4_1_U6_n_0,mac_muladd_9s_9s_18s_18_4_1_U6_n_1,mac_muladd_9s_9s_18s_18_4_1_U6_n_2,mac_muladd_9s_9s_18s_18_4_1_U6_n_3,mac_muladd_9s_9s_18s_18_4_1_U6_n_4,mac_muladd_9s_9s_18s_18_4_1_U6_n_5,mac_muladd_9s_9s_18s_18_4_1_U6_n_6,mac_muladd_9s_9s_18s_18_4_1_U6_n_7,mac_muladd_9s_9s_18s_18_4_1_U6_n_8,mac_muladd_9s_9s_18s_18_4_1_U6_n_9,mac_muladd_9s_9s_18s_18_4_1_U6_n_10,mac_muladd_9s_9s_18s_18_4_1_U6_n_11,mac_muladd_9s_9s_18s_18_4_1_U6_n_12,mac_muladd_9s_9s_18s_18_4_1_U6_n_13,mac_muladd_9s_9s_18s_18_4_1_U6_n_14,mac_muladd_9s_9s_18s_18_4_1_U6_n_15,mac_muladd_9s_9s_18s_18_4_1_U6_n_16,mac_muladd_9s_9s_18s_18_4_1_U6_n_17}),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_23,control_s_axi_U_n_24,control_s_axi_U_n_25,control_s_axi_U_n_26,control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31}),
        .sext_ln38_10_fu_594_p1(sext_ln38_10_fu_594_p1),
        .sub_ln38_2_fu_512_p2(sub_ln38_2_fu_512_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_1 mac_muladd_9s_9s_18s_18_4_1_U8
       (.P({mac_muladd_9s_9s_18s_18_4_1_U8_n_0,mac_muladd_9s_9s_18s_18_4_1_U8_n_1,mac_muladd_9s_9s_18s_18_4_1_U8_n_2,mac_muladd_9s_9s_18s_18_4_1_U8_n_3,mac_muladd_9s_9s_18s_18_4_1_U8_n_4,mac_muladd_9s_9s_18s_18_4_1_U8_n_5,mac_muladd_9s_9s_18s_18_4_1_U8_n_6,mac_muladd_9s_9s_18s_18_4_1_U8_n_7,mac_muladd_9s_9s_18s_18_4_1_U8_n_8,mac_muladd_9s_9s_18s_18_4_1_U8_n_9,mac_muladd_9s_9s_18s_18_4_1_U8_n_10,mac_muladd_9s_9s_18s_18_4_1_U8_n_11,mac_muladd_9s_9s_18s_18_4_1_U8_n_12,mac_muladd_9s_9s_18s_18_4_1_U8_n_13,mac_muladd_9s_9s_18s_18_4_1_U8_n_14,mac_muladd_9s_9s_18s_18_4_1_U8_n_15,mac_muladd_9s_9s_18s_18_4_1_U8_n_16,mac_muladd_9s_9s_18s_18_4_1_U8_n_17}),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_41,control_s_axi_U_n_42,control_s_axi_U_n_43,control_s_axi_U_n_44,control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49}),
        .sub_ln38_4_fu_526_p2(sub_ln38_4_fu_526_p2));
  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_2 mac_muladd_9s_9s_18s_18_4_1_U9
       (.CO(mac_muladd_9s_9s_18s_18_4_1_U9_n_18),
        .P({mac_muladd_9s_9s_18s_18_4_1_U8_n_0,mac_muladd_9s_9s_18s_18_4_1_U8_n_1,mac_muladd_9s_9s_18s_18_4_1_U8_n_2,mac_muladd_9s_9s_18s_18_4_1_U8_n_3,mac_muladd_9s_9s_18s_18_4_1_U8_n_4,mac_muladd_9s_9s_18s_18_4_1_U8_n_5,mac_muladd_9s_9s_18s_18_4_1_U8_n_6,mac_muladd_9s_9s_18s_18_4_1_U8_n_7,mac_muladd_9s_9s_18s_18_4_1_U8_n_8,mac_muladd_9s_9s_18s_18_4_1_U8_n_9,mac_muladd_9s_9s_18s_18_4_1_U8_n_10,mac_muladd_9s_9s_18s_18_4_1_U8_n_11,mac_muladd_9s_9s_18s_18_4_1_U8_n_12,mac_muladd_9s_9s_18s_18_4_1_U8_n_13,mac_muladd_9s_9s_18s_18_4_1_U8_n_14,mac_muladd_9s_9s_18s_18_4_1_U8_n_15,mac_muladd_9s_9s_18s_18_4_1_U8_n_16,mac_muladd_9s_9s_18s_18_4_1_U8_n_17}),
        .ap_clk(ap_clk),
        .m_reg_reg({control_s_axi_U_n_59,control_s_axi_U_n_60,control_s_axi_U_n_61,control_s_axi_U_n_62,control_s_axi_U_n_63,control_s_axi_U_n_64,control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67}),
        .sext_ln38_13_fu_610_p1(sext_ln38_13_fu_610_p1),
        .sub_ln38_6_fu_540_p2(sub_ln38_6_fu_540_p2));
  FDRE \p_Val2_s_reg_857_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[0]),
        .Q(p_Val2_s_reg_857[0]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[10]),
        .Q(p_Val2_s_reg_857[10]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[11]),
        .Q(p_Val2_s_reg_857[11]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[12]),
        .Q(p_Val2_s_reg_857[12]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[13]),
        .Q(p_Val2_s_reg_857[13]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[14]),
        .Q(p_Val2_s_reg_857[14]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[15]),
        .Q(p_Val2_s_reg_857[15]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[1]),
        .Q(p_Val2_s_reg_857[1]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[2]),
        .Q(p_Val2_s_reg_857[2]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[3]),
        .Q(p_Val2_s_reg_857[3]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[4]),
        .Q(p_Val2_s_reg_857[4]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[5]),
        .Q(p_Val2_s_reg_857[5]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[6]),
        .Q(p_Val2_s_reg_857[6]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[7]),
        .Q(p_Val2_s_reg_857[7]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[8]),
        .Q(p_Val2_s_reg_857[8]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  FDRE \p_Val2_s_reg_857_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(res_I_V_47_fu_1468_p3[9]),
        .Q(p_Val2_s_reg_857[9]),
        .R(grp_sqrt_fixed_32_32_s_fu_355_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[0]_i_3 
       (.I0(add_ln38_6_reg_847[3]),
        .I1(result_fu_132_reg[3]),
        .O(\result_fu_132[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[0]_i_4 
       (.I0(add_ln38_6_reg_847[2]),
        .I1(result_fu_132_reg[2]),
        .O(\result_fu_132[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[0]_i_5 
       (.I0(add_ln38_6_reg_847[1]),
        .I1(result_fu_132_reg[1]),
        .O(\result_fu_132[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[0]_i_6 
       (.I0(add_ln38_6_reg_847[0]),
        .I1(result_fu_132_reg[0]),
        .O(\result_fu_132[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[12]_i_2 
       (.I0(add_ln38_6_reg_847[15]),
        .I1(result_fu_132_reg[15]),
        .O(\result_fu_132[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[12]_i_3 
       (.I0(add_ln38_6_reg_847[14]),
        .I1(result_fu_132_reg[14]),
        .O(\result_fu_132[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[12]_i_4 
       (.I0(add_ln38_6_reg_847[13]),
        .I1(result_fu_132_reg[13]),
        .O(\result_fu_132[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[12]_i_5 
       (.I0(add_ln38_6_reg_847[12]),
        .I1(result_fu_132_reg[12]),
        .O(\result_fu_132[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[16]_i_2 
       (.I0(add_ln38_6_reg_847[19]),
        .I1(result_fu_132_reg[19]),
        .O(\result_fu_132[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[16]_i_3 
       (.I0(add_ln38_6_reg_847[18]),
        .I1(result_fu_132_reg[18]),
        .O(\result_fu_132[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[16]_i_4 
       (.I0(add_ln38_6_reg_847[17]),
        .I1(result_fu_132_reg[17]),
        .O(\result_fu_132[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[16]_i_5 
       (.I0(add_ln38_6_reg_847[16]),
        .I1(result_fu_132_reg[16]),
        .O(\result_fu_132[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[20]_i_2 
       (.I0(add_ln38_6_reg_847[19]),
        .I1(result_fu_132_reg[22]),
        .O(\result_fu_132[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[20]_i_3 
       (.I0(add_ln38_6_reg_847[19]),
        .I1(result_fu_132_reg[21]),
        .O(\result_fu_132[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[20]_i_4 
       (.I0(add_ln38_6_reg_847[19]),
        .I1(result_fu_132_reg[20]),
        .O(\result_fu_132[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[4]_i_2 
       (.I0(add_ln38_6_reg_847[7]),
        .I1(result_fu_132_reg[7]),
        .O(\result_fu_132[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[4]_i_3 
       (.I0(add_ln38_6_reg_847[6]),
        .I1(result_fu_132_reg[6]),
        .O(\result_fu_132[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[4]_i_4 
       (.I0(add_ln38_6_reg_847[5]),
        .I1(result_fu_132_reg[5]),
        .O(\result_fu_132[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[4]_i_5 
       (.I0(add_ln38_6_reg_847[4]),
        .I1(result_fu_132_reg[4]),
        .O(\result_fu_132[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[8]_i_2 
       (.I0(add_ln38_6_reg_847[11]),
        .I1(result_fu_132_reg[11]),
        .O(\result_fu_132[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[8]_i_3 
       (.I0(add_ln38_6_reg_847[10]),
        .I1(result_fu_132_reg[10]),
        .O(\result_fu_132[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[8]_i_4 
       (.I0(add_ln38_6_reg_847[9]),
        .I1(result_fu_132_reg[9]),
        .O(\result_fu_132[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_fu_132[8]_i_5 
       (.I0(add_ln38_6_reg_847[8]),
        .I1(result_fu_132_reg[8]),
        .O(\result_fu_132[8]_i_5_n_0 ));
  FDRE \result_fu_132_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[0]_i_2_n_7 ),
        .Q(result_fu_132_reg[0]),
        .R(ap_NS_fsm1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \result_fu_132_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\result_fu_132_reg[0]_i_2_n_0 ,\result_fu_132_reg[0]_i_2_n_1 ,\result_fu_132_reg[0]_i_2_n_2 ,\result_fu_132_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln38_6_reg_847[3:0]),
        .O({\result_fu_132_reg[0]_i_2_n_4 ,\result_fu_132_reg[0]_i_2_n_5 ,\result_fu_132_reg[0]_i_2_n_6 ,\result_fu_132_reg[0]_i_2_n_7 }),
        .S({\result_fu_132[0]_i_3_n_0 ,\result_fu_132[0]_i_4_n_0 ,\result_fu_132[0]_i_5_n_0 ,\result_fu_132[0]_i_6_n_0 }));
  FDRE \result_fu_132_reg[10] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[8]_i_1_n_5 ),
        .Q(result_fu_132_reg[10]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[11] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[8]_i_1_n_4 ),
        .Q(result_fu_132_reg[11]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[12] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[12]_i_1_n_7 ),
        .Q(result_fu_132_reg[12]),
        .R(ap_NS_fsm1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \result_fu_132_reg[12]_i_1 
       (.CI(\result_fu_132_reg[8]_i_1_n_0 ),
        .CO({\result_fu_132_reg[12]_i_1_n_0 ,\result_fu_132_reg[12]_i_1_n_1 ,\result_fu_132_reg[12]_i_1_n_2 ,\result_fu_132_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln38_6_reg_847[15:12]),
        .O({\result_fu_132_reg[12]_i_1_n_4 ,\result_fu_132_reg[12]_i_1_n_5 ,\result_fu_132_reg[12]_i_1_n_6 ,\result_fu_132_reg[12]_i_1_n_7 }),
        .S({\result_fu_132[12]_i_2_n_0 ,\result_fu_132[12]_i_3_n_0 ,\result_fu_132[12]_i_4_n_0 ,\result_fu_132[12]_i_5_n_0 }));
  FDRE \result_fu_132_reg[13] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[12]_i_1_n_6 ),
        .Q(result_fu_132_reg[13]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[14] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[12]_i_1_n_5 ),
        .Q(result_fu_132_reg[14]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[15] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[12]_i_1_n_4 ),
        .Q(result_fu_132_reg[15]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[16] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[16]_i_1_n_7 ),
        .Q(result_fu_132_reg[16]),
        .R(ap_NS_fsm1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \result_fu_132_reg[16]_i_1 
       (.CI(\result_fu_132_reg[12]_i_1_n_0 ),
        .CO({\result_fu_132_reg[16]_i_1_n_0 ,\result_fu_132_reg[16]_i_1_n_1 ,\result_fu_132_reg[16]_i_1_n_2 ,\result_fu_132_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln38_6_reg_847[19:16]),
        .O({\result_fu_132_reg[16]_i_1_n_4 ,\result_fu_132_reg[16]_i_1_n_5 ,\result_fu_132_reg[16]_i_1_n_6 ,\result_fu_132_reg[16]_i_1_n_7 }),
        .S({\result_fu_132[16]_i_2_n_0 ,\result_fu_132[16]_i_3_n_0 ,\result_fu_132[16]_i_4_n_0 ,\result_fu_132[16]_i_5_n_0 }));
  FDRE \result_fu_132_reg[17] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[16]_i_1_n_6 ),
        .Q(result_fu_132_reg[17]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[18] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[16]_i_1_n_5 ),
        .Q(result_fu_132_reg[18]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[19] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[16]_i_1_n_4 ),
        .Q(result_fu_132_reg[19]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[0]_i_2_n_6 ),
        .Q(result_fu_132_reg[1]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[20] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[20]_i_1_n_7 ),
        .Q(result_fu_132_reg[20]),
        .R(ap_NS_fsm1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \result_fu_132_reg[20]_i_1 
       (.CI(\result_fu_132_reg[16]_i_1_n_0 ),
        .CO({\NLW_result_fu_132_reg[20]_i_1_CO_UNCONNECTED [3:2],\result_fu_132_reg[20]_i_1_n_2 ,\result_fu_132_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,add_ln38_6_reg_847[19],add_ln38_6_reg_847[19]}),
        .O({\NLW_result_fu_132_reg[20]_i_1_O_UNCONNECTED [3],\result_fu_132_reg[20]_i_1_n_5 ,\result_fu_132_reg[20]_i_1_n_6 ,\result_fu_132_reg[20]_i_1_n_7 }),
        .S({1'b0,\result_fu_132[20]_i_2_n_0 ,\result_fu_132[20]_i_3_n_0 ,\result_fu_132[20]_i_4_n_0 }));
  FDRE \result_fu_132_reg[21] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[20]_i_1_n_6 ),
        .Q(result_fu_132_reg[21]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[22] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[20]_i_1_n_5 ),
        .Q(result_fu_132_reg[22]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[0]_i_2_n_5 ),
        .Q(result_fu_132_reg[2]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[0]_i_2_n_4 ),
        .Q(result_fu_132_reg[3]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[4]_i_1_n_7 ),
        .Q(result_fu_132_reg[4]),
        .R(ap_NS_fsm1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \result_fu_132_reg[4]_i_1 
       (.CI(\result_fu_132_reg[0]_i_2_n_0 ),
        .CO({\result_fu_132_reg[4]_i_1_n_0 ,\result_fu_132_reg[4]_i_1_n_1 ,\result_fu_132_reg[4]_i_1_n_2 ,\result_fu_132_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln38_6_reg_847[7:4]),
        .O({\result_fu_132_reg[4]_i_1_n_4 ,\result_fu_132_reg[4]_i_1_n_5 ,\result_fu_132_reg[4]_i_1_n_6 ,\result_fu_132_reg[4]_i_1_n_7 }),
        .S({\result_fu_132[4]_i_2_n_0 ,\result_fu_132[4]_i_3_n_0 ,\result_fu_132[4]_i_4_n_0 ,\result_fu_132[4]_i_5_n_0 }));
  FDRE \result_fu_132_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[4]_i_1_n_6 ),
        .Q(result_fu_132_reg[5]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[4]_i_1_n_5 ),
        .Q(result_fu_132_reg[6]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[4]_i_1_n_4 ),
        .Q(result_fu_132_reg[7]),
        .R(ap_NS_fsm1));
  FDRE \result_fu_132_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[8]_i_1_n_7 ),
        .Q(result_fu_132_reg[8]),
        .R(ap_NS_fsm1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \result_fu_132_reg[8]_i_1 
       (.CI(\result_fu_132_reg[4]_i_1_n_0 ),
        .CO({\result_fu_132_reg[8]_i_1_n_0 ,\result_fu_132_reg[8]_i_1_n_1 ,\result_fu_132_reg[8]_i_1_n_2 ,\result_fu_132_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln38_6_reg_847[11:8]),
        .O({\result_fu_132_reg[8]_i_1_n_4 ,\result_fu_132_reg[8]_i_1_n_5 ,\result_fu_132_reg[8]_i_1_n_6 ,\result_fu_132_reg[8]_i_1_n_7 }),
        .S({\result_fu_132[8]_i_2_n_0 ,\result_fu_132[8]_i_3_n_0 ,\result_fu_132[8]_i_4_n_0 ,\result_fu_132[8]_i_5_n_0 }));
  FDRE \result_fu_132_reg[9] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter5),
        .D(\result_fu_132_reg[8]_i_1_n_6 ),
        .Q(result_fu_132_reg[9]),
        .R(ap_NS_fsm1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \zext_ln38_reg_691[0]_i_1 
       (.I0(A_1_address0[0]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_condition_pp0_exit_iter0_state2),
        .I3(\zext_ln38_reg_691_reg_n_0_[0] ),
        .O(\zext_ln38_reg_691[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \zext_ln38_reg_691[1]_i_1 
       (.I0(A_1_address0[1]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_condition_pp0_exit_iter0_state2),
        .I3(\zext_ln38_reg_691_reg_n_0_[1] ),
        .O(\zext_ln38_reg_691[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln38_reg_691[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_condition_pp0_exit_iter0_state2),
        .O(\zext_ln38_reg_691[2]_i_1_n_0 ));
  FDRE \zext_ln38_reg_691_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln38_reg_691[0]_i_1_n_0 ),
        .Q(\zext_ln38_reg_691_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \zext_ln38_reg_691_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln38_reg_691[1]_i_1_n_0 ),
        .Q(\zext_ln38_reg_691_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \zext_ln38_reg_691_reg[2] 
       (.C(ap_clk),
        .CE(\zext_ln38_reg_691[2]_i_1_n_0 ),
        .D(A_1_address0[2]),
        .Q(\zext_ln38_reg_691_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi
   (D,
    ap_enable_reg_pp0_iter0_reg,
    ap_NS_fsm1,
    ap_rst_n_inv,
    b_reg0,
    sub_ln38_fu_498_p2,
    m_reg_reg_i_2__0,
    sub_ln38_2_fu_512_p2,
    m_reg_reg_i_2__1,
    sub_ln38_4_fu_526_p2,
    m_reg_reg_i_2__2,
    sub_ln38_6_fu_540_p2,
    s_axi_control_RDATA,
    s_axi_control_RVALID,
    s_axi_control_ARREADY,
    s_axi_control_WREADY,
    s_axi_control_AWREADY,
    interrupt,
    s_axi_control_BVALID,
    Q,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    ap_enable_reg_pp0_iter0,
    ap_rst_n,
    ap_condition_pp0_exit_iter0_state2,
    ap_enable_reg_pp0_iter1,
    ap_clk,
    mem_reg,
    s_axi_control_WDATA,
    A_1_address0,
    s_axi_control_AWADDR,
    C,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    \int_B_0_shift0_reg[1]_0 ,
    \int_B_0_shift0_reg[0]_0 );
  output [1:0]D;
  output ap_enable_reg_pp0_iter0_reg;
  output ap_NS_fsm1;
  output ap_rst_n_inv;
  output [8:0]b_reg0;
  output [8:0]sub_ln38_fu_498_p2;
  output [8:0]m_reg_reg_i_2__0;
  output [8:0]sub_ln38_2_fu_512_p2;
  output [8:0]m_reg_reg_i_2__1;
  output [8:0]sub_ln38_4_fu_526_p2;
  output [8:0]m_reg_reg_i_2__2;
  output [8:0]sub_ln38_6_fu_540_p2;
  output [31:0]s_axi_control_RDATA;
  output s_axi_control_RVALID;
  output s_axi_control_ARREADY;
  output s_axi_control_WREADY;
  output s_axi_control_AWREADY;
  output interrupt;
  output s_axi_control_BVALID;
  input [3:0]Q;
  input \ap_CS_fsm_reg[1] ;
  input \ap_CS_fsm_reg[1]_0 ;
  input ap_enable_reg_pp0_iter0;
  input ap_rst_n;
  input ap_condition_pp0_exit_iter0_state2;
  input ap_enable_reg_pp0_iter1;
  input ap_clk;
  input [0:0]mem_reg;
  input [31:0]s_axi_control_WDATA;
  input [2:0]A_1_address0;
  input [7:0]s_axi_control_AWADDR;
  input [15:0]C;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input [7:0]s_axi_control_ARADDR;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input \int_B_0_shift0_reg[1]_0 ;
  input \int_B_0_shift0_reg[0]_0 ;

  wire A_0_ce0;
  wire [2:0]A_1_address0;
  wire A_1_ce0;
  wire [1:0]B;
  wire [7:0]B_0_q0;
  wire [7:0]B_1_q0;
  wire [7:0]B_2_q0;
  wire [7:0]B_3_q0;
  wire [7:0]B_4_q0;
  wire [7:0]B_5_q0;
  wire [7:0]B_6_q0;
  wire [7:0]B_7_q0;
  wire [15:0]C;
  wire [1:0]D;
  wire [3:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_condition_pp0_exit_iter0_state2;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire [8:0]b_reg0;
  wire int_A_0_address1;
  wire int_A_0_n_16;
  wire int_A_0_n_17;
  wire int_A_0_n_18;
  wire int_A_0_n_19;
  wire int_A_0_n_20;
  wire int_A_0_n_21;
  wire int_A_0_n_22;
  wire int_A_0_n_23;
  wire int_A_0_n_24;
  wire int_A_0_n_25;
  wire int_A_0_n_26;
  wire int_A_0_n_27;
  wire int_A_0_n_28;
  wire int_A_0_n_29;
  wire int_A_0_n_30;
  wire int_A_0_n_31;
  wire [31:16]int_A_0_q1;
  wire int_A_0_read;
  wire int_A_0_read0;
  wire int_A_0_write0;
  wire int_A_0_write_i_1_n_0;
  wire int_A_0_write_reg_n_0;
  wire [31:0]int_A_1_q1;
  wire int_A_1_read;
  wire int_A_1_read0;
  wire int_A_1_write0;
  wire int_A_1_write_i_1_n_0;
  wire int_A_1_write_reg_n_0;
  wire [31:0]int_A_2_q1;
  wire int_A_2_read;
  wire int_A_2_read0;
  wire int_A_2_write_i_1_n_0;
  wire int_A_2_write_i_2_n_0;
  wire int_A_2_write_i_3_n_0;
  wire int_A_2_write_reg_n_0;
  wire int_A_3_n_0;
  wire int_A_3_n_1;
  wire int_A_3_n_10;
  wire int_A_3_n_11;
  wire int_A_3_n_12;
  wire int_A_3_n_13;
  wire int_A_3_n_14;
  wire int_A_3_n_15;
  wire int_A_3_n_16;
  wire int_A_3_n_17;
  wire int_A_3_n_18;
  wire int_A_3_n_19;
  wire int_A_3_n_2;
  wire int_A_3_n_20;
  wire int_A_3_n_21;
  wire int_A_3_n_22;
  wire int_A_3_n_23;
  wire int_A_3_n_24;
  wire int_A_3_n_25;
  wire int_A_3_n_26;
  wire int_A_3_n_27;
  wire int_A_3_n_28;
  wire int_A_3_n_29;
  wire int_A_3_n_3;
  wire int_A_3_n_30;
  wire int_A_3_n_31;
  wire int_A_3_n_4;
  wire int_A_3_n_5;
  wire int_A_3_n_6;
  wire int_A_3_n_7;
  wire int_A_3_n_8;
  wire int_A_3_n_9;
  wire int_A_3_read;
  wire int_A_3_read0;
  wire int_A_3_write0;
  wire int_A_3_write_i_1_n_0;
  wire int_A_3_write_reg_n_0;
  wire [31:0]int_A_4_q1;
  wire int_A_4_read;
  wire int_A_4_read0;
  wire int_A_4_write_i_1_n_0;
  wire int_A_4_write_i_2_n_0;
  wire int_A_4_write_reg_n_0;
  wire [31:0]int_A_5_q1;
  wire int_A_5_read;
  wire int_A_5_read0;
  wire int_A_5_write_i_1_n_0;
  wire int_A_5_write_reg_n_0;
  wire int_A_6_n_0;
  wire int_A_6_n_1;
  wire int_A_6_n_10;
  wire int_A_6_n_11;
  wire int_A_6_n_12;
  wire int_A_6_n_13;
  wire int_A_6_n_14;
  wire int_A_6_n_15;
  wire int_A_6_n_16;
  wire int_A_6_n_17;
  wire int_A_6_n_18;
  wire int_A_6_n_19;
  wire int_A_6_n_2;
  wire int_A_6_n_20;
  wire int_A_6_n_21;
  wire int_A_6_n_22;
  wire int_A_6_n_23;
  wire int_A_6_n_24;
  wire int_A_6_n_25;
  wire int_A_6_n_26;
  wire int_A_6_n_27;
  wire int_A_6_n_28;
  wire int_A_6_n_29;
  wire int_A_6_n_3;
  wire int_A_6_n_30;
  wire int_A_6_n_31;
  wire int_A_6_n_4;
  wire int_A_6_n_5;
  wire int_A_6_n_6;
  wire int_A_6_n_7;
  wire int_A_6_n_8;
  wire int_A_6_n_9;
  wire int_A_6_read;
  wire int_A_6_read0;
  wire int_A_6_write0;
  wire int_A_6_write_i_1_n_0;
  wire int_A_6_write_reg_n_0;
  wire int_A_7_n_0;
  wire int_A_7_n_1;
  wire int_A_7_n_10;
  wire int_A_7_n_11;
  wire int_A_7_n_12;
  wire int_A_7_n_13;
  wire int_A_7_n_14;
  wire int_A_7_n_15;
  wire int_A_7_n_16;
  wire int_A_7_n_17;
  wire int_A_7_n_18;
  wire int_A_7_n_19;
  wire int_A_7_n_2;
  wire int_A_7_n_20;
  wire int_A_7_n_21;
  wire int_A_7_n_22;
  wire int_A_7_n_23;
  wire int_A_7_n_24;
  wire int_A_7_n_25;
  wire int_A_7_n_26;
  wire int_A_7_n_27;
  wire int_A_7_n_28;
  wire int_A_7_n_29;
  wire int_A_7_n_3;
  wire int_A_7_n_30;
  wire int_A_7_n_31;
  wire int_A_7_n_4;
  wire int_A_7_n_5;
  wire int_A_7_n_6;
  wire int_A_7_n_7;
  wire int_A_7_n_8;
  wire int_A_7_n_9;
  wire int_A_7_read;
  wire int_A_7_read0;
  wire int_A_7_write0;
  wire int_A_7_write_i_1_n_0;
  wire int_A_7_write_reg_n_0;
  wire [31:0]int_B_0_q1;
  wire int_B_0_read;
  wire int_B_0_read0;
  wire \int_B_0_shift0[0]_i_1_n_0 ;
  wire \int_B_0_shift0[1]_i_1_n_0 ;
  wire \int_B_0_shift0_reg[0]_0 ;
  wire \int_B_0_shift0_reg[1]_0 ;
  wire int_B_0_write0;
  wire int_B_0_write_i_1_n_0;
  wire int_B_0_write_reg_n_0;
  wire [31:0]int_B_1_q1;
  wire int_B_1_read;
  wire int_B_1_read0;
  wire \int_B_1_shift0[0]_i_1_n_0 ;
  wire \int_B_1_shift0[1]_i_1_n_0 ;
  wire \int_B_1_shift0_reg_n_0_[0] ;
  wire \int_B_1_shift0_reg_n_0_[1] ;
  wire int_B_1_write_i_1_n_0;
  wire int_B_1_write_i_2_n_0;
  wire int_B_1_write_i_3_n_0;
  wire int_B_1_write_reg_n_0;
  wire [31:0]int_B_2_q1;
  wire int_B_2_read;
  wire int_B_2_read0;
  wire int_B_2_write_i_1_n_0;
  wire int_B_2_write_reg_n_0;
  wire [31:0]int_B_3_q1;
  wire int_B_3_read;
  wire int_B_3_read0;
  wire int_B_3_write0;
  wire int_B_3_write_i_1_n_0;
  wire int_B_3_write_reg_n_0;
  wire int_B_4_n_0;
  wire int_B_4_n_1;
  wire int_B_4_n_10;
  wire int_B_4_n_11;
  wire int_B_4_n_12;
  wire int_B_4_n_13;
  wire int_B_4_n_14;
  wire int_B_4_n_15;
  wire int_B_4_n_16;
  wire int_B_4_n_17;
  wire int_B_4_n_18;
  wire int_B_4_n_19;
  wire int_B_4_n_2;
  wire int_B_4_n_20;
  wire int_B_4_n_21;
  wire int_B_4_n_22;
  wire int_B_4_n_23;
  wire int_B_4_n_24;
  wire int_B_4_n_25;
  wire int_B_4_n_26;
  wire int_B_4_n_27;
  wire int_B_4_n_28;
  wire int_B_4_n_29;
  wire int_B_4_n_3;
  wire int_B_4_n_30;
  wire int_B_4_n_31;
  wire int_B_4_n_4;
  wire int_B_4_n_5;
  wire int_B_4_n_6;
  wire int_B_4_n_7;
  wire int_B_4_n_8;
  wire int_B_4_n_9;
  wire int_B_4_read;
  wire int_B_4_read0;
  wire int_B_4_write_i_1_n_0;
  wire int_B_4_write_i_2_n_0;
  wire int_B_4_write_reg_n_0;
  wire int_B_5_n_0;
  wire int_B_5_n_1;
  wire int_B_5_n_10;
  wire int_B_5_n_11;
  wire int_B_5_n_12;
  wire int_B_5_n_13;
  wire int_B_5_n_14;
  wire int_B_5_n_15;
  wire int_B_5_n_16;
  wire int_B_5_n_17;
  wire int_B_5_n_18;
  wire int_B_5_n_19;
  wire int_B_5_n_2;
  wire int_B_5_n_20;
  wire int_B_5_n_21;
  wire int_B_5_n_22;
  wire int_B_5_n_23;
  wire int_B_5_n_24;
  wire int_B_5_n_25;
  wire int_B_5_n_26;
  wire int_B_5_n_27;
  wire int_B_5_n_28;
  wire int_B_5_n_29;
  wire int_B_5_n_3;
  wire int_B_5_n_30;
  wire int_B_5_n_31;
  wire int_B_5_n_4;
  wire int_B_5_n_5;
  wire int_B_5_n_6;
  wire int_B_5_n_7;
  wire int_B_5_n_8;
  wire int_B_5_n_9;
  wire int_B_5_read;
  wire int_B_5_read0;
  wire int_B_5_write0;
  wire int_B_5_write_i_1_n_0;
  wire int_B_5_write_reg_n_0;
  wire [31:0]int_B_6_q1;
  wire int_B_6_read;
  wire int_B_6_read0;
  wire int_B_6_write_i_1_n_0;
  wire int_B_6_write_i_2_n_0;
  wire int_B_6_write_reg_n_0;
  wire [31:0]int_B_7_q1;
  wire int_B_7_read;
  wire int_B_7_read0;
  wire int_B_7_write0;
  wire int_B_7_write_i_1_n_0;
  wire int_B_7_write_reg_n_0;
  wire int_C_ap_vld;
  wire int_C_ap_vld_i_1_n_0;
  wire int_C_ap_vld_i_2_n_0;
  wire int_C_ap_vld_i_3_n_0;
  wire \int_C_reg_n_0_[0] ;
  wire \int_C_reg_n_0_[10] ;
  wire \int_C_reg_n_0_[11] ;
  wire \int_C_reg_n_0_[12] ;
  wire \int_C_reg_n_0_[13] ;
  wire \int_C_reg_n_0_[14] ;
  wire \int_C_reg_n_0_[15] ;
  wire \int_C_reg_n_0_[1] ;
  wire \int_C_reg_n_0_[2] ;
  wire \int_C_reg_n_0_[3] ;
  wire \int_C_reg_n_0_[4] ;
  wire \int_C_reg_n_0_[5] ;
  wire \int_C_reg_n_0_[6] ;
  wire \int_C_reg_n_0_[7] ;
  wire \int_C_reg_n_0_[8] ;
  wire \int_C_reg_n_0_[9] ;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier[1]_i_3_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done0;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_3_n_0;
  wire int_task_ap_done_i_4_n_0;
  wire interrupt;
  wire [8:0]m_reg_reg_i_2__0;
  wire [8:0]m_reg_reg_i_2__1;
  wire [8:0]m_reg_reg_i_2__2;
  wire [0:0]mem_reg;
  wire [7:2]p_2_in;
  wire p_95_in;
  wire \rdata[0]_i_10_n_0 ;
  wire \rdata[0]_i_11_n_0 ;
  wire \rdata[0]_i_12_n_0 ;
  wire \rdata[0]_i_13_n_0 ;
  wire \rdata[0]_i_14_n_0 ;
  wire \rdata[15]_i_10_n_0 ;
  wire \rdata[15]_i_11_n_0 ;
  wire \rdata[1]_i_10_n_0 ;
  wire \rdata[2]_i_10_n_0 ;
  wire \rdata[31]_i_11_n_0 ;
  wire \rdata[31]_i_13_n_0 ;
  wire \rdata[31]_i_15_n_0 ;
  wire \rdata[31]_i_16_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_8_n_0 ;
  wire \rdata[3]_i_10_n_0 ;
  wire \rdata[7]_i_11_n_0 ;
  wire \rdata[7]_i_12_n_0 ;
  wire \rdata[7]_i_13_n_0 ;
  wire \rdata[7]_i_14_n_0 ;
  wire \rdata[7]_i_9_n_0 ;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_0 ;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire s_axi_control_RVALID_INST_0_i_1_n_0;
  wire s_axi_control_RVALID_INST_0_i_2_n_0;
  wire s_axi_control_RVALID_INST_0_i_3_n_0;
  wire s_axi_control_RVALID_INST_0_i_4_n_0;
  wire s_axi_control_RVALID_INST_0_i_5_n_0;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [8:0]sub_ln38_2_fu_512_p2;
  wire [8:0]sub_ln38_4_fu_526_p2;
  wire [8:0]sub_ln38_6_fu_540_p2;
  wire [8:0]sub_ln38_fu_498_p2;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h88888888888B8888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(\ap_CS_fsm_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000EA00EA00EA00)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(ap_rst_n),
        .I4(ap_condition_pp0_exit_iter0_state2),
        .I5(Q[1]),
        .O(ap_enable_reg_pp0_iter0_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_2_in[7]),
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
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram int_A_0
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_0_q0(B_0_q0),
        .DOADO(int_A_0_q1),
        .Q({\int_C_reg_n_0_[15] ,\int_C_reg_n_0_[14] ,\int_C_reg_n_0_[13] ,\int_C_reg_n_0_[12] ,\int_C_reg_n_0_[11] ,\int_C_reg_n_0_[10] ,\int_C_reg_n_0_[9] ,\int_C_reg_n_0_[8] ,\int_C_reg_n_0_[7] ,\int_C_reg_n_0_[6] ,\int_C_reg_n_0_[5] ,\int_C_reg_n_0_[4] ,\int_C_reg_n_0_[3] ,\int_C_reg_n_0_[2] ,\int_C_reg_n_0_[1] }),
        .ap_clk(ap_clk),
        .ar_hs(ar_hs),
        .int_A_0_read(int_A_0_read),
        .int_A_0_read_reg(int_A_0_n_16),
        .\int_C_reg[10] (int_A_0_n_22),
        .\int_C_reg[11] (int_A_0_n_23),
        .\int_C_reg[12] (int_A_0_n_24),
        .\int_C_reg[13] (int_A_0_n_25),
        .\int_C_reg[14] (int_A_0_n_26),
        .\int_C_reg[15] (int_A_0_n_27),
        .\int_C_reg[4] (int_A_0_n_17),
        .\int_C_reg[5] (int_A_0_n_18),
        .\int_C_reg[6] (int_A_0_n_19),
        .\int_C_reg[8] (int_A_0_n_20),
        .\int_C_reg[9] (int_A_0_n_21),
        .mem_reg_0(int_A_0_n_28),
        .mem_reg_1(int_A_0_n_29),
        .mem_reg_2(int_A_0_n_30),
        .mem_reg_3(int_A_0_n_31),
        .mem_reg_4(mem_reg),
        .mem_reg_5(int_A_0_write_reg_n_0),
        .p_95_in(p_95_in),
        .\rdata[15]_i_3_0 (\rdata[15]_i_10_n_0 ),
        .\rdata[1]_i_3 (\rdata[1]_i_10_n_0 ),
        .\rdata[2]_i_3 (\rdata[2]_i_10_n_0 ),
        .\rdata[3]_i_3 (\rdata[3]_i_10_n_0 ),
        .\rdata[7]_i_3 (\rdata[7]_i_11_n_0 ),
        .\rdata[7]_i_3_0 (\rdata[7]_i_13_n_0 ),
        .\rdata[7]_i_3_1 (\rdata[7]_i_14_n_0 ),
        .\rdata[7]_i_3_2 (\rdata[7]_i_12_n_0 ),
        .\rdata_reg[0] (int_A_3_n_0),
        .\rdata_reg[0]_0 (\rdata[31]_i_13_n_0 ),
        .\rdata_reg[0]_1 (int_A_6_n_0),
        .\rdata_reg[0]_2 (\rdata[31]_i_11_n_0 ),
        .\rdata_reg[0]_3 (\rdata[0]_i_10_n_0 ),
        .\rdata_reg[10] (int_A_6_n_10),
        .\rdata_reg[10]_0 (int_A_3_n_10),
        .\rdata_reg[11] (int_A_6_n_11),
        .\rdata_reg[11]_0 (int_A_3_n_11),
        .\rdata_reg[12] (int_A_6_n_12),
        .\rdata_reg[12]_0 (int_A_3_n_12),
        .\rdata_reg[13] (int_A_6_n_13),
        .\rdata_reg[13]_0 (int_A_3_n_13),
        .\rdata_reg[14] (int_A_6_n_14),
        .\rdata_reg[14]_0 (int_A_3_n_14),
        .\rdata_reg[15] (int_A_6_n_15),
        .\rdata_reg[15]_0 (int_A_3_n_15),
        .\rdata_reg[4] (int_A_6_n_4),
        .\rdata_reg[4]_0 (int_A_3_n_4),
        .\rdata_reg[5] (int_A_6_n_5),
        .\rdata_reg[5]_0 (int_A_3_n_5),
        .\rdata_reg[6] (int_A_6_n_6),
        .\rdata_reg[6]_0 (int_A_3_n_6),
        .\rdata_reg[8] (int_A_6_n_8),
        .\rdata_reg[8]_0 (int_A_3_n_8),
        .\rdata_reg[9] (int_A_6_n_9),
        .\rdata_reg[9]_0 (int_A_3_n_9),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sub_ln38_fu_498_p2(sub_ln38_fu_498_p2),
        .wstate(wstate));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_A_0_read_i_1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(ar_hs),
        .O(int_A_0_read0));
  FDRE int_A_0_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_0_read0),
        .Q(int_A_0_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_A_0_write_i_1
       (.I0(int_A_0_write0),
        .I1(p_95_in),
        .I2(int_A_0_write_reg_n_0),
        .O(int_A_0_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_A_0_write_i_2
       (.I0(s_axi_control_AWADDR[4]),
        .I1(s_axi_control_AWADDR[5]),
        .I2(s_axi_control_AWADDR[3]),
        .I3(s_axi_control_AWADDR[6]),
        .I4(s_axi_control_AWADDR[7]),
        .I5(aw_hs),
        .O(int_A_0_write0));
  FDRE int_A_0_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_0_write_i_1_n_0),
        .Q(int_A_0_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_6 int_A_1
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_1_q0(B_1_q0),
        .DOADO(int_A_1_q1),
        .ap_clk(ap_clk),
        .b_reg0(b_reg0),
        .m_reg_reg(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_0(\int_B_1_shift0_reg_n_0_[1] ),
        .mem_reg_0(int_A_1_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_A_1_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[3]),
        .O(int_A_1_read0));
  FDRE int_A_1_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_1_read0),
        .Q(int_A_1_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_A_1_write_i_1
       (.I0(int_A_1_write0),
        .I1(p_95_in),
        .I2(int_A_1_write_reg_n_0),
        .O(int_A_1_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_A_1_write_i_2
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[5]),
        .I2(s_axi_control_AWADDR[6]),
        .I3(s_axi_control_AWADDR[7]),
        .I4(s_axi_control_AWADDR[3]),
        .I5(s_axi_control_AWADDR[4]),
        .O(int_A_1_write0));
  FDRE int_A_1_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_1_write_i_1_n_0),
        .Q(int_A_1_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_7 int_A_2
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_2_q0(B_2_q0),
        .DOADO(int_A_2_q1),
        .ap_clk(ap_clk),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_A_2_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sub_ln38_2_fu_512_p2(sub_ln38_2_fu_512_p2));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_A_2_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_A_2_read0));
  FDRE int_A_2_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_2_read0),
        .Q(int_A_2_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    int_A_2_write_i_1
       (.I0(int_A_2_write_i_2_n_0),
        .I1(s_axi_control_AWADDR[5]),
        .I2(aw_hs),
        .I3(int_A_2_write_i_3_n_0),
        .I4(p_95_in),
        .I5(int_A_2_write_reg_n_0),
        .O(int_A_2_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_A_2_write_i_2
       (.I0(s_axi_control_AWADDR[4]),
        .I1(s_axi_control_AWADDR[3]),
        .O(int_A_2_write_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_A_2_write_i_3
       (.I0(s_axi_control_AWADDR[6]),
        .I1(s_axi_control_AWADDR[7]),
        .O(int_A_2_write_i_3_n_0));
  FDRE int_A_2_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_2_write_i_1_n_0),
        .Q(int_A_2_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_8 int_A_3
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_3_q0(B_3_q0),
        .DOADO(int_A_2_q1),
        .ap_clk(ap_clk),
        .int_A_1_read(int_A_1_read),
        .int_A_2_read(int_A_2_read),
        .int_A_2_read_reg(int_A_3_n_0),
        .int_A_2_read_reg_0(int_A_3_n_1),
        .int_A_2_read_reg_1(int_A_3_n_2),
        .int_A_2_read_reg_10(int_A_3_n_11),
        .int_A_2_read_reg_11(int_A_3_n_12),
        .int_A_2_read_reg_12(int_A_3_n_13),
        .int_A_2_read_reg_13(int_A_3_n_14),
        .int_A_2_read_reg_14(int_A_3_n_15),
        .int_A_2_read_reg_15(int_A_3_n_16),
        .int_A_2_read_reg_16(int_A_3_n_17),
        .int_A_2_read_reg_17(int_A_3_n_18),
        .int_A_2_read_reg_18(int_A_3_n_19),
        .int_A_2_read_reg_19(int_A_3_n_20),
        .int_A_2_read_reg_2(int_A_3_n_3),
        .int_A_2_read_reg_20(int_A_3_n_21),
        .int_A_2_read_reg_21(int_A_3_n_22),
        .int_A_2_read_reg_22(int_A_3_n_23),
        .int_A_2_read_reg_23(int_A_3_n_24),
        .int_A_2_read_reg_24(int_A_3_n_25),
        .int_A_2_read_reg_25(int_A_3_n_26),
        .int_A_2_read_reg_26(int_A_3_n_27),
        .int_A_2_read_reg_27(int_A_3_n_28),
        .int_A_2_read_reg_28(int_A_3_n_29),
        .int_A_2_read_reg_29(int_A_3_n_30),
        .int_A_2_read_reg_3(int_A_3_n_4),
        .int_A_2_read_reg_30(int_A_3_n_31),
        .int_A_2_read_reg_4(int_A_3_n_5),
        .int_A_2_read_reg_5(int_A_3_n_6),
        .int_A_2_read_reg_6(int_A_3_n_7),
        .int_A_2_read_reg_7(int_A_3_n_8),
        .int_A_2_read_reg_8(int_A_3_n_9),
        .int_A_2_read_reg_9(int_A_3_n_10),
        .int_A_3_read(int_A_3_read),
        .m_reg_reg(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_0(\int_B_1_shift0_reg_n_0_[1] ),
        .m_reg_reg_i_2__0_0(m_reg_reg_i_2__0),
        .mem_reg_0(int_A_3_write_reg_n_0),
        .p_95_in(p_95_in),
        .\rdata[31]_i_6 (int_A_1_q1),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    int_A_3_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_A_3_read0));
  FDRE int_A_3_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_3_read0),
        .Q(int_A_3_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_A_3_write_i_1
       (.I0(int_A_3_write0),
        .I1(p_95_in),
        .I2(int_A_3_write_reg_n_0),
        .O(int_A_3_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    int_A_3_write_i_2
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWADDR[7]),
        .I3(s_axi_control_AWADDR[3]),
        .I4(s_axi_control_AWADDR[4]),
        .I5(s_axi_control_AWADDR[5]),
        .O(int_A_3_write0));
  FDRE int_A_3_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_3_write_i_1_n_0),
        .Q(int_A_3_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_9 int_A_4
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_4_q0(B_4_q0),
        .DOADO(int_A_4_q1),
        .ap_clk(ap_clk),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_A_4_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sub_ln38_4_fu_526_p2(sub_ln38_4_fu_526_p2));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    int_A_4_read_i_1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(ar_hs),
        .O(int_A_4_read0));
  FDRE int_A_4_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_4_read0),
        .Q(int_A_4_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0002FFFF00020002)) 
    int_A_4_write_i_1
       (.I0(aw_hs),
        .I1(int_A_2_write_i_3_n_0),
        .I2(s_axi_control_AWADDR[3]),
        .I3(int_A_4_write_i_2_n_0),
        .I4(p_95_in),
        .I5(int_A_4_write_reg_n_0),
        .O(int_A_4_write_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    int_A_4_write_i_2
       (.I0(s_axi_control_AWADDR[5]),
        .I1(s_axi_control_AWADDR[4]),
        .O(int_A_4_write_i_2_n_0));
  FDRE int_A_4_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_4_write_i_1_n_0),
        .Q(int_A_4_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_10 int_A_5
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_5_q0(B_5_q0),
        .DOADO(int_A_5_q1),
        .ap_clk(ap_clk),
        .m_reg_reg(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_0(\int_B_1_shift0_reg_n_0_[1] ),
        .m_reg_reg_i_2__1_0(m_reg_reg_i_2__1),
        .mem_reg_0(int_A_5_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    int_A_5_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(s_axi_control_ARADDR[7]),
        .O(int_A_5_read0));
  FDRE int_A_5_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_5_read0),
        .Q(int_A_5_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0400FFFF04000400)) 
    int_A_5_write_i_1
       (.I0(int_A_2_write_i_3_n_0),
        .I1(s_axi_control_AWADDR[3]),
        .I2(int_A_4_write_i_2_n_0),
        .I3(aw_hs),
        .I4(p_95_in),
        .I5(int_A_5_write_reg_n_0),
        .O(int_A_5_write_i_1_n_0));
  FDRE int_A_5_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_5_write_i_1_n_0),
        .Q(int_A_5_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_11 int_A_6
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_6_q0(B_6_q0),
        .DOADO(int_A_5_q1),
        .ap_clk(ap_clk),
        .int_A_4_read(int_A_4_read),
        .int_A_5_read(int_A_5_read),
        .int_A_5_read_reg(int_A_6_n_0),
        .int_A_5_read_reg_0(int_A_6_n_4),
        .int_A_5_read_reg_1(int_A_6_n_5),
        .int_A_5_read_reg_10(int_A_6_n_15),
        .int_A_5_read_reg_2(int_A_6_n_6),
        .int_A_5_read_reg_3(int_A_6_n_8),
        .int_A_5_read_reg_4(int_A_6_n_9),
        .int_A_5_read_reg_5(int_A_6_n_10),
        .int_A_5_read_reg_6(int_A_6_n_11),
        .int_A_5_read_reg_7(int_A_6_n_12),
        .int_A_5_read_reg_8(int_A_6_n_13),
        .int_A_5_read_reg_9(int_A_6_n_14),
        .int_A_6_read(int_A_6_read),
        .int_A_6_read_reg(int_A_6_n_1),
        .int_A_6_read_reg_0(int_A_6_n_2),
        .int_A_6_read_reg_1(int_A_6_n_3),
        .int_A_6_read_reg_2(int_A_6_n_7),
        .mem_reg_0(int_A_6_n_16),
        .mem_reg_1(int_A_6_n_17),
        .mem_reg_10(int_A_6_n_26),
        .mem_reg_11(int_A_6_n_27),
        .mem_reg_12(int_A_6_n_28),
        .mem_reg_13(int_A_6_n_29),
        .mem_reg_14(int_A_6_n_30),
        .mem_reg_15(int_A_6_n_31),
        .mem_reg_16(mem_reg),
        .mem_reg_17(int_A_6_write_reg_n_0),
        .mem_reg_2(int_A_6_n_18),
        .mem_reg_3(int_A_6_n_19),
        .mem_reg_4(int_A_6_n_20),
        .mem_reg_5(int_A_6_n_21),
        .mem_reg_6(int_A_6_n_22),
        .mem_reg_7(int_A_6_n_23),
        .mem_reg_8(int_A_6_n_24),
        .mem_reg_9(int_A_6_n_25),
        .p_95_in(p_95_in),
        .\rdata[31]_i_6_0 (int_A_4_q1),
        .\rdata_reg[16] (int_A_3_n_16),
        .\rdata_reg[16]_0 (\rdata[31]_i_15_n_0 ),
        .\rdata_reg[17] (int_A_3_n_17),
        .\rdata_reg[18] (int_A_3_n_18),
        .\rdata_reg[19] (int_A_3_n_19),
        .\rdata_reg[1] (\rdata[31]_i_11_n_0 ),
        .\rdata_reg[1]_0 (\rdata[31]_i_13_n_0 ),
        .\rdata_reg[1]_1 (int_A_3_n_1),
        .\rdata_reg[1]_2 (\rdata[7]_i_9_n_0 ),
        .\rdata_reg[1]_3 (int_A_0_n_28),
        .\rdata_reg[20] (int_A_3_n_20),
        .\rdata_reg[21] (int_A_3_n_21),
        .\rdata_reg[22] (int_A_3_n_22),
        .\rdata_reg[23] (int_A_3_n_23),
        .\rdata_reg[24] (int_A_3_n_24),
        .\rdata_reg[25] (int_A_3_n_25),
        .\rdata_reg[26] (int_A_3_n_26),
        .\rdata_reg[27] (int_A_3_n_27),
        .\rdata_reg[28] (int_A_3_n_28),
        .\rdata_reg[29] (int_A_3_n_29),
        .\rdata_reg[2] (int_A_3_n_2),
        .\rdata_reg[2]_0 (int_A_0_n_29),
        .\rdata_reg[30] (int_A_3_n_30),
        .\rdata_reg[31] (int_A_0_q1),
        .\rdata_reg[31]_0 (int_A_3_n_31),
        .\rdata_reg[3] (int_A_3_n_3),
        .\rdata_reg[3]_0 (int_A_0_n_30),
        .\rdata_reg[7] (int_A_3_n_7),
        .\rdata_reg[7]_0 (int_A_0_n_31),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sub_ln38_6_fu_540_p2(sub_ln38_6_fu_540_p2));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_A_6_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_A_6_read0));
  FDRE int_A_6_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_6_read0),
        .Q(int_A_6_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_A_6_write_i_1
       (.I0(int_A_6_write0),
        .I1(p_95_in),
        .I2(int_A_6_write_reg_n_0),
        .O(int_A_6_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_A_6_write_i_2
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWADDR[7]),
        .I3(s_axi_control_AWADDR[3]),
        .I4(s_axi_control_AWADDR[5]),
        .I5(s_axi_control_AWADDR[4]),
        .O(int_A_6_write0));
  FDRE int_A_6_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_6_write_i_1_n_0),
        .Q(int_A_6_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_12 int_A_7
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_7_q0(B_7_q0),
        .DOADO(int_B_0_q1),
        .ap_clk(ap_clk),
        .int_A_7_read(int_A_7_read),
        .int_B_0_read(int_B_0_read),
        .int_B_1_read(int_B_1_read),
        .m_reg_reg(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_0(\int_B_1_shift0_reg_n_0_[1] ),
        .m_reg_reg_i_2__2_0(m_reg_reg_i_2__2),
        .mem_reg_0(int_A_7_n_0),
        .mem_reg_1(int_A_7_n_1),
        .mem_reg_10(int_A_7_n_10),
        .mem_reg_11(int_A_7_n_11),
        .mem_reg_12(int_A_7_n_12),
        .mem_reg_13(int_A_7_n_13),
        .mem_reg_14(int_A_7_n_14),
        .mem_reg_15(int_A_7_n_15),
        .mem_reg_16(int_A_7_n_16),
        .mem_reg_17(int_A_7_n_17),
        .mem_reg_18(int_A_7_n_18),
        .mem_reg_19(int_A_7_n_19),
        .mem_reg_2(int_A_7_n_2),
        .mem_reg_20(int_A_7_n_20),
        .mem_reg_21(int_A_7_n_21),
        .mem_reg_22(int_A_7_n_22),
        .mem_reg_23(int_A_7_n_23),
        .mem_reg_24(int_A_7_n_24),
        .mem_reg_25(int_A_7_n_25),
        .mem_reg_26(int_A_7_n_26),
        .mem_reg_27(int_A_7_n_27),
        .mem_reg_28(int_A_7_n_28),
        .mem_reg_29(int_A_7_n_29),
        .mem_reg_3(int_A_7_n_3),
        .mem_reg_30(int_A_7_n_30),
        .mem_reg_31(int_A_7_n_31),
        .mem_reg_32(int_A_7_write_reg_n_0),
        .mem_reg_4(int_A_7_n_4),
        .mem_reg_5(int_A_7_n_5),
        .mem_reg_6(int_A_7_n_6),
        .mem_reg_7(int_A_7_n_7),
        .mem_reg_8(int_A_7_n_8),
        .mem_reg_9(int_A_7_n_9),
        .p_95_in(p_95_in),
        .\rdata[31]_i_5 (int_B_1_q1),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_A_7_read_i_1
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(ar_hs),
        .O(int_A_7_read0));
  FDRE int_A_7_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_7_read0),
        .Q(int_A_7_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_A_7_write_i_1
       (.I0(int_A_7_write0),
        .I1(p_95_in),
        .I2(int_A_7_write_reg_n_0),
        .O(int_A_7_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_A_7_write_i_2
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[7]),
        .I2(s_axi_control_AWADDR[5]),
        .I3(s_axi_control_AWADDR[4]),
        .I4(s_axi_control_AWADDR[3]),
        .I5(s_axi_control_AWADDR[6]),
        .O(int_A_7_write0));
  FDRE int_A_7_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_A_7_write_i_1_n_0),
        .Q(int_A_7_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_13 int_B_0
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_0_q0(B_0_q0),
        .DOADO(int_B_0_q1),
        .ap_clk(ap_clk),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_B_0_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    int_B_0_read_i_1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(ar_hs),
        .O(int_B_0_read0));
  FDRE int_B_0_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_0_read0),
        .Q(int_B_0_read),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hBF80)) 
    \int_B_0_shift0[0]_i_1 
       (.I0(\int_B_0_shift0_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(B[0]),
        .O(\int_B_0_shift0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \int_B_0_shift0[1]_i_1 
       (.I0(\int_B_0_shift0_reg[1]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(B[1]),
        .O(\int_B_0_shift0[1]_i_1_n_0 ));
  FDRE \int_B_0_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_B_0_shift0[0]_i_1_n_0 ),
        .Q(B[0]),
        .R(ap_rst_n_inv));
  FDRE \int_B_0_shift0_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_B_0_shift0[1]_i_1_n_0 ),
        .Q(B[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_B_0_write_i_1
       (.I0(int_B_0_write0),
        .I1(p_95_in),
        .I2(int_B_0_write_reg_n_0),
        .O(int_B_0_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    int_B_0_write_i_2
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWADDR[7]),
        .I3(s_axi_control_AWADDR[5]),
        .I4(s_axi_control_AWADDR[3]),
        .I5(s_axi_control_AWADDR[4]),
        .O(int_B_0_write0));
  FDRE int_B_0_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_0_write_i_1_n_0),
        .Q(int_B_0_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_14 int_B_1
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_1_q0(B_1_q0),
        .ap_clk(ap_clk),
        .m_reg_reg_i_8(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_i_8_0(\int_B_1_shift0_reg_n_0_[1] ),
        .mem_reg_0(int_B_1_q1),
        .mem_reg_1(int_B_1_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    int_B_1_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[6]),
        .O(int_B_1_read0));
  FDRE int_B_1_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_1_read0),
        .Q(int_B_1_read),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hBF80)) 
    \int_B_1_shift0[0]_i_1 
       (.I0(A_1_address0[0]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q[1]),
        .I3(\int_B_1_shift0_reg_n_0_[0] ),
        .O(\int_B_1_shift0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \int_B_1_shift0[1]_i_1 
       (.I0(A_1_address0[1]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(Q[1]),
        .I3(\int_B_1_shift0_reg_n_0_[1] ),
        .O(\int_B_1_shift0[1]_i_1_n_0 ));
  FDRE \int_B_1_shift0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_B_1_shift0[0]_i_1_n_0 ),
        .Q(\int_B_1_shift0_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE \int_B_1_shift0_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_B_1_shift0[1]_i_1_n_0 ),
        .Q(\int_B_1_shift0_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0400FFFF04000400)) 
    int_B_1_write_i_1
       (.I0(int_B_1_write_i_2_n_0),
        .I1(s_axi_control_AWADDR[6]),
        .I2(int_B_1_write_i_3_n_0),
        .I3(aw_hs),
        .I4(p_95_in),
        .I5(int_B_1_write_reg_n_0),
        .O(int_B_1_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    int_B_1_write_i_2
       (.I0(s_axi_control_AWADDR[7]),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWADDR[5]),
        .O(int_B_1_write_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    int_B_1_write_i_3
       (.I0(s_axi_control_AWADDR[4]),
        .I1(s_axi_control_AWADDR[3]),
        .O(int_B_1_write_i_3_n_0));
  FDRE int_B_1_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_1_write_i_1_n_0),
        .Q(int_B_1_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_15 int_B_2
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_2_q0(B_2_q0),
        .DOADO(int_B_2_q1),
        .ap_clk(ap_clk),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_B_2_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    int_B_2_read_i_1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(ar_hs),
        .O(int_B_2_read0));
  FDRE int_B_2_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_2_read0),
        .Q(int_B_2_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    int_B_2_write_i_1
       (.I0(s_axi_control_AWADDR[7]),
        .I1(int_A_2_write_i_2_n_0),
        .I2(int_B_1_write_i_2_n_0),
        .I3(aw_hs),
        .I4(p_95_in),
        .I5(int_B_2_write_reg_n_0),
        .O(int_B_2_write_i_1_n_0));
  FDRE int_B_2_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_2_write_i_1_n_0),
        .Q(int_B_2_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_16 int_B_3
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_3_q0(B_3_q0),
        .DOADO(int_B_3_q1),
        .ap_clk(ap_clk),
        .m_reg_reg_i_8__0(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_i_8__0_0(\int_B_1_shift0_reg_n_0_[1] ),
        .mem_reg_0(int_B_3_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    int_B_3_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_B_3_read0));
  FDRE int_B_3_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_3_read0),
        .Q(int_B_3_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_B_3_write_i_1
       (.I0(int_B_3_write0),
        .I1(p_95_in),
        .I2(int_B_3_write_reg_n_0),
        .O(int_B_3_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    int_B_3_write_i_2
       (.I0(s_axi_control_AWADDR[3]),
        .I1(aw_hs),
        .I2(s_axi_control_AWADDR[6]),
        .I3(s_axi_control_AWADDR[5]),
        .I4(s_axi_control_AWADDR[4]),
        .I5(s_axi_control_AWADDR[7]),
        .O(int_B_3_write0));
  FDRE int_B_3_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_3_write_i_1_n_0),
        .Q(int_B_3_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_17 int_B_4
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_4_q0(B_4_q0),
        .DOADO(int_B_3_q1),
        .ap_clk(ap_clk),
        .int_B_2_read(int_B_2_read),
        .int_B_3_read(int_B_3_read),
        .int_B_3_read_reg(int_B_4_n_0),
        .int_B_3_read_reg_0(int_B_4_n_1),
        .int_B_3_read_reg_1(int_B_4_n_2),
        .int_B_3_read_reg_10(int_B_4_n_11),
        .int_B_3_read_reg_11(int_B_4_n_12),
        .int_B_3_read_reg_12(int_B_4_n_13),
        .int_B_3_read_reg_13(int_B_4_n_14),
        .int_B_3_read_reg_14(int_B_4_n_15),
        .int_B_3_read_reg_15(int_B_4_n_16),
        .int_B_3_read_reg_16(int_B_4_n_17),
        .int_B_3_read_reg_17(int_B_4_n_18),
        .int_B_3_read_reg_18(int_B_4_n_19),
        .int_B_3_read_reg_19(int_B_4_n_20),
        .int_B_3_read_reg_2(int_B_4_n_3),
        .int_B_3_read_reg_20(int_B_4_n_21),
        .int_B_3_read_reg_21(int_B_4_n_22),
        .int_B_3_read_reg_22(int_B_4_n_23),
        .int_B_3_read_reg_23(int_B_4_n_24),
        .int_B_3_read_reg_24(int_B_4_n_25),
        .int_B_3_read_reg_25(int_B_4_n_26),
        .int_B_3_read_reg_26(int_B_4_n_27),
        .int_B_3_read_reg_27(int_B_4_n_28),
        .int_B_3_read_reg_28(int_B_4_n_29),
        .int_B_3_read_reg_29(int_B_4_n_30),
        .int_B_3_read_reg_3(int_B_4_n_4),
        .int_B_3_read_reg_30(int_B_4_n_31),
        .int_B_3_read_reg_4(int_B_4_n_5),
        .int_B_3_read_reg_5(int_B_4_n_6),
        .int_B_3_read_reg_6(int_B_4_n_7),
        .int_B_3_read_reg_7(int_B_4_n_8),
        .int_B_3_read_reg_8(int_B_4_n_9),
        .int_B_3_read_reg_9(int_B_4_n_10),
        .int_B_4_read(int_B_4_read),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_B_4_write_reg_n_0),
        .p_95_in(p_95_in),
        .\rdata[31]_i_5 (int_B_2_q1),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    int_B_4_read_i_1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(ar_hs),
        .O(int_B_4_read0));
  FDRE int_B_4_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_4_read0),
        .Q(int_B_4_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    int_B_4_write_i_1
       (.I0(s_axi_control_AWADDR[7]),
        .I1(s_axi_control_AWADDR[3]),
        .I2(int_B_4_write_i_2_n_0),
        .I3(aw_hs),
        .I4(p_95_in),
        .I5(int_B_4_write_reg_n_0),
        .O(int_B_4_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    int_B_4_write_i_2
       (.I0(s_axi_control_AWADDR[7]),
        .I1(s_axi_control_AWADDR[4]),
        .I2(s_axi_control_AWADDR[5]),
        .I3(s_axi_control_AWADDR[6]),
        .O(int_B_4_write_i_2_n_0));
  FDRE int_B_4_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_4_write_i_1_n_0),
        .Q(int_B_4_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_18 int_B_5
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_5_q0(B_5_q0),
        .D({int_B_5_n_0,int_B_5_n_1,int_B_5_n_2,int_B_5_n_3,int_B_5_n_4,int_B_5_n_5,int_B_5_n_6,int_B_5_n_7,int_B_5_n_8,int_B_5_n_9,int_B_5_n_10,int_B_5_n_11,int_B_5_n_12,int_B_5_n_13,int_B_5_n_14,int_B_5_n_15,int_B_5_n_16,int_B_5_n_17,int_B_5_n_18,int_B_5_n_19,int_B_5_n_20,int_B_5_n_21,int_B_5_n_22,int_B_5_n_23,int_B_5_n_24,int_B_5_n_25,int_B_5_n_26,int_B_5_n_27,int_B_5_n_28,int_B_5_n_29,int_B_5_n_30,int_B_5_n_31}),
        .DOADO(int_B_6_q1),
        .ap_clk(ap_clk),
        .int_B_5_read(int_B_5_read),
        .int_B_6_read(int_B_6_read),
        .m_reg_reg_i_8__1(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_i_8__1_0(\int_B_1_shift0_reg_n_0_[1] ),
        .mem_reg_0(int_B_5_write_reg_n_0),
        .p_95_in(p_95_in),
        .\rdata[31]_i_5_0 (\rdata[31]_i_16_n_0 ),
        .\rdata[31]_i_5_1 (int_B_7_q1),
        .\rdata_reg[0] (\rdata[31]_i_8_n_0 ),
        .\rdata_reg[0]_0 (int_B_4_n_0),
        .\rdata_reg[0]_1 (int_A_7_n_0),
        .\rdata_reg[0]_2 (\rdata[31]_i_4_n_0 ),
        .\rdata_reg[0]_3 (int_A_0_n_16),
        .\rdata_reg[10] (int_B_4_n_10),
        .\rdata_reg[10]_0 (int_A_7_n_10),
        .\rdata_reg[10]_1 (int_A_0_n_22),
        .\rdata_reg[11] (int_B_4_n_11),
        .\rdata_reg[11]_0 (int_A_7_n_11),
        .\rdata_reg[11]_1 (int_A_0_n_23),
        .\rdata_reg[12] (int_B_4_n_12),
        .\rdata_reg[12]_0 (int_A_7_n_12),
        .\rdata_reg[12]_1 (int_A_0_n_24),
        .\rdata_reg[13] (int_B_4_n_13),
        .\rdata_reg[13]_0 (int_A_7_n_13),
        .\rdata_reg[13]_1 (int_A_0_n_25),
        .\rdata_reg[14] (int_B_4_n_14),
        .\rdata_reg[14]_0 (int_A_7_n_14),
        .\rdata_reg[14]_1 (int_A_0_n_26),
        .\rdata_reg[15] (int_B_4_n_15),
        .\rdata_reg[15]_0 (int_A_7_n_15),
        .\rdata_reg[15]_1 (int_A_0_n_27),
        .\rdata_reg[16] (int_B_4_n_16),
        .\rdata_reg[16]_0 (int_A_7_n_16),
        .\rdata_reg[16]_1 (int_A_6_n_16),
        .\rdata_reg[17] (int_B_4_n_17),
        .\rdata_reg[17]_0 (int_A_7_n_17),
        .\rdata_reg[17]_1 (int_A_6_n_17),
        .\rdata_reg[18] (int_B_4_n_18),
        .\rdata_reg[18]_0 (int_A_7_n_18),
        .\rdata_reg[18]_1 (int_A_6_n_18),
        .\rdata_reg[19] (int_B_4_n_19),
        .\rdata_reg[19]_0 (int_A_7_n_19),
        .\rdata_reg[19]_1 (int_A_6_n_19),
        .\rdata_reg[1] (int_B_4_n_1),
        .\rdata_reg[1]_0 (int_A_7_n_1),
        .\rdata_reg[1]_1 (int_A_6_n_1),
        .\rdata_reg[20] (int_B_4_n_20),
        .\rdata_reg[20]_0 (int_A_7_n_20),
        .\rdata_reg[20]_1 (int_A_6_n_20),
        .\rdata_reg[21] (int_B_4_n_21),
        .\rdata_reg[21]_0 (int_A_7_n_21),
        .\rdata_reg[21]_1 (int_A_6_n_21),
        .\rdata_reg[22] (int_B_4_n_22),
        .\rdata_reg[22]_0 (int_A_7_n_22),
        .\rdata_reg[22]_1 (int_A_6_n_22),
        .\rdata_reg[23] (int_B_4_n_23),
        .\rdata_reg[23]_0 (int_A_7_n_23),
        .\rdata_reg[23]_1 (int_A_6_n_23),
        .\rdata_reg[24] (int_B_4_n_24),
        .\rdata_reg[24]_0 (int_A_7_n_24),
        .\rdata_reg[24]_1 (int_A_6_n_24),
        .\rdata_reg[25] (int_B_4_n_25),
        .\rdata_reg[25]_0 (int_A_7_n_25),
        .\rdata_reg[25]_1 (int_A_6_n_25),
        .\rdata_reg[26] (int_B_4_n_26),
        .\rdata_reg[26]_0 (int_A_7_n_26),
        .\rdata_reg[26]_1 (int_A_6_n_26),
        .\rdata_reg[27] (int_B_4_n_27),
        .\rdata_reg[27]_0 (int_A_7_n_27),
        .\rdata_reg[27]_1 (int_A_6_n_27),
        .\rdata_reg[28] (int_B_4_n_28),
        .\rdata_reg[28]_0 (int_A_7_n_28),
        .\rdata_reg[28]_1 (int_A_6_n_28),
        .\rdata_reg[29] (int_B_4_n_29),
        .\rdata_reg[29]_0 (int_A_7_n_29),
        .\rdata_reg[29]_1 (int_A_6_n_29),
        .\rdata_reg[2] (int_B_4_n_2),
        .\rdata_reg[2]_0 (int_A_7_n_2),
        .\rdata_reg[2]_1 (int_A_6_n_2),
        .\rdata_reg[30] (int_B_4_n_30),
        .\rdata_reg[30]_0 (int_A_7_n_30),
        .\rdata_reg[30]_1 (int_A_6_n_30),
        .\rdata_reg[31] (int_B_4_n_31),
        .\rdata_reg[31]_0 (int_A_7_n_31),
        .\rdata_reg[31]_1 (int_A_6_n_31),
        .\rdata_reg[3] (int_B_4_n_3),
        .\rdata_reg[3]_0 (int_A_7_n_3),
        .\rdata_reg[3]_1 (int_A_6_n_3),
        .\rdata_reg[4] (int_B_4_n_4),
        .\rdata_reg[4]_0 (int_A_7_n_4),
        .\rdata_reg[4]_1 (int_A_0_n_17),
        .\rdata_reg[5] (int_B_4_n_5),
        .\rdata_reg[5]_0 (int_A_7_n_5),
        .\rdata_reg[5]_1 (int_A_0_n_18),
        .\rdata_reg[6] (int_B_4_n_6),
        .\rdata_reg[6]_0 (int_A_7_n_6),
        .\rdata_reg[6]_1 (int_A_0_n_19),
        .\rdata_reg[7] (int_B_4_n_7),
        .\rdata_reg[7]_0 (int_A_7_n_7),
        .\rdata_reg[7]_1 (int_A_6_n_7),
        .\rdata_reg[8] (int_B_4_n_8),
        .\rdata_reg[8]_0 (int_A_7_n_8),
        .\rdata_reg[8]_1 (int_A_0_n_20),
        .\rdata_reg[9] (int_B_4_n_9),
        .\rdata_reg[9]_0 (int_A_7_n_9),
        .\rdata_reg[9]_1 (int_A_0_n_21),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    int_B_5_read_i_1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(ar_hs),
        .O(int_B_5_read0));
  FDRE int_B_5_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_5_read0),
        .Q(int_B_5_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_B_5_write_i_1
       (.I0(int_B_5_write0),
        .I1(p_95_in),
        .I2(int_B_5_write_reg_n_0),
        .O(int_B_5_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    int_B_5_write_i_2
       (.I0(s_axi_control_AWADDR[5]),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWADDR[7]),
        .I3(s_axi_control_AWADDR[4]),
        .I4(s_axi_control_AWADDR[3]),
        .I5(aw_hs),
        .O(int_B_5_write0));
  FDRE int_B_5_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_5_write_i_1_n_0),
        .Q(int_B_5_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_19 int_B_6
       (.ADDRARDADDR(int_A_0_address1),
        .A_0_ce0(A_0_ce0),
        .B(B),
        .B_6_q0(B_6_q0),
        .DOADO(int_B_6_q1),
        .Q(Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .mem_reg_0(mem_reg),
        .mem_reg_1(int_B_6_write_reg_n_0),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_B_6_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_B_6_read0));
  FDRE int_B_6_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_6_read0),
        .Q(int_B_6_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    int_B_6_write_i_1
       (.I0(int_B_6_write_i_2_n_0),
        .I1(int_A_2_write_i_2_n_0),
        .I2(s_axi_control_AWADDR[7]),
        .I3(aw_hs),
        .I4(p_95_in),
        .I5(int_B_6_write_reg_n_0),
        .O(int_B_6_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_B_6_write_i_2
       (.I0(s_axi_control_AWADDR[5]),
        .I1(s_axi_control_AWADDR[6]),
        .O(int_B_6_write_i_2_n_0));
  FDRE int_B_6_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_6_write_i_1_n_0),
        .Q(int_B_6_write_reg_n_0),
        .R(ap_rst_n_inv));
  design_1_eucHW_0_0_eucHW_control_s_axi_ram_20 int_B_7
       (.ADDRARDADDR(int_A_0_address1),
        .A_1_address0(A_1_address0[2]),
        .A_1_ce0(A_1_ce0),
        .B_7_q0(B_7_q0),
        .Q(Q[1]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .m_reg_reg_i_8__2(\int_B_1_shift0_reg_n_0_[0] ),
        .m_reg_reg_i_8__2_0(\int_B_1_shift0_reg_n_0_[1] ),
        .mem_reg_0(int_B_7_q1),
        .mem_reg_1(int_B_7_write_reg_n_0),
        .mem_reg_2(\waddr_reg_n_0_[2] ),
        .p_95_in(p_95_in),
        .rstate(rstate),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    int_B_7_read_i_1
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[6]),
        .I5(s_axi_control_ARADDR[5]),
        .O(int_B_7_read0));
  FDRE int_B_7_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_7_read0),
        .Q(int_B_7_read),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    int_B_7_write_i_1
       (.I0(int_B_7_write0),
        .I1(p_95_in),
        .I2(int_B_7_write_reg_n_0),
        .O(int_B_7_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    int_B_7_write_i_2
       (.I0(s_axi_control_AWADDR[3]),
        .I1(aw_hs),
        .I2(s_axi_control_AWADDR[7]),
        .I3(s_axi_control_AWADDR[4]),
        .I4(s_axi_control_AWADDR[6]),
        .I5(s_axi_control_AWADDR[5]),
        .O(int_B_7_write0));
  FDRE int_B_7_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_B_7_write_i_1_n_0),
        .Q(int_B_7_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    int_C_ap_vld_i_1
       (.I0(s_axi_control_ARADDR[7]),
        .I1(ar_hs),
        .I2(int_C_ap_vld_i_2_n_0),
        .I3(Q[3]),
        .I4(int_C_ap_vld),
        .O(int_C_ap_vld_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    int_C_ap_vld_i_2
       (.I0(int_C_ap_vld_i_3_n_0),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[1]),
        .O(int_C_ap_vld_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    int_C_ap_vld_i_3
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .O(int_C_ap_vld_i_3_n_0));
  FDRE int_C_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_C_ap_vld_i_1_n_0),
        .Q(int_C_ap_vld),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[0] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[0]),
        .Q(\int_C_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[10] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[10]),
        .Q(\int_C_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[11] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[11]),
        .Q(\int_C_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[12] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[12]),
        .Q(\int_C_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[13] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[13]),
        .Q(\int_C_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[14] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[14]),
        .Q(\int_C_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[15] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[15]),
        .Q(\int_C_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[1] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[1]),
        .Q(\int_C_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[2] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[2]),
        .Q(\int_C_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[3] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[3]),
        .Q(\int_C_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[4] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[4]),
        .Q(\int_C_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[5] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[5]),
        .Q(\int_C_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[6] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[6]),
        .Q(\int_C_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[7] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[7]),
        .Q(\int_C_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[8] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[8]),
        .Q(\int_C_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_C_reg[9] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(C[9]),
        .Q(\int_C_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
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
        .Q(p_2_in[2]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h4F44)) 
    int_ap_ready_i_1
       (.I0(p_2_in[7]),
        .I1(Q[3]),
        .I2(int_task_ap_done0),
        .I3(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_2_in[7]),
        .I1(Q[3]),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_2_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_2_in[7]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(p_95_in),
        .I2(\int_ier[1]_i_3_n_0 ),
        .O(\int_ier[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \int_ier[1]_i_3 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[7] ),
        .I5(\waddr_reg_n_0_[6] ),
        .O(\int_ier[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(Q[3]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(Q[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(Q[3]),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_2_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    int_task_ap_done_i_2
       (.I0(int_task_ap_done_i_3_n_0),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(int_task_ap_done_i_4_n_0),
        .O(int_task_ap_done0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_task_ap_done_i_3
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .O(int_task_ap_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    int_task_ap_done_i_4
       (.I0(rstate[0]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[1]),
        .I3(s_axi_control_ARADDR[7]),
        .I4(s_axi_control_ARADDR[6]),
        .O(int_task_ap_done_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT5 #(
    .INIT(32'hE0E0E000)) 
    \rdata[0]_i_10 
       (.I0(int_A_0_read),
        .I1(ar_hs),
        .I2(\rdata[0]_i_11_n_0 ),
        .I3(\rdata[0]_i_12_n_0 ),
        .I4(\rdata[0]_i_13_n_0 ),
        .O(\rdata[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \rdata[0]_i_11 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[6]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(rstate[0]),
        .I4(s_axi_control_ARVALID),
        .I5(rstate[1]),
        .O(\rdata[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \rdata[0]_i_12 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(int_C_ap_vld),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888800F8)) 
    \rdata[0]_i_13 
       (.I0(\rdata[15]_i_11_n_0 ),
        .I1(\int_C_reg_n_0_[0] ),
        .I2(\rdata[0]_i_14_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(s_axi_control_ARADDR[0]),
        .O(\rdata[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[0]_i_14 
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(ap_start),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h080A000000000000)) 
    \rdata[15]_i_10 
       (.I0(\rdata[0]_i_11_n_0 ),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[15]_i_11_n_0 ),
        .I5(\rdata[7]_i_9_n_0 ),
        .O(\rdata[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \rdata[15]_i_11 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .O(\rdata[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \rdata[1]_i_10 
       (.I0(int_task_ap_done),
        .I1(\int_ier_reg_n_0_[1] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rdata[2]_i_10 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(p_2_in[2]),
        .O(\rdata[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_RVALID_INST_0_i_1_n_0),
        .I1(ar_hs),
        .I2(int_B_5_read),
        .I3(int_B_6_read),
        .I4(int_A_0_read),
        .I5(int_B_7_read),
        .O(\rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \rdata[31]_i_11 
       (.I0(int_A_6_read),
        .I1(int_A_5_read),
        .I2(int_A_4_read),
        .I3(s_axi_control_RVALID_INST_0_i_5_n_0),
        .I4(int_A_0_read),
        .I5(ar_hs),
        .O(\rdata[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \rdata[31]_i_13 
       (.I0(int_A_3_read),
        .I1(int_A_1_read),
        .I2(int_A_2_read),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB00)) 
    \rdata[31]_i_15 
       (.I0(rstate[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(int_A_0_read),
        .O(\rdata[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata[31]_i_16 
       (.I0(int_B_1_read),
        .I1(int_A_7_read),
        .I2(int_B_0_read),
        .I3(int_B_4_read),
        .I4(int_B_3_read),
        .I5(int_B_2_read),
        .O(\rdata[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rdata[31]_i_3 
       (.I0(rstate[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rdata[31]_i_4 
       (.I0(int_A_2_read),
        .I1(int_A_1_read),
        .I2(int_A_3_read),
        .I3(int_A_0_read),
        .I4(ar_hs),
        .I5(s_axi_control_RVALID_INST_0_i_4_n_0),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \rdata[31]_i_8 
       (.I0(int_B_4_read),
        .I1(int_B_3_read),
        .I2(int_B_2_read),
        .I3(int_B_1_read),
        .I4(int_A_7_read),
        .I5(int_B_0_read),
        .O(\rdata[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rdata[3]_i_10 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(int_ap_ready),
        .O(\rdata[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \rdata[7]_i_11 
       (.I0(int_A_0_read),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[1]),
        .O(\rdata[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \rdata[7]_i_12 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(p_2_in[7]),
        .O(\rdata[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \rdata[7]_i_13 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\rdata[0]_i_11_n_0 ),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[0]),
        .O(\rdata[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \rdata[7]_i_14 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[7]),
        .I5(\rdata[0]_i_11_n_0 ),
        .O(\rdata[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \rdata[7]_i_9 
       (.I0(int_A_0_read),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[1]),
        .O(\rdata[7]_i_9_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_31),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_21),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_20),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_19),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_18),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_17),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_16),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_15),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_14),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_13),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_12),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_30),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_11),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_10),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_9),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_8),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_7),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_6),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_5),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_4),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_3),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_2),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_29),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_1),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_0),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_28),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_27),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_26),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_25),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_24),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_23),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_B_5_n_22),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_fu_132[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007F2A)) 
    \rstate[0]_i_1 
       (.I0(rstate[0]),
        .I1(s_axi_control_RVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(\rstate[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_1_n_0 ),
        .Q(rstate[0]),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rstate[1]),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_AWREADY));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_control_BVALID));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    s_axi_control_RVALID_INST_0
       (.I0(s_axi_control_RVALID_INST_0_i_1_n_0),
        .I1(s_axi_control_RVALID_INST_0_i_2_n_0),
        .I2(int_A_0_read),
        .I3(int_B_7_read),
        .I4(rstate[1]),
        .I5(rstate[0]),
        .O(s_axi_control_RVALID));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_control_RVALID_INST_0_i_1
       (.I0(s_axi_control_RVALID_INST_0_i_3_n_0),
        .I1(int_B_2_read),
        .I2(int_B_3_read),
        .I3(int_B_4_read),
        .I4(s_axi_control_RVALID_INST_0_i_4_n_0),
        .I5(s_axi_control_RVALID_INST_0_i_5_n_0),
        .O(s_axi_control_RVALID_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_control_RVALID_INST_0_i_2
       (.I0(int_B_6_read),
        .I1(int_B_5_read),
        .O(s_axi_control_RVALID_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_control_RVALID_INST_0_i_3
       (.I0(int_B_0_read),
        .I1(int_A_7_read),
        .I2(int_B_1_read),
        .O(s_axi_control_RVALID_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_control_RVALID_INST_0_i_4
       (.I0(int_A_4_read),
        .I1(int_A_5_read),
        .I2(int_A_6_read),
        .O(s_axi_control_RVALID_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_control_RVALID_INST_0_i_5
       (.I0(int_A_2_read),
        .I1(int_A_1_read),
        .I2(int_A_3_read),
        .O(s_axi_control_RVALID_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    s_axi_control_WREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(s_axi_control_WREADY));
  LUT3 #(
    .INIT(8'h04)) 
    \waddr[7]_i_1 
       (.I0(wstate[1]),
        .I1(s_axi_control_AWVALID),
        .I2(wstate[0]),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \wstate[0]_i_1 
       (.I0(p_95_in),
        .I1(wstate[0]),
        .I2(s_axi_control_AWVALID),
        .I3(wstate[1]),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h05C0)) 
    \wstate[1]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(p_95_in),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .O(\wstate[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_0 ),
        .Q(wstate[1]),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram
   (DOADO,
    int_A_0_read_reg,
    \int_C_reg[4] ,
    \int_C_reg[5] ,
    \int_C_reg[6] ,
    \int_C_reg[8] ,
    \int_C_reg[9] ,
    \int_C_reg[10] ,
    \int_C_reg[11] ,
    \int_C_reg[12] ,
    \int_C_reg[13] ,
    \int_C_reg[14] ,
    \int_C_reg[15] ,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    p_95_in,
    sub_ln38_fu_498_p2,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_4,
    s_axi_control_WDATA,
    B_0_q0,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \rdata_reg[0]_2 ,
    \rdata_reg[0]_3 ,
    \rdata_reg[4] ,
    \rdata_reg[4]_0 ,
    \rdata_reg[5] ,
    \rdata_reg[5]_0 ,
    \rdata_reg[6] ,
    \rdata_reg[6]_0 ,
    \rdata_reg[8] ,
    \rdata_reg[8]_0 ,
    \rdata_reg[9] ,
    \rdata_reg[9]_0 ,
    \rdata_reg[10] ,
    \rdata_reg[10]_0 ,
    \rdata_reg[11] ,
    \rdata_reg[11]_0 ,
    \rdata_reg[12] ,
    \rdata_reg[12]_0 ,
    \rdata_reg[13] ,
    \rdata_reg[13]_0 ,
    \rdata_reg[14] ,
    \rdata_reg[14]_0 ,
    \rdata_reg[15] ,
    \rdata_reg[15]_0 ,
    \rdata[7]_i_3 ,
    \rdata[7]_i_3_0 ,
    \rdata[1]_i_3 ,
    Q,
    \rdata[7]_i_3_1 ,
    \rdata[2]_i_3 ,
    \rdata[3]_i_3 ,
    \rdata[7]_i_3_2 ,
    \rdata[15]_i_3_0 ,
    ar_hs,
    int_A_0_read,
    rstate,
    s_axi_control_ARVALID,
    mem_reg_5,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    wstate,
    B);
  output [15:0]DOADO;
  output int_A_0_read_reg;
  output \int_C_reg[4] ;
  output \int_C_reg[5] ;
  output \int_C_reg[6] ;
  output \int_C_reg[8] ;
  output \int_C_reg[9] ;
  output \int_C_reg[10] ;
  output \int_C_reg[11] ;
  output \int_C_reg[12] ;
  output \int_C_reg[13] ;
  output \int_C_reg[14] ;
  output \int_C_reg[15] ;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output p_95_in;
  output [8:0]sub_ln38_fu_498_p2;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_4;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_0_q0;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \rdata_reg[0]_2 ;
  input \rdata_reg[0]_3 ;
  input \rdata_reg[4] ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[5] ;
  input \rdata_reg[5]_0 ;
  input \rdata_reg[6] ;
  input \rdata_reg[6]_0 ;
  input \rdata_reg[8] ;
  input \rdata_reg[8]_0 ;
  input \rdata_reg[9] ;
  input \rdata_reg[9]_0 ;
  input \rdata_reg[10] ;
  input \rdata_reg[10]_0 ;
  input \rdata_reg[11] ;
  input \rdata_reg[11]_0 ;
  input \rdata_reg[12] ;
  input \rdata_reg[12]_0 ;
  input \rdata_reg[13] ;
  input \rdata_reg[13]_0 ;
  input \rdata_reg[14] ;
  input \rdata_reg[14]_0 ;
  input \rdata_reg[15] ;
  input \rdata_reg[15]_0 ;
  input \rdata[7]_i_3 ;
  input \rdata[7]_i_3_0 ;
  input \rdata[1]_i_3 ;
  input [14:0]Q;
  input \rdata[7]_i_3_1 ;
  input \rdata[2]_i_3 ;
  input \rdata[3]_i_3 ;
  input \rdata[7]_i_3_2 ;
  input \rdata[15]_i_3_0 ;
  input ar_hs;
  input int_A_0_read;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input mem_reg_5;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]wstate;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_0_q0;
  wire [15:0]DOADO;
  wire [14:0]Q;
  wire ap_clk;
  wire ar_hs;
  wire [3:0]int_A_0_be1;
  wire int_A_0_ce1;
  wire [31:0]int_A_0_q0;
  wire [15:0]int_A_0_q1;
  wire int_A_0_read;
  wire int_A_0_read_reg;
  wire \int_C_reg[10] ;
  wire \int_C_reg[11] ;
  wire \int_C_reg[12] ;
  wire \int_C_reg[13] ;
  wire \int_C_reg[14] ;
  wire \int_C_reg[15] ;
  wire \int_C_reg[4] ;
  wire \int_C_reg[5] ;
  wire \int_C_reg[6] ;
  wire \int_C_reg[8] ;
  wire \int_C_reg[9] ;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire [0:0]mem_reg_4;
  wire mem_reg_5;
  wire p_95_in;
  wire p_reg_reg_i_10_n_0;
  wire p_reg_reg_i_11_n_0;
  wire p_reg_reg_i_16_n_0;
  wire p_reg_reg_i_17_n_0;
  wire p_reg_reg_i_18_n_0;
  wire p_reg_reg_i_19_n_0;
  wire p_reg_reg_i_2_n_0;
  wire p_reg_reg_i_2_n_1;
  wire p_reg_reg_i_2_n_2;
  wire p_reg_reg_i_2_n_3;
  wire p_reg_reg_i_3_n_0;
  wire p_reg_reg_i_3_n_1;
  wire p_reg_reg_i_3_n_2;
  wire p_reg_reg_i_3_n_3;
  wire p_reg_reg_i_8_n_0;
  wire p_reg_reg_i_9_n_0;
  wire \rdata[0]_i_7_n_0 ;
  wire \rdata[10]_i_7_n_0 ;
  wire \rdata[11]_i_7_n_0 ;
  wire \rdata[12]_i_7_n_0 ;
  wire \rdata[13]_i_7_n_0 ;
  wire \rdata[14]_i_7_n_0 ;
  wire \rdata[15]_i_3_0 ;
  wire \rdata[15]_i_7_n_0 ;
  wire \rdata[1]_i_3 ;
  wire \rdata[2]_i_3 ;
  wire \rdata[3]_i_3 ;
  wire \rdata[4]_i_7_n_0 ;
  wire \rdata[5]_i_7_n_0 ;
  wire \rdata[6]_i_7_n_0 ;
  wire \rdata[7]_i_3 ;
  wire \rdata[7]_i_3_0 ;
  wire \rdata[7]_i_3_1 ;
  wire \rdata[7]_i_3_2 ;
  wire \rdata[8]_i_7_n_0 ;
  wire \rdata[9]_i_7_n_0 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[0]_2 ;
  wire \rdata_reg[0]_3 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[10]_0 ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[11]_0 ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[12]_0 ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[13]_0 ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[14]_0 ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[15]_0 ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[5]_0 ;
  wire \rdata_reg[6] ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[8]_0 ;
  wire \rdata_reg[9] ;
  wire \rdata_reg[9]_0 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [8:0]sub_ln38_fu_498_p2;
  wire [1:0]wstate;
  wire [7:0]zext_ln38_1_fu_490_p1;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1_O_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_4,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({DOADO,int_A_0_q1}),
        .DOBDO(int_A_0_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_0_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_0_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__14
       (.I0(mem_reg_5),
        .I1(s_axi_control_WVALID),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_0_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__14
       (.I0(mem_reg_5),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_0_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__14
       (.I0(mem_reg_5),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_0_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_6__0
       (.I0(mem_reg_5),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_0_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_7
       (.I0(mem_reg_5),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_0_be1[0]));
  LUT6 #(
    .INIT(64'h0000FB0000000000)) 
    mem_reg_i_8
       (.I0(rstate[1]),
        .I1(s_axi_control_ARVALID),
        .I2(rstate[0]),
        .I3(wstate[0]),
        .I4(wstate[1]),
        .I5(s_axi_control_WVALID),
        .O(p_95_in));
  CARRY4 p_reg_reg_i_1
       (.CI(p_reg_reg_i_2_n_0),
        .CO(NLW_p_reg_reg_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1_O_UNCONNECTED[3:1],sub_ln38_fu_498_p2[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10
       (.I0(zext_ln38_1_fu_490_p1[5]),
        .I1(B_0_q0[5]),
        .O(p_reg_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11
       (.I0(zext_ln38_1_fu_490_p1[4]),
        .I1(B_0_q0[4]),
        .O(p_reg_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_12
       (.I0(int_A_0_q0[27]),
        .I1(int_A_0_q0[11]),
        .I2(B[0]),
        .I3(int_A_0_q0[19]),
        .I4(B[1]),
        .I5(int_A_0_q0[3]),
        .O(zext_ln38_1_fu_490_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_13
       (.I0(int_A_0_q0[26]),
        .I1(int_A_0_q0[10]),
        .I2(B[0]),
        .I3(int_A_0_q0[18]),
        .I4(B[1]),
        .I5(int_A_0_q0[2]),
        .O(zext_ln38_1_fu_490_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_14
       (.I0(int_A_0_q0[25]),
        .I1(int_A_0_q0[9]),
        .I2(B[0]),
        .I3(int_A_0_q0[17]),
        .I4(B[1]),
        .I5(int_A_0_q0[1]),
        .O(zext_ln38_1_fu_490_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_15
       (.I0(int_A_0_q0[24]),
        .I1(int_A_0_q0[8]),
        .I2(B[0]),
        .I3(int_A_0_q0[16]),
        .I4(B[1]),
        .I5(int_A_0_q0[0]),
        .O(zext_ln38_1_fu_490_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_16
       (.I0(zext_ln38_1_fu_490_p1[3]),
        .I1(B_0_q0[3]),
        .O(p_reg_reg_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_17
       (.I0(zext_ln38_1_fu_490_p1[2]),
        .I1(B_0_q0[2]),
        .O(p_reg_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_18
       (.I0(zext_ln38_1_fu_490_p1[1]),
        .I1(B_0_q0[1]),
        .O(p_reg_reg_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_19
       (.I0(zext_ln38_1_fu_490_p1[0]),
        .I1(B_0_q0[0]),
        .O(p_reg_reg_i_19_n_0));
  CARRY4 p_reg_reg_i_2
       (.CI(p_reg_reg_i_3_n_0),
        .CO({p_reg_reg_i_2_n_0,p_reg_reg_i_2_n_1,p_reg_reg_i_2_n_2,p_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_1_fu_490_p1[7:4]),
        .O(sub_ln38_fu_498_p2[7:4]),
        .S({p_reg_reg_i_8_n_0,p_reg_reg_i_9_n_0,p_reg_reg_i_10_n_0,p_reg_reg_i_11_n_0}));
  CARRY4 p_reg_reg_i_3
       (.CI(1'b0),
        .CO({p_reg_reg_i_3_n_0,p_reg_reg_i_3_n_1,p_reg_reg_i_3_n_2,p_reg_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_1_fu_490_p1[3:0]),
        .O(sub_ln38_fu_498_p2[3:0]),
        .S({p_reg_reg_i_16_n_0,p_reg_reg_i_17_n_0,p_reg_reg_i_18_n_0,p_reg_reg_i_19_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_4
       (.I0(int_A_0_q0[31]),
        .I1(int_A_0_q0[15]),
        .I2(B[0]),
        .I3(int_A_0_q0[23]),
        .I4(B[1]),
        .I5(int_A_0_q0[7]),
        .O(zext_ln38_1_fu_490_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_5
       (.I0(int_A_0_q0[30]),
        .I1(int_A_0_q0[14]),
        .I2(B[0]),
        .I3(int_A_0_q0[22]),
        .I4(B[1]),
        .I5(int_A_0_q0[6]),
        .O(zext_ln38_1_fu_490_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_6
       (.I0(int_A_0_q0[29]),
        .I1(int_A_0_q0[13]),
        .I2(B[0]),
        .I3(int_A_0_q0[21]),
        .I4(B[1]),
        .I5(int_A_0_q0[5]),
        .O(zext_ln38_1_fu_490_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_7
       (.I0(int_A_0_q0[28]),
        .I1(int_A_0_q0[12]),
        .I2(B[0]),
        .I3(int_A_0_q0[20]),
        .I4(B[1]),
        .I5(int_A_0_q0[4]),
        .O(zext_ln38_1_fu_490_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8
       (.I0(zext_ln38_1_fu_490_p1[7]),
        .I1(B_0_q0[7]),
        .O(p_reg_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9
       (.I0(zext_ln38_1_fu_490_p1[6]),
        .I1(B_0_q0[6]),
        .O(p_reg_reg_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \rdata[0]_i_3 
       (.I0(\rdata[0]_i_7_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[0]_0 ),
        .I3(\rdata_reg[0]_1 ),
        .I4(\rdata_reg[0]_2 ),
        .I5(\rdata_reg[0]_3 ),
        .O(int_A_0_read_reg));
  LUT5 #(
    .INIT(32'hAA8A0000)) 
    \rdata[0]_i_7 
       (.I0(int_A_0_read),
        .I1(rstate[0]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[1]),
        .I4(int_A_0_q1[0]),
        .O(\rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[10]_i_3 
       (.I0(\rdata[10]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[10] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[10]_0 ),
        .O(\int_C_reg[10] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[10]_i_7 
       (.I0(Q[9]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[10]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[11]_i_3 
       (.I0(\rdata[11]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[11] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[11]_0 ),
        .O(\int_C_reg[11] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[11]_i_7 
       (.I0(Q[10]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[11]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[12]_i_3 
       (.I0(\rdata[12]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[12] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[12]_0 ),
        .O(\int_C_reg[12] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[12]_i_7 
       (.I0(Q[11]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[12]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[13]_i_3 
       (.I0(\rdata[13]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[13] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[13]_0 ),
        .O(\int_C_reg[13] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[13]_i_7 
       (.I0(Q[12]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[13]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[14]_i_3 
       (.I0(\rdata[14]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[14] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[14]_0 ),
        .O(\int_C_reg[14] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[14]_i_7 
       (.I0(Q[13]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[14]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[15]_i_3 
       (.I0(\rdata[15]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[15] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[15]_0 ),
        .O(\int_C_reg[15] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[15]_i_7 
       (.I0(Q[14]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[15]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_9 
       (.I0(\rdata[7]_i_3 ),
        .I1(int_A_0_q1[1]),
        .I2(\rdata[7]_i_3_0 ),
        .I3(\rdata[1]_i_3 ),
        .I4(Q[0]),
        .I5(\rdata[7]_i_3_1 ),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_9 
       (.I0(\rdata[7]_i_3 ),
        .I1(int_A_0_q1[2]),
        .I2(\rdata[2]_i_3 ),
        .I3(\rdata[7]_i_3_0 ),
        .I4(Q[1]),
        .I5(\rdata[7]_i_3_1 ),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[3]_i_9 
       (.I0(\rdata[7]_i_3 ),
        .I1(int_A_0_q1[3]),
        .I2(\rdata[3]_i_3 ),
        .I3(\rdata[7]_i_3_0 ),
        .I4(Q[2]),
        .I5(\rdata[7]_i_3_1 ),
        .O(mem_reg_2));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[4]_i_3 
       (.I0(\rdata[4]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[4] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[4]_0 ),
        .O(\int_C_reg[4] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[4]_i_7 
       (.I0(Q[3]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[4]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[5]_i_3 
       (.I0(\rdata[5]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[5] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[5]_0 ),
        .O(\int_C_reg[5] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[5]_i_7 
       (.I0(Q[4]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[5]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[6]_i_3 
       (.I0(\rdata[6]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[6]_0 ),
        .O(\int_C_reg[6] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[6]_i_7 
       (.I0(Q[5]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[6]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_10 
       (.I0(\rdata[7]_i_3 ),
        .I1(int_A_0_q1[7]),
        .I2(\rdata[7]_i_3_2 ),
        .I3(\rdata[7]_i_3_0 ),
        .I4(Q[6]),
        .I5(\rdata[7]_i_3_1 ),
        .O(mem_reg_3));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[8]_i_3 
       (.I0(\rdata[8]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[8] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[8]_0 ),
        .O(\int_C_reg[8] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[8]_i_7 
       (.I0(Q[7]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[8]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[9]_i_3 
       (.I0(\rdata[9]_i_7_n_0 ),
        .I1(\rdata_reg[0]_2 ),
        .I2(\rdata_reg[9] ),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[9]_0 ),
        .O(\int_C_reg[9] ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rdata[9]_i_7 
       (.I0(Q[8]),
        .I1(\rdata[15]_i_3_0 ),
        .I2(int_A_0_q1[9]),
        .I3(ar_hs),
        .I4(int_A_0_read),
        .O(\rdata[9]_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_10
   (DOADO,
    m_reg_reg_i_2__1_0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    B_5_q0,
    s_axi_control_WVALID,
    mem_reg_0,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg,
    m_reg_reg_0);
  output [31:0]DOADO;
  output [8:0]m_reg_reg_i_2__1_0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_5_q0;
  input s_axi_control_WVALID;
  input mem_reg_0;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg;
  input m_reg_reg_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_5_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_A_5_be1;
  wire int_A_5_ce1;
  wire [31:0]int_A_5_q0;
  wire m_reg_reg;
  wire m_reg_reg_0;
  wire m_reg_reg_i_10__1_n_0;
  wire m_reg_reg_i_11__1_n_0;
  wire m_reg_reg_i_16__1_n_0;
  wire m_reg_reg_i_17__1_n_0;
  wire m_reg_reg_i_18__1_n_0;
  wire m_reg_reg_i_19__1_n_0;
  wire [8:0]m_reg_reg_i_2__1_0;
  wire m_reg_reg_i_2__1_n_0;
  wire m_reg_reg_i_2__1_n_1;
  wire m_reg_reg_i_2__1_n_2;
  wire m_reg_reg_i_2__1_n_3;
  wire m_reg_reg_i_3__1_n_0;
  wire m_reg_reg_i_3__1_n_1;
  wire m_reg_reg_i_3__1_n_2;
  wire m_reg_reg_i_3__1_n_3;
  wire m_reg_reg_i_8__1_n_0;
  wire m_reg_reg_i_9__1_n_0;
  wire mem_reg_0;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [7:0]zext_ln38_11_fu_454_p1;
  wire [3:0]NLW_m_reg_reg_i_1__1_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__1_O_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__1
       (.I0(zext_ln38_11_fu_454_p1[5]),
        .I1(B_5_q0[5]),
        .O(m_reg_reg_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__1
       (.I0(zext_ln38_11_fu_454_p1[4]),
        .I1(B_5_q0[4]),
        .O(m_reg_reg_i_11__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_12__1
       (.I0(int_A_5_q0[27]),
        .I1(int_A_5_q0[11]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[19]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[3]),
        .O(zext_ln38_11_fu_454_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_13__1
       (.I0(int_A_5_q0[26]),
        .I1(int_A_5_q0[10]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[18]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[2]),
        .O(zext_ln38_11_fu_454_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_14__1
       (.I0(int_A_5_q0[25]),
        .I1(int_A_5_q0[9]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[17]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[1]),
        .O(zext_ln38_11_fu_454_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_15__1
       (.I0(int_A_5_q0[24]),
        .I1(int_A_5_q0[8]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[16]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[0]),
        .O(zext_ln38_11_fu_454_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_16__1
       (.I0(zext_ln38_11_fu_454_p1[3]),
        .I1(B_5_q0[3]),
        .O(m_reg_reg_i_16__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_17__1
       (.I0(zext_ln38_11_fu_454_p1[2]),
        .I1(B_5_q0[2]),
        .O(m_reg_reg_i_17__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_18__1
       (.I0(zext_ln38_11_fu_454_p1[1]),
        .I1(B_5_q0[1]),
        .O(m_reg_reg_i_18__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_19__1
       (.I0(zext_ln38_11_fu_454_p1[0]),
        .I1(B_5_q0[0]),
        .O(m_reg_reg_i_19__1_n_0));
  CARRY4 m_reg_reg_i_1__1
       (.CI(m_reg_reg_i_2__1_n_0),
        .CO(NLW_m_reg_reg_i_1__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__1_O_UNCONNECTED[3:1],m_reg_reg_i_2__1_0[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_2__1
       (.CI(m_reg_reg_i_3__1_n_0),
        .CO({m_reg_reg_i_2__1_n_0,m_reg_reg_i_2__1_n_1,m_reg_reg_i_2__1_n_2,m_reg_reg_i_2__1_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_11_fu_454_p1[7:4]),
        .O(m_reg_reg_i_2__1_0[7:4]),
        .S({m_reg_reg_i_8__1_n_0,m_reg_reg_i_9__1_n_0,m_reg_reg_i_10__1_n_0,m_reg_reg_i_11__1_n_0}));
  CARRY4 m_reg_reg_i_3__1
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__1_n_0,m_reg_reg_i_3__1_n_1,m_reg_reg_i_3__1_n_2,m_reg_reg_i_3__1_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_11_fu_454_p1[3:0]),
        .O(m_reg_reg_i_2__1_0[3:0]),
        .S({m_reg_reg_i_16__1_n_0,m_reg_reg_i_17__1_n_0,m_reg_reg_i_18__1_n_0,m_reg_reg_i_19__1_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_4__1
       (.I0(int_A_5_q0[31]),
        .I1(int_A_5_q0[15]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[23]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[7]),
        .O(zext_ln38_11_fu_454_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_5__1
       (.I0(int_A_5_q0[30]),
        .I1(int_A_5_q0[14]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[22]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[6]),
        .O(zext_ln38_11_fu_454_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_6__1
       (.I0(int_A_5_q0[29]),
        .I1(int_A_5_q0[13]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[21]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[5]),
        .O(zext_ln38_11_fu_454_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_7__1
       (.I0(int_A_5_q0[28]),
        .I1(int_A_5_q0[12]),
        .I2(m_reg_reg),
        .I3(int_A_5_q0[20]),
        .I4(m_reg_reg_0),
        .I5(int_A_5_q0[4]),
        .O(zext_ln38_11_fu_454_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__1
       (.I0(zext_ln38_11_fu_454_p1[7]),
        .I1(B_5_q0[7]),
        .O(m_reg_reg_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__1
       (.I0(zext_ln38_11_fu_454_p1[6]),
        .I1(B_5_q0[6]),
        .O(m_reg_reg_i_9__1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_A_5_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_5_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_5_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__9
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_0),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_5_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__9
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_5_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__10
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_5_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__9
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_5_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__9
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_5_be1[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_11
   (int_A_5_read_reg,
    int_A_6_read_reg,
    int_A_6_read_reg_0,
    int_A_6_read_reg_1,
    int_A_5_read_reg_0,
    int_A_5_read_reg_1,
    int_A_5_read_reg_2,
    int_A_6_read_reg_2,
    int_A_5_read_reg_3,
    int_A_5_read_reg_4,
    int_A_5_read_reg_5,
    int_A_5_read_reg_6,
    int_A_5_read_reg_7,
    int_A_5_read_reg_8,
    int_A_5_read_reg_9,
    int_A_5_read_reg_10,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    mem_reg_15,
    sub_ln38_6_fu_540_p2,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_16,
    s_axi_control_WDATA,
    B_6_q0,
    int_A_5_read,
    int_A_6_read,
    DOADO,
    int_A_4_read,
    \rdata[31]_i_6_0 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    \rdata_reg[1]_1 ,
    \rdata_reg[1]_2 ,
    \rdata_reg[1]_3 ,
    \rdata_reg[2] ,
    \rdata_reg[2]_0 ,
    \rdata_reg[3] ,
    \rdata_reg[3]_0 ,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[16] ,
    \rdata_reg[31] ,
    \rdata_reg[16]_0 ,
    \rdata_reg[17] ,
    \rdata_reg[18] ,
    \rdata_reg[19] ,
    \rdata_reg[20] ,
    \rdata_reg[21] ,
    \rdata_reg[22] ,
    \rdata_reg[23] ,
    \rdata_reg[24] ,
    \rdata_reg[25] ,
    \rdata_reg[26] ,
    \rdata_reg[27] ,
    \rdata_reg[28] ,
    \rdata_reg[29] ,
    \rdata_reg[30] ,
    \rdata_reg[31]_0 ,
    s_axi_control_WVALID,
    mem_reg_17,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output int_A_5_read_reg;
  output int_A_6_read_reg;
  output int_A_6_read_reg_0;
  output int_A_6_read_reg_1;
  output int_A_5_read_reg_0;
  output int_A_5_read_reg_1;
  output int_A_5_read_reg_2;
  output int_A_6_read_reg_2;
  output int_A_5_read_reg_3;
  output int_A_5_read_reg_4;
  output int_A_5_read_reg_5;
  output int_A_5_read_reg_6;
  output int_A_5_read_reg_7;
  output int_A_5_read_reg_8;
  output int_A_5_read_reg_9;
  output int_A_5_read_reg_10;
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output mem_reg_6;
  output mem_reg_7;
  output mem_reg_8;
  output mem_reg_9;
  output mem_reg_10;
  output mem_reg_11;
  output mem_reg_12;
  output mem_reg_13;
  output mem_reg_14;
  output mem_reg_15;
  output [8:0]sub_ln38_6_fu_540_p2;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_16;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_6_q0;
  input int_A_5_read;
  input int_A_6_read;
  input [31:0]DOADO;
  input int_A_4_read;
  input [31:0]\rdata[31]_i_6_0 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[1]_1 ;
  input \rdata_reg[1]_2 ;
  input \rdata_reg[1]_3 ;
  input \rdata_reg[2] ;
  input \rdata_reg[2]_0 ;
  input \rdata_reg[3] ;
  input \rdata_reg[3]_0 ;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[16] ;
  input [15:0]\rdata_reg[31] ;
  input \rdata_reg[16]_0 ;
  input \rdata_reg[17] ;
  input \rdata_reg[18] ;
  input \rdata_reg[19] ;
  input \rdata_reg[20] ;
  input \rdata_reg[21] ;
  input \rdata_reg[22] ;
  input \rdata_reg[23] ;
  input \rdata_reg[24] ;
  input \rdata_reg[25] ;
  input \rdata_reg[26] ;
  input \rdata_reg[27] ;
  input \rdata_reg[28] ;
  input \rdata_reg[29] ;
  input \rdata_reg[30] ;
  input \rdata_reg[31]_0 ;
  input s_axi_control_WVALID;
  input mem_reg_17;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_6_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire int_A_4_read;
  wire int_A_5_read;
  wire int_A_5_read_reg;
  wire int_A_5_read_reg_0;
  wire int_A_5_read_reg_1;
  wire int_A_5_read_reg_10;
  wire int_A_5_read_reg_2;
  wire int_A_5_read_reg_3;
  wire int_A_5_read_reg_4;
  wire int_A_5_read_reg_5;
  wire int_A_5_read_reg_6;
  wire int_A_5_read_reg_7;
  wire int_A_5_read_reg_8;
  wire int_A_5_read_reg_9;
  wire [3:0]int_A_6_be1;
  wire int_A_6_ce1;
  wire [31:0]int_A_6_q0;
  wire [31:0]int_A_6_q1;
  wire int_A_6_read;
  wire int_A_6_read_reg;
  wire int_A_6_read_reg_0;
  wire int_A_6_read_reg_1;
  wire int_A_6_read_reg_2;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_15;
  wire [0:0]mem_reg_16;
  wire mem_reg_17;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire p_95_in;
  wire p_reg_reg_i_10__2_n_0;
  wire p_reg_reg_i_11__2_n_0;
  wire p_reg_reg_i_16__2_n_0;
  wire p_reg_reg_i_17__2_n_0;
  wire p_reg_reg_i_18__2_n_0;
  wire p_reg_reg_i_19__2_n_0;
  wire p_reg_reg_i_2__2_n_0;
  wire p_reg_reg_i_2__2_n_1;
  wire p_reg_reg_i_2__2_n_2;
  wire p_reg_reg_i_2__2_n_3;
  wire p_reg_reg_i_3__2_n_0;
  wire p_reg_reg_i_3__2_n_1;
  wire p_reg_reg_i_3__2_n_2;
  wire p_reg_reg_i_3__2_n_3;
  wire p_reg_reg_i_8__2_n_0;
  wire p_reg_reg_i_9__2_n_0;
  wire \rdata[16]_i_7_n_0 ;
  wire \rdata[17]_i_7_n_0 ;
  wire \rdata[18]_i_7_n_0 ;
  wire \rdata[19]_i_7_n_0 ;
  wire \rdata[1]_i_7_n_0 ;
  wire \rdata[20]_i_7_n_0 ;
  wire \rdata[21]_i_7_n_0 ;
  wire \rdata[22]_i_7_n_0 ;
  wire \rdata[23]_i_7_n_0 ;
  wire \rdata[24]_i_7_n_0 ;
  wire \rdata[25]_i_7_n_0 ;
  wire \rdata[26]_i_7_n_0 ;
  wire \rdata[27]_i_7_n_0 ;
  wire \rdata[28]_i_7_n_0 ;
  wire \rdata[29]_i_7_n_0 ;
  wire \rdata[2]_i_7_n_0 ;
  wire \rdata[30]_i_7_n_0 ;
  wire \rdata[31]_i_12_n_0 ;
  wire [31:0]\rdata[31]_i_6_0 ;
  wire \rdata[3]_i_7_n_0 ;
  wire \rdata[7]_i_7_n_0 ;
  wire \rdata_reg[16] ;
  wire \rdata_reg[16]_0 ;
  wire \rdata_reg[17] ;
  wire \rdata_reg[18] ;
  wire \rdata_reg[19] ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[1]_1 ;
  wire \rdata_reg[1]_2 ;
  wire \rdata_reg[1]_3 ;
  wire \rdata_reg[20] ;
  wire \rdata_reg[21] ;
  wire \rdata_reg[22] ;
  wire \rdata_reg[23] ;
  wire \rdata_reg[24] ;
  wire \rdata_reg[25] ;
  wire \rdata_reg[26] ;
  wire \rdata_reg[27] ;
  wire \rdata_reg[28] ;
  wire \rdata_reg[29] ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[2]_0 ;
  wire \rdata_reg[30] ;
  wire [15:0]\rdata_reg[31] ;
  wire \rdata_reg[31]_0 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[3]_0 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [8:0]sub_ln38_6_fu_540_p2;
  wire [7:0]zext_ln38_13_fu_532_p1;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__2_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__2_O_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_16,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(int_A_6_q1),
        .DOBDO(int_A_6_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_6_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_6_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__8
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_17),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_6_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__8
       (.I0(p_95_in),
        .I1(mem_reg_17),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_6_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__9
       (.I0(p_95_in),
        .I1(mem_reg_17),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_6_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__8
       (.I0(p_95_in),
        .I1(mem_reg_17),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_6_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__8
       (.I0(p_95_in),
        .I1(mem_reg_17),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_6_be1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__2
       (.I0(zext_ln38_13_fu_532_p1[5]),
        .I1(B_6_q0[5]),
        .O(p_reg_reg_i_10__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__2
       (.I0(zext_ln38_13_fu_532_p1[4]),
        .I1(B_6_q0[4]),
        .O(p_reg_reg_i_11__2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_12__2
       (.I0(int_A_6_q0[27]),
        .I1(int_A_6_q0[11]),
        .I2(B[0]),
        .I3(int_A_6_q0[19]),
        .I4(B[1]),
        .I5(int_A_6_q0[3]),
        .O(zext_ln38_13_fu_532_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_13__2
       (.I0(int_A_6_q0[26]),
        .I1(int_A_6_q0[10]),
        .I2(B[0]),
        .I3(int_A_6_q0[18]),
        .I4(B[1]),
        .I5(int_A_6_q0[2]),
        .O(zext_ln38_13_fu_532_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_14__2
       (.I0(int_A_6_q0[25]),
        .I1(int_A_6_q0[9]),
        .I2(B[0]),
        .I3(int_A_6_q0[17]),
        .I4(B[1]),
        .I5(int_A_6_q0[1]),
        .O(zext_ln38_13_fu_532_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_15__2
       (.I0(int_A_6_q0[24]),
        .I1(int_A_6_q0[8]),
        .I2(B[0]),
        .I3(int_A_6_q0[16]),
        .I4(B[1]),
        .I5(int_A_6_q0[0]),
        .O(zext_ln38_13_fu_532_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_16__2
       (.I0(zext_ln38_13_fu_532_p1[3]),
        .I1(B_6_q0[3]),
        .O(p_reg_reg_i_16__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_17__2
       (.I0(zext_ln38_13_fu_532_p1[2]),
        .I1(B_6_q0[2]),
        .O(p_reg_reg_i_17__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_18__2
       (.I0(zext_ln38_13_fu_532_p1[1]),
        .I1(B_6_q0[1]),
        .O(p_reg_reg_i_18__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_19__2
       (.I0(zext_ln38_13_fu_532_p1[0]),
        .I1(B_6_q0[0]),
        .O(p_reg_reg_i_19__2_n_0));
  CARRY4 p_reg_reg_i_1__2
       (.CI(p_reg_reg_i_2__2_n_0),
        .CO(NLW_p_reg_reg_i_1__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__2_O_UNCONNECTED[3:1],sub_ln38_6_fu_540_p2[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_2__2
       (.CI(p_reg_reg_i_3__2_n_0),
        .CO({p_reg_reg_i_2__2_n_0,p_reg_reg_i_2__2_n_1,p_reg_reg_i_2__2_n_2,p_reg_reg_i_2__2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_13_fu_532_p1[7:4]),
        .O(sub_ln38_6_fu_540_p2[7:4]),
        .S({p_reg_reg_i_8__2_n_0,p_reg_reg_i_9__2_n_0,p_reg_reg_i_10__2_n_0,p_reg_reg_i_11__2_n_0}));
  CARRY4 p_reg_reg_i_3__2
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__2_n_0,p_reg_reg_i_3__2_n_1,p_reg_reg_i_3__2_n_2,p_reg_reg_i_3__2_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_13_fu_532_p1[3:0]),
        .O(sub_ln38_6_fu_540_p2[3:0]),
        .S({p_reg_reg_i_16__2_n_0,p_reg_reg_i_17__2_n_0,p_reg_reg_i_18__2_n_0,p_reg_reg_i_19__2_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_4__2
       (.I0(int_A_6_q0[31]),
        .I1(int_A_6_q0[15]),
        .I2(B[0]),
        .I3(int_A_6_q0[23]),
        .I4(B[1]),
        .I5(int_A_6_q0[7]),
        .O(zext_ln38_13_fu_532_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_5__2
       (.I0(int_A_6_q0[30]),
        .I1(int_A_6_q0[14]),
        .I2(B[0]),
        .I3(int_A_6_q0[22]),
        .I4(B[1]),
        .I5(int_A_6_q0[6]),
        .O(zext_ln38_13_fu_532_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_6__2
       (.I0(int_A_6_q0[29]),
        .I1(int_A_6_q0[13]),
        .I2(B[0]),
        .I3(int_A_6_q0[21]),
        .I4(B[1]),
        .I5(int_A_6_q0[5]),
        .O(zext_ln38_13_fu_532_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_7__2
       (.I0(int_A_6_q0[28]),
        .I1(int_A_6_q0[12]),
        .I2(B[0]),
        .I3(int_A_6_q0[20]),
        .I4(B[1]),
        .I5(int_A_6_q0[4]),
        .O(zext_ln38_13_fu_532_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__2
       (.I0(zext_ln38_13_fu_532_p1[7]),
        .I1(B_6_q0[7]),
        .O(p_reg_reg_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__2
       (.I0(zext_ln38_13_fu_532_p1[6]),
        .I1(B_6_q0[6]),
        .O(p_reg_reg_i_9__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[0]_i_9 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[0]),
        .I3(DOADO[0]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [0]),
        .O(int_A_5_read_reg));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[10]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[10]),
        .I3(DOADO[10]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [10]),
        .O(int_A_5_read_reg_5));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[11]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[11]),
        .I3(DOADO[11]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [11]),
        .O(int_A_5_read_reg_6));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[12]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[12]),
        .I3(DOADO[12]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [12]),
        .O(int_A_5_read_reg_7));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[13]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[13]),
        .I3(DOADO[13]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [13]),
        .O(int_A_5_read_reg_8));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[14]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[14]),
        .I3(DOADO[14]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [14]),
        .O(int_A_5_read_reg_9));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[15]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[15]),
        .I3(DOADO[15]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [15]),
        .O(int_A_5_read_reg_10));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[16]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[16]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[16] ),
        .I4(\rdata_reg[31] [0]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[16]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[16]),
        .I3(DOADO[16]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [16]),
        .O(\rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[17]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[17]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[17] ),
        .I4(\rdata_reg[31] [1]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[17]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[17]),
        .I3(DOADO[17]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [17]),
        .O(\rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[18]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[18]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[18] ),
        .I4(\rdata_reg[31] [2]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_2));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[18]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[18]),
        .I3(DOADO[18]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [18]),
        .O(\rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[19]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[19]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[19] ),
        .I4(\rdata_reg[31] [3]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_3));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[19]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[19]),
        .I3(DOADO[19]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [19]),
        .O(\rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[1]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[1]_1 ),
        .I4(\rdata_reg[1]_2 ),
        .I5(\rdata_reg[1]_3 ),
        .O(int_A_6_read_reg));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[1]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[1]),
        .I3(DOADO[1]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [1]),
        .O(\rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[20]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[20]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[20] ),
        .I4(\rdata_reg[31] [4]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_4));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[20]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[20]),
        .I3(DOADO[20]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [20]),
        .O(\rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[21]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[21]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[21] ),
        .I4(\rdata_reg[31] [5]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_5));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[21]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[21]),
        .I3(DOADO[21]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [21]),
        .O(\rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[22]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[22]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[22] ),
        .I4(\rdata_reg[31] [6]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_6));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[22]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[22]),
        .I3(DOADO[22]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [22]),
        .O(\rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[23]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[23]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[23] ),
        .I4(\rdata_reg[31] [7]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_7));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[23]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[23]),
        .I3(DOADO[23]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [23]),
        .O(\rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[24]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[24]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[24] ),
        .I4(\rdata_reg[31] [8]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_8));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[24]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[24]),
        .I3(DOADO[24]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [24]),
        .O(\rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[25]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[25]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[25] ),
        .I4(\rdata_reg[31] [9]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_9));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[25]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[25]),
        .I3(DOADO[25]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [25]),
        .O(\rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[26]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[26]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[26] ),
        .I4(\rdata_reg[31] [10]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_10));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[26]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[26]),
        .I3(DOADO[26]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [26]),
        .O(\rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[27]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[27]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[27] ),
        .I4(\rdata_reg[31] [11]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_11));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[27]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[27]),
        .I3(DOADO[27]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [27]),
        .O(\rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[28]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[28]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[28] ),
        .I4(\rdata_reg[31] [12]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_12));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[28]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[28]),
        .I3(DOADO[28]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [28]),
        .O(\rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[29]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[29]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[29] ),
        .I4(\rdata_reg[31] [13]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_13));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[29]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[29]),
        .I3(DOADO[29]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [29]),
        .O(\rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[2]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[2] ),
        .I4(\rdata_reg[1]_2 ),
        .I5(\rdata_reg[2]_0 ),
        .O(int_A_6_read_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[2]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[2]),
        .I3(DOADO[2]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [2]),
        .O(\rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[30]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[30]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[30] ),
        .I4(\rdata_reg[31] [14]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_14));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[30]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[30]),
        .I3(DOADO[30]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [30]),
        .O(\rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[31]_i_12 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[31]),
        .I3(DOADO[31]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [31]),
        .O(\rdata[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[31]_i_6 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[31]_i_12_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[31]_0 ),
        .I4(\rdata_reg[31] [15]),
        .I5(\rdata_reg[16]_0 ),
        .O(mem_reg_15));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[3]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[3]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[3] ),
        .I4(\rdata_reg[1]_2 ),
        .I5(\rdata_reg[3]_0 ),
        .O(int_A_6_read_reg_1));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[3]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[3]),
        .I3(DOADO[3]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [3]),
        .O(\rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[4]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[4]),
        .I3(DOADO[4]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [4]),
        .O(int_A_5_read_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[5]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[5]),
        .I3(DOADO[5]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [5]),
        .O(int_A_5_read_reg_1));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[6]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[6]),
        .I3(DOADO[6]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [6]),
        .O(int_A_5_read_reg_2));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_3 
       (.I0(\rdata_reg[1] ),
        .I1(\rdata[7]_i_7_n_0 ),
        .I2(\rdata_reg[1]_0 ),
        .I3(\rdata_reg[7] ),
        .I4(\rdata_reg[1]_2 ),
        .I5(\rdata_reg[7]_0 ),
        .O(int_A_6_read_reg_2));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[7]_i_7 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[7]),
        .I3(DOADO[7]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [7]),
        .O(\rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[8]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[8]),
        .I3(DOADO[8]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [8]),
        .O(int_A_5_read_reg_3));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[9]_i_8 
       (.I0(int_A_5_read),
        .I1(int_A_6_read),
        .I2(int_A_6_q1[9]),
        .I3(DOADO[9]),
        .I4(int_A_4_read),
        .I5(\rdata[31]_i_6_0 [9]),
        .O(int_A_5_read_reg_4));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_12
   (mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    mem_reg_15,
    mem_reg_16,
    mem_reg_17,
    mem_reg_18,
    mem_reg_19,
    mem_reg_20,
    mem_reg_21,
    mem_reg_22,
    mem_reg_23,
    mem_reg_24,
    mem_reg_25,
    mem_reg_26,
    mem_reg_27,
    mem_reg_28,
    mem_reg_29,
    mem_reg_30,
    mem_reg_31,
    m_reg_reg_i_2__2_0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    B_7_q0,
    int_A_7_read,
    DOADO,
    \rdata[31]_i_5 ,
    int_B_1_read,
    int_B_0_read,
    mem_reg_32,
    s_axi_control_WVALID,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg,
    m_reg_reg_0);
  output mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output mem_reg_3;
  output mem_reg_4;
  output mem_reg_5;
  output mem_reg_6;
  output mem_reg_7;
  output mem_reg_8;
  output mem_reg_9;
  output mem_reg_10;
  output mem_reg_11;
  output mem_reg_12;
  output mem_reg_13;
  output mem_reg_14;
  output mem_reg_15;
  output mem_reg_16;
  output mem_reg_17;
  output mem_reg_18;
  output mem_reg_19;
  output mem_reg_20;
  output mem_reg_21;
  output mem_reg_22;
  output mem_reg_23;
  output mem_reg_24;
  output mem_reg_25;
  output mem_reg_26;
  output mem_reg_27;
  output mem_reg_28;
  output mem_reg_29;
  output mem_reg_30;
  output mem_reg_31;
  output [8:0]m_reg_reg_i_2__2_0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_7_q0;
  input int_A_7_read;
  input [31:0]DOADO;
  input [31:0]\rdata[31]_i_5 ;
  input int_B_1_read;
  input int_B_0_read;
  input mem_reg_32;
  input s_axi_control_WVALID;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg;
  input m_reg_reg_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_7_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_A_7_be1;
  wire int_A_7_ce1;
  wire [31:0]int_A_7_q0;
  wire [31:0]int_A_7_q1;
  wire int_A_7_read;
  wire int_B_0_read;
  wire int_B_1_read;
  wire m_reg_reg;
  wire m_reg_reg_0;
  wire m_reg_reg_i_10__2_n_0;
  wire m_reg_reg_i_11__2_n_0;
  wire m_reg_reg_i_16__2_n_0;
  wire m_reg_reg_i_17__2_n_0;
  wire m_reg_reg_i_18__2_n_0;
  wire m_reg_reg_i_19__2_n_0;
  wire [8:0]m_reg_reg_i_2__2_0;
  wire m_reg_reg_i_2__2_n_0;
  wire m_reg_reg_i_2__2_n_1;
  wire m_reg_reg_i_2__2_n_2;
  wire m_reg_reg_i_2__2_n_3;
  wire m_reg_reg_i_3__2_n_0;
  wire m_reg_reg_i_3__2_n_1;
  wire m_reg_reg_i_3__2_n_2;
  wire m_reg_reg_i_3__2_n_3;
  wire m_reg_reg_i_8__2_n_0;
  wire m_reg_reg_i_9__2_n_0;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_15;
  wire mem_reg_16;
  wire mem_reg_17;
  wire mem_reg_18;
  wire mem_reg_19;
  wire mem_reg_2;
  wire mem_reg_20;
  wire mem_reg_21;
  wire mem_reg_22;
  wire mem_reg_23;
  wire mem_reg_24;
  wire mem_reg_25;
  wire mem_reg_26;
  wire mem_reg_27;
  wire mem_reg_28;
  wire mem_reg_29;
  wire mem_reg_3;
  wire mem_reg_30;
  wire mem_reg_31;
  wire mem_reg_32;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire p_95_in;
  wire [31:0]\rdata[31]_i_5 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [7:0]zext_ln38_15_fu_472_p1;
  wire [3:0]NLW_m_reg_reg_i_1__2_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__2_O_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__2
       (.I0(zext_ln38_15_fu_472_p1[5]),
        .I1(B_7_q0[5]),
        .O(m_reg_reg_i_10__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__2
       (.I0(zext_ln38_15_fu_472_p1[4]),
        .I1(B_7_q0[4]),
        .O(m_reg_reg_i_11__2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_12__2
       (.I0(int_A_7_q0[27]),
        .I1(int_A_7_q0[11]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[19]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[3]),
        .O(zext_ln38_15_fu_472_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_13__2
       (.I0(int_A_7_q0[26]),
        .I1(int_A_7_q0[10]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[18]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[2]),
        .O(zext_ln38_15_fu_472_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_14__2
       (.I0(int_A_7_q0[25]),
        .I1(int_A_7_q0[9]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[17]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[1]),
        .O(zext_ln38_15_fu_472_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_15__2
       (.I0(int_A_7_q0[24]),
        .I1(int_A_7_q0[8]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[16]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[0]),
        .O(zext_ln38_15_fu_472_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_16__2
       (.I0(zext_ln38_15_fu_472_p1[3]),
        .I1(B_7_q0[3]),
        .O(m_reg_reg_i_16__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_17__2
       (.I0(zext_ln38_15_fu_472_p1[2]),
        .I1(B_7_q0[2]),
        .O(m_reg_reg_i_17__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_18__2
       (.I0(zext_ln38_15_fu_472_p1[1]),
        .I1(B_7_q0[1]),
        .O(m_reg_reg_i_18__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_19__2
       (.I0(zext_ln38_15_fu_472_p1[0]),
        .I1(B_7_q0[0]),
        .O(m_reg_reg_i_19__2_n_0));
  CARRY4 m_reg_reg_i_1__2
       (.CI(m_reg_reg_i_2__2_n_0),
        .CO(NLW_m_reg_reg_i_1__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__2_O_UNCONNECTED[3:1],m_reg_reg_i_2__2_0[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_2__2
       (.CI(m_reg_reg_i_3__2_n_0),
        .CO({m_reg_reg_i_2__2_n_0,m_reg_reg_i_2__2_n_1,m_reg_reg_i_2__2_n_2,m_reg_reg_i_2__2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_15_fu_472_p1[7:4]),
        .O(m_reg_reg_i_2__2_0[7:4]),
        .S({m_reg_reg_i_8__2_n_0,m_reg_reg_i_9__2_n_0,m_reg_reg_i_10__2_n_0,m_reg_reg_i_11__2_n_0}));
  CARRY4 m_reg_reg_i_3__2
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__2_n_0,m_reg_reg_i_3__2_n_1,m_reg_reg_i_3__2_n_2,m_reg_reg_i_3__2_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_15_fu_472_p1[3:0]),
        .O(m_reg_reg_i_2__2_0[3:0]),
        .S({m_reg_reg_i_16__2_n_0,m_reg_reg_i_17__2_n_0,m_reg_reg_i_18__2_n_0,m_reg_reg_i_19__2_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_4__2
       (.I0(int_A_7_q0[31]),
        .I1(int_A_7_q0[15]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[23]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[7]),
        .O(zext_ln38_15_fu_472_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_5__2
       (.I0(int_A_7_q0[30]),
        .I1(int_A_7_q0[14]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[22]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[6]),
        .O(zext_ln38_15_fu_472_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_6__2
       (.I0(int_A_7_q0[29]),
        .I1(int_A_7_q0[13]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[21]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[5]),
        .O(zext_ln38_15_fu_472_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_7__2
       (.I0(int_A_7_q0[28]),
        .I1(int_A_7_q0[12]),
        .I2(m_reg_reg),
        .I3(int_A_7_q0[20]),
        .I4(m_reg_reg_0),
        .I5(int_A_7_q0[4]),
        .O(zext_ln38_15_fu_472_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__2
       (.I0(zext_ln38_15_fu_472_p1[7]),
        .I1(B_7_q0[7]),
        .O(m_reg_reg_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__2
       (.I0(zext_ln38_15_fu_472_p1[6]),
        .I1(B_7_q0[6]),
        .O(m_reg_reg_i_9__2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(int_A_7_q1),
        .DOBDO(int_A_7_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_7_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_7_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__7
       (.I0(mem_reg_32),
        .I1(s_axi_control_WVALID),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_7_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__7
       (.I0(mem_reg_32),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_7_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__8
       (.I0(mem_reg_32),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_7_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__7
       (.I0(mem_reg_32),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_7_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__7
       (.I0(mem_reg_32),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_7_be1[0]));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[0]_i_6 
       (.I0(int_A_7_q1[0]),
        .I1(int_A_7_read),
        .I2(DOADO[0]),
        .I3(\rdata[31]_i_5 [0]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[10]_i_6 
       (.I0(int_A_7_q1[10]),
        .I1(int_A_7_read),
        .I2(DOADO[10]),
        .I3(\rdata[31]_i_5 [10]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_10));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[11]_i_6 
       (.I0(int_A_7_q1[11]),
        .I1(int_A_7_read),
        .I2(DOADO[11]),
        .I3(\rdata[31]_i_5 [11]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_11));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[12]_i_6 
       (.I0(int_A_7_q1[12]),
        .I1(int_A_7_read),
        .I2(DOADO[12]),
        .I3(\rdata[31]_i_5 [12]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_12));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[13]_i_6 
       (.I0(int_A_7_q1[13]),
        .I1(int_A_7_read),
        .I2(DOADO[13]),
        .I3(\rdata[31]_i_5 [13]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_13));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[14]_i_6 
       (.I0(int_A_7_q1[14]),
        .I1(int_A_7_read),
        .I2(DOADO[14]),
        .I3(\rdata[31]_i_5 [14]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_14));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[15]_i_6 
       (.I0(int_A_7_q1[15]),
        .I1(int_A_7_read),
        .I2(DOADO[15]),
        .I3(\rdata[31]_i_5 [15]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_15));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[16]_i_6 
       (.I0(int_A_7_q1[16]),
        .I1(int_A_7_read),
        .I2(DOADO[16]),
        .I3(\rdata[31]_i_5 [16]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_16));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[17]_i_6 
       (.I0(int_A_7_q1[17]),
        .I1(int_A_7_read),
        .I2(DOADO[17]),
        .I3(\rdata[31]_i_5 [17]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_17));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[18]_i_6 
       (.I0(int_A_7_q1[18]),
        .I1(int_A_7_read),
        .I2(DOADO[18]),
        .I3(\rdata[31]_i_5 [18]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_18));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[19]_i_6 
       (.I0(int_A_7_q1[19]),
        .I1(int_A_7_read),
        .I2(DOADO[19]),
        .I3(\rdata[31]_i_5 [19]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_19));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[1]_i_6 
       (.I0(int_A_7_q1[1]),
        .I1(int_A_7_read),
        .I2(DOADO[1]),
        .I3(\rdata[31]_i_5 [1]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_1));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[20]_i_6 
       (.I0(int_A_7_q1[20]),
        .I1(int_A_7_read),
        .I2(DOADO[20]),
        .I3(\rdata[31]_i_5 [20]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_20));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[21]_i_6 
       (.I0(int_A_7_q1[21]),
        .I1(int_A_7_read),
        .I2(DOADO[21]),
        .I3(\rdata[31]_i_5 [21]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_21));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[22]_i_6 
       (.I0(int_A_7_q1[22]),
        .I1(int_A_7_read),
        .I2(DOADO[22]),
        .I3(\rdata[31]_i_5 [22]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_22));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[23]_i_6 
       (.I0(int_A_7_q1[23]),
        .I1(int_A_7_read),
        .I2(DOADO[23]),
        .I3(\rdata[31]_i_5 [23]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_23));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[24]_i_6 
       (.I0(int_A_7_q1[24]),
        .I1(int_A_7_read),
        .I2(DOADO[24]),
        .I3(\rdata[31]_i_5 [24]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_24));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[25]_i_6 
       (.I0(int_A_7_q1[25]),
        .I1(int_A_7_read),
        .I2(DOADO[25]),
        .I3(\rdata[31]_i_5 [25]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_25));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[26]_i_6 
       (.I0(int_A_7_q1[26]),
        .I1(int_A_7_read),
        .I2(DOADO[26]),
        .I3(\rdata[31]_i_5 [26]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_26));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[27]_i_6 
       (.I0(int_A_7_q1[27]),
        .I1(int_A_7_read),
        .I2(DOADO[27]),
        .I3(\rdata[31]_i_5 [27]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_27));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[28]_i_6 
       (.I0(int_A_7_q1[28]),
        .I1(int_A_7_read),
        .I2(DOADO[28]),
        .I3(\rdata[31]_i_5 [28]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_28));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[29]_i_6 
       (.I0(int_A_7_q1[29]),
        .I1(int_A_7_read),
        .I2(DOADO[29]),
        .I3(\rdata[31]_i_5 [29]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_29));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[2]_i_6 
       (.I0(int_A_7_q1[2]),
        .I1(int_A_7_read),
        .I2(DOADO[2]),
        .I3(\rdata[31]_i_5 [2]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_2));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[30]_i_6 
       (.I0(int_A_7_q1[30]),
        .I1(int_A_7_read),
        .I2(DOADO[30]),
        .I3(\rdata[31]_i_5 [30]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_30));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[31]_i_10 
       (.I0(int_A_7_q1[31]),
        .I1(int_A_7_read),
        .I2(DOADO[31]),
        .I3(\rdata[31]_i_5 [31]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_31));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[3]_i_6 
       (.I0(int_A_7_q1[3]),
        .I1(int_A_7_read),
        .I2(DOADO[3]),
        .I3(\rdata[31]_i_5 [3]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_3));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[4]_i_6 
       (.I0(int_A_7_q1[4]),
        .I1(int_A_7_read),
        .I2(DOADO[4]),
        .I3(\rdata[31]_i_5 [4]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_4));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[5]_i_6 
       (.I0(int_A_7_q1[5]),
        .I1(int_A_7_read),
        .I2(DOADO[5]),
        .I3(\rdata[31]_i_5 [5]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_5));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[6]_i_6 
       (.I0(int_A_7_q1[6]),
        .I1(int_A_7_read),
        .I2(DOADO[6]),
        .I3(\rdata[31]_i_5 [6]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_6));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[7]_i_6 
       (.I0(int_A_7_q1[7]),
        .I1(int_A_7_read),
        .I2(DOADO[7]),
        .I3(\rdata[31]_i_5 [7]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_7));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[8]_i_6 
       (.I0(int_A_7_q1[8]),
        .I1(int_A_7_read),
        .I2(DOADO[8]),
        .I3(\rdata[31]_i_5 [8]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_8));
  LUT6 #(
    .INIT(64'h4747474744774444)) 
    \rdata[9]_i_6 
       (.I0(int_A_7_q1[9]),
        .I1(int_A_7_read),
        .I2(DOADO[9]),
        .I3(\rdata[31]_i_5 [9]),
        .I4(int_B_1_read),
        .I5(int_B_0_read),
        .O(mem_reg_9));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_13
   (DOADO,
    B_0_q0,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    mem_reg_1,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output [31:0]DOADO;
  output [7:0]B_0_q0;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input mem_reg_1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_0_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_B_0_be1;
  wire int_B_0_ce1;
  wire [31:0]int_B_0_q0;
  wire [0:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_B_0_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_0_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_0_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__6
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_1),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_0_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__6
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_0_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__7
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_0_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__6
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_0_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__6
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_0_be1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_20
       (.I0(int_B_0_q0[31]),
        .I1(int_B_0_q0[15]),
        .I2(B[0]),
        .I3(int_B_0_q0[23]),
        .I4(B[1]),
        .I5(int_B_0_q0[7]),
        .O(B_0_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_21
       (.I0(int_B_0_q0[30]),
        .I1(int_B_0_q0[14]),
        .I2(B[0]),
        .I3(int_B_0_q0[22]),
        .I4(B[1]),
        .I5(int_B_0_q0[6]),
        .O(B_0_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_22
       (.I0(int_B_0_q0[29]),
        .I1(int_B_0_q0[13]),
        .I2(B[0]),
        .I3(int_B_0_q0[21]),
        .I4(B[1]),
        .I5(int_B_0_q0[5]),
        .O(B_0_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_23
       (.I0(int_B_0_q0[28]),
        .I1(int_B_0_q0[12]),
        .I2(B[0]),
        .I3(int_B_0_q0[20]),
        .I4(B[1]),
        .I5(int_B_0_q0[4]),
        .O(B_0_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_24
       (.I0(int_B_0_q0[27]),
        .I1(int_B_0_q0[11]),
        .I2(B[0]),
        .I3(int_B_0_q0[19]),
        .I4(B[1]),
        .I5(int_B_0_q0[3]),
        .O(B_0_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_25
       (.I0(int_B_0_q0[26]),
        .I1(int_B_0_q0[10]),
        .I2(B[0]),
        .I3(int_B_0_q0[18]),
        .I4(B[1]),
        .I5(int_B_0_q0[2]),
        .O(B_0_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_26
       (.I0(int_B_0_q0[25]),
        .I1(int_B_0_q0[9]),
        .I2(B[0]),
        .I3(int_B_0_q0[17]),
        .I4(B[1]),
        .I5(int_B_0_q0[1]),
        .O(B_0_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_27
       (.I0(int_B_0_q0[24]),
        .I1(int_B_0_q0[8]),
        .I2(B[0]),
        .I3(int_B_0_q0[16]),
        .I4(B[1]),
        .I5(int_B_0_q0[0]),
        .O(B_0_q0[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_14
   (mem_reg_0,
    B_1_q0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    mem_reg_1,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg_i_8,
    m_reg_reg_i_8_0);
  output [31:0]mem_reg_0;
  output [7:0]B_1_q0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input mem_reg_1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg_i_8;
  input m_reg_reg_i_8_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_1_q0;
  wire ap_clk;
  wire [3:0]int_B_1_be1;
  wire int_B_1_ce1;
  wire [31:0]int_B_1_q0;
  wire m_reg_reg_i_8;
  wire m_reg_reg_i_8_0;
  wire [31:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_20
       (.I0(int_B_1_q0[31]),
        .I1(int_B_1_q0[15]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[23]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[7]),
        .O(B_1_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_21
       (.I0(int_B_1_q0[30]),
        .I1(int_B_1_q0[14]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[22]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[6]),
        .O(B_1_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_22
       (.I0(int_B_1_q0[29]),
        .I1(int_B_1_q0[13]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[21]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[5]),
        .O(B_1_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_23
       (.I0(int_B_1_q0[28]),
        .I1(int_B_1_q0[12]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[20]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[4]),
        .O(B_1_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_24
       (.I0(int_B_1_q0[27]),
        .I1(int_B_1_q0[11]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[19]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[3]),
        .O(B_1_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_25
       (.I0(int_B_1_q0[26]),
        .I1(int_B_1_q0[10]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[18]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[2]),
        .O(B_1_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_26
       (.I0(int_B_1_q0[25]),
        .I1(int_B_1_q0[9]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[17]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[1]),
        .O(B_1_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_27
       (.I0(int_B_1_q0[24]),
        .I1(int_B_1_q0[8]),
        .I2(m_reg_reg_i_8),
        .I3(int_B_1_q0[16]),
        .I4(m_reg_reg_i_8_0),
        .I5(int_B_1_q0[0]),
        .O(B_1_q0[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(mem_reg_0),
        .DOBDO(int_B_1_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_1_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_1_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__5
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_1),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_1_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__5
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_1_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__6
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_1_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__5
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_1_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__5
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_1_be1[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_15
   (DOADO,
    B_2_q0,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    mem_reg_1,
    s_axi_control_WVALID,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output [31:0]DOADO;
  output [7:0]B_2_q0;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input mem_reg_1;
  input s_axi_control_WVALID;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_2_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_B_2_be1;
  wire int_B_2_ce1;
  wire [31:0]int_B_2_q0;
  wire [0:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_B_2_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_2_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_2_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__4
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_2_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__4
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_2_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__5
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_2_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__4
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_2_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__4
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_2_be1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_20__0
       (.I0(int_B_2_q0[31]),
        .I1(int_B_2_q0[15]),
        .I2(B[0]),
        .I3(int_B_2_q0[23]),
        .I4(B[1]),
        .I5(int_B_2_q0[7]),
        .O(B_2_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_21__0
       (.I0(int_B_2_q0[30]),
        .I1(int_B_2_q0[14]),
        .I2(B[0]),
        .I3(int_B_2_q0[22]),
        .I4(B[1]),
        .I5(int_B_2_q0[6]),
        .O(B_2_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_22__0
       (.I0(int_B_2_q0[29]),
        .I1(int_B_2_q0[13]),
        .I2(B[0]),
        .I3(int_B_2_q0[21]),
        .I4(B[1]),
        .I5(int_B_2_q0[5]),
        .O(B_2_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_23__0
       (.I0(int_B_2_q0[28]),
        .I1(int_B_2_q0[12]),
        .I2(B[0]),
        .I3(int_B_2_q0[20]),
        .I4(B[1]),
        .I5(int_B_2_q0[4]),
        .O(B_2_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_24__0
       (.I0(int_B_2_q0[27]),
        .I1(int_B_2_q0[11]),
        .I2(B[0]),
        .I3(int_B_2_q0[19]),
        .I4(B[1]),
        .I5(int_B_2_q0[3]),
        .O(B_2_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_25__0
       (.I0(int_B_2_q0[26]),
        .I1(int_B_2_q0[10]),
        .I2(B[0]),
        .I3(int_B_2_q0[18]),
        .I4(B[1]),
        .I5(int_B_2_q0[2]),
        .O(B_2_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_26__0
       (.I0(int_B_2_q0[25]),
        .I1(int_B_2_q0[9]),
        .I2(B[0]),
        .I3(int_B_2_q0[17]),
        .I4(B[1]),
        .I5(int_B_2_q0[1]),
        .O(B_2_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_27__0
       (.I0(int_B_2_q0[24]),
        .I1(int_B_2_q0[8]),
        .I2(B[0]),
        .I3(int_B_2_q0[16]),
        .I4(B[1]),
        .I5(int_B_2_q0[0]),
        .O(B_2_q0[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_16
   (DOADO,
    B_3_q0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    s_axi_control_WVALID,
    mem_reg_0,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg_i_8__0,
    m_reg_reg_i_8__0_0);
  output [31:0]DOADO;
  output [7:0]B_3_q0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_WVALID;
  input mem_reg_0;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg_i_8__0;
  input m_reg_reg_i_8__0_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_3_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_B_3_be1;
  wire int_B_3_ce1;
  wire [31:0]int_B_3_q0;
  wire m_reg_reg_i_8__0;
  wire m_reg_reg_i_8__0_0;
  wire mem_reg_0;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_20__0
       (.I0(int_B_3_q0[31]),
        .I1(int_B_3_q0[15]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[23]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[7]),
        .O(B_3_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_21__0
       (.I0(int_B_3_q0[30]),
        .I1(int_B_3_q0[14]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[22]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[6]),
        .O(B_3_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_22__0
       (.I0(int_B_3_q0[29]),
        .I1(int_B_3_q0[13]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[21]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[5]),
        .O(B_3_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_23__0
       (.I0(int_B_3_q0[28]),
        .I1(int_B_3_q0[12]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[20]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[4]),
        .O(B_3_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_24__0
       (.I0(int_B_3_q0[27]),
        .I1(int_B_3_q0[11]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[19]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[3]),
        .O(B_3_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_25__0
       (.I0(int_B_3_q0[26]),
        .I1(int_B_3_q0[10]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[18]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[2]),
        .O(B_3_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_26__0
       (.I0(int_B_3_q0[25]),
        .I1(int_B_3_q0[9]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[17]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[1]),
        .O(B_3_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_27__0
       (.I0(int_B_3_q0[24]),
        .I1(int_B_3_q0[8]),
        .I2(m_reg_reg_i_8__0),
        .I3(int_B_3_q0[16]),
        .I4(m_reg_reg_i_8__0_0),
        .I5(int_B_3_q0[0]),
        .O(B_3_q0[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_B_3_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_3_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_3_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__3
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_0),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_3_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__3
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_3_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__4
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_3_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__3
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_3_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__3
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_3_be1[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_17
   (int_B_3_read_reg,
    int_B_3_read_reg_0,
    int_B_3_read_reg_1,
    int_B_3_read_reg_2,
    int_B_3_read_reg_3,
    int_B_3_read_reg_4,
    int_B_3_read_reg_5,
    int_B_3_read_reg_6,
    int_B_3_read_reg_7,
    int_B_3_read_reg_8,
    int_B_3_read_reg_9,
    int_B_3_read_reg_10,
    int_B_3_read_reg_11,
    int_B_3_read_reg_12,
    int_B_3_read_reg_13,
    int_B_3_read_reg_14,
    int_B_3_read_reg_15,
    int_B_3_read_reg_16,
    int_B_3_read_reg_17,
    int_B_3_read_reg_18,
    int_B_3_read_reg_19,
    int_B_3_read_reg_20,
    int_B_3_read_reg_21,
    int_B_3_read_reg_22,
    int_B_3_read_reg_23,
    int_B_3_read_reg_24,
    int_B_3_read_reg_25,
    int_B_3_read_reg_26,
    int_B_3_read_reg_27,
    int_B_3_read_reg_28,
    int_B_3_read_reg_29,
    int_B_3_read_reg_30,
    B_4_q0,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    int_B_3_read,
    int_B_4_read,
    DOADO,
    int_B_2_read,
    \rdata[31]_i_5 ,
    s_axi_control_WVALID,
    mem_reg_1,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output int_B_3_read_reg;
  output int_B_3_read_reg_0;
  output int_B_3_read_reg_1;
  output int_B_3_read_reg_2;
  output int_B_3_read_reg_3;
  output int_B_3_read_reg_4;
  output int_B_3_read_reg_5;
  output int_B_3_read_reg_6;
  output int_B_3_read_reg_7;
  output int_B_3_read_reg_8;
  output int_B_3_read_reg_9;
  output int_B_3_read_reg_10;
  output int_B_3_read_reg_11;
  output int_B_3_read_reg_12;
  output int_B_3_read_reg_13;
  output int_B_3_read_reg_14;
  output int_B_3_read_reg_15;
  output int_B_3_read_reg_16;
  output int_B_3_read_reg_17;
  output int_B_3_read_reg_18;
  output int_B_3_read_reg_19;
  output int_B_3_read_reg_20;
  output int_B_3_read_reg_21;
  output int_B_3_read_reg_22;
  output int_B_3_read_reg_23;
  output int_B_3_read_reg_24;
  output int_B_3_read_reg_25;
  output int_B_3_read_reg_26;
  output int_B_3_read_reg_27;
  output int_B_3_read_reg_28;
  output int_B_3_read_reg_29;
  output int_B_3_read_reg_30;
  output [7:0]B_4_q0;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input int_B_3_read;
  input int_B_4_read;
  input [31:0]DOADO;
  input int_B_2_read;
  input [31:0]\rdata[31]_i_5 ;
  input s_axi_control_WVALID;
  input mem_reg_1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_4_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire int_B_2_read;
  wire int_B_3_read;
  wire int_B_3_read_reg;
  wire int_B_3_read_reg_0;
  wire int_B_3_read_reg_1;
  wire int_B_3_read_reg_10;
  wire int_B_3_read_reg_11;
  wire int_B_3_read_reg_12;
  wire int_B_3_read_reg_13;
  wire int_B_3_read_reg_14;
  wire int_B_3_read_reg_15;
  wire int_B_3_read_reg_16;
  wire int_B_3_read_reg_17;
  wire int_B_3_read_reg_18;
  wire int_B_3_read_reg_19;
  wire int_B_3_read_reg_2;
  wire int_B_3_read_reg_20;
  wire int_B_3_read_reg_21;
  wire int_B_3_read_reg_22;
  wire int_B_3_read_reg_23;
  wire int_B_3_read_reg_24;
  wire int_B_3_read_reg_25;
  wire int_B_3_read_reg_26;
  wire int_B_3_read_reg_27;
  wire int_B_3_read_reg_28;
  wire int_B_3_read_reg_29;
  wire int_B_3_read_reg_3;
  wire int_B_3_read_reg_30;
  wire int_B_3_read_reg_4;
  wire int_B_3_read_reg_5;
  wire int_B_3_read_reg_6;
  wire int_B_3_read_reg_7;
  wire int_B_3_read_reg_8;
  wire int_B_3_read_reg_9;
  wire [3:0]int_B_4_be1;
  wire int_B_4_ce1;
  wire [31:0]int_B_4_q0;
  wire [31:0]int_B_4_q1;
  wire int_B_4_read;
  wire [0:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire [31:0]\rdata[31]_i_5 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(int_B_4_q1),
        .DOBDO(int_B_4_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_4_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_4_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__2
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_1),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_4_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__2
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_4_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__3
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_4_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__2
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_4_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__2
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_4_be1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_20__1
       (.I0(int_B_4_q0[31]),
        .I1(int_B_4_q0[15]),
        .I2(B[0]),
        .I3(int_B_4_q0[23]),
        .I4(B[1]),
        .I5(int_B_4_q0[7]),
        .O(B_4_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_21__1
       (.I0(int_B_4_q0[30]),
        .I1(int_B_4_q0[14]),
        .I2(B[0]),
        .I3(int_B_4_q0[22]),
        .I4(B[1]),
        .I5(int_B_4_q0[6]),
        .O(B_4_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_22__1
       (.I0(int_B_4_q0[29]),
        .I1(int_B_4_q0[13]),
        .I2(B[0]),
        .I3(int_B_4_q0[21]),
        .I4(B[1]),
        .I5(int_B_4_q0[5]),
        .O(B_4_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_23__1
       (.I0(int_B_4_q0[28]),
        .I1(int_B_4_q0[12]),
        .I2(B[0]),
        .I3(int_B_4_q0[20]),
        .I4(B[1]),
        .I5(int_B_4_q0[4]),
        .O(B_4_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_24__1
       (.I0(int_B_4_q0[27]),
        .I1(int_B_4_q0[11]),
        .I2(B[0]),
        .I3(int_B_4_q0[19]),
        .I4(B[1]),
        .I5(int_B_4_q0[3]),
        .O(B_4_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_25__1
       (.I0(int_B_4_q0[26]),
        .I1(int_B_4_q0[10]),
        .I2(B[0]),
        .I3(int_B_4_q0[18]),
        .I4(B[1]),
        .I5(int_B_4_q0[2]),
        .O(B_4_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_26__1
       (.I0(int_B_4_q0[25]),
        .I1(int_B_4_q0[9]),
        .I2(B[0]),
        .I3(int_B_4_q0[17]),
        .I4(B[1]),
        .I5(int_B_4_q0[1]),
        .O(B_4_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_27__1
       (.I0(int_B_4_q0[24]),
        .I1(int_B_4_q0[8]),
        .I2(B[0]),
        .I3(int_B_4_q0[16]),
        .I4(B[1]),
        .I5(int_B_4_q0[0]),
        .O(B_4_q0[0]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[0]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[0]),
        .I3(DOADO[0]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [0]),
        .O(int_B_3_read_reg));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[10]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[10]),
        .I3(DOADO[10]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [10]),
        .O(int_B_3_read_reg_9));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[11]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[11]),
        .I3(DOADO[11]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [11]),
        .O(int_B_3_read_reg_10));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[12]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[12]),
        .I3(DOADO[12]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [12]),
        .O(int_B_3_read_reg_11));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[13]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[13]),
        .I3(DOADO[13]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [13]),
        .O(int_B_3_read_reg_12));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[14]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[14]),
        .I3(DOADO[14]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [14]),
        .O(int_B_3_read_reg_13));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[15]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[15]),
        .I3(DOADO[15]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [15]),
        .O(int_B_3_read_reg_14));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[16]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[16]),
        .I3(DOADO[16]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [16]),
        .O(int_B_3_read_reg_15));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[17]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[17]),
        .I3(DOADO[17]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [17]),
        .O(int_B_3_read_reg_16));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[18]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[18]),
        .I3(DOADO[18]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [18]),
        .O(int_B_3_read_reg_17));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[19]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[19]),
        .I3(DOADO[19]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [19]),
        .O(int_B_3_read_reg_18));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[1]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[1]),
        .I3(DOADO[1]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [1]),
        .O(int_B_3_read_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[20]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[20]),
        .I3(DOADO[20]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [20]),
        .O(int_B_3_read_reg_19));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[21]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[21]),
        .I3(DOADO[21]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [21]),
        .O(int_B_3_read_reg_20));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[22]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[22]),
        .I3(DOADO[22]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [22]),
        .O(int_B_3_read_reg_21));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[23]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[23]),
        .I3(DOADO[23]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [23]),
        .O(int_B_3_read_reg_22));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[24]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[24]),
        .I3(DOADO[24]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [24]),
        .O(int_B_3_read_reg_23));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[25]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[25]),
        .I3(DOADO[25]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [25]),
        .O(int_B_3_read_reg_24));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[26]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[26]),
        .I3(DOADO[26]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [26]),
        .O(int_B_3_read_reg_25));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[27]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[27]),
        .I3(DOADO[27]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [27]),
        .O(int_B_3_read_reg_26));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[28]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[28]),
        .I3(DOADO[28]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [28]),
        .O(int_B_3_read_reg_27));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[29]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[29]),
        .I3(DOADO[29]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [29]),
        .O(int_B_3_read_reg_28));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[2]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[2]),
        .I3(DOADO[2]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [2]),
        .O(int_B_3_read_reg_1));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[30]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[30]),
        .I3(DOADO[30]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [30]),
        .O(int_B_3_read_reg_29));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[31]_i_9 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[31]),
        .I3(DOADO[31]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [31]),
        .O(int_B_3_read_reg_30));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[3]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[3]),
        .I3(DOADO[3]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [3]),
        .O(int_B_3_read_reg_2));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[4]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[4]),
        .I3(DOADO[4]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [4]),
        .O(int_B_3_read_reg_3));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[5]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[5]),
        .I3(DOADO[5]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [5]),
        .O(int_B_3_read_reg_4));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[6]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[6]),
        .I3(DOADO[6]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [6]),
        .O(int_B_3_read_reg_5));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[7]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[7]),
        .I3(DOADO[7]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [7]),
        .O(int_B_3_read_reg_6));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[8]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[8]),
        .I3(DOADO[8]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [8]),
        .O(int_B_3_read_reg_7));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[9]_i_5 
       (.I0(int_B_3_read),
        .I1(int_B_4_read),
        .I2(int_B_4_q1[9]),
        .I3(DOADO[9]),
        .I4(int_B_2_read),
        .I5(\rdata[31]_i_5 [9]),
        .O(int_B_3_read_reg_8));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_18
   (D,
    B_5_q0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    \rdata_reg[2] ,
    \rdata_reg[2]_0 ,
    \rdata_reg[3] ,
    \rdata_reg[3]_0 ,
    \rdata_reg[4] ,
    \rdata_reg[4]_0 ,
    \rdata_reg[5] ,
    \rdata_reg[5]_0 ,
    \rdata_reg[6] ,
    \rdata_reg[6]_0 ,
    \rdata_reg[7] ,
    \rdata_reg[7]_0 ,
    \rdata_reg[8] ,
    \rdata_reg[8]_0 ,
    \rdata_reg[9] ,
    \rdata_reg[9]_0 ,
    \rdata_reg[10] ,
    \rdata_reg[10]_0 ,
    \rdata_reg[11] ,
    \rdata_reg[11]_0 ,
    \rdata_reg[12] ,
    \rdata_reg[12]_0 ,
    \rdata_reg[13] ,
    \rdata_reg[13]_0 ,
    \rdata_reg[14] ,
    \rdata_reg[14]_0 ,
    \rdata_reg[15] ,
    \rdata_reg[15]_0 ,
    \rdata_reg[16] ,
    \rdata_reg[16]_0 ,
    \rdata_reg[17] ,
    \rdata_reg[17]_0 ,
    \rdata_reg[18] ,
    \rdata_reg[18]_0 ,
    \rdata_reg[19] ,
    \rdata_reg[19]_0 ,
    \rdata_reg[20] ,
    \rdata_reg[20]_0 ,
    \rdata_reg[21] ,
    \rdata_reg[21]_0 ,
    \rdata_reg[22] ,
    \rdata_reg[22]_0 ,
    \rdata_reg[23] ,
    \rdata_reg[23]_0 ,
    \rdata_reg[24] ,
    \rdata_reg[24]_0 ,
    \rdata_reg[25] ,
    \rdata_reg[25]_0 ,
    \rdata_reg[26] ,
    \rdata_reg[26]_0 ,
    \rdata_reg[27] ,
    \rdata_reg[27]_0 ,
    \rdata_reg[28] ,
    \rdata_reg[28]_0 ,
    \rdata_reg[29] ,
    \rdata_reg[29]_0 ,
    \rdata_reg[30] ,
    \rdata_reg[30]_0 ,
    \rdata_reg[31] ,
    \rdata_reg[31]_0 ,
    \rdata_reg[0]_2 ,
    \rdata_reg[0]_3 ,
    \rdata[31]_i_5_0 ,
    int_B_5_read,
    DOADO,
    \rdata[31]_i_5_1 ,
    int_B_6_read,
    \rdata_reg[1]_1 ,
    \rdata_reg[2]_1 ,
    \rdata_reg[3]_1 ,
    \rdata_reg[4]_1 ,
    \rdata_reg[5]_1 ,
    \rdata_reg[6]_1 ,
    \rdata_reg[7]_1 ,
    \rdata_reg[8]_1 ,
    \rdata_reg[9]_1 ,
    \rdata_reg[10]_1 ,
    \rdata_reg[11]_1 ,
    \rdata_reg[12]_1 ,
    \rdata_reg[13]_1 ,
    \rdata_reg[14]_1 ,
    \rdata_reg[15]_1 ,
    \rdata_reg[16]_1 ,
    \rdata_reg[17]_1 ,
    \rdata_reg[18]_1 ,
    \rdata_reg[19]_1 ,
    \rdata_reg[20]_1 ,
    \rdata_reg[21]_1 ,
    \rdata_reg[22]_1 ,
    \rdata_reg[23]_1 ,
    \rdata_reg[24]_1 ,
    \rdata_reg[25]_1 ,
    \rdata_reg[26]_1 ,
    \rdata_reg[27]_1 ,
    \rdata_reg[28]_1 ,
    \rdata_reg[29]_1 ,
    \rdata_reg[30]_1 ,
    \rdata_reg[31]_1 ,
    mem_reg_0,
    s_axi_control_WVALID,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg_i_8__1,
    m_reg_reg_i_8__1_0);
  output [31:0]D;
  output [7:0]B_5_q0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[2] ;
  input \rdata_reg[2]_0 ;
  input \rdata_reg[3] ;
  input \rdata_reg[3]_0 ;
  input \rdata_reg[4] ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[5] ;
  input \rdata_reg[5]_0 ;
  input \rdata_reg[6] ;
  input \rdata_reg[6]_0 ;
  input \rdata_reg[7] ;
  input \rdata_reg[7]_0 ;
  input \rdata_reg[8] ;
  input \rdata_reg[8]_0 ;
  input \rdata_reg[9] ;
  input \rdata_reg[9]_0 ;
  input \rdata_reg[10] ;
  input \rdata_reg[10]_0 ;
  input \rdata_reg[11] ;
  input \rdata_reg[11]_0 ;
  input \rdata_reg[12] ;
  input \rdata_reg[12]_0 ;
  input \rdata_reg[13] ;
  input \rdata_reg[13]_0 ;
  input \rdata_reg[14] ;
  input \rdata_reg[14]_0 ;
  input \rdata_reg[15] ;
  input \rdata_reg[15]_0 ;
  input \rdata_reg[16] ;
  input \rdata_reg[16]_0 ;
  input \rdata_reg[17] ;
  input \rdata_reg[17]_0 ;
  input \rdata_reg[18] ;
  input \rdata_reg[18]_0 ;
  input \rdata_reg[19] ;
  input \rdata_reg[19]_0 ;
  input \rdata_reg[20] ;
  input \rdata_reg[20]_0 ;
  input \rdata_reg[21] ;
  input \rdata_reg[21]_0 ;
  input \rdata_reg[22] ;
  input \rdata_reg[22]_0 ;
  input \rdata_reg[23] ;
  input \rdata_reg[23]_0 ;
  input \rdata_reg[24] ;
  input \rdata_reg[24]_0 ;
  input \rdata_reg[25] ;
  input \rdata_reg[25]_0 ;
  input \rdata_reg[26] ;
  input \rdata_reg[26]_0 ;
  input \rdata_reg[27] ;
  input \rdata_reg[27]_0 ;
  input \rdata_reg[28] ;
  input \rdata_reg[28]_0 ;
  input \rdata_reg[29] ;
  input \rdata_reg[29]_0 ;
  input \rdata_reg[30] ;
  input \rdata_reg[30]_0 ;
  input \rdata_reg[31] ;
  input \rdata_reg[31]_0 ;
  input \rdata_reg[0]_2 ;
  input \rdata_reg[0]_3 ;
  input \rdata[31]_i_5_0 ;
  input int_B_5_read;
  input [31:0]DOADO;
  input [31:0]\rdata[31]_i_5_1 ;
  input int_B_6_read;
  input \rdata_reg[1]_1 ;
  input \rdata_reg[2]_1 ;
  input \rdata_reg[3]_1 ;
  input \rdata_reg[4]_1 ;
  input \rdata_reg[5]_1 ;
  input \rdata_reg[6]_1 ;
  input \rdata_reg[7]_1 ;
  input \rdata_reg[8]_1 ;
  input \rdata_reg[9]_1 ;
  input \rdata_reg[10]_1 ;
  input \rdata_reg[11]_1 ;
  input \rdata_reg[12]_1 ;
  input \rdata_reg[13]_1 ;
  input \rdata_reg[14]_1 ;
  input \rdata_reg[15]_1 ;
  input \rdata_reg[16]_1 ;
  input \rdata_reg[17]_1 ;
  input \rdata_reg[18]_1 ;
  input \rdata_reg[19]_1 ;
  input \rdata_reg[20]_1 ;
  input \rdata_reg[21]_1 ;
  input \rdata_reg[22]_1 ;
  input \rdata_reg[23]_1 ;
  input \rdata_reg[24]_1 ;
  input \rdata_reg[25]_1 ;
  input \rdata_reg[26]_1 ;
  input \rdata_reg[27]_1 ;
  input \rdata_reg[28]_1 ;
  input \rdata_reg[29]_1 ;
  input \rdata_reg[30]_1 ;
  input \rdata_reg[31]_1 ;
  input mem_reg_0;
  input s_axi_control_WVALID;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg_i_8__1;
  input m_reg_reg_i_8__1_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_5_q0;
  wire [31:0]D;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_B_5_be1;
  wire int_B_5_ce1;
  wire [31:0]int_B_5_q0;
  wire [31:0]int_B_5_q1;
  wire int_B_5_read;
  wire int_B_6_read;
  wire m_reg_reg_i_8__1;
  wire m_reg_reg_i_8__1_0;
  wire mem_reg_0;
  wire p_95_in;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[10]_i_4_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[11]_i_4_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[12]_i_4_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[13]_i_4_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[14]_i_4_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_4_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[16]_i_4_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[17]_i_4_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[18]_i_4_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[19]_i_4_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[20]_i_4_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[21]_i_4_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[22]_i_4_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[23]_i_4_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[24]_i_4_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[25]_i_4_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[26]_i_4_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[27]_i_4_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[28]_i_4_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[29]_i_4_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_4_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[30]_i_4_n_0 ;
  wire \rdata[31]_i_5_0 ;
  wire [31:0]\rdata[31]_i_5_1 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[31]_i_7_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_4_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_4_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[8]_i_4_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_4_n_0 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[0]_2 ;
  wire \rdata_reg[0]_3 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[10]_0 ;
  wire \rdata_reg[10]_1 ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[11]_0 ;
  wire \rdata_reg[11]_1 ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[12]_0 ;
  wire \rdata_reg[12]_1 ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[13]_0 ;
  wire \rdata_reg[13]_1 ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[14]_0 ;
  wire \rdata_reg[14]_1 ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[15]_0 ;
  wire \rdata_reg[15]_1 ;
  wire \rdata_reg[16] ;
  wire \rdata_reg[16]_0 ;
  wire \rdata_reg[16]_1 ;
  wire \rdata_reg[17] ;
  wire \rdata_reg[17]_0 ;
  wire \rdata_reg[17]_1 ;
  wire \rdata_reg[18] ;
  wire \rdata_reg[18]_0 ;
  wire \rdata_reg[18]_1 ;
  wire \rdata_reg[19] ;
  wire \rdata_reg[19]_0 ;
  wire \rdata_reg[19]_1 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[1]_1 ;
  wire \rdata_reg[20] ;
  wire \rdata_reg[20]_0 ;
  wire \rdata_reg[20]_1 ;
  wire \rdata_reg[21] ;
  wire \rdata_reg[21]_0 ;
  wire \rdata_reg[21]_1 ;
  wire \rdata_reg[22] ;
  wire \rdata_reg[22]_0 ;
  wire \rdata_reg[22]_1 ;
  wire \rdata_reg[23] ;
  wire \rdata_reg[23]_0 ;
  wire \rdata_reg[23]_1 ;
  wire \rdata_reg[24] ;
  wire \rdata_reg[24]_0 ;
  wire \rdata_reg[24]_1 ;
  wire \rdata_reg[25] ;
  wire \rdata_reg[25]_0 ;
  wire \rdata_reg[25]_1 ;
  wire \rdata_reg[26] ;
  wire \rdata_reg[26]_0 ;
  wire \rdata_reg[26]_1 ;
  wire \rdata_reg[27] ;
  wire \rdata_reg[27]_0 ;
  wire \rdata_reg[27]_1 ;
  wire \rdata_reg[28] ;
  wire \rdata_reg[28]_0 ;
  wire \rdata_reg[28]_1 ;
  wire \rdata_reg[29] ;
  wire \rdata_reg[29]_0 ;
  wire \rdata_reg[29]_1 ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[2]_0 ;
  wire \rdata_reg[2]_1 ;
  wire \rdata_reg[30] ;
  wire \rdata_reg[30]_0 ;
  wire \rdata_reg[30]_1 ;
  wire \rdata_reg[31] ;
  wire \rdata_reg[31]_0 ;
  wire \rdata_reg[31]_1 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[3]_0 ;
  wire \rdata_reg[3]_1 ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[4]_1 ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[5]_0 ;
  wire \rdata_reg[5]_1 ;
  wire \rdata_reg[6] ;
  wire \rdata_reg[6]_0 ;
  wire \rdata_reg[6]_1 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[7]_0 ;
  wire \rdata_reg[7]_1 ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[8]_0 ;
  wire \rdata_reg[8]_1 ;
  wire \rdata_reg[9] ;
  wire \rdata_reg[9]_0 ;
  wire \rdata_reg[9]_1 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_20__1
       (.I0(int_B_5_q0[31]),
        .I1(int_B_5_q0[15]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[23]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[7]),
        .O(B_5_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_21__1
       (.I0(int_B_5_q0[30]),
        .I1(int_B_5_q0[14]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[22]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[6]),
        .O(B_5_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_22__1
       (.I0(int_B_5_q0[29]),
        .I1(int_B_5_q0[13]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[21]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[5]),
        .O(B_5_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_23__1
       (.I0(int_B_5_q0[28]),
        .I1(int_B_5_q0[12]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[20]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[4]),
        .O(B_5_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_24__1
       (.I0(int_B_5_q0[27]),
        .I1(int_B_5_q0[11]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[19]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[3]),
        .O(B_5_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_25__1
       (.I0(int_B_5_q0[26]),
        .I1(int_B_5_q0[10]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[18]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[2]),
        .O(B_5_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_26__1
       (.I0(int_B_5_q0[25]),
        .I1(int_B_5_q0[9]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[17]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[1]),
        .O(B_5_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_27__1
       (.I0(int_B_5_q0[24]),
        .I1(int_B_5_q0[8]),
        .I2(m_reg_reg_i_8__1),
        .I3(int_B_5_q0[16]),
        .I4(m_reg_reg_i_8__1_0),
        .I5(int_B_5_q0[0]),
        .O(B_5_q0[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(int_B_5_q1),
        .DOBDO(int_B_5_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_5_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_5_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__1
       (.I0(mem_reg_0),
        .I1(s_axi_control_WVALID),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_5_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__1
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_5_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__2
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_5_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__1
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_5_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__1
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_5_be1[0]));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[0]_i_2 
       (.I0(\rdata[0]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[0]_0 ),
        .I3(\rdata_reg[0]_1 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[0]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[0]),
        .I3(DOADO[0]),
        .I4(\rdata[31]_i_5_1 [0]),
        .I5(int_B_6_read),
        .O(\rdata[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[10]_i_2 
       (.I0(\rdata[10]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[10] ),
        .I3(\rdata_reg[10]_0 ),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[10]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[10]),
        .I3(DOADO[10]),
        .I4(\rdata[31]_i_5_1 [10]),
        .I5(int_B_6_read),
        .O(\rdata[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[11]_i_2 
       (.I0(\rdata[11]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[11] ),
        .I3(\rdata_reg[11]_0 ),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[11]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[11]),
        .I3(DOADO[11]),
        .I4(\rdata[31]_i_5_1 [11]),
        .I5(int_B_6_read),
        .O(\rdata[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[12]_i_2 
       (.I0(\rdata[12]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[12] ),
        .I3(\rdata_reg[12]_0 ),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[12]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[12]),
        .I3(DOADO[12]),
        .I4(\rdata[31]_i_5_1 [12]),
        .I5(int_B_6_read),
        .O(\rdata[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[13]_i_2 
       (.I0(\rdata[13]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[13] ),
        .I3(\rdata_reg[13]_0 ),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[13]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[13]),
        .I3(DOADO[13]),
        .I4(\rdata[31]_i_5_1 [13]),
        .I5(int_B_6_read),
        .O(\rdata[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[14]_i_2 
       (.I0(\rdata[14]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[14] ),
        .I3(\rdata_reg[14]_0 ),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[14]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[14]),
        .I3(DOADO[14]),
        .I4(\rdata[31]_i_5_1 [14]),
        .I5(int_B_6_read),
        .O(\rdata[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[15]_i_2 
       (.I0(\rdata[15]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[15] ),
        .I3(\rdata_reg[15]_0 ),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[15]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[15]),
        .I3(DOADO[15]),
        .I4(\rdata[31]_i_5_1 [15]),
        .I5(int_B_6_read),
        .O(\rdata[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[16]_i_2 
       (.I0(\rdata[16]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[16] ),
        .I3(\rdata_reg[16]_0 ),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[16]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[16]),
        .I3(DOADO[16]),
        .I4(\rdata[31]_i_5_1 [16]),
        .I5(int_B_6_read),
        .O(\rdata[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[17]_i_2 
       (.I0(\rdata[17]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[17] ),
        .I3(\rdata_reg[17]_0 ),
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[17]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[17]),
        .I3(DOADO[17]),
        .I4(\rdata[31]_i_5_1 [17]),
        .I5(int_B_6_read),
        .O(\rdata[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[18]_i_2 
       (.I0(\rdata[18]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[18] ),
        .I3(\rdata_reg[18]_0 ),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[18]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[18]),
        .I3(DOADO[18]),
        .I4(\rdata[31]_i_5_1 [18]),
        .I5(int_B_6_read),
        .O(\rdata[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[19]_i_2 
       (.I0(\rdata[19]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[19] ),
        .I3(\rdata_reg[19]_0 ),
        .O(\rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[19]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[19]),
        .I3(DOADO[19]),
        .I4(\rdata[31]_i_5_1 [19]),
        .I5(int_B_6_read),
        .O(\rdata[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[1]_i_2 
       (.I0(\rdata[1]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[1] ),
        .I3(\rdata_reg[1]_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[1]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[1]),
        .I3(DOADO[1]),
        .I4(\rdata[31]_i_5_1 [1]),
        .I5(int_B_6_read),
        .O(\rdata[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[20]_i_2 
       (.I0(\rdata[20]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[20] ),
        .I3(\rdata_reg[20]_0 ),
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[20]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[20]),
        .I3(DOADO[20]),
        .I4(\rdata[31]_i_5_1 [20]),
        .I5(int_B_6_read),
        .O(\rdata[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[21]_i_2 
       (.I0(\rdata[21]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[21] ),
        .I3(\rdata_reg[21]_0 ),
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[21]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[21]),
        .I3(DOADO[21]),
        .I4(\rdata[31]_i_5_1 [21]),
        .I5(int_B_6_read),
        .O(\rdata[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[22]_i_2 
       (.I0(\rdata[22]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[22] ),
        .I3(\rdata_reg[22]_0 ),
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[22]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[22]),
        .I3(DOADO[22]),
        .I4(\rdata[31]_i_5_1 [22]),
        .I5(int_B_6_read),
        .O(\rdata[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[23]_i_2 
       (.I0(\rdata[23]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[23] ),
        .I3(\rdata_reg[23]_0 ),
        .O(\rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[23]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[23]),
        .I3(DOADO[23]),
        .I4(\rdata[31]_i_5_1 [23]),
        .I5(int_B_6_read),
        .O(\rdata[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[24]_i_2 
       (.I0(\rdata[24]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[24] ),
        .I3(\rdata_reg[24]_0 ),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[24]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[24]),
        .I3(DOADO[24]),
        .I4(\rdata[31]_i_5_1 [24]),
        .I5(int_B_6_read),
        .O(\rdata[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[25]_i_2 
       (.I0(\rdata[25]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[25] ),
        .I3(\rdata_reg[25]_0 ),
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[25]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[25]),
        .I3(DOADO[25]),
        .I4(\rdata[31]_i_5_1 [25]),
        .I5(int_B_6_read),
        .O(\rdata[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[26]_i_2 
       (.I0(\rdata[26]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[26] ),
        .I3(\rdata_reg[26]_0 ),
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[26]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[26]),
        .I3(DOADO[26]),
        .I4(\rdata[31]_i_5_1 [26]),
        .I5(int_B_6_read),
        .O(\rdata[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[27]_i_2 
       (.I0(\rdata[27]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[27] ),
        .I3(\rdata_reg[27]_0 ),
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[27]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[27]),
        .I3(DOADO[27]),
        .I4(\rdata[31]_i_5_1 [27]),
        .I5(int_B_6_read),
        .O(\rdata[27]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[28]_i_2 
       (.I0(\rdata[28]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[28] ),
        .I3(\rdata_reg[28]_0 ),
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[28]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[28]),
        .I3(DOADO[28]),
        .I4(\rdata[31]_i_5_1 [28]),
        .I5(int_B_6_read),
        .O(\rdata[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[29]_i_2 
       (.I0(\rdata[29]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[29] ),
        .I3(\rdata_reg[29]_0 ),
        .O(\rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[29]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[29]),
        .I3(DOADO[29]),
        .I4(\rdata[31]_i_5_1 [29]),
        .I5(int_B_6_read),
        .O(\rdata[29]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[2]_i_2 
       (.I0(\rdata[2]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[2] ),
        .I3(\rdata_reg[2]_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[2]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[2]),
        .I3(DOADO[2]),
        .I4(\rdata[31]_i_5_1 [2]),
        .I5(int_B_6_read),
        .O(\rdata[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[30]_i_2 
       (.I0(\rdata[30]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[30] ),
        .I3(\rdata_reg[30]_0 ),
        .O(\rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[30]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[30]),
        .I3(DOADO[30]),
        .I4(\rdata[31]_i_5_1 [30]),
        .I5(int_B_6_read),
        .O(\rdata[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[31]_i_5 
       (.I0(\rdata[31]_i_7_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[31] ),
        .I3(\rdata_reg[31]_0 ),
        .O(\rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[31]_i_7 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[31]),
        .I3(DOADO[31]),
        .I4(\rdata[31]_i_5_1 [31]),
        .I5(int_B_6_read),
        .O(\rdata[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[3]_i_2 
       (.I0(\rdata[3]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[3] ),
        .I3(\rdata_reg[3]_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[3]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[3]),
        .I3(DOADO[3]),
        .I4(\rdata[31]_i_5_1 [3]),
        .I5(int_B_6_read),
        .O(\rdata[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[4]_i_2 
       (.I0(\rdata[4]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[4] ),
        .I3(\rdata_reg[4]_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[4]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[4]),
        .I3(DOADO[4]),
        .I4(\rdata[31]_i_5_1 [4]),
        .I5(int_B_6_read),
        .O(\rdata[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[5]_i_2 
       (.I0(\rdata[5]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[5] ),
        .I3(\rdata_reg[5]_0 ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[5]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[5]),
        .I3(DOADO[5]),
        .I4(\rdata[31]_i_5_1 [5]),
        .I5(int_B_6_read),
        .O(\rdata[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[6]_i_2 
       (.I0(\rdata[6]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[6] ),
        .I3(\rdata_reg[6]_0 ),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[6]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[6]),
        .I3(DOADO[6]),
        .I4(\rdata[31]_i_5_1 [6]),
        .I5(int_B_6_read),
        .O(\rdata[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[7]_i_2 
       (.I0(\rdata[7]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[7] ),
        .I3(\rdata_reg[7]_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[7]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[7]),
        .I3(DOADO[7]),
        .I4(\rdata[31]_i_5_1 [7]),
        .I5(int_B_6_read),
        .O(\rdata[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[8]_i_2 
       (.I0(\rdata[8]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[8] ),
        .I3(\rdata_reg[8]_0 ),
        .O(\rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[8]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[8]),
        .I3(DOADO[8]),
        .I4(\rdata[31]_i_5_1 [8]),
        .I5(int_B_6_read),
        .O(\rdata[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rdata[9]_i_2 
       (.I0(\rdata[9]_i_4_n_0 ),
        .I1(\rdata_reg[0] ),
        .I2(\rdata_reg[9] ),
        .I3(\rdata_reg[9]_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A08082A2A)) 
    \rdata[9]_i_4 
       (.I0(\rdata[31]_i_5_0 ),
        .I1(int_B_5_read),
        .I2(int_B_5_q1[9]),
        .I3(DOADO[9]),
        .I4(\rdata[31]_i_5_1 [9]),
        .I5(int_B_6_read),
        .O(\rdata[9]_i_4_n_0 ));
  MUXF7 \rdata_reg[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata_reg[0]_3 ),
        .O(D[0]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[10]_i_1 
       (.I0(\rdata[10]_i_2_n_0 ),
        .I1(\rdata_reg[10]_1 ),
        .O(D[10]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[11]_i_1 
       (.I0(\rdata[11]_i_2_n_0 ),
        .I1(\rdata_reg[11]_1 ),
        .O(D[11]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[12]_i_1 
       (.I0(\rdata[12]_i_2_n_0 ),
        .I1(\rdata_reg[12]_1 ),
        .O(D[12]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[13]_i_1 
       (.I0(\rdata[13]_i_2_n_0 ),
        .I1(\rdata_reg[13]_1 ),
        .O(D[13]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[14]_i_1 
       (.I0(\rdata[14]_i_2_n_0 ),
        .I1(\rdata_reg[14]_1 ),
        .O(D[14]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[15]_i_1 
       (.I0(\rdata[15]_i_2_n_0 ),
        .I1(\rdata_reg[15]_1 ),
        .O(D[15]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[16]_i_1 
       (.I0(\rdata[16]_i_2_n_0 ),
        .I1(\rdata_reg[16]_1 ),
        .O(D[16]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[17]_i_1 
       (.I0(\rdata[17]_i_2_n_0 ),
        .I1(\rdata_reg[17]_1 ),
        .O(D[17]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[18]_i_1 
       (.I0(\rdata[18]_i_2_n_0 ),
        .I1(\rdata_reg[18]_1 ),
        .O(D[18]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
        .I1(\rdata_reg[19]_1 ),
        .O(D[19]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata_reg[1]_1 ),
        .O(D[1]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[20]_i_1 
       (.I0(\rdata[20]_i_2_n_0 ),
        .I1(\rdata_reg[20]_1 ),
        .O(D[20]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[21]_i_1 
       (.I0(\rdata[21]_i_2_n_0 ),
        .I1(\rdata_reg[21]_1 ),
        .O(D[21]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[22]_i_1 
       (.I0(\rdata[22]_i_2_n_0 ),
        .I1(\rdata_reg[22]_1 ),
        .O(D[22]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\rdata_reg[23]_1 ),
        .O(D[23]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
        .I1(\rdata_reg[24]_1 ),
        .O(D[24]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[25]_i_1 
       (.I0(\rdata[25]_i_2_n_0 ),
        .I1(\rdata_reg[25]_1 ),
        .O(D[25]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[26]_i_1 
       (.I0(\rdata[26]_i_2_n_0 ),
        .I1(\rdata_reg[26]_1 ),
        .O(D[26]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[27]_i_1 
       (.I0(\rdata[27]_i_2_n_0 ),
        .I1(\rdata_reg[27]_1 ),
        .O(D[27]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[28]_i_1 
       (.I0(\rdata[28]_i_2_n_0 ),
        .I1(\rdata_reg[28]_1 ),
        .O(D[28]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[29]_i_1 
       (.I0(\rdata[29]_i_2_n_0 ),
        .I1(\rdata_reg[29]_1 ),
        .O(D[29]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(\rdata_reg[2]_1 ),
        .O(D[2]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[30]_i_1 
       (.I0(\rdata[30]_i_2_n_0 ),
        .I1(\rdata_reg[30]_1 ),
        .O(D[30]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[31]_i_2 
       (.I0(\rdata[31]_i_5_n_0 ),
        .I1(\rdata_reg[31]_1 ),
        .O(D[31]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[3]_i_1 
       (.I0(\rdata[3]_i_2_n_0 ),
        .I1(\rdata_reg[3]_1 ),
        .O(D[3]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(\rdata_reg[4]_1 ),
        .O(D[4]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[5]_i_1 
       (.I0(\rdata[5]_i_2_n_0 ),
        .I1(\rdata_reg[5]_1 ),
        .O(D[5]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[6]_i_1 
       (.I0(\rdata[6]_i_2_n_0 ),
        .I1(\rdata_reg[6]_1 ),
        .O(D[6]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata_reg[7]_1 ),
        .O(D[7]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[8]_i_1 
       (.I0(\rdata[8]_i_2_n_0 ),
        .I1(\rdata_reg[8]_1 ),
        .O(D[8]),
        .S(\rdata_reg[0]_2 ));
  MUXF7 \rdata_reg[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(\rdata_reg[9]_1 ),
        .O(D[9]),
        .S(\rdata_reg[0]_2 ));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_19
   (DOADO,
    A_0_ce0,
    B_6_q0,
    ap_clk,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    ap_enable_reg_pp0_iter1,
    Q,
    mem_reg_1,
    s_axi_control_WVALID,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output [31:0]DOADO;
  output A_0_ce0;
  output [7:0]B_6_q0;
  input ap_clk;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input ap_enable_reg_pp0_iter1;
  input [0:0]Q;
  input mem_reg_1;
  input s_axi_control_WVALID;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_6_q0;
  wire [31:0]DOADO;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire [3:0]int_B_6_be1;
  wire int_B_6_ce1;
  wire [31:0]int_B_6_q0;
  wire [0:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_B_6_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_6_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_6_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__0
       (.I0(mem_reg_1),
        .I1(s_axi_control_WVALID),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_6_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__0
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_6_be1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_2__14
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .O(A_0_ce0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__1
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_6_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__0
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_6_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__0
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_6_be1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_20__2
       (.I0(int_B_6_q0[31]),
        .I1(int_B_6_q0[15]),
        .I2(B[0]),
        .I3(int_B_6_q0[23]),
        .I4(B[1]),
        .I5(int_B_6_q0[7]),
        .O(B_6_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_21__2
       (.I0(int_B_6_q0[30]),
        .I1(int_B_6_q0[14]),
        .I2(B[0]),
        .I3(int_B_6_q0[22]),
        .I4(B[1]),
        .I5(int_B_6_q0[6]),
        .O(B_6_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_22__2
       (.I0(int_B_6_q0[29]),
        .I1(int_B_6_q0[13]),
        .I2(B[0]),
        .I3(int_B_6_q0[21]),
        .I4(B[1]),
        .I5(int_B_6_q0[5]),
        .O(B_6_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_23__2
       (.I0(int_B_6_q0[28]),
        .I1(int_B_6_q0[12]),
        .I2(B[0]),
        .I3(int_B_6_q0[20]),
        .I4(B[1]),
        .I5(int_B_6_q0[4]),
        .O(B_6_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_24__2
       (.I0(int_B_6_q0[27]),
        .I1(int_B_6_q0[11]),
        .I2(B[0]),
        .I3(int_B_6_q0[19]),
        .I4(B[1]),
        .I5(int_B_6_q0[3]),
        .O(B_6_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_25__2
       (.I0(int_B_6_q0[26]),
        .I1(int_B_6_q0[10]),
        .I2(B[0]),
        .I3(int_B_6_q0[18]),
        .I4(B[1]),
        .I5(int_B_6_q0[2]),
        .O(B_6_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_26__2
       (.I0(int_B_6_q0[25]),
        .I1(int_B_6_q0[9]),
        .I2(B[0]),
        .I3(int_B_6_q0[17]),
        .I4(B[1]),
        .I5(int_B_6_q0[1]),
        .O(B_6_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_27__2
       (.I0(int_B_6_q0[24]),
        .I1(int_B_6_q0[8]),
        .I2(B[0]),
        .I3(int_B_6_q0[16]),
        .I4(B[1]),
        .I5(int_B_6_q0[0]),
        .O(B_6_q0[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_20
   (mem_reg_0,
    A_1_ce0,
    ADDRARDADDR,
    B_7_q0,
    ap_clk,
    A_1_address0,
    s_axi_control_WDATA,
    ap_enable_reg_pp0_iter0,
    Q,
    s_axi_control_WVALID,
    mem_reg_1,
    rstate,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    mem_reg_2,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg_i_8__2,
    m_reg_reg_i_8__2_0);
  output [31:0]mem_reg_0;
  output A_1_ce0;
  output [0:0]ADDRARDADDR;
  output [7:0]B_7_q0;
  input ap_clk;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input ap_enable_reg_pp0_iter0;
  input [0:0]Q;
  input s_axi_control_WVALID;
  input mem_reg_1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input [0:0]s_axi_control_ARADDR;
  input [0:0]mem_reg_2;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg_i_8__2;
  input m_reg_reg_i_8__2_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_7_q0;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [3:0]int_B_7_be1;
  wire int_B_7_ce1;
  wire [31:0]int_B_7_q0;
  wire m_reg_reg_i_8__2;
  wire m_reg_reg_i_8__2_0;
  wire [31:0]mem_reg_0;
  wire mem_reg_1;
  wire [0:0]mem_reg_2;
  wire p_95_in;
  wire [1:0]rstate;
  wire [0:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_20__2
       (.I0(int_B_7_q0[31]),
        .I1(int_B_7_q0[15]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[23]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[7]),
        .O(B_7_q0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_21__2
       (.I0(int_B_7_q0[30]),
        .I1(int_B_7_q0[14]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[22]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[6]),
        .O(B_7_q0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_22__2
       (.I0(int_B_7_q0[29]),
        .I1(int_B_7_q0[13]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[21]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[5]),
        .O(B_7_q0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_23__2
       (.I0(int_B_7_q0[28]),
        .I1(int_B_7_q0[12]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[20]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[4]),
        .O(B_7_q0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_24__2
       (.I0(int_B_7_q0[27]),
        .I1(int_B_7_q0[11]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[19]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[3]),
        .O(B_7_q0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_25__2
       (.I0(int_B_7_q0[26]),
        .I1(int_B_7_q0[10]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[18]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[2]),
        .O(B_7_q0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_26__2
       (.I0(int_B_7_q0[25]),
        .I1(int_B_7_q0[9]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[17]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[1]),
        .O(B_7_q0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_27__2
       (.I0(int_B_7_q0[24]),
        .I1(int_B_7_q0[8]),
        .I2(m_reg_reg_i_8__2),
        .I3(int_B_7_q0[16]),
        .I4(m_reg_reg_i_8__2_0),
        .I5(int_B_7_q0[0]),
        .O(B_7_q0[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(mem_reg_0),
        .DOBDO(int_B_7_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_B_7_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_B_7_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_1),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_B_7_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_B_7_be1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_2__13
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q),
        .O(A_1_ce0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    mem_reg_i_3
       (.I0(s_axi_control_ARADDR),
        .I1(rstate[1]),
        .I2(s_axi_control_ARVALID),
        .I3(rstate[0]),
        .I4(mem_reg_2),
        .O(ADDRARDADDR));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__0
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_B_7_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_B_7_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5
       (.I0(mem_reg_1),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_B_7_be1[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_6
   (DOADO,
    b_reg0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    B_1_q0,
    s_axi_control_WVALID,
    mem_reg_0,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg,
    m_reg_reg_0);
  output [31:0]DOADO;
  output [8:0]b_reg0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_1_q0;
  input s_axi_control_WVALID;
  input mem_reg_0;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg;
  input m_reg_reg_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_1_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [8:0]b_reg0;
  wire [3:0]int_A_1_be1;
  wire int_A_1_ce1;
  wire [31:0]int_A_1_q0;
  wire m_reg_reg;
  wire m_reg_reg_0;
  wire m_reg_reg_i_10_n_0;
  wire m_reg_reg_i_11_n_0;
  wire m_reg_reg_i_16_n_0;
  wire m_reg_reg_i_17_n_0;
  wire m_reg_reg_i_18_n_0;
  wire m_reg_reg_i_19_n_0;
  wire m_reg_reg_i_2_n_0;
  wire m_reg_reg_i_2_n_1;
  wire m_reg_reg_i_2_n_2;
  wire m_reg_reg_i_2_n_3;
  wire m_reg_reg_i_3_n_0;
  wire m_reg_reg_i_3_n_1;
  wire m_reg_reg_i_3_n_2;
  wire m_reg_reg_i_3_n_3;
  wire m_reg_reg_i_8_n_0;
  wire m_reg_reg_i_9_n_0;
  wire mem_reg_0;
  wire p_95_in;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [7:0]zext_ln38_3_fu_418_p1;
  wire [3:0]NLW_m_reg_reg_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1_O_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  CARRY4 m_reg_reg_i_1
       (.CI(m_reg_reg_i_2_n_0),
        .CO(NLW_m_reg_reg_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1_O_UNCONNECTED[3:1],b_reg0[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10
       (.I0(zext_ln38_3_fu_418_p1[5]),
        .I1(B_1_q0[5]),
        .O(m_reg_reg_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11
       (.I0(zext_ln38_3_fu_418_p1[4]),
        .I1(B_1_q0[4]),
        .O(m_reg_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_12
       (.I0(int_A_1_q0[27]),
        .I1(int_A_1_q0[11]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[19]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[3]),
        .O(zext_ln38_3_fu_418_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_13
       (.I0(int_A_1_q0[26]),
        .I1(int_A_1_q0[10]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[18]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[2]),
        .O(zext_ln38_3_fu_418_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_14
       (.I0(int_A_1_q0[25]),
        .I1(int_A_1_q0[9]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[17]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[1]),
        .O(zext_ln38_3_fu_418_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_15
       (.I0(int_A_1_q0[24]),
        .I1(int_A_1_q0[8]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[16]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[0]),
        .O(zext_ln38_3_fu_418_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_16
       (.I0(zext_ln38_3_fu_418_p1[3]),
        .I1(B_1_q0[3]),
        .O(m_reg_reg_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_17
       (.I0(zext_ln38_3_fu_418_p1[2]),
        .I1(B_1_q0[2]),
        .O(m_reg_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_18
       (.I0(zext_ln38_3_fu_418_p1[1]),
        .I1(B_1_q0[1]),
        .O(m_reg_reg_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_19
       (.I0(zext_ln38_3_fu_418_p1[0]),
        .I1(B_1_q0[0]),
        .O(m_reg_reg_i_19_n_0));
  CARRY4 m_reg_reg_i_2
       (.CI(m_reg_reg_i_3_n_0),
        .CO({m_reg_reg_i_2_n_0,m_reg_reg_i_2_n_1,m_reg_reg_i_2_n_2,m_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_3_fu_418_p1[7:4]),
        .O(b_reg0[7:4]),
        .S({m_reg_reg_i_8_n_0,m_reg_reg_i_9_n_0,m_reg_reg_i_10_n_0,m_reg_reg_i_11_n_0}));
  CARRY4 m_reg_reg_i_3
       (.CI(1'b0),
        .CO({m_reg_reg_i_3_n_0,m_reg_reg_i_3_n_1,m_reg_reg_i_3_n_2,m_reg_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_3_fu_418_p1[3:0]),
        .O(b_reg0[3:0]),
        .S({m_reg_reg_i_16_n_0,m_reg_reg_i_17_n_0,m_reg_reg_i_18_n_0,m_reg_reg_i_19_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_4
       (.I0(int_A_1_q0[31]),
        .I1(int_A_1_q0[15]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[23]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[7]),
        .O(zext_ln38_3_fu_418_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_5
       (.I0(int_A_1_q0[30]),
        .I1(int_A_1_q0[14]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[22]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[6]),
        .O(zext_ln38_3_fu_418_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_6
       (.I0(int_A_1_q0[29]),
        .I1(int_A_1_q0[13]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[21]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[5]),
        .O(zext_ln38_3_fu_418_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_7
       (.I0(int_A_1_q0[28]),
        .I1(int_A_1_q0[12]),
        .I2(m_reg_reg),
        .I3(int_A_1_q0[20]),
        .I4(m_reg_reg_0),
        .I5(int_A_1_q0[4]),
        .O(zext_ln38_3_fu_418_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8
       (.I0(zext_ln38_3_fu_418_p1[7]),
        .I1(B_1_q0[7]),
        .O(m_reg_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9
       (.I0(zext_ln38_3_fu_418_p1[6]),
        .I1(B_1_q0[6]),
        .O(m_reg_reg_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_A_1_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_1_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_1_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__13
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_0),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_1_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__14
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_1_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__13
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_1_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__13
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_1_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_6
       (.I0(p_95_in),
        .I1(mem_reg_0),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_1_be1[0]));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_7
   (DOADO,
    sub_ln38_2_fu_512_p2,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    B_2_q0,
    s_axi_control_WVALID,
    mem_reg_1,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output [31:0]DOADO;
  output [8:0]sub_ln38_2_fu_512_p2;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_2_q0;
  input s_axi_control_WVALID;
  input mem_reg_1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_2_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_A_2_be1;
  wire int_A_2_ce1;
  wire [31:0]int_A_2_q0;
  wire [0:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire p_reg_reg_i_10__0_n_0;
  wire p_reg_reg_i_11__0_n_0;
  wire p_reg_reg_i_16__0_n_0;
  wire p_reg_reg_i_17__0_n_0;
  wire p_reg_reg_i_18__0_n_0;
  wire p_reg_reg_i_19__0_n_0;
  wire p_reg_reg_i_2__0_n_0;
  wire p_reg_reg_i_2__0_n_1;
  wire p_reg_reg_i_2__0_n_2;
  wire p_reg_reg_i_2__0_n_3;
  wire p_reg_reg_i_3__0_n_0;
  wire p_reg_reg_i_3__0_n_1;
  wire p_reg_reg_i_3__0_n_2;
  wire p_reg_reg_i_3__0_n_3;
  wire p_reg_reg_i_8__0_n_0;
  wire p_reg_reg_i_9__0_n_0;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [8:0]sub_ln38_2_fu_512_p2;
  wire [7:0]zext_ln38_5_fu_504_p1;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__0_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__0_O_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_A_2_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_2_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_2_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__12
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_1),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_2_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__12
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_2_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__13
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_2_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__12
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_2_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__12
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_2_be1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__0
       (.I0(zext_ln38_5_fu_504_p1[5]),
        .I1(B_2_q0[5]),
        .O(p_reg_reg_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__0
       (.I0(zext_ln38_5_fu_504_p1[4]),
        .I1(B_2_q0[4]),
        .O(p_reg_reg_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_12__0
       (.I0(int_A_2_q0[27]),
        .I1(int_A_2_q0[11]),
        .I2(B[0]),
        .I3(int_A_2_q0[19]),
        .I4(B[1]),
        .I5(int_A_2_q0[3]),
        .O(zext_ln38_5_fu_504_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_13__0
       (.I0(int_A_2_q0[26]),
        .I1(int_A_2_q0[10]),
        .I2(B[0]),
        .I3(int_A_2_q0[18]),
        .I4(B[1]),
        .I5(int_A_2_q0[2]),
        .O(zext_ln38_5_fu_504_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_14__0
       (.I0(int_A_2_q0[25]),
        .I1(int_A_2_q0[9]),
        .I2(B[0]),
        .I3(int_A_2_q0[17]),
        .I4(B[1]),
        .I5(int_A_2_q0[1]),
        .O(zext_ln38_5_fu_504_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_15__0
       (.I0(int_A_2_q0[24]),
        .I1(int_A_2_q0[8]),
        .I2(B[0]),
        .I3(int_A_2_q0[16]),
        .I4(B[1]),
        .I5(int_A_2_q0[0]),
        .O(zext_ln38_5_fu_504_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_16__0
       (.I0(zext_ln38_5_fu_504_p1[3]),
        .I1(B_2_q0[3]),
        .O(p_reg_reg_i_16__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_17__0
       (.I0(zext_ln38_5_fu_504_p1[2]),
        .I1(B_2_q0[2]),
        .O(p_reg_reg_i_17__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_18__0
       (.I0(zext_ln38_5_fu_504_p1[1]),
        .I1(B_2_q0[1]),
        .O(p_reg_reg_i_18__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_19__0
       (.I0(zext_ln38_5_fu_504_p1[0]),
        .I1(B_2_q0[0]),
        .O(p_reg_reg_i_19__0_n_0));
  CARRY4 p_reg_reg_i_1__0
       (.CI(p_reg_reg_i_2__0_n_0),
        .CO(NLW_p_reg_reg_i_1__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__0_O_UNCONNECTED[3:1],sub_ln38_2_fu_512_p2[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_2__0
       (.CI(p_reg_reg_i_3__0_n_0),
        .CO({p_reg_reg_i_2__0_n_0,p_reg_reg_i_2__0_n_1,p_reg_reg_i_2__0_n_2,p_reg_reg_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_5_fu_504_p1[7:4]),
        .O(sub_ln38_2_fu_512_p2[7:4]),
        .S({p_reg_reg_i_8__0_n_0,p_reg_reg_i_9__0_n_0,p_reg_reg_i_10__0_n_0,p_reg_reg_i_11__0_n_0}));
  CARRY4 p_reg_reg_i_3__0
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__0_n_0,p_reg_reg_i_3__0_n_1,p_reg_reg_i_3__0_n_2,p_reg_reg_i_3__0_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_5_fu_504_p1[3:0]),
        .O(sub_ln38_2_fu_512_p2[3:0]),
        .S({p_reg_reg_i_16__0_n_0,p_reg_reg_i_17__0_n_0,p_reg_reg_i_18__0_n_0,p_reg_reg_i_19__0_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_4__0
       (.I0(int_A_2_q0[31]),
        .I1(int_A_2_q0[15]),
        .I2(B[0]),
        .I3(int_A_2_q0[23]),
        .I4(B[1]),
        .I5(int_A_2_q0[7]),
        .O(zext_ln38_5_fu_504_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_5__0
       (.I0(int_A_2_q0[30]),
        .I1(int_A_2_q0[14]),
        .I2(B[0]),
        .I3(int_A_2_q0[22]),
        .I4(B[1]),
        .I5(int_A_2_q0[6]),
        .O(zext_ln38_5_fu_504_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_6__0
       (.I0(int_A_2_q0[29]),
        .I1(int_A_2_q0[13]),
        .I2(B[0]),
        .I3(int_A_2_q0[21]),
        .I4(B[1]),
        .I5(int_A_2_q0[5]),
        .O(zext_ln38_5_fu_504_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_7__0
       (.I0(int_A_2_q0[28]),
        .I1(int_A_2_q0[12]),
        .I2(B[0]),
        .I3(int_A_2_q0[20]),
        .I4(B[1]),
        .I5(int_A_2_q0[4]),
        .O(zext_ln38_5_fu_504_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__0
       (.I0(zext_ln38_5_fu_504_p1[7]),
        .I1(B_2_q0[7]),
        .O(p_reg_reg_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__0
       (.I0(zext_ln38_5_fu_504_p1[6]),
        .I1(B_2_q0[6]),
        .O(p_reg_reg_i_9__0_n_0));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_8
   (int_A_2_read_reg,
    int_A_2_read_reg_0,
    int_A_2_read_reg_1,
    int_A_2_read_reg_2,
    int_A_2_read_reg_3,
    int_A_2_read_reg_4,
    int_A_2_read_reg_5,
    int_A_2_read_reg_6,
    int_A_2_read_reg_7,
    int_A_2_read_reg_8,
    int_A_2_read_reg_9,
    int_A_2_read_reg_10,
    int_A_2_read_reg_11,
    int_A_2_read_reg_12,
    int_A_2_read_reg_13,
    int_A_2_read_reg_14,
    int_A_2_read_reg_15,
    int_A_2_read_reg_16,
    int_A_2_read_reg_17,
    int_A_2_read_reg_18,
    int_A_2_read_reg_19,
    int_A_2_read_reg_20,
    int_A_2_read_reg_21,
    int_A_2_read_reg_22,
    int_A_2_read_reg_23,
    int_A_2_read_reg_24,
    int_A_2_read_reg_25,
    int_A_2_read_reg_26,
    int_A_2_read_reg_27,
    int_A_2_read_reg_28,
    int_A_2_read_reg_29,
    int_A_2_read_reg_30,
    m_reg_reg_i_2__0_0,
    ap_clk,
    A_1_ce0,
    ADDRARDADDR,
    A_1_address0,
    s_axi_control_WDATA,
    B_3_q0,
    int_A_2_read,
    int_A_3_read,
    DOADO,
    int_A_1_read,
    \rdata[31]_i_6 ,
    mem_reg_0,
    s_axi_control_WVALID,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    m_reg_reg,
    m_reg_reg_0);
  output int_A_2_read_reg;
  output int_A_2_read_reg_0;
  output int_A_2_read_reg_1;
  output int_A_2_read_reg_2;
  output int_A_2_read_reg_3;
  output int_A_2_read_reg_4;
  output int_A_2_read_reg_5;
  output int_A_2_read_reg_6;
  output int_A_2_read_reg_7;
  output int_A_2_read_reg_8;
  output int_A_2_read_reg_9;
  output int_A_2_read_reg_10;
  output int_A_2_read_reg_11;
  output int_A_2_read_reg_12;
  output int_A_2_read_reg_13;
  output int_A_2_read_reg_14;
  output int_A_2_read_reg_15;
  output int_A_2_read_reg_16;
  output int_A_2_read_reg_17;
  output int_A_2_read_reg_18;
  output int_A_2_read_reg_19;
  output int_A_2_read_reg_20;
  output int_A_2_read_reg_21;
  output int_A_2_read_reg_22;
  output int_A_2_read_reg_23;
  output int_A_2_read_reg_24;
  output int_A_2_read_reg_25;
  output int_A_2_read_reg_26;
  output int_A_2_read_reg_27;
  output int_A_2_read_reg_28;
  output int_A_2_read_reg_29;
  output int_A_2_read_reg_30;
  output [8:0]m_reg_reg_i_2__0_0;
  input ap_clk;
  input A_1_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]A_1_address0;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_3_q0;
  input int_A_2_read;
  input int_A_3_read;
  input [31:0]DOADO;
  input int_A_1_read;
  input [31:0]\rdata[31]_i_6 ;
  input mem_reg_0;
  input s_axi_control_WVALID;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input m_reg_reg;
  input m_reg_reg_0;

  wire [0:0]ADDRARDADDR;
  wire [0:0]A_1_address0;
  wire A_1_ce0;
  wire [7:0]B_3_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire int_A_1_read;
  wire int_A_2_read;
  wire int_A_2_read_reg;
  wire int_A_2_read_reg_0;
  wire int_A_2_read_reg_1;
  wire int_A_2_read_reg_10;
  wire int_A_2_read_reg_11;
  wire int_A_2_read_reg_12;
  wire int_A_2_read_reg_13;
  wire int_A_2_read_reg_14;
  wire int_A_2_read_reg_15;
  wire int_A_2_read_reg_16;
  wire int_A_2_read_reg_17;
  wire int_A_2_read_reg_18;
  wire int_A_2_read_reg_19;
  wire int_A_2_read_reg_2;
  wire int_A_2_read_reg_20;
  wire int_A_2_read_reg_21;
  wire int_A_2_read_reg_22;
  wire int_A_2_read_reg_23;
  wire int_A_2_read_reg_24;
  wire int_A_2_read_reg_25;
  wire int_A_2_read_reg_26;
  wire int_A_2_read_reg_27;
  wire int_A_2_read_reg_28;
  wire int_A_2_read_reg_29;
  wire int_A_2_read_reg_3;
  wire int_A_2_read_reg_30;
  wire int_A_2_read_reg_4;
  wire int_A_2_read_reg_5;
  wire int_A_2_read_reg_6;
  wire int_A_2_read_reg_7;
  wire int_A_2_read_reg_8;
  wire int_A_2_read_reg_9;
  wire [3:0]int_A_3_be1;
  wire int_A_3_ce1;
  wire [31:0]int_A_3_q0;
  wire [31:0]int_A_3_q1;
  wire int_A_3_read;
  wire m_reg_reg;
  wire m_reg_reg_0;
  wire m_reg_reg_i_10__0_n_0;
  wire m_reg_reg_i_11__0_n_0;
  wire m_reg_reg_i_16__0_n_0;
  wire m_reg_reg_i_17__0_n_0;
  wire m_reg_reg_i_18__0_n_0;
  wire m_reg_reg_i_19__0_n_0;
  wire [8:0]m_reg_reg_i_2__0_0;
  wire m_reg_reg_i_2__0_n_0;
  wire m_reg_reg_i_2__0_n_1;
  wire m_reg_reg_i_2__0_n_2;
  wire m_reg_reg_i_2__0_n_3;
  wire m_reg_reg_i_3__0_n_0;
  wire m_reg_reg_i_3__0_n_1;
  wire m_reg_reg_i_3__0_n_2;
  wire m_reg_reg_i_3__0_n_3;
  wire m_reg_reg_i_8__0_n_0;
  wire m_reg_reg_i_9__0_n_0;
  wire mem_reg_0;
  wire p_95_in;
  wire [31:0]\rdata[31]_i_6 ;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [7:0]zext_ln38_7_fu_436_p1;
  wire [3:0]NLW_m_reg_reg_i_1__0_CO_UNCONNECTED;
  wire [3:1]NLW_m_reg_reg_i_1__0_O_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_10__0
       (.I0(zext_ln38_7_fu_436_p1[5]),
        .I1(B_3_q0[5]),
        .O(m_reg_reg_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_11__0
       (.I0(zext_ln38_7_fu_436_p1[4]),
        .I1(B_3_q0[4]),
        .O(m_reg_reg_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_12__0
       (.I0(int_A_3_q0[27]),
        .I1(int_A_3_q0[11]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[19]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[3]),
        .O(zext_ln38_7_fu_436_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_13__0
       (.I0(int_A_3_q0[26]),
        .I1(int_A_3_q0[10]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[18]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[2]),
        .O(zext_ln38_7_fu_436_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_14__0
       (.I0(int_A_3_q0[25]),
        .I1(int_A_3_q0[9]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[17]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[1]),
        .O(zext_ln38_7_fu_436_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_15__0
       (.I0(int_A_3_q0[24]),
        .I1(int_A_3_q0[8]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[16]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[0]),
        .O(zext_ln38_7_fu_436_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_16__0
       (.I0(zext_ln38_7_fu_436_p1[3]),
        .I1(B_3_q0[3]),
        .O(m_reg_reg_i_16__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_17__0
       (.I0(zext_ln38_7_fu_436_p1[2]),
        .I1(B_3_q0[2]),
        .O(m_reg_reg_i_17__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_18__0
       (.I0(zext_ln38_7_fu_436_p1[1]),
        .I1(B_3_q0[1]),
        .O(m_reg_reg_i_18__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_19__0
       (.I0(zext_ln38_7_fu_436_p1[0]),
        .I1(B_3_q0[0]),
        .O(m_reg_reg_i_19__0_n_0));
  CARRY4 m_reg_reg_i_1__0
       (.CI(m_reg_reg_i_2__0_n_0),
        .CO(NLW_m_reg_reg_i_1__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_reg_reg_i_1__0_O_UNCONNECTED[3:1],m_reg_reg_i_2__0_0[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 m_reg_reg_i_2__0
       (.CI(m_reg_reg_i_3__0_n_0),
        .CO({m_reg_reg_i_2__0_n_0,m_reg_reg_i_2__0_n_1,m_reg_reg_i_2__0_n_2,m_reg_reg_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_7_fu_436_p1[7:4]),
        .O(m_reg_reg_i_2__0_0[7:4]),
        .S({m_reg_reg_i_8__0_n_0,m_reg_reg_i_9__0_n_0,m_reg_reg_i_10__0_n_0,m_reg_reg_i_11__0_n_0}));
  CARRY4 m_reg_reg_i_3__0
       (.CI(1'b0),
        .CO({m_reg_reg_i_3__0_n_0,m_reg_reg_i_3__0_n_1,m_reg_reg_i_3__0_n_2,m_reg_reg_i_3__0_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_7_fu_436_p1[3:0]),
        .O(m_reg_reg_i_2__0_0[3:0]),
        .S({m_reg_reg_i_16__0_n_0,m_reg_reg_i_17__0_n_0,m_reg_reg_i_18__0_n_0,m_reg_reg_i_19__0_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_4__0
       (.I0(int_A_3_q0[31]),
        .I1(int_A_3_q0[15]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[23]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[7]),
        .O(zext_ln38_7_fu_436_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_5__0
       (.I0(int_A_3_q0[30]),
        .I1(int_A_3_q0[14]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[22]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[6]),
        .O(zext_ln38_7_fu_436_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_6__0
       (.I0(int_A_3_q0[29]),
        .I1(int_A_3_q0[13]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[21]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[5]),
        .O(zext_ln38_7_fu_436_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    m_reg_reg_i_7__0
       (.I0(int_A_3_q0[28]),
        .I1(int_A_3_q0[12]),
        .I2(m_reg_reg),
        .I3(int_A_3_q0[20]),
        .I4(m_reg_reg_0),
        .I5(int_A_3_q0[4]),
        .O(zext_ln38_7_fu_436_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_8__0
       (.I0(zext_ln38_7_fu_436_p1[7]),
        .I1(B_3_q0[7]),
        .O(m_reg_reg_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_reg_reg_i_9__0
       (.I0(zext_ln38_7_fu_436_p1[6]),
        .I1(B_3_q0[6]),
        .O(m_reg_reg_i_9__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,A_1_address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(int_A_3_q1),
        .DOBDO(int_A_3_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_3_ce1),
        .ENBWREN(A_1_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_3_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__11
       (.I0(mem_reg_0),
        .I1(s_axi_control_WVALID),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_3_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__11
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_3_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__12
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_3_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__11
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_3_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__11
       (.I0(mem_reg_0),
        .I1(p_95_in),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_3_be1[0]));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[0]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[0]),
        .I3(DOADO[0]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [0]),
        .O(int_A_2_read_reg));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[10]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[10]),
        .I3(DOADO[10]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [10]),
        .O(int_A_2_read_reg_9));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[11]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[11]),
        .I3(DOADO[11]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [11]),
        .O(int_A_2_read_reg_10));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[12]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[12]),
        .I3(DOADO[12]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [12]),
        .O(int_A_2_read_reg_11));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[13]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[13]),
        .I3(DOADO[13]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [13]),
        .O(int_A_2_read_reg_12));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[14]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[14]),
        .I3(DOADO[14]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [14]),
        .O(int_A_2_read_reg_13));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[15]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[15]),
        .I3(DOADO[15]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [15]),
        .O(int_A_2_read_reg_14));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[16]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[16]),
        .I3(DOADO[16]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [16]),
        .O(int_A_2_read_reg_15));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[17]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[17]),
        .I3(DOADO[17]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [17]),
        .O(int_A_2_read_reg_16));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[18]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[18]),
        .I3(DOADO[18]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [18]),
        .O(int_A_2_read_reg_17));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[19]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[19]),
        .I3(DOADO[19]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [19]),
        .O(int_A_2_read_reg_18));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[1]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[1]),
        .I3(DOADO[1]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [1]),
        .O(int_A_2_read_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[20]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[20]),
        .I3(DOADO[20]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [20]),
        .O(int_A_2_read_reg_19));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[21]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[21]),
        .I3(DOADO[21]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [21]),
        .O(int_A_2_read_reg_20));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[22]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[22]),
        .I3(DOADO[22]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [22]),
        .O(int_A_2_read_reg_21));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[23]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[23]),
        .I3(DOADO[23]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [23]),
        .O(int_A_2_read_reg_22));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[24]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[24]),
        .I3(DOADO[24]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [24]),
        .O(int_A_2_read_reg_23));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[25]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[25]),
        .I3(DOADO[25]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [25]),
        .O(int_A_2_read_reg_24));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[26]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[26]),
        .I3(DOADO[26]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [26]),
        .O(int_A_2_read_reg_25));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[27]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[27]),
        .I3(DOADO[27]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [27]),
        .O(int_A_2_read_reg_26));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[28]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[28]),
        .I3(DOADO[28]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [28]),
        .O(int_A_2_read_reg_27));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[29]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[29]),
        .I3(DOADO[29]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [29]),
        .O(int_A_2_read_reg_28));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[2]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[2]),
        .I3(DOADO[2]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [2]),
        .O(int_A_2_read_reg_1));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[30]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[30]),
        .I3(DOADO[30]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [30]),
        .O(int_A_2_read_reg_29));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[31]_i_14 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[31]),
        .I3(DOADO[31]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [31]),
        .O(int_A_2_read_reg_30));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[3]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[3]),
        .I3(DOADO[3]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [3]),
        .O(int_A_2_read_reg_2));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[4]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[4]),
        .I3(DOADO[4]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [4]),
        .O(int_A_2_read_reg_3));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[5]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[5]),
        .I3(DOADO[5]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [5]),
        .O(int_A_2_read_reg_4));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[6]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[6]),
        .I3(DOADO[6]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [6]),
        .O(int_A_2_read_reg_5));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[7]_i_8 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[7]),
        .I3(DOADO[7]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [7]),
        .O(int_A_2_read_reg_6));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[8]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[8]),
        .I3(DOADO[8]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [8]),
        .O(int_A_2_read_reg_7));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \rdata[9]_i_9 
       (.I0(int_A_2_read),
        .I1(int_A_3_read),
        .I2(int_A_3_q1[9]),
        .I3(DOADO[9]),
        .I4(int_A_1_read),
        .I5(\rdata[31]_i_6 [9]),
        .O(int_A_2_read_reg_8));
endmodule

(* ORIG_REF_NAME = "eucHW_control_s_axi_ram" *) 
module design_1_eucHW_0_0_eucHW_control_s_axi_ram_9
   (DOADO,
    sub_ln38_4_fu_526_p2,
    ap_clk,
    A_0_ce0,
    ADDRARDADDR,
    mem_reg_0,
    s_axi_control_WDATA,
    B_4_q0,
    s_axi_control_WVALID,
    mem_reg_1,
    rstate,
    s_axi_control_ARVALID,
    p_95_in,
    s_axi_control_WSTRB,
    B);
  output [31:0]DOADO;
  output [8:0]sub_ln38_4_fu_526_p2;
  input ap_clk;
  input A_0_ce0;
  input [0:0]ADDRARDADDR;
  input [0:0]mem_reg_0;
  input [31:0]s_axi_control_WDATA;
  input [7:0]B_4_q0;
  input s_axi_control_WVALID;
  input mem_reg_1;
  input [1:0]rstate;
  input s_axi_control_ARVALID;
  input p_95_in;
  input [3:0]s_axi_control_WSTRB;
  input [1:0]B;

  wire [0:0]ADDRARDADDR;
  wire A_0_ce0;
  wire [1:0]B;
  wire [7:0]B_4_q0;
  wire [31:0]DOADO;
  wire ap_clk;
  wire [3:0]int_A_4_be1;
  wire int_A_4_ce1;
  wire [31:0]int_A_4_q0;
  wire [0:0]mem_reg_0;
  wire mem_reg_1;
  wire p_95_in;
  wire p_reg_reg_i_10__1_n_0;
  wire p_reg_reg_i_11__1_n_0;
  wire p_reg_reg_i_16__1_n_0;
  wire p_reg_reg_i_17__1_n_0;
  wire p_reg_reg_i_18__1_n_0;
  wire p_reg_reg_i_19__1_n_0;
  wire p_reg_reg_i_2__1_n_0;
  wire p_reg_reg_i_2__1_n_1;
  wire p_reg_reg_i_2__1_n_2;
  wire p_reg_reg_i_2__1_n_3;
  wire p_reg_reg_i_3__1_n_0;
  wire p_reg_reg_i_3__1_n_1;
  wire p_reg_reg_i_3__1_n_2;
  wire p_reg_reg_i_3__1_n_3;
  wire p_reg_reg_i_8__1_n_0;
  wire p_reg_reg_i_9__1_n_0;
  wire [1:0]rstate;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [8:0]sub_ln38_4_fu_526_p2;
  wire [7:0]zext_ln38_9_fu_518_p1;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_i_1__1_CO_UNCONNECTED;
  wire [3:1]NLW_p_reg_reg_i_1__1_O_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "1022" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(s_axi_control_WDATA),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(int_A_4_q0),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(int_A_4_ce1),
        .ENBWREN(A_0_ce0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA(int_A_4_be1),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h88888F88)) 
    mem_reg_i_1__10
       (.I0(s_axi_control_WVALID),
        .I1(mem_reg_1),
        .I2(rstate[0]),
        .I3(s_axi_control_ARVALID),
        .I4(rstate[1]),
        .O(int_A_4_ce1));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2__10
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[3]),
        .O(int_A_4_be1[3]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_3__11
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[2]),
        .O(int_A_4_be1[2]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_4__10
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[1]),
        .O(int_A_4_be1[1]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_5__10
       (.I0(p_95_in),
        .I1(mem_reg_1),
        .I2(s_axi_control_WSTRB[0]),
        .O(int_A_4_be1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_10__1
       (.I0(zext_ln38_9_fu_518_p1[5]),
        .I1(B_4_q0[5]),
        .O(p_reg_reg_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_11__1
       (.I0(zext_ln38_9_fu_518_p1[4]),
        .I1(B_4_q0[4]),
        .O(p_reg_reg_i_11__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_12__1
       (.I0(int_A_4_q0[27]),
        .I1(int_A_4_q0[11]),
        .I2(B[0]),
        .I3(int_A_4_q0[19]),
        .I4(B[1]),
        .I5(int_A_4_q0[3]),
        .O(zext_ln38_9_fu_518_p1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_13__1
       (.I0(int_A_4_q0[26]),
        .I1(int_A_4_q0[10]),
        .I2(B[0]),
        .I3(int_A_4_q0[18]),
        .I4(B[1]),
        .I5(int_A_4_q0[2]),
        .O(zext_ln38_9_fu_518_p1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_14__1
       (.I0(int_A_4_q0[25]),
        .I1(int_A_4_q0[9]),
        .I2(B[0]),
        .I3(int_A_4_q0[17]),
        .I4(B[1]),
        .I5(int_A_4_q0[1]),
        .O(zext_ln38_9_fu_518_p1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_15__1
       (.I0(int_A_4_q0[24]),
        .I1(int_A_4_q0[8]),
        .I2(B[0]),
        .I3(int_A_4_q0[16]),
        .I4(B[1]),
        .I5(int_A_4_q0[0]),
        .O(zext_ln38_9_fu_518_p1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_16__1
       (.I0(zext_ln38_9_fu_518_p1[3]),
        .I1(B_4_q0[3]),
        .O(p_reg_reg_i_16__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_17__1
       (.I0(zext_ln38_9_fu_518_p1[2]),
        .I1(B_4_q0[2]),
        .O(p_reg_reg_i_17__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_18__1
       (.I0(zext_ln38_9_fu_518_p1[1]),
        .I1(B_4_q0[1]),
        .O(p_reg_reg_i_18__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_19__1
       (.I0(zext_ln38_9_fu_518_p1[0]),
        .I1(B_4_q0[0]),
        .O(p_reg_reg_i_19__1_n_0));
  CARRY4 p_reg_reg_i_1__1
       (.CI(p_reg_reg_i_2__1_n_0),
        .CO(NLW_p_reg_reg_i_1__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_reg_reg_i_1__1_O_UNCONNECTED[3:1],sub_ln38_4_fu_526_p2[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 p_reg_reg_i_2__1
       (.CI(p_reg_reg_i_3__1_n_0),
        .CO({p_reg_reg_i_2__1_n_0,p_reg_reg_i_2__1_n_1,p_reg_reg_i_2__1_n_2,p_reg_reg_i_2__1_n_3}),
        .CYINIT(1'b0),
        .DI(zext_ln38_9_fu_518_p1[7:4]),
        .O(sub_ln38_4_fu_526_p2[7:4]),
        .S({p_reg_reg_i_8__1_n_0,p_reg_reg_i_9__1_n_0,p_reg_reg_i_10__1_n_0,p_reg_reg_i_11__1_n_0}));
  CARRY4 p_reg_reg_i_3__1
       (.CI(1'b0),
        .CO({p_reg_reg_i_3__1_n_0,p_reg_reg_i_3__1_n_1,p_reg_reg_i_3__1_n_2,p_reg_reg_i_3__1_n_3}),
        .CYINIT(1'b1),
        .DI(zext_ln38_9_fu_518_p1[3:0]),
        .O(sub_ln38_4_fu_526_p2[3:0]),
        .S({p_reg_reg_i_16__1_n_0,p_reg_reg_i_17__1_n_0,p_reg_reg_i_18__1_n_0,p_reg_reg_i_19__1_n_0}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_4__1
       (.I0(int_A_4_q0[31]),
        .I1(int_A_4_q0[15]),
        .I2(B[0]),
        .I3(int_A_4_q0[23]),
        .I4(B[1]),
        .I5(int_A_4_q0[7]),
        .O(zext_ln38_9_fu_518_p1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_5__1
       (.I0(int_A_4_q0[30]),
        .I1(int_A_4_q0[14]),
        .I2(B[0]),
        .I3(int_A_4_q0[22]),
        .I4(B[1]),
        .I5(int_A_4_q0[6]),
        .O(zext_ln38_9_fu_518_p1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_6__1
       (.I0(int_A_4_q0[29]),
        .I1(int_A_4_q0[13]),
        .I2(B[0]),
        .I3(int_A_4_q0[21]),
        .I4(B[1]),
        .I5(int_A_4_q0[5]),
        .O(zext_ln38_9_fu_518_p1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    p_reg_reg_i_7__1
       (.I0(int_A_4_q0[28]),
        .I1(int_A_4_q0[12]),
        .I2(B[0]),
        .I3(int_A_4_q0[20]),
        .I4(B[1]),
        .I5(int_A_4_q0[4]),
        .O(zext_ln38_9_fu_518_p1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_8__1
       (.I0(zext_ln38_9_fu_518_p1[7]),
        .I1(B_4_q0[7]),
        .O(p_reg_reg_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_reg_reg_i_9__1
       (.I0(zext_ln38_9_fu_518_p1[6]),
        .I1(B_4_q0[6]),
        .O(p_reg_reg_i_9__1_n_0));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1
   (P,
    ap_clk,
    b_reg0,
    sub_ln38_fu_498_p2);
  output [17:0]P;
  input ap_clk;
  input [8:0]b_reg0;
  input [8:0]sub_ln38_fu_498_p2;

  wire [17:0]P;
  wire ap_clk;
  wire [8:0]b_reg0;
  wire [8:0]sub_ln38_fu_498_p2;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_5 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.P(P),
        .ap_clk(ap_clk),
        .b_reg0(b_reg0),
        .sub_ln38_fu_498_p2(sub_ln38_fu_498_p2));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_0
   (sext_ln38_10_fu_594_p1,
    CO,
    ap_clk,
    m_reg_reg,
    sub_ln38_2_fu_512_p2,
    P);
  output [17:0]sext_ln38_10_fu_594_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [8:0]sub_ln38_2_fu_512_p2;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [17:0]sext_ln38_10_fu_594_p1;
  wire [8:0]sub_ln38_2_fu_512_p2;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_4 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.CO(CO),
        .P(P),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .sext_ln38_10_fu_594_p1(sext_ln38_10_fu_594_p1),
        .sub_ln38_2_fu_512_p2(sub_ln38_2_fu_512_p2));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_1
   (P,
    ap_clk,
    m_reg_reg,
    sub_ln38_4_fu_526_p2);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [8:0]sub_ln38_4_fu_526_p2;

  wire [17:0]P;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [8:0]sub_ln38_4_fu_526_p2;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_3 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.P(P),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .sub_ln38_4_fu_526_p2(sub_ln38_4_fu_526_p2));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_2
   (sext_ln38_13_fu_610_p1,
    CO,
    ap_clk,
    m_reg_reg,
    sub_ln38_6_fu_540_p2,
    P);
  output [17:0]sext_ln38_13_fu_610_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg;
  input [8:0]sub_ln38_6_fu_540_p2;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire ap_clk;
  wire [8:0]m_reg_reg;
  wire [17:0]sext_ln38_13_fu_610_p1;
  wire [8:0]sub_ln38_6_fu_540_p2;

  design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0 eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_U
       (.CO(CO),
        .P(P),
        .ap_clk(ap_clk),
        .m_reg_reg_0(m_reg_reg),
        .sext_ln38_13_fu_610_p1(sext_ln38_13_fu_610_p1),
        .sub_ln38_6_fu_540_p2(sub_ln38_6_fu_540_p2));
endmodule

(* ORIG_REF_NAME = "eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0" *) 
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0
   (sext_ln38_13_fu_610_p1,
    CO,
    ap_clk,
    m_reg_reg_0,
    sub_ln38_6_fu_540_p2,
    P);
  output [17:0]sext_ln38_13_fu_610_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [8:0]sub_ln38_6_fu_540_p2;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire \add_ln38_6_reg_847[11]_i_10_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_7_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_8_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_9_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_10_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_7_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_8_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_9_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_6_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_7_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_8_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_10_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_7_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_8_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_9_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_10_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_7_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_8_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_9_n_0 ;
  wire \add_ln38_6_reg_847_reg[11]_i_2_n_0 ;
  wire \add_ln38_6_reg_847_reg[11]_i_2_n_1 ;
  wire \add_ln38_6_reg_847_reg[11]_i_2_n_2 ;
  wire \add_ln38_6_reg_847_reg[11]_i_2_n_3 ;
  wire \add_ln38_6_reg_847_reg[15]_i_2_n_0 ;
  wire \add_ln38_6_reg_847_reg[15]_i_2_n_1 ;
  wire \add_ln38_6_reg_847_reg[15]_i_2_n_2 ;
  wire \add_ln38_6_reg_847_reg[15]_i_2_n_3 ;
  wire \add_ln38_6_reg_847_reg[19]_i_2_n_3 ;
  wire \add_ln38_6_reg_847_reg[3]_i_2_n_0 ;
  wire \add_ln38_6_reg_847_reg[3]_i_2_n_1 ;
  wire \add_ln38_6_reg_847_reg[3]_i_2_n_2 ;
  wire \add_ln38_6_reg_847_reg[3]_i_2_n_3 ;
  wire \add_ln38_6_reg_847_reg[7]_i_2_n_0 ;
  wire \add_ln38_6_reg_847_reg[7]_i_2_n_1 ;
  wire \add_ln38_6_reg_847_reg[7]_i_2_n_2 ;
  wire \add_ln38_6_reg_847_reg[7]_i_2_n_3 ;
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
  wire [17:0]sext_ln38_13_fu_610_p1;
  wire [8:0]sub_ln38_6_fu_540_p2;
  wire [3:1]\NLW_add_ln38_6_reg_847_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln38_6_reg_847_reg[19]_i_2_O_UNCONNECTED ;
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
    \add_ln38_6_reg_847[11]_i_10 
       (.I0(p_reg_reg_n_97),
        .I1(P[8]),
        .O(\add_ln38_6_reg_847[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_7 
       (.I0(p_reg_reg_n_94),
        .I1(P[11]),
        .O(\add_ln38_6_reg_847[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_8 
       (.I0(p_reg_reg_n_95),
        .I1(P[10]),
        .O(\add_ln38_6_reg_847[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_9 
       (.I0(p_reg_reg_n_96),
        .I1(P[9]),
        .O(\add_ln38_6_reg_847[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_10 
       (.I0(p_reg_reg_n_93),
        .I1(P[12]),
        .O(\add_ln38_6_reg_847[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_7 
       (.I0(p_reg_reg_n_90),
        .I1(P[15]),
        .O(\add_ln38_6_reg_847[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_8 
       (.I0(p_reg_reg_n_91),
        .I1(P[14]),
        .O(\add_ln38_6_reg_847[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_9 
       (.I0(p_reg_reg_n_92),
        .I1(P[13]),
        .O(\add_ln38_6_reg_847[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln38_6_reg_847[19]_i_6 
       (.I0(p_reg_reg_n_88),
        .O(\add_ln38_6_reg_847[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_7 
       (.I0(p_reg_reg_n_88),
        .I1(P[17]),
        .O(\add_ln38_6_reg_847[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_8 
       (.I0(p_reg_reg_n_89),
        .I1(P[16]),
        .O(\add_ln38_6_reg_847[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_10 
       (.I0(p_reg_reg_n_105),
        .I1(P[0]),
        .O(\add_ln38_6_reg_847[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_7 
       (.I0(p_reg_reg_n_102),
        .I1(P[3]),
        .O(\add_ln38_6_reg_847[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_8 
       (.I0(p_reg_reg_n_103),
        .I1(P[2]),
        .O(\add_ln38_6_reg_847[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_9 
       (.I0(p_reg_reg_n_104),
        .I1(P[1]),
        .O(\add_ln38_6_reg_847[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_10 
       (.I0(p_reg_reg_n_101),
        .I1(P[4]),
        .O(\add_ln38_6_reg_847[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_7 
       (.I0(p_reg_reg_n_98),
        .I1(P[7]),
        .O(\add_ln38_6_reg_847[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_8 
       (.I0(p_reg_reg_n_99),
        .I1(P[6]),
        .O(\add_ln38_6_reg_847[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_9 
       (.I0(p_reg_reg_n_100),
        .I1(P[5]),
        .O(\add_ln38_6_reg_847[7]_i_9_n_0 ));
  CARRY4 \add_ln38_6_reg_847_reg[11]_i_2 
       (.CI(\add_ln38_6_reg_847_reg[7]_i_2_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[11]_i_2_n_0 ,\add_ln38_6_reg_847_reg[11]_i_2_n_1 ,\add_ln38_6_reg_847_reg[11]_i_2_n_2 ,\add_ln38_6_reg_847_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(sext_ln38_13_fu_610_p1[11:8]),
        .S({\add_ln38_6_reg_847[11]_i_7_n_0 ,\add_ln38_6_reg_847[11]_i_8_n_0 ,\add_ln38_6_reg_847[11]_i_9_n_0 ,\add_ln38_6_reg_847[11]_i_10_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[15]_i_2 
       (.CI(\add_ln38_6_reg_847_reg[11]_i_2_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[15]_i_2_n_0 ,\add_ln38_6_reg_847_reg[15]_i_2_n_1 ,\add_ln38_6_reg_847_reg[15]_i_2_n_2 ,\add_ln38_6_reg_847_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(sext_ln38_13_fu_610_p1[15:12]),
        .S({\add_ln38_6_reg_847[15]_i_7_n_0 ,\add_ln38_6_reg_847[15]_i_8_n_0 ,\add_ln38_6_reg_847[15]_i_9_n_0 ,\add_ln38_6_reg_847[15]_i_10_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[19]_i_2 
       (.CI(\add_ln38_6_reg_847_reg[15]_i_2_n_0 ),
        .CO({\NLW_add_ln38_6_reg_847_reg[19]_i_2_CO_UNCONNECTED [3],CO,\NLW_add_ln38_6_reg_847_reg[19]_i_2_CO_UNCONNECTED [1],\add_ln38_6_reg_847_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln38_6_reg_847[19]_i_6_n_0 ,p_reg_reg_n_89}),
        .O({\NLW_add_ln38_6_reg_847_reg[19]_i_2_O_UNCONNECTED [3:2],sext_ln38_13_fu_610_p1[17:16]}),
        .S({1'b0,1'b1,\add_ln38_6_reg_847[19]_i_7_n_0 ,\add_ln38_6_reg_847[19]_i_8_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\add_ln38_6_reg_847_reg[3]_i_2_n_0 ,\add_ln38_6_reg_847_reg[3]_i_2_n_1 ,\add_ln38_6_reg_847_reg[3]_i_2_n_2 ,\add_ln38_6_reg_847_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(sext_ln38_13_fu_610_p1[3:0]),
        .S({\add_ln38_6_reg_847[3]_i_7_n_0 ,\add_ln38_6_reg_847[3]_i_8_n_0 ,\add_ln38_6_reg_847[3]_i_9_n_0 ,\add_ln38_6_reg_847[3]_i_10_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[7]_i_2 
       (.CI(\add_ln38_6_reg_847_reg[3]_i_2_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[7]_i_2_n_0 ,\add_ln38_6_reg_847_reg[7]_i_2_n_1 ,\add_ln38_6_reg_847_reg[7]_i_2_n_2 ,\add_ln38_6_reg_847_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(sext_ln38_13_fu_610_p1[7:4]),
        .S({\add_ln38_6_reg_847[7]_i_7_n_0 ,\add_ln38_6_reg_847[7]_i_8_n_0 ,\add_ln38_6_reg_847[7]_i_9_n_0 ,\add_ln38_6_reg_847[7]_i_10_n_0 }));
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
       (.A({sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2[8],sub_ln38_6_fu_540_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
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
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_3
   (P,
    ap_clk,
    m_reg_reg_0,
    sub_ln38_4_fu_526_p2);
  output [17:0]P;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [8:0]sub_ln38_4_fu_526_p2;

  wire [17:0]P;
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
  wire [8:0]sub_ln38_4_fu_526_p2;
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
       (.A({sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2[8],sub_ln38_4_fu_526_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
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
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_4
   (sext_ln38_10_fu_594_p1,
    CO,
    ap_clk,
    m_reg_reg_0,
    sub_ln38_2_fu_512_p2,
    P);
  output [17:0]sext_ln38_10_fu_594_p1;
  output [0:0]CO;
  input ap_clk;
  input [8:0]m_reg_reg_0;
  input [8:0]sub_ln38_2_fu_512_p2;
  input [17:0]P;

  wire [0:0]CO;
  wire [17:0]P;
  wire \add_ln38_6_reg_847[11]_i_12_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_13_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_14_n_0 ;
  wire \add_ln38_6_reg_847[11]_i_15_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_12_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_13_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_14_n_0 ;
  wire \add_ln38_6_reg_847[15]_i_15_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_10_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_11_n_0 ;
  wire \add_ln38_6_reg_847[19]_i_12_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_12_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_13_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_14_n_0 ;
  wire \add_ln38_6_reg_847[3]_i_15_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_12_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_13_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_14_n_0 ;
  wire \add_ln38_6_reg_847[7]_i_15_n_0 ;
  wire \add_ln38_6_reg_847_reg[11]_i_11_n_0 ;
  wire \add_ln38_6_reg_847_reg[11]_i_11_n_1 ;
  wire \add_ln38_6_reg_847_reg[11]_i_11_n_2 ;
  wire \add_ln38_6_reg_847_reg[11]_i_11_n_3 ;
  wire \add_ln38_6_reg_847_reg[15]_i_11_n_0 ;
  wire \add_ln38_6_reg_847_reg[15]_i_11_n_1 ;
  wire \add_ln38_6_reg_847_reg[15]_i_11_n_2 ;
  wire \add_ln38_6_reg_847_reg[15]_i_11_n_3 ;
  wire \add_ln38_6_reg_847_reg[19]_i_9_n_3 ;
  wire \add_ln38_6_reg_847_reg[3]_i_11_n_0 ;
  wire \add_ln38_6_reg_847_reg[3]_i_11_n_1 ;
  wire \add_ln38_6_reg_847_reg[3]_i_11_n_2 ;
  wire \add_ln38_6_reg_847_reg[3]_i_11_n_3 ;
  wire \add_ln38_6_reg_847_reg[7]_i_11_n_0 ;
  wire \add_ln38_6_reg_847_reg[7]_i_11_n_1 ;
  wire \add_ln38_6_reg_847_reg[7]_i_11_n_2 ;
  wire \add_ln38_6_reg_847_reg[7]_i_11_n_3 ;
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
  wire [17:0]sext_ln38_10_fu_594_p1;
  wire [8:0]sub_ln38_2_fu_512_p2;
  wire [3:1]\NLW_add_ln38_6_reg_847_reg[19]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln38_6_reg_847_reg[19]_i_9_O_UNCONNECTED ;
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
    \add_ln38_6_reg_847[11]_i_12 
       (.I0(p_reg_reg_n_94),
        .I1(P[11]),
        .O(\add_ln38_6_reg_847[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_13 
       (.I0(p_reg_reg_n_95),
        .I1(P[10]),
        .O(\add_ln38_6_reg_847[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_14 
       (.I0(p_reg_reg_n_96),
        .I1(P[9]),
        .O(\add_ln38_6_reg_847[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[11]_i_15 
       (.I0(p_reg_reg_n_97),
        .I1(P[8]),
        .O(\add_ln38_6_reg_847[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_12 
       (.I0(p_reg_reg_n_90),
        .I1(P[15]),
        .O(\add_ln38_6_reg_847[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_13 
       (.I0(p_reg_reg_n_91),
        .I1(P[14]),
        .O(\add_ln38_6_reg_847[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_14 
       (.I0(p_reg_reg_n_92),
        .I1(P[13]),
        .O(\add_ln38_6_reg_847[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[15]_i_15 
       (.I0(p_reg_reg_n_93),
        .I1(P[12]),
        .O(\add_ln38_6_reg_847[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln38_6_reg_847[19]_i_10 
       (.I0(p_reg_reg_n_88),
        .O(\add_ln38_6_reg_847[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_11 
       (.I0(p_reg_reg_n_88),
        .I1(P[17]),
        .O(\add_ln38_6_reg_847[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[19]_i_12 
       (.I0(p_reg_reg_n_89),
        .I1(P[16]),
        .O(\add_ln38_6_reg_847[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_12 
       (.I0(p_reg_reg_n_102),
        .I1(P[3]),
        .O(\add_ln38_6_reg_847[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_13 
       (.I0(p_reg_reg_n_103),
        .I1(P[2]),
        .O(\add_ln38_6_reg_847[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_14 
       (.I0(p_reg_reg_n_104),
        .I1(P[1]),
        .O(\add_ln38_6_reg_847[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[3]_i_15 
       (.I0(p_reg_reg_n_105),
        .I1(P[0]),
        .O(\add_ln38_6_reg_847[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_12 
       (.I0(p_reg_reg_n_98),
        .I1(P[7]),
        .O(\add_ln38_6_reg_847[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_13 
       (.I0(p_reg_reg_n_99),
        .I1(P[6]),
        .O(\add_ln38_6_reg_847[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_14 
       (.I0(p_reg_reg_n_100),
        .I1(P[5]),
        .O(\add_ln38_6_reg_847[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln38_6_reg_847[7]_i_15 
       (.I0(p_reg_reg_n_101),
        .I1(P[4]),
        .O(\add_ln38_6_reg_847[7]_i_15_n_0 ));
  CARRY4 \add_ln38_6_reg_847_reg[11]_i_11 
       (.CI(\add_ln38_6_reg_847_reg[7]_i_11_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[11]_i_11_n_0 ,\add_ln38_6_reg_847_reg[11]_i_11_n_1 ,\add_ln38_6_reg_847_reg[11]_i_11_n_2 ,\add_ln38_6_reg_847_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_94,p_reg_reg_n_95,p_reg_reg_n_96,p_reg_reg_n_97}),
        .O(sext_ln38_10_fu_594_p1[11:8]),
        .S({\add_ln38_6_reg_847[11]_i_12_n_0 ,\add_ln38_6_reg_847[11]_i_13_n_0 ,\add_ln38_6_reg_847[11]_i_14_n_0 ,\add_ln38_6_reg_847[11]_i_15_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[15]_i_11 
       (.CI(\add_ln38_6_reg_847_reg[11]_i_11_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[15]_i_11_n_0 ,\add_ln38_6_reg_847_reg[15]_i_11_n_1 ,\add_ln38_6_reg_847_reg[15]_i_11_n_2 ,\add_ln38_6_reg_847_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_90,p_reg_reg_n_91,p_reg_reg_n_92,p_reg_reg_n_93}),
        .O(sext_ln38_10_fu_594_p1[15:12]),
        .S({\add_ln38_6_reg_847[15]_i_12_n_0 ,\add_ln38_6_reg_847[15]_i_13_n_0 ,\add_ln38_6_reg_847[15]_i_14_n_0 ,\add_ln38_6_reg_847[15]_i_15_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[19]_i_9 
       (.CI(\add_ln38_6_reg_847_reg[15]_i_11_n_0 ),
        .CO({\NLW_add_ln38_6_reg_847_reg[19]_i_9_CO_UNCONNECTED [3],CO,\NLW_add_ln38_6_reg_847_reg[19]_i_9_CO_UNCONNECTED [1],\add_ln38_6_reg_847_reg[19]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln38_6_reg_847[19]_i_10_n_0 ,p_reg_reg_n_89}),
        .O({\NLW_add_ln38_6_reg_847_reg[19]_i_9_O_UNCONNECTED [3:2],sext_ln38_10_fu_594_p1[17:16]}),
        .S({1'b0,1'b1,\add_ln38_6_reg_847[19]_i_11_n_0 ,\add_ln38_6_reg_847[19]_i_12_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\add_ln38_6_reg_847_reg[3]_i_11_n_0 ,\add_ln38_6_reg_847_reg[3]_i_11_n_1 ,\add_ln38_6_reg_847_reg[3]_i_11_n_2 ,\add_ln38_6_reg_847_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .O(sext_ln38_10_fu_594_p1[3:0]),
        .S({\add_ln38_6_reg_847[3]_i_12_n_0 ,\add_ln38_6_reg_847[3]_i_13_n_0 ,\add_ln38_6_reg_847[3]_i_14_n_0 ,\add_ln38_6_reg_847[3]_i_15_n_0 }));
  CARRY4 \add_ln38_6_reg_847_reg[7]_i_11 
       (.CI(\add_ln38_6_reg_847_reg[3]_i_11_n_0 ),
        .CO({\add_ln38_6_reg_847_reg[7]_i_11_n_0 ,\add_ln38_6_reg_847_reg[7]_i_11_n_1 ,\add_ln38_6_reg_847_reg[7]_i_11_n_2 ,\add_ln38_6_reg_847_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101}),
        .O(sext_ln38_10_fu_594_p1[7:4]),
        .S({\add_ln38_6_reg_847[7]_i_12_n_0 ,\add_ln38_6_reg_847[7]_i_13_n_0 ,\add_ln38_6_reg_847[7]_i_14_n_0 ,\add_ln38_6_reg_847[7]_i_15_n_0 }));
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
       (.A({sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2[8],sub_ln38_2_fu_512_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
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
module design_1_eucHW_0_0_eucHW_mac_muladd_9s_9s_18s_18_4_1_DSP48_0_5
   (P,
    ap_clk,
    b_reg0,
    sub_ln38_fu_498_p2);
  output [17:0]P;
  input ap_clk;
  input [8:0]b_reg0;
  input [8:0]sub_ln38_fu_498_p2;

  wire [17:0]P;
  wire ap_clk;
  wire [8:0]b_reg0;
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
  wire [8:0]sub_ln38_fu_498_p2;
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
       (.A({b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0[8],b_reg0}),
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
       (.A({sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2[8],sub_ln38_fu_498_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
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

(* ORIG_REF_NAME = "eucHW_sqrt_fixed_32_32_s" *) 
module design_1_eucHW_0_0_eucHW_sqrt_fixed_32_32_s
   (\x_read_reg_1484_pp0_iter6_reg_reg[22]_0 ,
    res_I_V_47_fu_1468_p3,
    ap_clk,
    result_fu_132_reg,
    Q);
  output \x_read_reg_1484_pp0_iter6_reg_reg[22]_0 ;
  output [15:0]res_I_V_47_fu_1468_p3;
  input ap_clk;
  input [22:0]result_fu_132_reg;
  input [0:0]Q;

  wire [0:0]Q;
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
  wire icmp_ln443_4_fu_618_p2_carry_i_8_n_0;
  wire icmp_ln443_4_fu_618_p2_carry_n_0;
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
  wire [8:3]p_Result_66_fu_686_p4;
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
  wire \p_Val2_s_reg_857[3]_i_2_n_0 ;
  wire \p_Val2_s_reg_857_reg[11]_i_1_n_0 ;
  wire \p_Val2_s_reg_857_reg[11]_i_1_n_1 ;
  wire \p_Val2_s_reg_857_reg[11]_i_1_n_2 ;
  wire \p_Val2_s_reg_857_reg[11]_i_1_n_3 ;
  wire \p_Val2_s_reg_857_reg[15]_i_2_n_1 ;
  wire \p_Val2_s_reg_857_reg[15]_i_2_n_2 ;
  wire \p_Val2_s_reg_857_reg[15]_i_2_n_3 ;
  wire \p_Val2_s_reg_857_reg[3]_i_1_n_0 ;
  wire \p_Val2_s_reg_857_reg[3]_i_1_n_1 ;
  wire \p_Val2_s_reg_857_reg[3]_i_1_n_2 ;
  wire \p_Val2_s_reg_857_reg[3]_i_1_n_3 ;
  wire \p_Val2_s_reg_857_reg[7]_i_1_n_0 ;
  wire \p_Val2_s_reg_857_reg[7]_i_1_n_1 ;
  wire \p_Val2_s_reg_857_reg[7]_i_1_n_2 ;
  wire \p_Val2_s_reg_857_reg[7]_i_1_n_3 ;
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
  wire [22:0]result_fu_132_reg;
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
  wire [7:1]sub_ln212_4_fu_624_p2;
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
  wire \x_l_I_V_32_reg_1489_reg[20]_srl2_n_0 ;
  wire \x_l_I_V_32_reg_1489_reg[21]_srl2_n_0 ;
  wire [28:18]x_l_I_V_34_reg_1512;
  wire \x_l_I_V_34_reg_1512[24]_i_1_n_0 ;
  wire \x_l_I_V_34_reg_1512[27]_i_1_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[14]_srl3_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[15]_srl3_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[16]_srl3_n_0 ;
  wire \x_l_I_V_34_reg_1512_reg[17]_srl3_n_0 ;
  wire [26:14]x_l_I_V_36_reg_1535;
  wire \x_l_I_V_36_reg_1535[20]_i_1_n_0 ;
  wire \x_l_I_V_36_reg_1535[24]_i_3_n_0 ;
  wire \x_l_I_V_36_reg_1535[24]_i_4_n_0 ;
  wire \x_l_I_V_36_reg_1535[24]_i_5_n_0 ;
  wire \x_l_I_V_36_reg_1535[24]_i_6_n_0 ;
  wire \x_l_I_V_36_reg_1535[24]_i_7_n_0 ;
  wire \x_l_I_V_36_reg_1535[24]_i_8_n_0 ;
  wire \x_l_I_V_36_reg_1535[26]_i_4_n_0 ;
  wire \x_l_I_V_36_reg_1535[26]_i_5_n_0 ;
  wire \x_l_I_V_36_reg_1535[26]_i_6_n_0 ;
  wire \x_l_I_V_36_reg_1535[26]_i_7_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[10]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[11]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[12]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[13]_srl4_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[24]_i_2_n_0 ;
  wire \x_l_I_V_36_reg_1535_reg[24]_i_2_n_1 ;
  wire \x_l_I_V_36_reg_1535_reg[24]_i_2_n_2 ;
  wire \x_l_I_V_36_reg_1535_reg[24]_i_2_n_3 ;
  wire \x_l_I_V_36_reg_1535_reg[26]_i_2_n_2 ;
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
  wire [22:22]x_read_reg_1484;
  wire [22:22]x_read_reg_1484_pp0_iter1_reg;
  wire [22:22]x_read_reg_1484_pp0_iter2_reg;
  wire [22:22]x_read_reg_1484_pp0_iter3_reg;
  wire [22:22]x_read_reg_1484_pp0_iter4_reg;
  wire [22:22]x_read_reg_1484_pp0_iter5_reg;
  wire [22:22]x_read_reg_1484_pp0_iter6_reg;
  wire \x_read_reg_1484_pp0_iter6_reg_reg[22]_0 ;
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
  wire [3:3]\NLW_p_Val2_s_reg_857_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_sub_ln212_3_reg_1530_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sub_ln212_3_reg_1530_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_sub_ln212_5_reg_1553_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sub_ln212_7_reg_1576_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sub_ln212_7_reg_1576_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_O_UNCONNECTED ;
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_11_fu_1171_p2_carry__0_i_8
       (.I0(p_Result_81_reg_1598[9]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[9]),
        .O(p_Result_84_fu_1157_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_13_fu_1328_p2_carry__0_i_10
       (.I0(p_Result_87_reg_1621[9]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[9]),
        .O(p_Result_90_fu_1314_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
        .CO({icmp_ln443_4_fu_618_p2_carry_n_0,icmp_ln443_4_fu_618_p2_carry_n_1,icmp_ln443_4_fu_618_p2_carry_n_2,icmp_ln443_4_fu_618_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln443_4_fu_618_p2_carry_i_1_n_0,icmp_ln443_4_fu_618_p2_carry_i_2_n_0,icmp_ln443_4_fu_618_p2_carry_i_3_n_0,icmp_ln443_4_fu_618_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln443_4_fu_618_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln443_4_fu_618_p2_carry_i_5_n_0,icmp_ln443_4_fu_618_p2_carry_i_6_n_0,icmp_ln443_4_fu_618_p2_carry_i_7_n_0,icmp_ln443_4_fu_618_p2_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    icmp_ln443_4_fu_618_p2_carry_i_1
       (.I0(x_l_I_V_34_reg_1512[26]),
        .I1(sub_ln212_3_reg_1530[4]),
        .I2(x_read_reg_1484_pp0_iter1_reg),
        .I3(sub_ln212_3_reg_1530[5]),
        .I4(icmp_ln443_3_reg_1524),
        .I5(x_l_I_V_34_reg_1512[27]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    icmp_ln443_4_fu_618_p2_carry_i_2
       (.I0(res_I_V_35_reg_1518[13]),
        .I1(sub_ln212_3_reg_1530[2]),
        .I2(icmp_ln443_3_reg_1524),
        .I3(x_l_I_V_34_reg_1512[24]),
        .I4(p_Result_63_fu_604_p4[5]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(icmp_ln443_4_fu_618_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h3500)) 
    icmp_ln443_4_fu_618_p2_carry_i_3
       (.I0(sub_ln212_3_reg_1530[0]),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_3_reg_1524),
        .I3(res_I_V_35_reg_1518[12]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    icmp_ln443_4_fu_618_p2_carry_i_4
       (.I0(x_l_I_V_34_reg_1512[20]),
        .I1(x_l_I_V_34_reg_1512[21]),
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
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_4_fu_618_p2_carry_i_8
       (.I0(x_l_I_V_34_reg_1512[20]),
        .I1(x_l_I_V_34_reg_1512[21]),
        .O(icmp_ln443_4_fu_618_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    icmp_ln443_4_fu_618_p2_carry_i_9
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
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
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
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
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
  LUT5 #(
    .INIT(32'h032203BB)) 
    icmp_ln443_5_fu_700_p2_carry_i_3
       (.I0(x_l_I_V_34_reg_1512[20]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[21]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I4(sub_ln212_4_fu_624_p2[1]),
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
        .I4(icmp_ln443_4_fu_618_p2_carry_n_0),
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
  LUT5 #(
    .INIT(32'h14111444)) 
    icmp_ln443_5_fu_700_p2_carry_i_7
       (.I0(x_l_I_V_34_reg_1512[20]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[21]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I4(sub_ln212_4_fu_624_p2[1]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    icmp_ln443_5_fu_700_p2_carry_i_8
       (.I0(x_l_I_V_34_reg_1512[18]),
        .I1(x_l_I_V_34_reg_1512[19]),
        .O(icmp_ln443_5_fu_700_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_31_reg_1593[1]_i_1 
       (.I0(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .O(res_I_V_41_fu_1056_p3));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_31_reg_1593[2]_i_1 
       (.I0(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .O(res_I_V_40_fu_974_p3));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_Result_37_reg_1616[1]_i_1 
       (.I0(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .O(res_I_V_43_fu_1213_p3));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry__0_i_11
       (.I0(p_Result_93_reg_1640[13]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[13]),
        .O(x_l_I_V_45_fu_1430_p3__17[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry__0_i_12
       (.I0(p_Result_93_reg_1640[11]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[11]),
        .O(x_l_I_V_45_fu_1430_p3__17[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry__0_i_13
       (.I0(p_Result_93_reg_1640[9]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[9]),
        .O(x_l_I_V_45_fu_1430_p3__17[9]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry__0_i_14
       (.I0(res_I_V_45_reg_1633[13]),
        .I1(sub_ln212_14_fu_1405_p2[13]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[13]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry__0_i_15
       (.I0(res_I_V_45_reg_1633[11]),
        .I1(sub_ln212_14_fu_1405_p2[11]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[11]),
        .O(p_Result_48_fu_1456_p2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry_i_12
       (.I0(p_Result_93_reg_1640[5]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[5]),
        .O(x_l_I_V_45_fu_1430_p3__17[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_Result_48_fu_1456_p2_carry_i_13
       (.I0(p_Result_93_reg_1640[3]),
        .I1(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I2(sub_ln212_14_fu_1405_p2[3]),
        .O(x_l_I_V_45_fu_1430_p3__17[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry_i_14
       (.I0(res_I_V_45_reg_1633[7]),
        .I1(sub_ln212_14_fu_1405_p2[7]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[7]),
        .O(p_Result_48_fu_1456_p2_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    p_Result_48_fu_1456_p2_carry_i_15
       (.I0(res_I_V_45_reg_1633[5]),
        .I1(sub_ln212_14_fu_1405_p2[5]),
        .I2(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I3(p_Result_93_reg_1640[5]),
        .O(p_Result_48_fu_1456_p2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Result_81_reg_1598[11]_i_2 
       (.I0(x_l_I_V_37_reg_1558[19]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[5]),
        .O(p_Result_75_fu_918_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_81_reg_1598[12]_i_1 
       (.I0(p_Result_75_fu_918_p4[8]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[8]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[10]),
        .O(x_l_I_V_40_fu_1048_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_Result_81_reg_1598[2]_i_1 
       (.I0(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I1(x_l_I_V_37_reg_1558[10]),
        .O(\p_Result_81_reg_1598[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
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
  FDRE \p_Result_81_reg_1598_reg[0]__0 
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
  FDRE \p_Result_81_reg_1598_reg[1]__0 
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_87_reg_1621[15]_i_1 
       (.I0(p_Result_81_reg_1598[11]),
        .I1(icmp_ln443_10_fu_1095_p2_carry__0_n_1),
        .I2(sub_ln212_10_fu_1100_p2[11]),
        .I3(icmp_ln443_11_fu_1171_p2_carry__0_n_0),
        .I4(sub_ln212_11_fu_1177_p2[13]),
        .O(x_l_I_V_42_fu_1205_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
  FDRE \p_Result_87_reg_1621_reg[0]__0 
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
  FDRE \p_Result_87_reg_1621_reg[1]__0 
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \p_Result_93_reg_1640[4]_i_1 
       (.I0(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I1(p_Result_87_reg_1621[0]),
        .I2(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I3(sub_ln212_13_fu_1334_p2[2]),
        .O(p_Result_93_fu_1378_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_Result_93_reg_1640[6]_i_1 
       (.I0(p_Result_87_reg_1621[2]),
        .I1(icmp_ln443_12_fu_1252_p2_carry__0_n_0),
        .I2(sub_ln212_12_fu_1257_p2[2]),
        .I3(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .I4(sub_ln212_13_fu_1334_p2[4]),
        .O(p_Result_93_fu_1378_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
  FDRE \p_Result_93_reg_1640_reg[0]__0 
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
  FDRE \p_Result_93_reg_1640_reg[1]__0 
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
    \p_Val2_s_reg_857[15]_i_1 
       (.I0(x_read_reg_1484_pp0_iter6_reg),
        .I1(Q),
        .O(\x_read_reg_1484_pp0_iter6_reg_reg[22]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_Val2_s_reg_857[3]_i_2 
       (.I0(icmp_ln443_14_fu_1400_p2_carry__1_n_3),
        .I1(p_Result_48_fu_1456_p2_carry__2_n_0),
        .O(\p_Val2_s_reg_857[3]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_857_reg[11]_i_1 
       (.CI(\p_Val2_s_reg_857_reg[7]_i_1_n_0 ),
        .CO({\p_Val2_s_reg_857_reg[11]_i_1_n_0 ,\p_Val2_s_reg_857_reg[11]_i_1_n_1 ,\p_Val2_s_reg_857_reg[11]_i_1_n_2 ,\p_Val2_s_reg_857_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(res_I_V_47_fu_1468_p3[11:8]),
        .S(res_I_V_45_reg_1633[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_857_reg[15]_i_2 
       (.CI(\p_Val2_s_reg_857_reg[11]_i_1_n_0 ),
        .CO({\NLW_p_Val2_s_reg_857_reg[15]_i_2_CO_UNCONNECTED [3],\p_Val2_s_reg_857_reg[15]_i_2_n_1 ,\p_Val2_s_reg_857_reg[15]_i_2_n_2 ,\p_Val2_s_reg_857_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(res_I_V_47_fu_1468_p3[15:12]),
        .S({x_read_reg_1484_pp0_iter6_reg,x_read_reg_1484_pp0_iter6_reg,res_I_V_45_reg_1633[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_857_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p_Val2_s_reg_857_reg[3]_i_1_n_0 ,\p_Val2_s_reg_857_reg[3]_i_1_n_1 ,\p_Val2_s_reg_857_reg[3]_i_1_n_2 ,\p_Val2_s_reg_857_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_Result_48_fu_1456_p2_carry__2_n_0}),
        .O(res_I_V_47_fu_1468_p3[3:0]),
        .S({res_I_V_45_reg_1633[3:1],\p_Val2_s_reg_857[3]_i_2_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \p_Val2_s_reg_857_reg[7]_i_1 
       (.CI(\p_Val2_s_reg_857_reg[3]_i_1_n_0 ),
        .CO({\p_Val2_s_reg_857_reg[7]_i_1_n_0 ,\p_Val2_s_reg_857_reg[7]_i_1_n_1 ,\p_Val2_s_reg_857_reg[7]_i_1_n_2 ,\p_Val2_s_reg_857_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(res_I_V_47_fu_1468_p3[7:4]),
        .S(res_I_V_45_reg_1633[7:4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \res_I_V_35_reg_1518[12]_i_1 
       (.I0(x_read_reg_1484),
        .I1(icmp_ln443_1_reg_1501),
        .O(res_I_V_35_fu_503_p3));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_37_reg_1541[10]_i_1 
       (.I0(icmp_ln443_4_fu_618_p2_carry_n_0),
        .O(res_I_V_37_fu_660_p3));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_45_reg_1633[1]_i_1 
       (.I0(icmp_ln443_13_fu_1328_p2_carry__1_n_3),
        .O(res_I_V_45_fu_1370_p3));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_I_V_reg_1564[8]_i_1 
       (.I0(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .O(res_I_V_fu_817_p3));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I2(sub_ln212_3_reg_1530[0]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_read_reg_1484_pp0_iter1_reg),
        .I5(res_I_V_35_reg_1518[12]),
        .O(\sub_ln212_5_reg_1553[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \sub_ln212_5_reg_1553[4]_i_3 
       (.I0(sub_ln212_4_fu_624_p2[1]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I2(x_l_I_V_34_reg_1512[21]),
        .I3(icmp_ln443_3_reg_1524),
        .O(\sub_ln212_5_reg_1553[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln212_5_reg_1553[4]_i_4 
       (.I0(x_l_I_V_34_reg_1512[20]),
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
        .I2(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I3(sub_ln212_4_fu_624_p2[3]),
        .O(\sub_ln212_5_reg_1553[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h111DDD1D)) 
    \sub_ln212_5_reg_1553[8]_i_3 
       (.I0(sub_ln212_4_fu_624_p2[6]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I2(sub_ln212_3_reg_1530[4]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_l_I_V_34_reg_1512[26]),
        .O(\sub_ln212_5_reg_1553[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_5_reg_1553[8]_i_4 
       (.I0(sub_ln212_4_fu_624_p2[5]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I2(sub_ln212_3_reg_1530[3]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(res_I_V_35_reg_1518[12]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(\sub_ln212_5_reg_1553[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2111DDD1D)) 
    \sub_ln212_5_reg_1553[8]_i_5 
       (.I0(sub_ln212_4_fu_624_p2[4]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I2(sub_ln212_3_reg_1530[2]),
        .I3(icmp_ln443_3_reg_1524),
        .I4(x_l_I_V_34_reg_1512[24]),
        .I5(x_read_reg_1484_pp0_iter1_reg),
        .O(\sub_ln212_5_reg_1553[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEE2E11D1)) 
    \sub_ln212_5_reg_1553[8]_i_6 
       (.I0(sub_ln212_4_fu_624_p2[3]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
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
        .DI({p_Result_66_fu_686_p4[4],icmp_ln443_3_reg_1524,icmp_ln443_4_fu_618_p2_carry_n_0,x_l_I_V_34_reg_1512[19]}),
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
  FDRE \x_int_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(result_fu_132_reg[22]),
        .Q(p_0_in0),
        .R(1'b0));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg[18]_srl2 " *) 
  SRL16E \x_l_I_V_32_reg_1489_reg[18]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[18]),
        .Q(\x_l_I_V_32_reg_1489_reg[18]_srl2_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg[19]_srl2 " *) 
  SRL16E \x_l_I_V_32_reg_1489_reg[19]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[19]),
        .Q(\x_l_I_V_32_reg_1489_reg[19]_srl2_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg[20]_srl2 " *) 
  SRL16E \x_l_I_V_32_reg_1489_reg[20]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[20]),
        .Q(\x_l_I_V_32_reg_1489_reg[20]_srl2_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_32_reg_1489_reg[21]_srl2 " *) 
  SRL16E \x_l_I_V_32_reg_1489_reg[21]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[21]),
        .Q(\x_l_I_V_32_reg_1489_reg[21]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x_l_I_V_34_reg_1512[24]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\x_l_I_V_34_reg_1512[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \x_l_I_V_34_reg_1512[27]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\x_l_I_V_34_reg_1512[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \x_l_I_V_34_reg_1512[28]_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(p_Result_60_fu_529_p4));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg[14]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[14]),
        .Q(\x_l_I_V_34_reg_1512_reg[14]_srl3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg[15]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[15]),
        .Q(\x_l_I_V_34_reg_1512_reg[15]_srl3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg[16]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[16]),
        .Q(\x_l_I_V_34_reg_1512_reg[16]_srl3_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_34_reg_1512_reg[17]_srl3 " *) 
  SRL16E \x_l_I_V_34_reg_1512_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[17]),
        .Q(\x_l_I_V_34_reg_1512_reg[17]_srl3_n_0 ));
  FDRE \x_l_I_V_34_reg_1512_reg[18]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_32_reg_1489_reg[18]_srl2_n_0 ),
        .Q(x_l_I_V_34_reg_1512[18]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[19]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_32_reg_1489_reg[19]_srl2_n_0 ),
        .Q(x_l_I_V_34_reg_1512[19]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[20]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_32_reg_1489_reg[20]_srl2_n_0 ),
        .Q(x_l_I_V_34_reg_1512[20]),
        .R(1'b0));
  FDRE \x_l_I_V_34_reg_1512_reg[21]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_32_reg_1489_reg[21]_srl2_n_0 ),
        .Q(x_l_I_V_34_reg_1512[21]),
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
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_36_reg_1535[20]_i_1 
       (.I0(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I1(x_l_I_V_34_reg_1512[20]),
        .O(\x_l_I_V_36_reg_1535[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_36_reg_1535[21]_i_1 
       (.I0(x_l_I_V_34_reg_1512[21]),
        .I1(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I2(sub_ln212_4_fu_624_p2[1]),
        .O(p_Result_66_fu_686_p4[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[22]_i_1 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[0]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I4(sub_ln212_4_fu_624_p2[2]),
        .O(p_Result_66_fu_686_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    \x_l_I_V_36_reg_1535[23]_i_1 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .I2(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I3(sub_ln212_4_fu_624_p2[3]),
        .O(p_Result_66_fu_686_p4[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[24]_i_1 
       (.I0(x_l_I_V_34_reg_1512[24]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[2]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I4(sub_ln212_4_fu_624_p2[4]),
        .O(p_Result_66_fu_686_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_36_reg_1535[24]_i_3 
       (.I0(x_l_I_V_34_reg_1512[24]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[2]),
        .O(\x_l_I_V_36_reg_1535[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \x_l_I_V_36_reg_1535[24]_i_4 
       (.I0(x_read_reg_1484_pp0_iter1_reg),
        .I1(icmp_ln443_3_reg_1524),
        .O(\x_l_I_V_36_reg_1535[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_36_reg_1535[24]_i_5 
       (.I0(sub_ln212_3_reg_1530[2]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[24]),
        .I3(res_I_V_35_reg_1518[13]),
        .O(\x_l_I_V_36_reg_1535[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \x_l_I_V_36_reg_1535[24]_i_6 
       (.I0(icmp_ln443_3_reg_1524),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(res_I_V_35_reg_1518[12]),
        .O(\x_l_I_V_36_reg_1535[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \x_l_I_V_36_reg_1535[24]_i_7 
       (.I0(sub_ln212_3_reg_1530[0]),
        .I1(x_read_reg_1484_pp0_iter1_reg),
        .I2(icmp_ln443_3_reg_1524),
        .O(\x_l_I_V_36_reg_1535[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_l_I_V_36_reg_1535[24]_i_8 
       (.I0(x_l_I_V_34_reg_1512[21]),
        .O(\x_l_I_V_36_reg_1535[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[25]_i_1 
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[3]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I4(sub_ln212_4_fu_624_p2[5]),
        .O(p_Result_66_fu_686_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_36_reg_1535[26]_i_1 
       (.I0(x_l_I_V_34_reg_1512[26]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[4]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
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
    .INIT(8'hB8)) 
    \x_l_I_V_36_reg_1535[26]_i_4 
       (.I0(res_I_V_35_reg_1518[12]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[3]),
        .O(\x_l_I_V_36_reg_1535[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \x_l_I_V_36_reg_1535[26]_i_5 
       (.I0(sub_ln212_3_reg_1530[5]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[27]),
        .O(\x_l_I_V_36_reg_1535[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_36_reg_1535[26]_i_6 
       (.I0(sub_ln212_3_reg_1530[4]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(x_l_I_V_34_reg_1512[26]),
        .I3(x_read_reg_1484_pp0_iter1_reg),
        .O(\x_l_I_V_36_reg_1535[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \x_l_I_V_36_reg_1535[26]_i_7 
       (.I0(sub_ln212_3_reg_1530[3]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(res_I_V_35_reg_1518[12]),
        .I3(x_read_reg_1484_pp0_iter1_reg),
        .O(\x_l_I_V_36_reg_1535[26]_i_7_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg[10]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[10]),
        .Q(\x_l_I_V_36_reg_1535_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg[11]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[11]),
        .Q(\x_l_I_V_36_reg_1535_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg[12]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[12]),
        .Q(\x_l_I_V_36_reg_1535_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_36_reg_1535_reg[13]_srl4 " *) 
  SRL16E \x_l_I_V_36_reg_1535_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[13]),
        .Q(\x_l_I_V_36_reg_1535_reg[13]_srl4_n_0 ));
  FDRE \x_l_I_V_36_reg_1535_reg[14]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[14]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[14]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[15]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[15]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[15]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[16]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_34_reg_1512_reg[16]_srl3_n_0 ),
        .Q(x_l_I_V_36_reg_1535[16]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[17]__0 
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
        .D(p_Result_66_fu_686_p4[3]),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_36_reg_1535_reg[24]_i_2 
       (.CI(1'b0),
        .CO({\x_l_I_V_36_reg_1535_reg[24]_i_2_n_0 ,\x_l_I_V_36_reg_1535_reg[24]_i_2_n_1 ,\x_l_I_V_36_reg_1535_reg[24]_i_2_n_2 ,\x_l_I_V_36_reg_1535_reg[24]_i_2_n_3 }),
        .CYINIT(x_l_I_V_34_reg_1512[20]),
        .DI({\x_l_I_V_36_reg_1535[24]_i_3_n_0 ,\x_l_I_V_36_reg_1535[24]_i_4_n_0 ,icmp_ln443_3_reg_1524,x_l_I_V_34_reg_1512[21]}),
        .O(sub_ln212_4_fu_624_p2[4:1]),
        .S({\x_l_I_V_36_reg_1535[24]_i_5_n_0 ,\x_l_I_V_36_reg_1535[24]_i_6_n_0 ,\x_l_I_V_36_reg_1535[24]_i_7_n_0 ,\x_l_I_V_36_reg_1535[24]_i_8_n_0 }));
  FDRE \x_l_I_V_36_reg_1535_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[7]),
        .Q(x_l_I_V_36_reg_1535[25]),
        .R(1'b0));
  FDRE \x_l_I_V_36_reg_1535_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_Result_66_fu_686_p4[8]),
        .Q(x_l_I_V_36_reg_1535[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_l_I_V_36_reg_1535_reg[26]_i_2 
       (.CI(\x_l_I_V_36_reg_1535_reg[24]_i_2_n_0 ),
        .CO({\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_CO_UNCONNECTED [3:2],\x_l_I_V_36_reg_1535_reg[26]_i_2_n_2 ,\x_l_I_V_36_reg_1535_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_Result_63_fu_604_p4[6],\x_l_I_V_36_reg_1535[26]_i_4_n_0 }),
        .O({\NLW_x_l_I_V_36_reg_1535_reg[26]_i_2_O_UNCONNECTED [3],sub_ln212_4_fu_624_p2[7:5]}),
        .S({1'b0,\x_l_I_V_36_reg_1535[26]_i_5_n_0 ,\x_l_I_V_36_reg_1535[26]_i_6_n_0 ,\x_l_I_V_36_reg_1535[26]_i_7_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \x_l_I_V_37_reg_1558[16]_i_1 
       (.I0(icmp_ln443_6_fu_775_p2_carry__0_n_3),
        .I1(x_l_I_V_36_reg_1535[16]),
        .O(\x_l_I_V_37_reg_1558[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
  FDRE \x_l_I_V_37_reg_1558_reg[10]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[10]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[10]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[11]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[11]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[11]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[12]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_36_reg_1535_reg[12]_srl4_n_0 ),
        .Q(x_l_I_V_37_reg_1558[12]),
        .R(1'b0));
  FDRE \x_l_I_V_37_reg_1558_reg[13]__0 
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
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg[6]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[6]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[6]),
        .Q(\x_l_I_V_37_reg_1558_reg[6]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg[7]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[7]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[7]),
        .Q(\x_l_I_V_37_reg_1558_reg[7]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg[8]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[8]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[8]),
        .Q(\x_l_I_V_37_reg_1558_reg[8]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_37_reg_1558_reg[9]_srl5 " *) 
  SRL16E \x_l_I_V_37_reg_1558_reg[9]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[9]),
        .Q(\x_l_I_V_37_reg_1558_reg[9]_srl5_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg[2]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[2]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[2]),
        .Q(\x_l_I_V_40_reg_1581_reg[2]_srl6_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg[3]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[3]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[3]),
        .Q(\x_l_I_V_40_reg_1581_reg[3]_srl6_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg[4]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[4]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[4]),
        .Q(\x_l_I_V_40_reg_1581_reg[4]_srl6_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_40_reg_1581_reg[5]_srl6 " *) 
  SRL16E \x_l_I_V_40_reg_1581_reg[5]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[5]),
        .Q(\x_l_I_V_40_reg_1581_reg[5]_srl6_n_0 ));
  FDRE \x_l_I_V_40_reg_1581_reg[6]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558_reg[6]_srl5_n_0 ),
        .Q(x_l_I_V_40_reg_1581[6]),
        .R(1'b0));
  FDRE \x_l_I_V_40_reg_1581_reg[7]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_37_reg_1558_reg[7]_srl5_n_0 ),
        .Q(x_l_I_V_40_reg_1581[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[0]_srl7 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[0]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[0]),
        .Q(\x_l_I_V_42_reg_1604_reg[0]_srl7_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[1]_srl7 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[1]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(result_fu_132_reg[1]),
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
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[22]_srl2 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(x_l_I_V_40_fu_1048_p3[22]),
        .Q(\x_l_I_V_42_reg_1604_reg[22]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[22]_srl2_i_1 
       (.I0(p_Result_75_fu_918_p4[10]),
        .I1(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I2(sub_ln212_8_fu_938_p2[10]),
        .I3(icmp_ln443_9_fu_1014_p2_carry__0_n_1),
        .I4(sub_ln212_9_fu_1020_p2[12]),
        .O(x_l_I_V_40_fu_1048_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[22]_srl2_i_2 
       (.I0(x_l_I_V_37_reg_1558[22]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[8]),
        .O(p_Result_75_fu_918_p4[10]));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[23]_srl2 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[23]_srl2_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[23]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[23]_srl2_i_1 
       (.I0(x_l_I_V_37_reg_1558[23]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[9]),
        .I3(icmp_ln443_8_fu_932_p2_carry__0_n_2),
        .I4(sub_ln212_8_fu_938_p2[11]),
        .O(\x_l_I_V_42_reg_1604_reg[23]_srl2_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[24]_srl2 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[24]_srl2_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[24]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[24]_srl2_i_1 
       (.I0(x_l_I_V_37_reg_1558[24]),
        .I1(icmp_ln443_7_reg_1570),
        .I2(sub_ln212_7_reg_1576[10]),
        .O(\x_l_I_V_42_reg_1604_reg[24]_srl2_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[25]_srl3 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[25]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[25]_srl3_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[25]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[26]_srl3 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[26]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[26]_srl3_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[26]_srl3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_l_I_V_42_reg_1604_reg[26]_srl3_i_1 
       (.I0(x_l_I_V_36_reg_1535[26]),
        .I1(icmp_ln443_5_reg_1547),
        .I2(sub_ln212_5_reg_1553[8]),
        .O(\x_l_I_V_42_reg_1604_reg[26]_srl3_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[27]_srl4 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[27]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[27]_srl4_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[27]_srl4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \x_l_I_V_42_reg_1604_reg[27]_srl4_i_1 
       (.I0(x_l_I_V_34_reg_1512[27]),
        .I1(icmp_ln443_3_reg_1524),
        .I2(sub_ln212_3_reg_1530[5]),
        .I3(icmp_ln443_4_fu_618_p2_carry_n_0),
        .I4(sub_ln212_4_fu_624_p2[7]),
        .O(\x_l_I_V_42_reg_1604_reg[27]_srl4_i_1_n_0 ));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[28]_srl4 " *) 
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
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[29]_srl4 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[29]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(x_l_I_V_34_reg_1512[24]),
        .Q(\x_l_I_V_42_reg_1604_reg[29]_srl4_n_0 ));
  FDRE \x_l_I_V_42_reg_1604_reg[2]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_40_reg_1581_reg[2]_srl6_n_0 ),
        .Q(x_l_I_V_42_reg_1604[2]),
        .R(1'b0));
  (* srl_bus_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg " *) 
  (* srl_name = "inst/\grp_sqrt_fixed_32_32_s_fu_355/x_l_I_V_42_reg_1604_reg[30]_srl5 " *) 
  SRL16E \x_l_I_V_42_reg_1604_reg[30]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\x_l_I_V_42_reg_1604_reg[30]_srl5_i_1_n_0 ),
        .Q(\x_l_I_V_42_reg_1604_reg[30]_srl5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_l_I_V_42_reg_1604_reg[30]_srl5_i_1 
       (.I0(icmp_ln443_1_reg_1501),
        .I1(x_read_reg_1484),
        .O(\x_l_I_V_42_reg_1604_reg[30]_srl5_i_1_n_0 ));
  FDRE \x_l_I_V_42_reg_1604_reg[3]__0 
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
  FDRE \x_l_I_V_44_reg_1627_reg[22]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[22]_srl2_n_0 ),
        .Q(x_l_I_V_44_reg_1627[22]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[23]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[23]_srl2_n_0 ),
        .Q(x_l_I_V_44_reg_1627[23]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[24]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[24]_srl2_n_0 ),
        .Q(x_l_I_V_44_reg_1627[24]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[25]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[25]_srl3_n_0 ),
        .Q(x_l_I_V_44_reg_1627[25]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[26]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[26]_srl3_n_0 ),
        .Q(x_l_I_V_44_reg_1627[26]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[27]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[27]_srl4_n_0 ),
        .Q(x_l_I_V_44_reg_1627[27]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[28]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[28]_srl4_n_0 ),
        .Q(x_l_I_V_44_reg_1627[28]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[29]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[29]_srl4_n_0 ),
        .Q(x_l_I_V_44_reg_1627[29]),
        .R(1'b0));
  FDRE \x_l_I_V_44_reg_1627_reg[30]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_l_I_V_42_reg_1604_reg[30]_srl5_n_0 ),
        .Q(x_l_I_V_44_reg_1627[30]),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter1_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484),
        .Q(x_read_reg_1484_pp0_iter1_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter2_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter1_reg),
        .Q(x_read_reg_1484_pp0_iter2_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter3_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter2_reg),
        .Q(x_read_reg_1484_pp0_iter3_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter4_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter3_reg),
        .Q(x_read_reg_1484_pp0_iter4_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter5_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter4_reg),
        .Q(x_read_reg_1484_pp0_iter5_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_pp0_iter6_reg_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(x_read_reg_1484_pp0_iter5_reg),
        .Q(x_read_reg_1484_pp0_iter6_reg),
        .R(1'b0));
  FDRE \x_read_reg_1484_reg[22] 
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
