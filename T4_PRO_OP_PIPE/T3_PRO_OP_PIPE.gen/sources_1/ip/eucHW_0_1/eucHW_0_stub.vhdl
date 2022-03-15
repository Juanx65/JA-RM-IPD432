-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Mar 14 17:45:26 2022
-- Host        : LAPTOP-R5U6T19K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/ricar/Desktop/super_digitales/Tarea
--               4/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.gen/sources_1/ip/eucHW_0_1/eucHW_0_stub.vhdl}
-- Design      : eucHW_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eucHW_0 is
  Port ( 
    C_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 8191 downto 0 );
    B : in STD_LOGIC_VECTOR ( 8191 downto 0 );
    C : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end eucHW_0;

architecture stub of eucHW_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "C_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A[8191:0],B[8191:0],C[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "eucHW,Vivado 2021.1";
begin
end;
