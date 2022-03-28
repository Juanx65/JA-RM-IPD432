-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eucHW_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 11;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    A_0_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_0_ce0               :in   STD_LOGIC;
    A_0_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_1_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_1_ce0               :in   STD_LOGIC;
    A_1_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_2_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_2_ce0               :in   STD_LOGIC;
    A_2_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_3_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_3_ce0               :in   STD_LOGIC;
    A_3_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_4_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_4_ce0               :in   STD_LOGIC;
    A_4_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_5_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_5_ce0               :in   STD_LOGIC;
    A_5_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_6_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_6_ce0               :in   STD_LOGIC;
    A_6_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_7_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_7_ce0               :in   STD_LOGIC;
    A_7_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_8_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_8_ce0               :in   STD_LOGIC;
    A_8_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_9_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    A_9_ce0               :in   STD_LOGIC;
    A_9_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    A_10_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_10_ce0              :in   STD_LOGIC;
    A_10_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_11_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_11_ce0              :in   STD_LOGIC;
    A_11_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_12_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_12_ce0              :in   STD_LOGIC;
    A_12_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_13_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_13_ce0              :in   STD_LOGIC;
    A_13_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_14_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_14_ce0              :in   STD_LOGIC;
    A_14_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_15_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_15_ce0              :in   STD_LOGIC;
    A_15_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_16_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_16_ce0              :in   STD_LOGIC;
    A_16_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_17_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_17_ce0              :in   STD_LOGIC;
    A_17_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_18_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_18_ce0              :in   STD_LOGIC;
    A_18_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_19_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_19_ce0              :in   STD_LOGIC;
    A_19_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_20_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_20_ce0              :in   STD_LOGIC;
    A_20_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_21_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_21_ce0              :in   STD_LOGIC;
    A_21_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_22_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_22_ce0              :in   STD_LOGIC;
    A_22_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_23_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_23_ce0              :in   STD_LOGIC;
    A_23_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_24_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_24_ce0              :in   STD_LOGIC;
    A_24_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_25_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_25_ce0              :in   STD_LOGIC;
    A_25_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_26_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_26_ce0              :in   STD_LOGIC;
    A_26_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_27_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_27_ce0              :in   STD_LOGIC;
    A_27_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_28_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_28_ce0              :in   STD_LOGIC;
    A_28_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_29_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_29_ce0              :in   STD_LOGIC;
    A_29_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_30_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_30_ce0              :in   STD_LOGIC;
    A_30_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_31_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_31_ce0              :in   STD_LOGIC;
    A_31_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_32_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_32_ce0              :in   STD_LOGIC;
    A_32_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_33_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_33_ce0              :in   STD_LOGIC;
    A_33_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_34_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_34_ce0              :in   STD_LOGIC;
    A_34_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_35_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_35_ce0              :in   STD_LOGIC;
    A_35_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_36_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_36_ce0              :in   STD_LOGIC;
    A_36_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_37_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_37_ce0              :in   STD_LOGIC;
    A_37_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_38_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_38_ce0              :in   STD_LOGIC;
    A_38_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_39_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_39_ce0              :in   STD_LOGIC;
    A_39_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_40_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_40_ce0              :in   STD_LOGIC;
    A_40_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_41_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_41_ce0              :in   STD_LOGIC;
    A_41_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_42_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_42_ce0              :in   STD_LOGIC;
    A_42_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_43_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_43_ce0              :in   STD_LOGIC;
    A_43_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_44_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_44_ce0              :in   STD_LOGIC;
    A_44_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_45_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_45_ce0              :in   STD_LOGIC;
    A_45_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_46_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_46_ce0              :in   STD_LOGIC;
    A_46_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_47_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_47_ce0              :in   STD_LOGIC;
    A_47_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_48_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_48_ce0              :in   STD_LOGIC;
    A_48_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_49_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_49_ce0              :in   STD_LOGIC;
    A_49_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_50_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_50_ce0              :in   STD_LOGIC;
    A_50_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_51_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_51_ce0              :in   STD_LOGIC;
    A_51_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_52_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_52_ce0              :in   STD_LOGIC;
    A_52_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_53_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_53_ce0              :in   STD_LOGIC;
    A_53_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_54_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_54_ce0              :in   STD_LOGIC;
    A_54_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_55_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_55_ce0              :in   STD_LOGIC;
    A_55_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_56_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_56_ce0              :in   STD_LOGIC;
    A_56_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_57_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_57_ce0              :in   STD_LOGIC;
    A_57_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_58_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_58_ce0              :in   STD_LOGIC;
    A_58_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_59_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_59_ce0              :in   STD_LOGIC;
    A_59_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_60_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_60_ce0              :in   STD_LOGIC;
    A_60_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_61_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_61_ce0              :in   STD_LOGIC;
    A_61_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_62_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_62_ce0              :in   STD_LOGIC;
    A_62_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    A_63_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    A_63_ce0              :in   STD_LOGIC;
    A_63_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_0_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_0_ce0               :in   STD_LOGIC;
    B_0_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_1_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_1_ce0               :in   STD_LOGIC;
    B_1_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_2_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_2_ce0               :in   STD_LOGIC;
    B_2_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_3_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_3_ce0               :in   STD_LOGIC;
    B_3_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_4_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_4_ce0               :in   STD_LOGIC;
    B_4_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_5_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_5_ce0               :in   STD_LOGIC;
    B_5_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_6_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_6_ce0               :in   STD_LOGIC;
    B_6_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_7_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_7_ce0               :in   STD_LOGIC;
    B_7_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_8_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_8_ce0               :in   STD_LOGIC;
    B_8_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_9_address0          :in   STD_LOGIC_VECTOR(2 downto 0);
    B_9_ce0               :in   STD_LOGIC;
    B_9_q0                :out  STD_LOGIC_VECTOR(7 downto 0);
    B_10_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_10_ce0              :in   STD_LOGIC;
    B_10_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_11_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_11_ce0              :in   STD_LOGIC;
    B_11_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_12_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_12_ce0              :in   STD_LOGIC;
    B_12_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_13_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_13_ce0              :in   STD_LOGIC;
    B_13_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_14_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_14_ce0              :in   STD_LOGIC;
    B_14_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_15_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_15_ce0              :in   STD_LOGIC;
    B_15_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_16_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_16_ce0              :in   STD_LOGIC;
    B_16_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_17_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_17_ce0              :in   STD_LOGIC;
    B_17_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_18_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_18_ce0              :in   STD_LOGIC;
    B_18_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_19_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_19_ce0              :in   STD_LOGIC;
    B_19_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_20_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_20_ce0              :in   STD_LOGIC;
    B_20_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_21_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_21_ce0              :in   STD_LOGIC;
    B_21_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_22_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_22_ce0              :in   STD_LOGIC;
    B_22_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_23_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_23_ce0              :in   STD_LOGIC;
    B_23_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_24_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_24_ce0              :in   STD_LOGIC;
    B_24_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_25_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_25_ce0              :in   STD_LOGIC;
    B_25_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_26_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_26_ce0              :in   STD_LOGIC;
    B_26_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_27_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_27_ce0              :in   STD_LOGIC;
    B_27_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_28_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_28_ce0              :in   STD_LOGIC;
    B_28_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_29_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_29_ce0              :in   STD_LOGIC;
    B_29_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_30_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_30_ce0              :in   STD_LOGIC;
    B_30_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_31_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_31_ce0              :in   STD_LOGIC;
    B_31_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_32_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_32_ce0              :in   STD_LOGIC;
    B_32_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_33_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_33_ce0              :in   STD_LOGIC;
    B_33_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_34_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_34_ce0              :in   STD_LOGIC;
    B_34_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_35_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_35_ce0              :in   STD_LOGIC;
    B_35_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_36_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_36_ce0              :in   STD_LOGIC;
    B_36_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_37_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_37_ce0              :in   STD_LOGIC;
    B_37_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_38_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_38_ce0              :in   STD_LOGIC;
    B_38_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_39_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_39_ce0              :in   STD_LOGIC;
    B_39_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_40_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_40_ce0              :in   STD_LOGIC;
    B_40_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_41_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_41_ce0              :in   STD_LOGIC;
    B_41_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_42_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_42_ce0              :in   STD_LOGIC;
    B_42_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_43_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_43_ce0              :in   STD_LOGIC;
    B_43_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_44_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_44_ce0              :in   STD_LOGIC;
    B_44_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_45_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_45_ce0              :in   STD_LOGIC;
    B_45_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_46_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_46_ce0              :in   STD_LOGIC;
    B_46_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_47_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_47_ce0              :in   STD_LOGIC;
    B_47_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_48_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_48_ce0              :in   STD_LOGIC;
    B_48_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_49_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_49_ce0              :in   STD_LOGIC;
    B_49_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_50_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_50_ce0              :in   STD_LOGIC;
    B_50_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_51_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_51_ce0              :in   STD_LOGIC;
    B_51_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_52_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_52_ce0              :in   STD_LOGIC;
    B_52_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_53_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_53_ce0              :in   STD_LOGIC;
    B_53_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_54_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_54_ce0              :in   STD_LOGIC;
    B_54_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_55_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_55_ce0              :in   STD_LOGIC;
    B_55_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_56_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_56_ce0              :in   STD_LOGIC;
    B_56_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_57_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_57_ce0              :in   STD_LOGIC;
    B_57_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_58_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_58_ce0              :in   STD_LOGIC;
    B_58_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_59_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_59_ce0              :in   STD_LOGIC;
    B_59_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_60_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_60_ce0              :in   STD_LOGIC;
    B_60_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_61_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_61_ce0              :in   STD_LOGIC;
    B_61_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_62_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_62_ce0              :in   STD_LOGIC;
    B_62_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    B_63_address0         :in   STD_LOGIC_VECTOR(2 downto 0);
    B_63_ce0              :in   STD_LOGIC;
    B_63_q0               :out  STD_LOGIC_VECTOR(7 downto 0);
    C                     :in   STD_LOGIC_VECTOR(31 downto 0);
    C_ap_vld              :in   STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity eucHW_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read/COR)
--         bit 7  - auto_restart (Read/Write)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0  - enable ap_done interrupt (Read/Write)
--         bit 1  - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0  - ap_done (COR/TOW)
--         bit 1  - ap_ready (COR/TOW)
--         others - reserved
-- 0x410 : Data signal of C
--         bit 31~0 - C[31:0] (Read)
-- 0x414 : Control signal of C
--         bit 0  - C_ap_vld (Read/COR)
--         others - reserved
-- 0x010 ~
-- 0x017 : Memory 'A_0' (8 * 8b)
--         Word n : bit [ 7: 0] - A_0[4n]
--                  bit [15: 8] - A_0[4n+1]
--                  bit [23:16] - A_0[4n+2]
--                  bit [31:24] - A_0[4n+3]
-- 0x018 ~
-- 0x01f : Memory 'A_1' (8 * 8b)
--         Word n : bit [ 7: 0] - A_1[4n]
--                  bit [15: 8] - A_1[4n+1]
--                  bit [23:16] - A_1[4n+2]
--                  bit [31:24] - A_1[4n+3]
-- 0x020 ~
-- 0x027 : Memory 'A_2' (8 * 8b)
--         Word n : bit [ 7: 0] - A_2[4n]
--                  bit [15: 8] - A_2[4n+1]
--                  bit [23:16] - A_2[4n+2]
--                  bit [31:24] - A_2[4n+3]
-- 0x028 ~
-- 0x02f : Memory 'A_3' (8 * 8b)
--         Word n : bit [ 7: 0] - A_3[4n]
--                  bit [15: 8] - A_3[4n+1]
--                  bit [23:16] - A_3[4n+2]
--                  bit [31:24] - A_3[4n+3]
-- 0x030 ~
-- 0x037 : Memory 'A_4' (8 * 8b)
--         Word n : bit [ 7: 0] - A_4[4n]
--                  bit [15: 8] - A_4[4n+1]
--                  bit [23:16] - A_4[4n+2]
--                  bit [31:24] - A_4[4n+3]
-- 0x038 ~
-- 0x03f : Memory 'A_5' (8 * 8b)
--         Word n : bit [ 7: 0] - A_5[4n]
--                  bit [15: 8] - A_5[4n+1]
--                  bit [23:16] - A_5[4n+2]
--                  bit [31:24] - A_5[4n+3]
-- 0x040 ~
-- 0x047 : Memory 'A_6' (8 * 8b)
--         Word n : bit [ 7: 0] - A_6[4n]
--                  bit [15: 8] - A_6[4n+1]
--                  bit [23:16] - A_6[4n+2]
--                  bit [31:24] - A_6[4n+3]
-- 0x048 ~
-- 0x04f : Memory 'A_7' (8 * 8b)
--         Word n : bit [ 7: 0] - A_7[4n]
--                  bit [15: 8] - A_7[4n+1]
--                  bit [23:16] - A_7[4n+2]
--                  bit [31:24] - A_7[4n+3]
-- 0x050 ~
-- 0x057 : Memory 'A_8' (8 * 8b)
--         Word n : bit [ 7: 0] - A_8[4n]
--                  bit [15: 8] - A_8[4n+1]
--                  bit [23:16] - A_8[4n+2]
--                  bit [31:24] - A_8[4n+3]
-- 0x058 ~
-- 0x05f : Memory 'A_9' (8 * 8b)
--         Word n : bit [ 7: 0] - A_9[4n]
--                  bit [15: 8] - A_9[4n+1]
--                  bit [23:16] - A_9[4n+2]
--                  bit [31:24] - A_9[4n+3]
-- 0x060 ~
-- 0x067 : Memory 'A_10' (8 * 8b)
--         Word n : bit [ 7: 0] - A_10[4n]
--                  bit [15: 8] - A_10[4n+1]
--                  bit [23:16] - A_10[4n+2]
--                  bit [31:24] - A_10[4n+3]
-- 0x068 ~
-- 0x06f : Memory 'A_11' (8 * 8b)
--         Word n : bit [ 7: 0] - A_11[4n]
--                  bit [15: 8] - A_11[4n+1]
--                  bit [23:16] - A_11[4n+2]
--                  bit [31:24] - A_11[4n+3]
-- 0x070 ~
-- 0x077 : Memory 'A_12' (8 * 8b)
--         Word n : bit [ 7: 0] - A_12[4n]
--                  bit [15: 8] - A_12[4n+1]
--                  bit [23:16] - A_12[4n+2]
--                  bit [31:24] - A_12[4n+3]
-- 0x078 ~
-- 0x07f : Memory 'A_13' (8 * 8b)
--         Word n : bit [ 7: 0] - A_13[4n]
--                  bit [15: 8] - A_13[4n+1]
--                  bit [23:16] - A_13[4n+2]
--                  bit [31:24] - A_13[4n+3]
-- 0x080 ~
-- 0x087 : Memory 'A_14' (8 * 8b)
--         Word n : bit [ 7: 0] - A_14[4n]
--                  bit [15: 8] - A_14[4n+1]
--                  bit [23:16] - A_14[4n+2]
--                  bit [31:24] - A_14[4n+3]
-- 0x088 ~
-- 0x08f : Memory 'A_15' (8 * 8b)
--         Word n : bit [ 7: 0] - A_15[4n]
--                  bit [15: 8] - A_15[4n+1]
--                  bit [23:16] - A_15[4n+2]
--                  bit [31:24] - A_15[4n+3]
-- 0x090 ~
-- 0x097 : Memory 'A_16' (8 * 8b)
--         Word n : bit [ 7: 0] - A_16[4n]
--                  bit [15: 8] - A_16[4n+1]
--                  bit [23:16] - A_16[4n+2]
--                  bit [31:24] - A_16[4n+3]
-- 0x098 ~
-- 0x09f : Memory 'A_17' (8 * 8b)
--         Word n : bit [ 7: 0] - A_17[4n]
--                  bit [15: 8] - A_17[4n+1]
--                  bit [23:16] - A_17[4n+2]
--                  bit [31:24] - A_17[4n+3]
-- 0x0a0 ~
-- 0x0a7 : Memory 'A_18' (8 * 8b)
--         Word n : bit [ 7: 0] - A_18[4n]
--                  bit [15: 8] - A_18[4n+1]
--                  bit [23:16] - A_18[4n+2]
--                  bit [31:24] - A_18[4n+3]
-- 0x0a8 ~
-- 0x0af : Memory 'A_19' (8 * 8b)
--         Word n : bit [ 7: 0] - A_19[4n]
--                  bit [15: 8] - A_19[4n+1]
--                  bit [23:16] - A_19[4n+2]
--                  bit [31:24] - A_19[4n+3]
-- 0x0b0 ~
-- 0x0b7 : Memory 'A_20' (8 * 8b)
--         Word n : bit [ 7: 0] - A_20[4n]
--                  bit [15: 8] - A_20[4n+1]
--                  bit [23:16] - A_20[4n+2]
--                  bit [31:24] - A_20[4n+3]
-- 0x0b8 ~
-- 0x0bf : Memory 'A_21' (8 * 8b)
--         Word n : bit [ 7: 0] - A_21[4n]
--                  bit [15: 8] - A_21[4n+1]
--                  bit [23:16] - A_21[4n+2]
--                  bit [31:24] - A_21[4n+3]
-- 0x0c0 ~
-- 0x0c7 : Memory 'A_22' (8 * 8b)
--         Word n : bit [ 7: 0] - A_22[4n]
--                  bit [15: 8] - A_22[4n+1]
--                  bit [23:16] - A_22[4n+2]
--                  bit [31:24] - A_22[4n+3]
-- 0x0c8 ~
-- 0x0cf : Memory 'A_23' (8 * 8b)
--         Word n : bit [ 7: 0] - A_23[4n]
--                  bit [15: 8] - A_23[4n+1]
--                  bit [23:16] - A_23[4n+2]
--                  bit [31:24] - A_23[4n+3]
-- 0x0d0 ~
-- 0x0d7 : Memory 'A_24' (8 * 8b)
--         Word n : bit [ 7: 0] - A_24[4n]
--                  bit [15: 8] - A_24[4n+1]
--                  bit [23:16] - A_24[4n+2]
--                  bit [31:24] - A_24[4n+3]
-- 0x0d8 ~
-- 0x0df : Memory 'A_25' (8 * 8b)
--         Word n : bit [ 7: 0] - A_25[4n]
--                  bit [15: 8] - A_25[4n+1]
--                  bit [23:16] - A_25[4n+2]
--                  bit [31:24] - A_25[4n+3]
-- 0x0e0 ~
-- 0x0e7 : Memory 'A_26' (8 * 8b)
--         Word n : bit [ 7: 0] - A_26[4n]
--                  bit [15: 8] - A_26[4n+1]
--                  bit [23:16] - A_26[4n+2]
--                  bit [31:24] - A_26[4n+3]
-- 0x0e8 ~
-- 0x0ef : Memory 'A_27' (8 * 8b)
--         Word n : bit [ 7: 0] - A_27[4n]
--                  bit [15: 8] - A_27[4n+1]
--                  bit [23:16] - A_27[4n+2]
--                  bit [31:24] - A_27[4n+3]
-- 0x0f0 ~
-- 0x0f7 : Memory 'A_28' (8 * 8b)
--         Word n : bit [ 7: 0] - A_28[4n]
--                  bit [15: 8] - A_28[4n+1]
--                  bit [23:16] - A_28[4n+2]
--                  bit [31:24] - A_28[4n+3]
-- 0x0f8 ~
-- 0x0ff : Memory 'A_29' (8 * 8b)
--         Word n : bit [ 7: 0] - A_29[4n]
--                  bit [15: 8] - A_29[4n+1]
--                  bit [23:16] - A_29[4n+2]
--                  bit [31:24] - A_29[4n+3]
-- 0x100 ~
-- 0x107 : Memory 'A_30' (8 * 8b)
--         Word n : bit [ 7: 0] - A_30[4n]
--                  bit [15: 8] - A_30[4n+1]
--                  bit [23:16] - A_30[4n+2]
--                  bit [31:24] - A_30[4n+3]
-- 0x108 ~
-- 0x10f : Memory 'A_31' (8 * 8b)
--         Word n : bit [ 7: 0] - A_31[4n]
--                  bit [15: 8] - A_31[4n+1]
--                  bit [23:16] - A_31[4n+2]
--                  bit [31:24] - A_31[4n+3]
-- 0x110 ~
-- 0x117 : Memory 'A_32' (8 * 8b)
--         Word n : bit [ 7: 0] - A_32[4n]
--                  bit [15: 8] - A_32[4n+1]
--                  bit [23:16] - A_32[4n+2]
--                  bit [31:24] - A_32[4n+3]
-- 0x118 ~
-- 0x11f : Memory 'A_33' (8 * 8b)
--         Word n : bit [ 7: 0] - A_33[4n]
--                  bit [15: 8] - A_33[4n+1]
--                  bit [23:16] - A_33[4n+2]
--                  bit [31:24] - A_33[4n+3]
-- 0x120 ~
-- 0x127 : Memory 'A_34' (8 * 8b)
--         Word n : bit [ 7: 0] - A_34[4n]
--                  bit [15: 8] - A_34[4n+1]
--                  bit [23:16] - A_34[4n+2]
--                  bit [31:24] - A_34[4n+3]
-- 0x128 ~
-- 0x12f : Memory 'A_35' (8 * 8b)
--         Word n : bit [ 7: 0] - A_35[4n]
--                  bit [15: 8] - A_35[4n+1]
--                  bit [23:16] - A_35[4n+2]
--                  bit [31:24] - A_35[4n+3]
-- 0x130 ~
-- 0x137 : Memory 'A_36' (8 * 8b)
--         Word n : bit [ 7: 0] - A_36[4n]
--                  bit [15: 8] - A_36[4n+1]
--                  bit [23:16] - A_36[4n+2]
--                  bit [31:24] - A_36[4n+3]
-- 0x138 ~
-- 0x13f : Memory 'A_37' (8 * 8b)
--         Word n : bit [ 7: 0] - A_37[4n]
--                  bit [15: 8] - A_37[4n+1]
--                  bit [23:16] - A_37[4n+2]
--                  bit [31:24] - A_37[4n+3]
-- 0x140 ~
-- 0x147 : Memory 'A_38' (8 * 8b)
--         Word n : bit [ 7: 0] - A_38[4n]
--                  bit [15: 8] - A_38[4n+1]
--                  bit [23:16] - A_38[4n+2]
--                  bit [31:24] - A_38[4n+3]
-- 0x148 ~
-- 0x14f : Memory 'A_39' (8 * 8b)
--         Word n : bit [ 7: 0] - A_39[4n]
--                  bit [15: 8] - A_39[4n+1]
--                  bit [23:16] - A_39[4n+2]
--                  bit [31:24] - A_39[4n+3]
-- 0x150 ~
-- 0x157 : Memory 'A_40' (8 * 8b)
--         Word n : bit [ 7: 0] - A_40[4n]
--                  bit [15: 8] - A_40[4n+1]
--                  bit [23:16] - A_40[4n+2]
--                  bit [31:24] - A_40[4n+3]
-- 0x158 ~
-- 0x15f : Memory 'A_41' (8 * 8b)
--         Word n : bit [ 7: 0] - A_41[4n]
--                  bit [15: 8] - A_41[4n+1]
--                  bit [23:16] - A_41[4n+2]
--                  bit [31:24] - A_41[4n+3]
-- 0x160 ~
-- 0x167 : Memory 'A_42' (8 * 8b)
--         Word n : bit [ 7: 0] - A_42[4n]
--                  bit [15: 8] - A_42[4n+1]
--                  bit [23:16] - A_42[4n+2]
--                  bit [31:24] - A_42[4n+3]
-- 0x168 ~
-- 0x16f : Memory 'A_43' (8 * 8b)
--         Word n : bit [ 7: 0] - A_43[4n]
--                  bit [15: 8] - A_43[4n+1]
--                  bit [23:16] - A_43[4n+2]
--                  bit [31:24] - A_43[4n+3]
-- 0x170 ~
-- 0x177 : Memory 'A_44' (8 * 8b)
--         Word n : bit [ 7: 0] - A_44[4n]
--                  bit [15: 8] - A_44[4n+1]
--                  bit [23:16] - A_44[4n+2]
--                  bit [31:24] - A_44[4n+3]
-- 0x178 ~
-- 0x17f : Memory 'A_45' (8 * 8b)
--         Word n : bit [ 7: 0] - A_45[4n]
--                  bit [15: 8] - A_45[4n+1]
--                  bit [23:16] - A_45[4n+2]
--                  bit [31:24] - A_45[4n+3]
-- 0x180 ~
-- 0x187 : Memory 'A_46' (8 * 8b)
--         Word n : bit [ 7: 0] - A_46[4n]
--                  bit [15: 8] - A_46[4n+1]
--                  bit [23:16] - A_46[4n+2]
--                  bit [31:24] - A_46[4n+3]
-- 0x188 ~
-- 0x18f : Memory 'A_47' (8 * 8b)
--         Word n : bit [ 7: 0] - A_47[4n]
--                  bit [15: 8] - A_47[4n+1]
--                  bit [23:16] - A_47[4n+2]
--                  bit [31:24] - A_47[4n+3]
-- 0x190 ~
-- 0x197 : Memory 'A_48' (8 * 8b)
--         Word n : bit [ 7: 0] - A_48[4n]
--                  bit [15: 8] - A_48[4n+1]
--                  bit [23:16] - A_48[4n+2]
--                  bit [31:24] - A_48[4n+3]
-- 0x198 ~
-- 0x19f : Memory 'A_49' (8 * 8b)
--         Word n : bit [ 7: 0] - A_49[4n]
--                  bit [15: 8] - A_49[4n+1]
--                  bit [23:16] - A_49[4n+2]
--                  bit [31:24] - A_49[4n+3]
-- 0x1a0 ~
-- 0x1a7 : Memory 'A_50' (8 * 8b)
--         Word n : bit [ 7: 0] - A_50[4n]
--                  bit [15: 8] - A_50[4n+1]
--                  bit [23:16] - A_50[4n+2]
--                  bit [31:24] - A_50[4n+3]
-- 0x1a8 ~
-- 0x1af : Memory 'A_51' (8 * 8b)
--         Word n : bit [ 7: 0] - A_51[4n]
--                  bit [15: 8] - A_51[4n+1]
--                  bit [23:16] - A_51[4n+2]
--                  bit [31:24] - A_51[4n+3]
-- 0x1b0 ~
-- 0x1b7 : Memory 'A_52' (8 * 8b)
--         Word n : bit [ 7: 0] - A_52[4n]
--                  bit [15: 8] - A_52[4n+1]
--                  bit [23:16] - A_52[4n+2]
--                  bit [31:24] - A_52[4n+3]
-- 0x1b8 ~
-- 0x1bf : Memory 'A_53' (8 * 8b)
--         Word n : bit [ 7: 0] - A_53[4n]
--                  bit [15: 8] - A_53[4n+1]
--                  bit [23:16] - A_53[4n+2]
--                  bit [31:24] - A_53[4n+3]
-- 0x1c0 ~
-- 0x1c7 : Memory 'A_54' (8 * 8b)
--         Word n : bit [ 7: 0] - A_54[4n]
--                  bit [15: 8] - A_54[4n+1]
--                  bit [23:16] - A_54[4n+2]
--                  bit [31:24] - A_54[4n+3]
-- 0x1c8 ~
-- 0x1cf : Memory 'A_55' (8 * 8b)
--         Word n : bit [ 7: 0] - A_55[4n]
--                  bit [15: 8] - A_55[4n+1]
--                  bit [23:16] - A_55[4n+2]
--                  bit [31:24] - A_55[4n+3]
-- 0x1d0 ~
-- 0x1d7 : Memory 'A_56' (8 * 8b)
--         Word n : bit [ 7: 0] - A_56[4n]
--                  bit [15: 8] - A_56[4n+1]
--                  bit [23:16] - A_56[4n+2]
--                  bit [31:24] - A_56[4n+3]
-- 0x1d8 ~
-- 0x1df : Memory 'A_57' (8 * 8b)
--         Word n : bit [ 7: 0] - A_57[4n]
--                  bit [15: 8] - A_57[4n+1]
--                  bit [23:16] - A_57[4n+2]
--                  bit [31:24] - A_57[4n+3]
-- 0x1e0 ~
-- 0x1e7 : Memory 'A_58' (8 * 8b)
--         Word n : bit [ 7: 0] - A_58[4n]
--                  bit [15: 8] - A_58[4n+1]
--                  bit [23:16] - A_58[4n+2]
--                  bit [31:24] - A_58[4n+3]
-- 0x1e8 ~
-- 0x1ef : Memory 'A_59' (8 * 8b)
--         Word n : bit [ 7: 0] - A_59[4n]
--                  bit [15: 8] - A_59[4n+1]
--                  bit [23:16] - A_59[4n+2]
--                  bit [31:24] - A_59[4n+3]
-- 0x1f0 ~
-- 0x1f7 : Memory 'A_60' (8 * 8b)
--         Word n : bit [ 7: 0] - A_60[4n]
--                  bit [15: 8] - A_60[4n+1]
--                  bit [23:16] - A_60[4n+2]
--                  bit [31:24] - A_60[4n+3]
-- 0x1f8 ~
-- 0x1ff : Memory 'A_61' (8 * 8b)
--         Word n : bit [ 7: 0] - A_61[4n]
--                  bit [15: 8] - A_61[4n+1]
--                  bit [23:16] - A_61[4n+2]
--                  bit [31:24] - A_61[4n+3]
-- 0x200 ~
-- 0x207 : Memory 'A_62' (8 * 8b)
--         Word n : bit [ 7: 0] - A_62[4n]
--                  bit [15: 8] - A_62[4n+1]
--                  bit [23:16] - A_62[4n+2]
--                  bit [31:24] - A_62[4n+3]
-- 0x208 ~
-- 0x20f : Memory 'A_63' (8 * 8b)
--         Word n : bit [ 7: 0] - A_63[4n]
--                  bit [15: 8] - A_63[4n+1]
--                  bit [23:16] - A_63[4n+2]
--                  bit [31:24] - A_63[4n+3]
-- 0x210 ~
-- 0x217 : Memory 'B_0' (8 * 8b)
--         Word n : bit [ 7: 0] - B_0[4n]
--                  bit [15: 8] - B_0[4n+1]
--                  bit [23:16] - B_0[4n+2]
--                  bit [31:24] - B_0[4n+3]
-- 0x218 ~
-- 0x21f : Memory 'B_1' (8 * 8b)
--         Word n : bit [ 7: 0] - B_1[4n]
--                  bit [15: 8] - B_1[4n+1]
--                  bit [23:16] - B_1[4n+2]
--                  bit [31:24] - B_1[4n+3]
-- 0x220 ~
-- 0x227 : Memory 'B_2' (8 * 8b)
--         Word n : bit [ 7: 0] - B_2[4n]
--                  bit [15: 8] - B_2[4n+1]
--                  bit [23:16] - B_2[4n+2]
--                  bit [31:24] - B_2[4n+3]
-- 0x228 ~
-- 0x22f : Memory 'B_3' (8 * 8b)
--         Word n : bit [ 7: 0] - B_3[4n]
--                  bit [15: 8] - B_3[4n+1]
--                  bit [23:16] - B_3[4n+2]
--                  bit [31:24] - B_3[4n+3]
-- 0x230 ~
-- 0x237 : Memory 'B_4' (8 * 8b)
--         Word n : bit [ 7: 0] - B_4[4n]
--                  bit [15: 8] - B_4[4n+1]
--                  bit [23:16] - B_4[4n+2]
--                  bit [31:24] - B_4[4n+3]
-- 0x238 ~
-- 0x23f : Memory 'B_5' (8 * 8b)
--         Word n : bit [ 7: 0] - B_5[4n]
--                  bit [15: 8] - B_5[4n+1]
--                  bit [23:16] - B_5[4n+2]
--                  bit [31:24] - B_5[4n+3]
-- 0x240 ~
-- 0x247 : Memory 'B_6' (8 * 8b)
--         Word n : bit [ 7: 0] - B_6[4n]
--                  bit [15: 8] - B_6[4n+1]
--                  bit [23:16] - B_6[4n+2]
--                  bit [31:24] - B_6[4n+3]
-- 0x248 ~
-- 0x24f : Memory 'B_7' (8 * 8b)
--         Word n : bit [ 7: 0] - B_7[4n]
--                  bit [15: 8] - B_7[4n+1]
--                  bit [23:16] - B_7[4n+2]
--                  bit [31:24] - B_7[4n+3]
-- 0x250 ~
-- 0x257 : Memory 'B_8' (8 * 8b)
--         Word n : bit [ 7: 0] - B_8[4n]
--                  bit [15: 8] - B_8[4n+1]
--                  bit [23:16] - B_8[4n+2]
--                  bit [31:24] - B_8[4n+3]
-- 0x258 ~
-- 0x25f : Memory 'B_9' (8 * 8b)
--         Word n : bit [ 7: 0] - B_9[4n]
--                  bit [15: 8] - B_9[4n+1]
--                  bit [23:16] - B_9[4n+2]
--                  bit [31:24] - B_9[4n+3]
-- 0x260 ~
-- 0x267 : Memory 'B_10' (8 * 8b)
--         Word n : bit [ 7: 0] - B_10[4n]
--                  bit [15: 8] - B_10[4n+1]
--                  bit [23:16] - B_10[4n+2]
--                  bit [31:24] - B_10[4n+3]
-- 0x268 ~
-- 0x26f : Memory 'B_11' (8 * 8b)
--         Word n : bit [ 7: 0] - B_11[4n]
--                  bit [15: 8] - B_11[4n+1]
--                  bit [23:16] - B_11[4n+2]
--                  bit [31:24] - B_11[4n+3]
-- 0x270 ~
-- 0x277 : Memory 'B_12' (8 * 8b)
--         Word n : bit [ 7: 0] - B_12[4n]
--                  bit [15: 8] - B_12[4n+1]
--                  bit [23:16] - B_12[4n+2]
--                  bit [31:24] - B_12[4n+3]
-- 0x278 ~
-- 0x27f : Memory 'B_13' (8 * 8b)
--         Word n : bit [ 7: 0] - B_13[4n]
--                  bit [15: 8] - B_13[4n+1]
--                  bit [23:16] - B_13[4n+2]
--                  bit [31:24] - B_13[4n+3]
-- 0x280 ~
-- 0x287 : Memory 'B_14' (8 * 8b)
--         Word n : bit [ 7: 0] - B_14[4n]
--                  bit [15: 8] - B_14[4n+1]
--                  bit [23:16] - B_14[4n+2]
--                  bit [31:24] - B_14[4n+3]
-- 0x288 ~
-- 0x28f : Memory 'B_15' (8 * 8b)
--         Word n : bit [ 7: 0] - B_15[4n]
--                  bit [15: 8] - B_15[4n+1]
--                  bit [23:16] - B_15[4n+2]
--                  bit [31:24] - B_15[4n+3]
-- 0x290 ~
-- 0x297 : Memory 'B_16' (8 * 8b)
--         Word n : bit [ 7: 0] - B_16[4n]
--                  bit [15: 8] - B_16[4n+1]
--                  bit [23:16] - B_16[4n+2]
--                  bit [31:24] - B_16[4n+3]
-- 0x298 ~
-- 0x29f : Memory 'B_17' (8 * 8b)
--         Word n : bit [ 7: 0] - B_17[4n]
--                  bit [15: 8] - B_17[4n+1]
--                  bit [23:16] - B_17[4n+2]
--                  bit [31:24] - B_17[4n+3]
-- 0x2a0 ~
-- 0x2a7 : Memory 'B_18' (8 * 8b)
--         Word n : bit [ 7: 0] - B_18[4n]
--                  bit [15: 8] - B_18[4n+1]
--                  bit [23:16] - B_18[4n+2]
--                  bit [31:24] - B_18[4n+3]
-- 0x2a8 ~
-- 0x2af : Memory 'B_19' (8 * 8b)
--         Word n : bit [ 7: 0] - B_19[4n]
--                  bit [15: 8] - B_19[4n+1]
--                  bit [23:16] - B_19[4n+2]
--                  bit [31:24] - B_19[4n+3]
-- 0x2b0 ~
-- 0x2b7 : Memory 'B_20' (8 * 8b)
--         Word n : bit [ 7: 0] - B_20[4n]
--                  bit [15: 8] - B_20[4n+1]
--                  bit [23:16] - B_20[4n+2]
--                  bit [31:24] - B_20[4n+3]
-- 0x2b8 ~
-- 0x2bf : Memory 'B_21' (8 * 8b)
--         Word n : bit [ 7: 0] - B_21[4n]
--                  bit [15: 8] - B_21[4n+1]
--                  bit [23:16] - B_21[4n+2]
--                  bit [31:24] - B_21[4n+3]
-- 0x2c0 ~
-- 0x2c7 : Memory 'B_22' (8 * 8b)
--         Word n : bit [ 7: 0] - B_22[4n]
--                  bit [15: 8] - B_22[4n+1]
--                  bit [23:16] - B_22[4n+2]
--                  bit [31:24] - B_22[4n+3]
-- 0x2c8 ~
-- 0x2cf : Memory 'B_23' (8 * 8b)
--         Word n : bit [ 7: 0] - B_23[4n]
--                  bit [15: 8] - B_23[4n+1]
--                  bit [23:16] - B_23[4n+2]
--                  bit [31:24] - B_23[4n+3]
-- 0x2d0 ~
-- 0x2d7 : Memory 'B_24' (8 * 8b)
--         Word n : bit [ 7: 0] - B_24[4n]
--                  bit [15: 8] - B_24[4n+1]
--                  bit [23:16] - B_24[4n+2]
--                  bit [31:24] - B_24[4n+3]
-- 0x2d8 ~
-- 0x2df : Memory 'B_25' (8 * 8b)
--         Word n : bit [ 7: 0] - B_25[4n]
--                  bit [15: 8] - B_25[4n+1]
--                  bit [23:16] - B_25[4n+2]
--                  bit [31:24] - B_25[4n+3]
-- 0x2e0 ~
-- 0x2e7 : Memory 'B_26' (8 * 8b)
--         Word n : bit [ 7: 0] - B_26[4n]
--                  bit [15: 8] - B_26[4n+1]
--                  bit [23:16] - B_26[4n+2]
--                  bit [31:24] - B_26[4n+3]
-- 0x2e8 ~
-- 0x2ef : Memory 'B_27' (8 * 8b)
--         Word n : bit [ 7: 0] - B_27[4n]
--                  bit [15: 8] - B_27[4n+1]
--                  bit [23:16] - B_27[4n+2]
--                  bit [31:24] - B_27[4n+3]
-- 0x2f0 ~
-- 0x2f7 : Memory 'B_28' (8 * 8b)
--         Word n : bit [ 7: 0] - B_28[4n]
--                  bit [15: 8] - B_28[4n+1]
--                  bit [23:16] - B_28[4n+2]
--                  bit [31:24] - B_28[4n+3]
-- 0x2f8 ~
-- 0x2ff : Memory 'B_29' (8 * 8b)
--         Word n : bit [ 7: 0] - B_29[4n]
--                  bit [15: 8] - B_29[4n+1]
--                  bit [23:16] - B_29[4n+2]
--                  bit [31:24] - B_29[4n+3]
-- 0x300 ~
-- 0x307 : Memory 'B_30' (8 * 8b)
--         Word n : bit [ 7: 0] - B_30[4n]
--                  bit [15: 8] - B_30[4n+1]
--                  bit [23:16] - B_30[4n+2]
--                  bit [31:24] - B_30[4n+3]
-- 0x308 ~
-- 0x30f : Memory 'B_31' (8 * 8b)
--         Word n : bit [ 7: 0] - B_31[4n]
--                  bit [15: 8] - B_31[4n+1]
--                  bit [23:16] - B_31[4n+2]
--                  bit [31:24] - B_31[4n+3]
-- 0x310 ~
-- 0x317 : Memory 'B_32' (8 * 8b)
--         Word n : bit [ 7: 0] - B_32[4n]
--                  bit [15: 8] - B_32[4n+1]
--                  bit [23:16] - B_32[4n+2]
--                  bit [31:24] - B_32[4n+3]
-- 0x318 ~
-- 0x31f : Memory 'B_33' (8 * 8b)
--         Word n : bit [ 7: 0] - B_33[4n]
--                  bit [15: 8] - B_33[4n+1]
--                  bit [23:16] - B_33[4n+2]
--                  bit [31:24] - B_33[4n+3]
-- 0x320 ~
-- 0x327 : Memory 'B_34' (8 * 8b)
--         Word n : bit [ 7: 0] - B_34[4n]
--                  bit [15: 8] - B_34[4n+1]
--                  bit [23:16] - B_34[4n+2]
--                  bit [31:24] - B_34[4n+3]
-- 0x328 ~
-- 0x32f : Memory 'B_35' (8 * 8b)
--         Word n : bit [ 7: 0] - B_35[4n]
--                  bit [15: 8] - B_35[4n+1]
--                  bit [23:16] - B_35[4n+2]
--                  bit [31:24] - B_35[4n+3]
-- 0x330 ~
-- 0x337 : Memory 'B_36' (8 * 8b)
--         Word n : bit [ 7: 0] - B_36[4n]
--                  bit [15: 8] - B_36[4n+1]
--                  bit [23:16] - B_36[4n+2]
--                  bit [31:24] - B_36[4n+3]
-- 0x338 ~
-- 0x33f : Memory 'B_37' (8 * 8b)
--         Word n : bit [ 7: 0] - B_37[4n]
--                  bit [15: 8] - B_37[4n+1]
--                  bit [23:16] - B_37[4n+2]
--                  bit [31:24] - B_37[4n+3]
-- 0x340 ~
-- 0x347 : Memory 'B_38' (8 * 8b)
--         Word n : bit [ 7: 0] - B_38[4n]
--                  bit [15: 8] - B_38[4n+1]
--                  bit [23:16] - B_38[4n+2]
--                  bit [31:24] - B_38[4n+3]
-- 0x348 ~
-- 0x34f : Memory 'B_39' (8 * 8b)
--         Word n : bit [ 7: 0] - B_39[4n]
--                  bit [15: 8] - B_39[4n+1]
--                  bit [23:16] - B_39[4n+2]
--                  bit [31:24] - B_39[4n+3]
-- 0x350 ~
-- 0x357 : Memory 'B_40' (8 * 8b)
--         Word n : bit [ 7: 0] - B_40[4n]
--                  bit [15: 8] - B_40[4n+1]
--                  bit [23:16] - B_40[4n+2]
--                  bit [31:24] - B_40[4n+3]
-- 0x358 ~
-- 0x35f : Memory 'B_41' (8 * 8b)
--         Word n : bit [ 7: 0] - B_41[4n]
--                  bit [15: 8] - B_41[4n+1]
--                  bit [23:16] - B_41[4n+2]
--                  bit [31:24] - B_41[4n+3]
-- 0x360 ~
-- 0x367 : Memory 'B_42' (8 * 8b)
--         Word n : bit [ 7: 0] - B_42[4n]
--                  bit [15: 8] - B_42[4n+1]
--                  bit [23:16] - B_42[4n+2]
--                  bit [31:24] - B_42[4n+3]
-- 0x368 ~
-- 0x36f : Memory 'B_43' (8 * 8b)
--         Word n : bit [ 7: 0] - B_43[4n]
--                  bit [15: 8] - B_43[4n+1]
--                  bit [23:16] - B_43[4n+2]
--                  bit [31:24] - B_43[4n+3]
-- 0x370 ~
-- 0x377 : Memory 'B_44' (8 * 8b)
--         Word n : bit [ 7: 0] - B_44[4n]
--                  bit [15: 8] - B_44[4n+1]
--                  bit [23:16] - B_44[4n+2]
--                  bit [31:24] - B_44[4n+3]
-- 0x378 ~
-- 0x37f : Memory 'B_45' (8 * 8b)
--         Word n : bit [ 7: 0] - B_45[4n]
--                  bit [15: 8] - B_45[4n+1]
--                  bit [23:16] - B_45[4n+2]
--                  bit [31:24] - B_45[4n+3]
-- 0x380 ~
-- 0x387 : Memory 'B_46' (8 * 8b)
--         Word n : bit [ 7: 0] - B_46[4n]
--                  bit [15: 8] - B_46[4n+1]
--                  bit [23:16] - B_46[4n+2]
--                  bit [31:24] - B_46[4n+3]
-- 0x388 ~
-- 0x38f : Memory 'B_47' (8 * 8b)
--         Word n : bit [ 7: 0] - B_47[4n]
--                  bit [15: 8] - B_47[4n+1]
--                  bit [23:16] - B_47[4n+2]
--                  bit [31:24] - B_47[4n+3]
-- 0x390 ~
-- 0x397 : Memory 'B_48' (8 * 8b)
--         Word n : bit [ 7: 0] - B_48[4n]
--                  bit [15: 8] - B_48[4n+1]
--                  bit [23:16] - B_48[4n+2]
--                  bit [31:24] - B_48[4n+3]
-- 0x398 ~
-- 0x39f : Memory 'B_49' (8 * 8b)
--         Word n : bit [ 7: 0] - B_49[4n]
--                  bit [15: 8] - B_49[4n+1]
--                  bit [23:16] - B_49[4n+2]
--                  bit [31:24] - B_49[4n+3]
-- 0x3a0 ~
-- 0x3a7 : Memory 'B_50' (8 * 8b)
--         Word n : bit [ 7: 0] - B_50[4n]
--                  bit [15: 8] - B_50[4n+1]
--                  bit [23:16] - B_50[4n+2]
--                  bit [31:24] - B_50[4n+3]
-- 0x3a8 ~
-- 0x3af : Memory 'B_51' (8 * 8b)
--         Word n : bit [ 7: 0] - B_51[4n]
--                  bit [15: 8] - B_51[4n+1]
--                  bit [23:16] - B_51[4n+2]
--                  bit [31:24] - B_51[4n+3]
-- 0x3b0 ~
-- 0x3b7 : Memory 'B_52' (8 * 8b)
--         Word n : bit [ 7: 0] - B_52[4n]
--                  bit [15: 8] - B_52[4n+1]
--                  bit [23:16] - B_52[4n+2]
--                  bit [31:24] - B_52[4n+3]
-- 0x3b8 ~
-- 0x3bf : Memory 'B_53' (8 * 8b)
--         Word n : bit [ 7: 0] - B_53[4n]
--                  bit [15: 8] - B_53[4n+1]
--                  bit [23:16] - B_53[4n+2]
--                  bit [31:24] - B_53[4n+3]
-- 0x3c0 ~
-- 0x3c7 : Memory 'B_54' (8 * 8b)
--         Word n : bit [ 7: 0] - B_54[4n]
--                  bit [15: 8] - B_54[4n+1]
--                  bit [23:16] - B_54[4n+2]
--                  bit [31:24] - B_54[4n+3]
-- 0x3c8 ~
-- 0x3cf : Memory 'B_55' (8 * 8b)
--         Word n : bit [ 7: 0] - B_55[4n]
--                  bit [15: 8] - B_55[4n+1]
--                  bit [23:16] - B_55[4n+2]
--                  bit [31:24] - B_55[4n+3]
-- 0x3d0 ~
-- 0x3d7 : Memory 'B_56' (8 * 8b)
--         Word n : bit [ 7: 0] - B_56[4n]
--                  bit [15: 8] - B_56[4n+1]
--                  bit [23:16] - B_56[4n+2]
--                  bit [31:24] - B_56[4n+3]
-- 0x3d8 ~
-- 0x3df : Memory 'B_57' (8 * 8b)
--         Word n : bit [ 7: 0] - B_57[4n]
--                  bit [15: 8] - B_57[4n+1]
--                  bit [23:16] - B_57[4n+2]
--                  bit [31:24] - B_57[4n+3]
-- 0x3e0 ~
-- 0x3e7 : Memory 'B_58' (8 * 8b)
--         Word n : bit [ 7: 0] - B_58[4n]
--                  bit [15: 8] - B_58[4n+1]
--                  bit [23:16] - B_58[4n+2]
--                  bit [31:24] - B_58[4n+3]
-- 0x3e8 ~
-- 0x3ef : Memory 'B_59' (8 * 8b)
--         Word n : bit [ 7: 0] - B_59[4n]
--                  bit [15: 8] - B_59[4n+1]
--                  bit [23:16] - B_59[4n+2]
--                  bit [31:24] - B_59[4n+3]
-- 0x3f0 ~
-- 0x3f7 : Memory 'B_60' (8 * 8b)
--         Word n : bit [ 7: 0] - B_60[4n]
--                  bit [15: 8] - B_60[4n+1]
--                  bit [23:16] - B_60[4n+2]
--                  bit [31:24] - B_60[4n+3]
-- 0x3f8 ~
-- 0x3ff : Memory 'B_61' (8 * 8b)
--         Word n : bit [ 7: 0] - B_61[4n]
--                  bit [15: 8] - B_61[4n+1]
--                  bit [23:16] - B_61[4n+2]
--                  bit [31:24] - B_61[4n+3]
-- 0x400 ~
-- 0x407 : Memory 'B_62' (8 * 8b)
--         Word n : bit [ 7: 0] - B_62[4n]
--                  bit [15: 8] - B_62[4n+1]
--                  bit [23:16] - B_62[4n+2]
--                  bit [31:24] - B_62[4n+3]
-- 0x408 ~
-- 0x40f : Memory 'B_63' (8 * 8b)
--         Word n : bit [ 7: 0] - B_63[4n]
--                  bit [15: 8] - B_63[4n+1]
--                  bit [23:16] - B_63[4n+2]
--                  bit [31:24] - B_63[4n+3]
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of eucHW_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL   : INTEGER := 16#000#;
    constant ADDR_GIE       : INTEGER := 16#004#;
    constant ADDR_IER       : INTEGER := 16#008#;
    constant ADDR_ISR       : INTEGER := 16#00c#;
    constant ADDR_C_DATA_0  : INTEGER := 16#410#;
    constant ADDR_C_CTRL    : INTEGER := 16#414#;
    constant ADDR_A_0_BASE  : INTEGER := 16#010#;
    constant ADDR_A_0_HIGH  : INTEGER := 16#017#;
    constant ADDR_A_1_BASE  : INTEGER := 16#018#;
    constant ADDR_A_1_HIGH  : INTEGER := 16#01f#;
    constant ADDR_A_2_BASE  : INTEGER := 16#020#;
    constant ADDR_A_2_HIGH  : INTEGER := 16#027#;
    constant ADDR_A_3_BASE  : INTEGER := 16#028#;
    constant ADDR_A_3_HIGH  : INTEGER := 16#02f#;
    constant ADDR_A_4_BASE  : INTEGER := 16#030#;
    constant ADDR_A_4_HIGH  : INTEGER := 16#037#;
    constant ADDR_A_5_BASE  : INTEGER := 16#038#;
    constant ADDR_A_5_HIGH  : INTEGER := 16#03f#;
    constant ADDR_A_6_BASE  : INTEGER := 16#040#;
    constant ADDR_A_6_HIGH  : INTEGER := 16#047#;
    constant ADDR_A_7_BASE  : INTEGER := 16#048#;
    constant ADDR_A_7_HIGH  : INTEGER := 16#04f#;
    constant ADDR_A_8_BASE  : INTEGER := 16#050#;
    constant ADDR_A_8_HIGH  : INTEGER := 16#057#;
    constant ADDR_A_9_BASE  : INTEGER := 16#058#;
    constant ADDR_A_9_HIGH  : INTEGER := 16#05f#;
    constant ADDR_A_10_BASE : INTEGER := 16#060#;
    constant ADDR_A_10_HIGH : INTEGER := 16#067#;
    constant ADDR_A_11_BASE : INTEGER := 16#068#;
    constant ADDR_A_11_HIGH : INTEGER := 16#06f#;
    constant ADDR_A_12_BASE : INTEGER := 16#070#;
    constant ADDR_A_12_HIGH : INTEGER := 16#077#;
    constant ADDR_A_13_BASE : INTEGER := 16#078#;
    constant ADDR_A_13_HIGH : INTEGER := 16#07f#;
    constant ADDR_A_14_BASE : INTEGER := 16#080#;
    constant ADDR_A_14_HIGH : INTEGER := 16#087#;
    constant ADDR_A_15_BASE : INTEGER := 16#088#;
    constant ADDR_A_15_HIGH : INTEGER := 16#08f#;
    constant ADDR_A_16_BASE : INTEGER := 16#090#;
    constant ADDR_A_16_HIGH : INTEGER := 16#097#;
    constant ADDR_A_17_BASE : INTEGER := 16#098#;
    constant ADDR_A_17_HIGH : INTEGER := 16#09f#;
    constant ADDR_A_18_BASE : INTEGER := 16#0a0#;
    constant ADDR_A_18_HIGH : INTEGER := 16#0a7#;
    constant ADDR_A_19_BASE : INTEGER := 16#0a8#;
    constant ADDR_A_19_HIGH : INTEGER := 16#0af#;
    constant ADDR_A_20_BASE : INTEGER := 16#0b0#;
    constant ADDR_A_20_HIGH : INTEGER := 16#0b7#;
    constant ADDR_A_21_BASE : INTEGER := 16#0b8#;
    constant ADDR_A_21_HIGH : INTEGER := 16#0bf#;
    constant ADDR_A_22_BASE : INTEGER := 16#0c0#;
    constant ADDR_A_22_HIGH : INTEGER := 16#0c7#;
    constant ADDR_A_23_BASE : INTEGER := 16#0c8#;
    constant ADDR_A_23_HIGH : INTEGER := 16#0cf#;
    constant ADDR_A_24_BASE : INTEGER := 16#0d0#;
    constant ADDR_A_24_HIGH : INTEGER := 16#0d7#;
    constant ADDR_A_25_BASE : INTEGER := 16#0d8#;
    constant ADDR_A_25_HIGH : INTEGER := 16#0df#;
    constant ADDR_A_26_BASE : INTEGER := 16#0e0#;
    constant ADDR_A_26_HIGH : INTEGER := 16#0e7#;
    constant ADDR_A_27_BASE : INTEGER := 16#0e8#;
    constant ADDR_A_27_HIGH : INTEGER := 16#0ef#;
    constant ADDR_A_28_BASE : INTEGER := 16#0f0#;
    constant ADDR_A_28_HIGH : INTEGER := 16#0f7#;
    constant ADDR_A_29_BASE : INTEGER := 16#0f8#;
    constant ADDR_A_29_HIGH : INTEGER := 16#0ff#;
    constant ADDR_A_30_BASE : INTEGER := 16#100#;
    constant ADDR_A_30_HIGH : INTEGER := 16#107#;
    constant ADDR_A_31_BASE : INTEGER := 16#108#;
    constant ADDR_A_31_HIGH : INTEGER := 16#10f#;
    constant ADDR_A_32_BASE : INTEGER := 16#110#;
    constant ADDR_A_32_HIGH : INTEGER := 16#117#;
    constant ADDR_A_33_BASE : INTEGER := 16#118#;
    constant ADDR_A_33_HIGH : INTEGER := 16#11f#;
    constant ADDR_A_34_BASE : INTEGER := 16#120#;
    constant ADDR_A_34_HIGH : INTEGER := 16#127#;
    constant ADDR_A_35_BASE : INTEGER := 16#128#;
    constant ADDR_A_35_HIGH : INTEGER := 16#12f#;
    constant ADDR_A_36_BASE : INTEGER := 16#130#;
    constant ADDR_A_36_HIGH : INTEGER := 16#137#;
    constant ADDR_A_37_BASE : INTEGER := 16#138#;
    constant ADDR_A_37_HIGH : INTEGER := 16#13f#;
    constant ADDR_A_38_BASE : INTEGER := 16#140#;
    constant ADDR_A_38_HIGH : INTEGER := 16#147#;
    constant ADDR_A_39_BASE : INTEGER := 16#148#;
    constant ADDR_A_39_HIGH : INTEGER := 16#14f#;
    constant ADDR_A_40_BASE : INTEGER := 16#150#;
    constant ADDR_A_40_HIGH : INTEGER := 16#157#;
    constant ADDR_A_41_BASE : INTEGER := 16#158#;
    constant ADDR_A_41_HIGH : INTEGER := 16#15f#;
    constant ADDR_A_42_BASE : INTEGER := 16#160#;
    constant ADDR_A_42_HIGH : INTEGER := 16#167#;
    constant ADDR_A_43_BASE : INTEGER := 16#168#;
    constant ADDR_A_43_HIGH : INTEGER := 16#16f#;
    constant ADDR_A_44_BASE : INTEGER := 16#170#;
    constant ADDR_A_44_HIGH : INTEGER := 16#177#;
    constant ADDR_A_45_BASE : INTEGER := 16#178#;
    constant ADDR_A_45_HIGH : INTEGER := 16#17f#;
    constant ADDR_A_46_BASE : INTEGER := 16#180#;
    constant ADDR_A_46_HIGH : INTEGER := 16#187#;
    constant ADDR_A_47_BASE : INTEGER := 16#188#;
    constant ADDR_A_47_HIGH : INTEGER := 16#18f#;
    constant ADDR_A_48_BASE : INTEGER := 16#190#;
    constant ADDR_A_48_HIGH : INTEGER := 16#197#;
    constant ADDR_A_49_BASE : INTEGER := 16#198#;
    constant ADDR_A_49_HIGH : INTEGER := 16#19f#;
    constant ADDR_A_50_BASE : INTEGER := 16#1a0#;
    constant ADDR_A_50_HIGH : INTEGER := 16#1a7#;
    constant ADDR_A_51_BASE : INTEGER := 16#1a8#;
    constant ADDR_A_51_HIGH : INTEGER := 16#1af#;
    constant ADDR_A_52_BASE : INTEGER := 16#1b0#;
    constant ADDR_A_52_HIGH : INTEGER := 16#1b7#;
    constant ADDR_A_53_BASE : INTEGER := 16#1b8#;
    constant ADDR_A_53_HIGH : INTEGER := 16#1bf#;
    constant ADDR_A_54_BASE : INTEGER := 16#1c0#;
    constant ADDR_A_54_HIGH : INTEGER := 16#1c7#;
    constant ADDR_A_55_BASE : INTEGER := 16#1c8#;
    constant ADDR_A_55_HIGH : INTEGER := 16#1cf#;
    constant ADDR_A_56_BASE : INTEGER := 16#1d0#;
    constant ADDR_A_56_HIGH : INTEGER := 16#1d7#;
    constant ADDR_A_57_BASE : INTEGER := 16#1d8#;
    constant ADDR_A_57_HIGH : INTEGER := 16#1df#;
    constant ADDR_A_58_BASE : INTEGER := 16#1e0#;
    constant ADDR_A_58_HIGH : INTEGER := 16#1e7#;
    constant ADDR_A_59_BASE : INTEGER := 16#1e8#;
    constant ADDR_A_59_HIGH : INTEGER := 16#1ef#;
    constant ADDR_A_60_BASE : INTEGER := 16#1f0#;
    constant ADDR_A_60_HIGH : INTEGER := 16#1f7#;
    constant ADDR_A_61_BASE : INTEGER := 16#1f8#;
    constant ADDR_A_61_HIGH : INTEGER := 16#1ff#;
    constant ADDR_A_62_BASE : INTEGER := 16#200#;
    constant ADDR_A_62_HIGH : INTEGER := 16#207#;
    constant ADDR_A_63_BASE : INTEGER := 16#208#;
    constant ADDR_A_63_HIGH : INTEGER := 16#20f#;
    constant ADDR_B_0_BASE  : INTEGER := 16#210#;
    constant ADDR_B_0_HIGH  : INTEGER := 16#217#;
    constant ADDR_B_1_BASE  : INTEGER := 16#218#;
    constant ADDR_B_1_HIGH  : INTEGER := 16#21f#;
    constant ADDR_B_2_BASE  : INTEGER := 16#220#;
    constant ADDR_B_2_HIGH  : INTEGER := 16#227#;
    constant ADDR_B_3_BASE  : INTEGER := 16#228#;
    constant ADDR_B_3_HIGH  : INTEGER := 16#22f#;
    constant ADDR_B_4_BASE  : INTEGER := 16#230#;
    constant ADDR_B_4_HIGH  : INTEGER := 16#237#;
    constant ADDR_B_5_BASE  : INTEGER := 16#238#;
    constant ADDR_B_5_HIGH  : INTEGER := 16#23f#;
    constant ADDR_B_6_BASE  : INTEGER := 16#240#;
    constant ADDR_B_6_HIGH  : INTEGER := 16#247#;
    constant ADDR_B_7_BASE  : INTEGER := 16#248#;
    constant ADDR_B_7_HIGH  : INTEGER := 16#24f#;
    constant ADDR_B_8_BASE  : INTEGER := 16#250#;
    constant ADDR_B_8_HIGH  : INTEGER := 16#257#;
    constant ADDR_B_9_BASE  : INTEGER := 16#258#;
    constant ADDR_B_9_HIGH  : INTEGER := 16#25f#;
    constant ADDR_B_10_BASE : INTEGER := 16#260#;
    constant ADDR_B_10_HIGH : INTEGER := 16#267#;
    constant ADDR_B_11_BASE : INTEGER := 16#268#;
    constant ADDR_B_11_HIGH : INTEGER := 16#26f#;
    constant ADDR_B_12_BASE : INTEGER := 16#270#;
    constant ADDR_B_12_HIGH : INTEGER := 16#277#;
    constant ADDR_B_13_BASE : INTEGER := 16#278#;
    constant ADDR_B_13_HIGH : INTEGER := 16#27f#;
    constant ADDR_B_14_BASE : INTEGER := 16#280#;
    constant ADDR_B_14_HIGH : INTEGER := 16#287#;
    constant ADDR_B_15_BASE : INTEGER := 16#288#;
    constant ADDR_B_15_HIGH : INTEGER := 16#28f#;
    constant ADDR_B_16_BASE : INTEGER := 16#290#;
    constant ADDR_B_16_HIGH : INTEGER := 16#297#;
    constant ADDR_B_17_BASE : INTEGER := 16#298#;
    constant ADDR_B_17_HIGH : INTEGER := 16#29f#;
    constant ADDR_B_18_BASE : INTEGER := 16#2a0#;
    constant ADDR_B_18_HIGH : INTEGER := 16#2a7#;
    constant ADDR_B_19_BASE : INTEGER := 16#2a8#;
    constant ADDR_B_19_HIGH : INTEGER := 16#2af#;
    constant ADDR_B_20_BASE : INTEGER := 16#2b0#;
    constant ADDR_B_20_HIGH : INTEGER := 16#2b7#;
    constant ADDR_B_21_BASE : INTEGER := 16#2b8#;
    constant ADDR_B_21_HIGH : INTEGER := 16#2bf#;
    constant ADDR_B_22_BASE : INTEGER := 16#2c0#;
    constant ADDR_B_22_HIGH : INTEGER := 16#2c7#;
    constant ADDR_B_23_BASE : INTEGER := 16#2c8#;
    constant ADDR_B_23_HIGH : INTEGER := 16#2cf#;
    constant ADDR_B_24_BASE : INTEGER := 16#2d0#;
    constant ADDR_B_24_HIGH : INTEGER := 16#2d7#;
    constant ADDR_B_25_BASE : INTEGER := 16#2d8#;
    constant ADDR_B_25_HIGH : INTEGER := 16#2df#;
    constant ADDR_B_26_BASE : INTEGER := 16#2e0#;
    constant ADDR_B_26_HIGH : INTEGER := 16#2e7#;
    constant ADDR_B_27_BASE : INTEGER := 16#2e8#;
    constant ADDR_B_27_HIGH : INTEGER := 16#2ef#;
    constant ADDR_B_28_BASE : INTEGER := 16#2f0#;
    constant ADDR_B_28_HIGH : INTEGER := 16#2f7#;
    constant ADDR_B_29_BASE : INTEGER := 16#2f8#;
    constant ADDR_B_29_HIGH : INTEGER := 16#2ff#;
    constant ADDR_B_30_BASE : INTEGER := 16#300#;
    constant ADDR_B_30_HIGH : INTEGER := 16#307#;
    constant ADDR_B_31_BASE : INTEGER := 16#308#;
    constant ADDR_B_31_HIGH : INTEGER := 16#30f#;
    constant ADDR_B_32_BASE : INTEGER := 16#310#;
    constant ADDR_B_32_HIGH : INTEGER := 16#317#;
    constant ADDR_B_33_BASE : INTEGER := 16#318#;
    constant ADDR_B_33_HIGH : INTEGER := 16#31f#;
    constant ADDR_B_34_BASE : INTEGER := 16#320#;
    constant ADDR_B_34_HIGH : INTEGER := 16#327#;
    constant ADDR_B_35_BASE : INTEGER := 16#328#;
    constant ADDR_B_35_HIGH : INTEGER := 16#32f#;
    constant ADDR_B_36_BASE : INTEGER := 16#330#;
    constant ADDR_B_36_HIGH : INTEGER := 16#337#;
    constant ADDR_B_37_BASE : INTEGER := 16#338#;
    constant ADDR_B_37_HIGH : INTEGER := 16#33f#;
    constant ADDR_B_38_BASE : INTEGER := 16#340#;
    constant ADDR_B_38_HIGH : INTEGER := 16#347#;
    constant ADDR_B_39_BASE : INTEGER := 16#348#;
    constant ADDR_B_39_HIGH : INTEGER := 16#34f#;
    constant ADDR_B_40_BASE : INTEGER := 16#350#;
    constant ADDR_B_40_HIGH : INTEGER := 16#357#;
    constant ADDR_B_41_BASE : INTEGER := 16#358#;
    constant ADDR_B_41_HIGH : INTEGER := 16#35f#;
    constant ADDR_B_42_BASE : INTEGER := 16#360#;
    constant ADDR_B_42_HIGH : INTEGER := 16#367#;
    constant ADDR_B_43_BASE : INTEGER := 16#368#;
    constant ADDR_B_43_HIGH : INTEGER := 16#36f#;
    constant ADDR_B_44_BASE : INTEGER := 16#370#;
    constant ADDR_B_44_HIGH : INTEGER := 16#377#;
    constant ADDR_B_45_BASE : INTEGER := 16#378#;
    constant ADDR_B_45_HIGH : INTEGER := 16#37f#;
    constant ADDR_B_46_BASE : INTEGER := 16#380#;
    constant ADDR_B_46_HIGH : INTEGER := 16#387#;
    constant ADDR_B_47_BASE : INTEGER := 16#388#;
    constant ADDR_B_47_HIGH : INTEGER := 16#38f#;
    constant ADDR_B_48_BASE : INTEGER := 16#390#;
    constant ADDR_B_48_HIGH : INTEGER := 16#397#;
    constant ADDR_B_49_BASE : INTEGER := 16#398#;
    constant ADDR_B_49_HIGH : INTEGER := 16#39f#;
    constant ADDR_B_50_BASE : INTEGER := 16#3a0#;
    constant ADDR_B_50_HIGH : INTEGER := 16#3a7#;
    constant ADDR_B_51_BASE : INTEGER := 16#3a8#;
    constant ADDR_B_51_HIGH : INTEGER := 16#3af#;
    constant ADDR_B_52_BASE : INTEGER := 16#3b0#;
    constant ADDR_B_52_HIGH : INTEGER := 16#3b7#;
    constant ADDR_B_53_BASE : INTEGER := 16#3b8#;
    constant ADDR_B_53_HIGH : INTEGER := 16#3bf#;
    constant ADDR_B_54_BASE : INTEGER := 16#3c0#;
    constant ADDR_B_54_HIGH : INTEGER := 16#3c7#;
    constant ADDR_B_55_BASE : INTEGER := 16#3c8#;
    constant ADDR_B_55_HIGH : INTEGER := 16#3cf#;
    constant ADDR_B_56_BASE : INTEGER := 16#3d0#;
    constant ADDR_B_56_HIGH : INTEGER := 16#3d7#;
    constant ADDR_B_57_BASE : INTEGER := 16#3d8#;
    constant ADDR_B_57_HIGH : INTEGER := 16#3df#;
    constant ADDR_B_58_BASE : INTEGER := 16#3e0#;
    constant ADDR_B_58_HIGH : INTEGER := 16#3e7#;
    constant ADDR_B_59_BASE : INTEGER := 16#3e8#;
    constant ADDR_B_59_HIGH : INTEGER := 16#3ef#;
    constant ADDR_B_60_BASE : INTEGER := 16#3f0#;
    constant ADDR_B_60_HIGH : INTEGER := 16#3f7#;
    constant ADDR_B_61_BASE : INTEGER := 16#3f8#;
    constant ADDR_B_61_HIGH : INTEGER := 16#3ff#;
    constant ADDR_B_62_BASE : INTEGER := 16#400#;
    constant ADDR_B_62_HIGH : INTEGER := 16#407#;
    constant ADDR_B_63_BASE : INTEGER := 16#408#;
    constant ADDR_B_63_HIGH : INTEGER := 16#40f#;
    constant ADDR_BITS         : INTEGER := 11;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_C_ap_vld        : STD_LOGIC;
    signal int_C               : UNSIGNED(31 downto 0) := (others => '0');
    -- memory signals
    signal int_A_0_address0    : UNSIGNED(0 downto 0);
    signal int_A_0_ce0         : STD_LOGIC;
    signal int_A_0_q0          : UNSIGNED(31 downto 0);
    signal int_A_0_address1    : UNSIGNED(0 downto 0);
    signal int_A_0_ce1         : STD_LOGIC;
    signal int_A_0_we1         : STD_LOGIC;
    signal int_A_0_be1         : UNSIGNED(3 downto 0);
    signal int_A_0_d1          : UNSIGNED(31 downto 0);
    signal int_A_0_q1          : UNSIGNED(31 downto 0);
    signal int_A_0_read        : STD_LOGIC;
    signal int_A_0_write       : STD_LOGIC;
    signal int_A_0_shift0      : UNSIGNED(1 downto 0);
    signal int_A_1_address0    : UNSIGNED(0 downto 0);
    signal int_A_1_ce0         : STD_LOGIC;
    signal int_A_1_q0          : UNSIGNED(31 downto 0);
    signal int_A_1_address1    : UNSIGNED(0 downto 0);
    signal int_A_1_ce1         : STD_LOGIC;
    signal int_A_1_we1         : STD_LOGIC;
    signal int_A_1_be1         : UNSIGNED(3 downto 0);
    signal int_A_1_d1          : UNSIGNED(31 downto 0);
    signal int_A_1_q1          : UNSIGNED(31 downto 0);
    signal int_A_1_read        : STD_LOGIC;
    signal int_A_1_write       : STD_LOGIC;
    signal int_A_1_shift0      : UNSIGNED(1 downto 0);
    signal int_A_2_address0    : UNSIGNED(0 downto 0);
    signal int_A_2_ce0         : STD_LOGIC;
    signal int_A_2_q0          : UNSIGNED(31 downto 0);
    signal int_A_2_address1    : UNSIGNED(0 downto 0);
    signal int_A_2_ce1         : STD_LOGIC;
    signal int_A_2_we1         : STD_LOGIC;
    signal int_A_2_be1         : UNSIGNED(3 downto 0);
    signal int_A_2_d1          : UNSIGNED(31 downto 0);
    signal int_A_2_q1          : UNSIGNED(31 downto 0);
    signal int_A_2_read        : STD_LOGIC;
    signal int_A_2_write       : STD_LOGIC;
    signal int_A_2_shift0      : UNSIGNED(1 downto 0);
    signal int_A_3_address0    : UNSIGNED(0 downto 0);
    signal int_A_3_ce0         : STD_LOGIC;
    signal int_A_3_q0          : UNSIGNED(31 downto 0);
    signal int_A_3_address1    : UNSIGNED(0 downto 0);
    signal int_A_3_ce1         : STD_LOGIC;
    signal int_A_3_we1         : STD_LOGIC;
    signal int_A_3_be1         : UNSIGNED(3 downto 0);
    signal int_A_3_d1          : UNSIGNED(31 downto 0);
    signal int_A_3_q1          : UNSIGNED(31 downto 0);
    signal int_A_3_read        : STD_LOGIC;
    signal int_A_3_write       : STD_LOGIC;
    signal int_A_3_shift0      : UNSIGNED(1 downto 0);
    signal int_A_4_address0    : UNSIGNED(0 downto 0);
    signal int_A_4_ce0         : STD_LOGIC;
    signal int_A_4_q0          : UNSIGNED(31 downto 0);
    signal int_A_4_address1    : UNSIGNED(0 downto 0);
    signal int_A_4_ce1         : STD_LOGIC;
    signal int_A_4_we1         : STD_LOGIC;
    signal int_A_4_be1         : UNSIGNED(3 downto 0);
    signal int_A_4_d1          : UNSIGNED(31 downto 0);
    signal int_A_4_q1          : UNSIGNED(31 downto 0);
    signal int_A_4_read        : STD_LOGIC;
    signal int_A_4_write       : STD_LOGIC;
    signal int_A_4_shift0      : UNSIGNED(1 downto 0);
    signal int_A_5_address0    : UNSIGNED(0 downto 0);
    signal int_A_5_ce0         : STD_LOGIC;
    signal int_A_5_q0          : UNSIGNED(31 downto 0);
    signal int_A_5_address1    : UNSIGNED(0 downto 0);
    signal int_A_5_ce1         : STD_LOGIC;
    signal int_A_5_we1         : STD_LOGIC;
    signal int_A_5_be1         : UNSIGNED(3 downto 0);
    signal int_A_5_d1          : UNSIGNED(31 downto 0);
    signal int_A_5_q1          : UNSIGNED(31 downto 0);
    signal int_A_5_read        : STD_LOGIC;
    signal int_A_5_write       : STD_LOGIC;
    signal int_A_5_shift0      : UNSIGNED(1 downto 0);
    signal int_A_6_address0    : UNSIGNED(0 downto 0);
    signal int_A_6_ce0         : STD_LOGIC;
    signal int_A_6_q0          : UNSIGNED(31 downto 0);
    signal int_A_6_address1    : UNSIGNED(0 downto 0);
    signal int_A_6_ce1         : STD_LOGIC;
    signal int_A_6_we1         : STD_LOGIC;
    signal int_A_6_be1         : UNSIGNED(3 downto 0);
    signal int_A_6_d1          : UNSIGNED(31 downto 0);
    signal int_A_6_q1          : UNSIGNED(31 downto 0);
    signal int_A_6_read        : STD_LOGIC;
    signal int_A_6_write       : STD_LOGIC;
    signal int_A_6_shift0      : UNSIGNED(1 downto 0);
    signal int_A_7_address0    : UNSIGNED(0 downto 0);
    signal int_A_7_ce0         : STD_LOGIC;
    signal int_A_7_q0          : UNSIGNED(31 downto 0);
    signal int_A_7_address1    : UNSIGNED(0 downto 0);
    signal int_A_7_ce1         : STD_LOGIC;
    signal int_A_7_we1         : STD_LOGIC;
    signal int_A_7_be1         : UNSIGNED(3 downto 0);
    signal int_A_7_d1          : UNSIGNED(31 downto 0);
    signal int_A_7_q1          : UNSIGNED(31 downto 0);
    signal int_A_7_read        : STD_LOGIC;
    signal int_A_7_write       : STD_LOGIC;
    signal int_A_7_shift0      : UNSIGNED(1 downto 0);
    signal int_A_8_address0    : UNSIGNED(0 downto 0);
    signal int_A_8_ce0         : STD_LOGIC;
    signal int_A_8_q0          : UNSIGNED(31 downto 0);
    signal int_A_8_address1    : UNSIGNED(0 downto 0);
    signal int_A_8_ce1         : STD_LOGIC;
    signal int_A_8_we1         : STD_LOGIC;
    signal int_A_8_be1         : UNSIGNED(3 downto 0);
    signal int_A_8_d1          : UNSIGNED(31 downto 0);
    signal int_A_8_q1          : UNSIGNED(31 downto 0);
    signal int_A_8_read        : STD_LOGIC;
    signal int_A_8_write       : STD_LOGIC;
    signal int_A_8_shift0      : UNSIGNED(1 downto 0);
    signal int_A_9_address0    : UNSIGNED(0 downto 0);
    signal int_A_9_ce0         : STD_LOGIC;
    signal int_A_9_q0          : UNSIGNED(31 downto 0);
    signal int_A_9_address1    : UNSIGNED(0 downto 0);
    signal int_A_9_ce1         : STD_LOGIC;
    signal int_A_9_we1         : STD_LOGIC;
    signal int_A_9_be1         : UNSIGNED(3 downto 0);
    signal int_A_9_d1          : UNSIGNED(31 downto 0);
    signal int_A_9_q1          : UNSIGNED(31 downto 0);
    signal int_A_9_read        : STD_LOGIC;
    signal int_A_9_write       : STD_LOGIC;
    signal int_A_9_shift0      : UNSIGNED(1 downto 0);
    signal int_A_10_address0   : UNSIGNED(0 downto 0);
    signal int_A_10_ce0        : STD_LOGIC;
    signal int_A_10_q0         : UNSIGNED(31 downto 0);
    signal int_A_10_address1   : UNSIGNED(0 downto 0);
    signal int_A_10_ce1        : STD_LOGIC;
    signal int_A_10_we1        : STD_LOGIC;
    signal int_A_10_be1        : UNSIGNED(3 downto 0);
    signal int_A_10_d1         : UNSIGNED(31 downto 0);
    signal int_A_10_q1         : UNSIGNED(31 downto 0);
    signal int_A_10_read       : STD_LOGIC;
    signal int_A_10_write      : STD_LOGIC;
    signal int_A_10_shift0     : UNSIGNED(1 downto 0);
    signal int_A_11_address0   : UNSIGNED(0 downto 0);
    signal int_A_11_ce0        : STD_LOGIC;
    signal int_A_11_q0         : UNSIGNED(31 downto 0);
    signal int_A_11_address1   : UNSIGNED(0 downto 0);
    signal int_A_11_ce1        : STD_LOGIC;
    signal int_A_11_we1        : STD_LOGIC;
    signal int_A_11_be1        : UNSIGNED(3 downto 0);
    signal int_A_11_d1         : UNSIGNED(31 downto 0);
    signal int_A_11_q1         : UNSIGNED(31 downto 0);
    signal int_A_11_read       : STD_LOGIC;
    signal int_A_11_write      : STD_LOGIC;
    signal int_A_11_shift0     : UNSIGNED(1 downto 0);
    signal int_A_12_address0   : UNSIGNED(0 downto 0);
    signal int_A_12_ce0        : STD_LOGIC;
    signal int_A_12_q0         : UNSIGNED(31 downto 0);
    signal int_A_12_address1   : UNSIGNED(0 downto 0);
    signal int_A_12_ce1        : STD_LOGIC;
    signal int_A_12_we1        : STD_LOGIC;
    signal int_A_12_be1        : UNSIGNED(3 downto 0);
    signal int_A_12_d1         : UNSIGNED(31 downto 0);
    signal int_A_12_q1         : UNSIGNED(31 downto 0);
    signal int_A_12_read       : STD_LOGIC;
    signal int_A_12_write      : STD_LOGIC;
    signal int_A_12_shift0     : UNSIGNED(1 downto 0);
    signal int_A_13_address0   : UNSIGNED(0 downto 0);
    signal int_A_13_ce0        : STD_LOGIC;
    signal int_A_13_q0         : UNSIGNED(31 downto 0);
    signal int_A_13_address1   : UNSIGNED(0 downto 0);
    signal int_A_13_ce1        : STD_LOGIC;
    signal int_A_13_we1        : STD_LOGIC;
    signal int_A_13_be1        : UNSIGNED(3 downto 0);
    signal int_A_13_d1         : UNSIGNED(31 downto 0);
    signal int_A_13_q1         : UNSIGNED(31 downto 0);
    signal int_A_13_read       : STD_LOGIC;
    signal int_A_13_write      : STD_LOGIC;
    signal int_A_13_shift0     : UNSIGNED(1 downto 0);
    signal int_A_14_address0   : UNSIGNED(0 downto 0);
    signal int_A_14_ce0        : STD_LOGIC;
    signal int_A_14_q0         : UNSIGNED(31 downto 0);
    signal int_A_14_address1   : UNSIGNED(0 downto 0);
    signal int_A_14_ce1        : STD_LOGIC;
    signal int_A_14_we1        : STD_LOGIC;
    signal int_A_14_be1        : UNSIGNED(3 downto 0);
    signal int_A_14_d1         : UNSIGNED(31 downto 0);
    signal int_A_14_q1         : UNSIGNED(31 downto 0);
    signal int_A_14_read       : STD_LOGIC;
    signal int_A_14_write      : STD_LOGIC;
    signal int_A_14_shift0     : UNSIGNED(1 downto 0);
    signal int_A_15_address0   : UNSIGNED(0 downto 0);
    signal int_A_15_ce0        : STD_LOGIC;
    signal int_A_15_q0         : UNSIGNED(31 downto 0);
    signal int_A_15_address1   : UNSIGNED(0 downto 0);
    signal int_A_15_ce1        : STD_LOGIC;
    signal int_A_15_we1        : STD_LOGIC;
    signal int_A_15_be1        : UNSIGNED(3 downto 0);
    signal int_A_15_d1         : UNSIGNED(31 downto 0);
    signal int_A_15_q1         : UNSIGNED(31 downto 0);
    signal int_A_15_read       : STD_LOGIC;
    signal int_A_15_write      : STD_LOGIC;
    signal int_A_15_shift0     : UNSIGNED(1 downto 0);
    signal int_A_16_address0   : UNSIGNED(0 downto 0);
    signal int_A_16_ce0        : STD_LOGIC;
    signal int_A_16_q0         : UNSIGNED(31 downto 0);
    signal int_A_16_address1   : UNSIGNED(0 downto 0);
    signal int_A_16_ce1        : STD_LOGIC;
    signal int_A_16_we1        : STD_LOGIC;
    signal int_A_16_be1        : UNSIGNED(3 downto 0);
    signal int_A_16_d1         : UNSIGNED(31 downto 0);
    signal int_A_16_q1         : UNSIGNED(31 downto 0);
    signal int_A_16_read       : STD_LOGIC;
    signal int_A_16_write      : STD_LOGIC;
    signal int_A_16_shift0     : UNSIGNED(1 downto 0);
    signal int_A_17_address0   : UNSIGNED(0 downto 0);
    signal int_A_17_ce0        : STD_LOGIC;
    signal int_A_17_q0         : UNSIGNED(31 downto 0);
    signal int_A_17_address1   : UNSIGNED(0 downto 0);
    signal int_A_17_ce1        : STD_LOGIC;
    signal int_A_17_we1        : STD_LOGIC;
    signal int_A_17_be1        : UNSIGNED(3 downto 0);
    signal int_A_17_d1         : UNSIGNED(31 downto 0);
    signal int_A_17_q1         : UNSIGNED(31 downto 0);
    signal int_A_17_read       : STD_LOGIC;
    signal int_A_17_write      : STD_LOGIC;
    signal int_A_17_shift0     : UNSIGNED(1 downto 0);
    signal int_A_18_address0   : UNSIGNED(0 downto 0);
    signal int_A_18_ce0        : STD_LOGIC;
    signal int_A_18_q0         : UNSIGNED(31 downto 0);
    signal int_A_18_address1   : UNSIGNED(0 downto 0);
    signal int_A_18_ce1        : STD_LOGIC;
    signal int_A_18_we1        : STD_LOGIC;
    signal int_A_18_be1        : UNSIGNED(3 downto 0);
    signal int_A_18_d1         : UNSIGNED(31 downto 0);
    signal int_A_18_q1         : UNSIGNED(31 downto 0);
    signal int_A_18_read       : STD_LOGIC;
    signal int_A_18_write      : STD_LOGIC;
    signal int_A_18_shift0     : UNSIGNED(1 downto 0);
    signal int_A_19_address0   : UNSIGNED(0 downto 0);
    signal int_A_19_ce0        : STD_LOGIC;
    signal int_A_19_q0         : UNSIGNED(31 downto 0);
    signal int_A_19_address1   : UNSIGNED(0 downto 0);
    signal int_A_19_ce1        : STD_LOGIC;
    signal int_A_19_we1        : STD_LOGIC;
    signal int_A_19_be1        : UNSIGNED(3 downto 0);
    signal int_A_19_d1         : UNSIGNED(31 downto 0);
    signal int_A_19_q1         : UNSIGNED(31 downto 0);
    signal int_A_19_read       : STD_LOGIC;
    signal int_A_19_write      : STD_LOGIC;
    signal int_A_19_shift0     : UNSIGNED(1 downto 0);
    signal int_A_20_address0   : UNSIGNED(0 downto 0);
    signal int_A_20_ce0        : STD_LOGIC;
    signal int_A_20_q0         : UNSIGNED(31 downto 0);
    signal int_A_20_address1   : UNSIGNED(0 downto 0);
    signal int_A_20_ce1        : STD_LOGIC;
    signal int_A_20_we1        : STD_LOGIC;
    signal int_A_20_be1        : UNSIGNED(3 downto 0);
    signal int_A_20_d1         : UNSIGNED(31 downto 0);
    signal int_A_20_q1         : UNSIGNED(31 downto 0);
    signal int_A_20_read       : STD_LOGIC;
    signal int_A_20_write      : STD_LOGIC;
    signal int_A_20_shift0     : UNSIGNED(1 downto 0);
    signal int_A_21_address0   : UNSIGNED(0 downto 0);
    signal int_A_21_ce0        : STD_LOGIC;
    signal int_A_21_q0         : UNSIGNED(31 downto 0);
    signal int_A_21_address1   : UNSIGNED(0 downto 0);
    signal int_A_21_ce1        : STD_LOGIC;
    signal int_A_21_we1        : STD_LOGIC;
    signal int_A_21_be1        : UNSIGNED(3 downto 0);
    signal int_A_21_d1         : UNSIGNED(31 downto 0);
    signal int_A_21_q1         : UNSIGNED(31 downto 0);
    signal int_A_21_read       : STD_LOGIC;
    signal int_A_21_write      : STD_LOGIC;
    signal int_A_21_shift0     : UNSIGNED(1 downto 0);
    signal int_A_22_address0   : UNSIGNED(0 downto 0);
    signal int_A_22_ce0        : STD_LOGIC;
    signal int_A_22_q0         : UNSIGNED(31 downto 0);
    signal int_A_22_address1   : UNSIGNED(0 downto 0);
    signal int_A_22_ce1        : STD_LOGIC;
    signal int_A_22_we1        : STD_LOGIC;
    signal int_A_22_be1        : UNSIGNED(3 downto 0);
    signal int_A_22_d1         : UNSIGNED(31 downto 0);
    signal int_A_22_q1         : UNSIGNED(31 downto 0);
    signal int_A_22_read       : STD_LOGIC;
    signal int_A_22_write      : STD_LOGIC;
    signal int_A_22_shift0     : UNSIGNED(1 downto 0);
    signal int_A_23_address0   : UNSIGNED(0 downto 0);
    signal int_A_23_ce0        : STD_LOGIC;
    signal int_A_23_q0         : UNSIGNED(31 downto 0);
    signal int_A_23_address1   : UNSIGNED(0 downto 0);
    signal int_A_23_ce1        : STD_LOGIC;
    signal int_A_23_we1        : STD_LOGIC;
    signal int_A_23_be1        : UNSIGNED(3 downto 0);
    signal int_A_23_d1         : UNSIGNED(31 downto 0);
    signal int_A_23_q1         : UNSIGNED(31 downto 0);
    signal int_A_23_read       : STD_LOGIC;
    signal int_A_23_write      : STD_LOGIC;
    signal int_A_23_shift0     : UNSIGNED(1 downto 0);
    signal int_A_24_address0   : UNSIGNED(0 downto 0);
    signal int_A_24_ce0        : STD_LOGIC;
    signal int_A_24_q0         : UNSIGNED(31 downto 0);
    signal int_A_24_address1   : UNSIGNED(0 downto 0);
    signal int_A_24_ce1        : STD_LOGIC;
    signal int_A_24_we1        : STD_LOGIC;
    signal int_A_24_be1        : UNSIGNED(3 downto 0);
    signal int_A_24_d1         : UNSIGNED(31 downto 0);
    signal int_A_24_q1         : UNSIGNED(31 downto 0);
    signal int_A_24_read       : STD_LOGIC;
    signal int_A_24_write      : STD_LOGIC;
    signal int_A_24_shift0     : UNSIGNED(1 downto 0);
    signal int_A_25_address0   : UNSIGNED(0 downto 0);
    signal int_A_25_ce0        : STD_LOGIC;
    signal int_A_25_q0         : UNSIGNED(31 downto 0);
    signal int_A_25_address1   : UNSIGNED(0 downto 0);
    signal int_A_25_ce1        : STD_LOGIC;
    signal int_A_25_we1        : STD_LOGIC;
    signal int_A_25_be1        : UNSIGNED(3 downto 0);
    signal int_A_25_d1         : UNSIGNED(31 downto 0);
    signal int_A_25_q1         : UNSIGNED(31 downto 0);
    signal int_A_25_read       : STD_LOGIC;
    signal int_A_25_write      : STD_LOGIC;
    signal int_A_25_shift0     : UNSIGNED(1 downto 0);
    signal int_A_26_address0   : UNSIGNED(0 downto 0);
    signal int_A_26_ce0        : STD_LOGIC;
    signal int_A_26_q0         : UNSIGNED(31 downto 0);
    signal int_A_26_address1   : UNSIGNED(0 downto 0);
    signal int_A_26_ce1        : STD_LOGIC;
    signal int_A_26_we1        : STD_LOGIC;
    signal int_A_26_be1        : UNSIGNED(3 downto 0);
    signal int_A_26_d1         : UNSIGNED(31 downto 0);
    signal int_A_26_q1         : UNSIGNED(31 downto 0);
    signal int_A_26_read       : STD_LOGIC;
    signal int_A_26_write      : STD_LOGIC;
    signal int_A_26_shift0     : UNSIGNED(1 downto 0);
    signal int_A_27_address0   : UNSIGNED(0 downto 0);
    signal int_A_27_ce0        : STD_LOGIC;
    signal int_A_27_q0         : UNSIGNED(31 downto 0);
    signal int_A_27_address1   : UNSIGNED(0 downto 0);
    signal int_A_27_ce1        : STD_LOGIC;
    signal int_A_27_we1        : STD_LOGIC;
    signal int_A_27_be1        : UNSIGNED(3 downto 0);
    signal int_A_27_d1         : UNSIGNED(31 downto 0);
    signal int_A_27_q1         : UNSIGNED(31 downto 0);
    signal int_A_27_read       : STD_LOGIC;
    signal int_A_27_write      : STD_LOGIC;
    signal int_A_27_shift0     : UNSIGNED(1 downto 0);
    signal int_A_28_address0   : UNSIGNED(0 downto 0);
    signal int_A_28_ce0        : STD_LOGIC;
    signal int_A_28_q0         : UNSIGNED(31 downto 0);
    signal int_A_28_address1   : UNSIGNED(0 downto 0);
    signal int_A_28_ce1        : STD_LOGIC;
    signal int_A_28_we1        : STD_LOGIC;
    signal int_A_28_be1        : UNSIGNED(3 downto 0);
    signal int_A_28_d1         : UNSIGNED(31 downto 0);
    signal int_A_28_q1         : UNSIGNED(31 downto 0);
    signal int_A_28_read       : STD_LOGIC;
    signal int_A_28_write      : STD_LOGIC;
    signal int_A_28_shift0     : UNSIGNED(1 downto 0);
    signal int_A_29_address0   : UNSIGNED(0 downto 0);
    signal int_A_29_ce0        : STD_LOGIC;
    signal int_A_29_q0         : UNSIGNED(31 downto 0);
    signal int_A_29_address1   : UNSIGNED(0 downto 0);
    signal int_A_29_ce1        : STD_LOGIC;
    signal int_A_29_we1        : STD_LOGIC;
    signal int_A_29_be1        : UNSIGNED(3 downto 0);
    signal int_A_29_d1         : UNSIGNED(31 downto 0);
    signal int_A_29_q1         : UNSIGNED(31 downto 0);
    signal int_A_29_read       : STD_LOGIC;
    signal int_A_29_write      : STD_LOGIC;
    signal int_A_29_shift0     : UNSIGNED(1 downto 0);
    signal int_A_30_address0   : UNSIGNED(0 downto 0);
    signal int_A_30_ce0        : STD_LOGIC;
    signal int_A_30_q0         : UNSIGNED(31 downto 0);
    signal int_A_30_address1   : UNSIGNED(0 downto 0);
    signal int_A_30_ce1        : STD_LOGIC;
    signal int_A_30_we1        : STD_LOGIC;
    signal int_A_30_be1        : UNSIGNED(3 downto 0);
    signal int_A_30_d1         : UNSIGNED(31 downto 0);
    signal int_A_30_q1         : UNSIGNED(31 downto 0);
    signal int_A_30_read       : STD_LOGIC;
    signal int_A_30_write      : STD_LOGIC;
    signal int_A_30_shift0     : UNSIGNED(1 downto 0);
    signal int_A_31_address0   : UNSIGNED(0 downto 0);
    signal int_A_31_ce0        : STD_LOGIC;
    signal int_A_31_q0         : UNSIGNED(31 downto 0);
    signal int_A_31_address1   : UNSIGNED(0 downto 0);
    signal int_A_31_ce1        : STD_LOGIC;
    signal int_A_31_we1        : STD_LOGIC;
    signal int_A_31_be1        : UNSIGNED(3 downto 0);
    signal int_A_31_d1         : UNSIGNED(31 downto 0);
    signal int_A_31_q1         : UNSIGNED(31 downto 0);
    signal int_A_31_read       : STD_LOGIC;
    signal int_A_31_write      : STD_LOGIC;
    signal int_A_31_shift0     : UNSIGNED(1 downto 0);
    signal int_A_32_address0   : UNSIGNED(0 downto 0);
    signal int_A_32_ce0        : STD_LOGIC;
    signal int_A_32_q0         : UNSIGNED(31 downto 0);
    signal int_A_32_address1   : UNSIGNED(0 downto 0);
    signal int_A_32_ce1        : STD_LOGIC;
    signal int_A_32_we1        : STD_LOGIC;
    signal int_A_32_be1        : UNSIGNED(3 downto 0);
    signal int_A_32_d1         : UNSIGNED(31 downto 0);
    signal int_A_32_q1         : UNSIGNED(31 downto 0);
    signal int_A_32_read       : STD_LOGIC;
    signal int_A_32_write      : STD_LOGIC;
    signal int_A_32_shift0     : UNSIGNED(1 downto 0);
    signal int_A_33_address0   : UNSIGNED(0 downto 0);
    signal int_A_33_ce0        : STD_LOGIC;
    signal int_A_33_q0         : UNSIGNED(31 downto 0);
    signal int_A_33_address1   : UNSIGNED(0 downto 0);
    signal int_A_33_ce1        : STD_LOGIC;
    signal int_A_33_we1        : STD_LOGIC;
    signal int_A_33_be1        : UNSIGNED(3 downto 0);
    signal int_A_33_d1         : UNSIGNED(31 downto 0);
    signal int_A_33_q1         : UNSIGNED(31 downto 0);
    signal int_A_33_read       : STD_LOGIC;
    signal int_A_33_write      : STD_LOGIC;
    signal int_A_33_shift0     : UNSIGNED(1 downto 0);
    signal int_A_34_address0   : UNSIGNED(0 downto 0);
    signal int_A_34_ce0        : STD_LOGIC;
    signal int_A_34_q0         : UNSIGNED(31 downto 0);
    signal int_A_34_address1   : UNSIGNED(0 downto 0);
    signal int_A_34_ce1        : STD_LOGIC;
    signal int_A_34_we1        : STD_LOGIC;
    signal int_A_34_be1        : UNSIGNED(3 downto 0);
    signal int_A_34_d1         : UNSIGNED(31 downto 0);
    signal int_A_34_q1         : UNSIGNED(31 downto 0);
    signal int_A_34_read       : STD_LOGIC;
    signal int_A_34_write      : STD_LOGIC;
    signal int_A_34_shift0     : UNSIGNED(1 downto 0);
    signal int_A_35_address0   : UNSIGNED(0 downto 0);
    signal int_A_35_ce0        : STD_LOGIC;
    signal int_A_35_q0         : UNSIGNED(31 downto 0);
    signal int_A_35_address1   : UNSIGNED(0 downto 0);
    signal int_A_35_ce1        : STD_LOGIC;
    signal int_A_35_we1        : STD_LOGIC;
    signal int_A_35_be1        : UNSIGNED(3 downto 0);
    signal int_A_35_d1         : UNSIGNED(31 downto 0);
    signal int_A_35_q1         : UNSIGNED(31 downto 0);
    signal int_A_35_read       : STD_LOGIC;
    signal int_A_35_write      : STD_LOGIC;
    signal int_A_35_shift0     : UNSIGNED(1 downto 0);
    signal int_A_36_address0   : UNSIGNED(0 downto 0);
    signal int_A_36_ce0        : STD_LOGIC;
    signal int_A_36_q0         : UNSIGNED(31 downto 0);
    signal int_A_36_address1   : UNSIGNED(0 downto 0);
    signal int_A_36_ce1        : STD_LOGIC;
    signal int_A_36_we1        : STD_LOGIC;
    signal int_A_36_be1        : UNSIGNED(3 downto 0);
    signal int_A_36_d1         : UNSIGNED(31 downto 0);
    signal int_A_36_q1         : UNSIGNED(31 downto 0);
    signal int_A_36_read       : STD_LOGIC;
    signal int_A_36_write      : STD_LOGIC;
    signal int_A_36_shift0     : UNSIGNED(1 downto 0);
    signal int_A_37_address0   : UNSIGNED(0 downto 0);
    signal int_A_37_ce0        : STD_LOGIC;
    signal int_A_37_q0         : UNSIGNED(31 downto 0);
    signal int_A_37_address1   : UNSIGNED(0 downto 0);
    signal int_A_37_ce1        : STD_LOGIC;
    signal int_A_37_we1        : STD_LOGIC;
    signal int_A_37_be1        : UNSIGNED(3 downto 0);
    signal int_A_37_d1         : UNSIGNED(31 downto 0);
    signal int_A_37_q1         : UNSIGNED(31 downto 0);
    signal int_A_37_read       : STD_LOGIC;
    signal int_A_37_write      : STD_LOGIC;
    signal int_A_37_shift0     : UNSIGNED(1 downto 0);
    signal int_A_38_address0   : UNSIGNED(0 downto 0);
    signal int_A_38_ce0        : STD_LOGIC;
    signal int_A_38_q0         : UNSIGNED(31 downto 0);
    signal int_A_38_address1   : UNSIGNED(0 downto 0);
    signal int_A_38_ce1        : STD_LOGIC;
    signal int_A_38_we1        : STD_LOGIC;
    signal int_A_38_be1        : UNSIGNED(3 downto 0);
    signal int_A_38_d1         : UNSIGNED(31 downto 0);
    signal int_A_38_q1         : UNSIGNED(31 downto 0);
    signal int_A_38_read       : STD_LOGIC;
    signal int_A_38_write      : STD_LOGIC;
    signal int_A_38_shift0     : UNSIGNED(1 downto 0);
    signal int_A_39_address0   : UNSIGNED(0 downto 0);
    signal int_A_39_ce0        : STD_LOGIC;
    signal int_A_39_q0         : UNSIGNED(31 downto 0);
    signal int_A_39_address1   : UNSIGNED(0 downto 0);
    signal int_A_39_ce1        : STD_LOGIC;
    signal int_A_39_we1        : STD_LOGIC;
    signal int_A_39_be1        : UNSIGNED(3 downto 0);
    signal int_A_39_d1         : UNSIGNED(31 downto 0);
    signal int_A_39_q1         : UNSIGNED(31 downto 0);
    signal int_A_39_read       : STD_LOGIC;
    signal int_A_39_write      : STD_LOGIC;
    signal int_A_39_shift0     : UNSIGNED(1 downto 0);
    signal int_A_40_address0   : UNSIGNED(0 downto 0);
    signal int_A_40_ce0        : STD_LOGIC;
    signal int_A_40_q0         : UNSIGNED(31 downto 0);
    signal int_A_40_address1   : UNSIGNED(0 downto 0);
    signal int_A_40_ce1        : STD_LOGIC;
    signal int_A_40_we1        : STD_LOGIC;
    signal int_A_40_be1        : UNSIGNED(3 downto 0);
    signal int_A_40_d1         : UNSIGNED(31 downto 0);
    signal int_A_40_q1         : UNSIGNED(31 downto 0);
    signal int_A_40_read       : STD_LOGIC;
    signal int_A_40_write      : STD_LOGIC;
    signal int_A_40_shift0     : UNSIGNED(1 downto 0);
    signal int_A_41_address0   : UNSIGNED(0 downto 0);
    signal int_A_41_ce0        : STD_LOGIC;
    signal int_A_41_q0         : UNSIGNED(31 downto 0);
    signal int_A_41_address1   : UNSIGNED(0 downto 0);
    signal int_A_41_ce1        : STD_LOGIC;
    signal int_A_41_we1        : STD_LOGIC;
    signal int_A_41_be1        : UNSIGNED(3 downto 0);
    signal int_A_41_d1         : UNSIGNED(31 downto 0);
    signal int_A_41_q1         : UNSIGNED(31 downto 0);
    signal int_A_41_read       : STD_LOGIC;
    signal int_A_41_write      : STD_LOGIC;
    signal int_A_41_shift0     : UNSIGNED(1 downto 0);
    signal int_A_42_address0   : UNSIGNED(0 downto 0);
    signal int_A_42_ce0        : STD_LOGIC;
    signal int_A_42_q0         : UNSIGNED(31 downto 0);
    signal int_A_42_address1   : UNSIGNED(0 downto 0);
    signal int_A_42_ce1        : STD_LOGIC;
    signal int_A_42_we1        : STD_LOGIC;
    signal int_A_42_be1        : UNSIGNED(3 downto 0);
    signal int_A_42_d1         : UNSIGNED(31 downto 0);
    signal int_A_42_q1         : UNSIGNED(31 downto 0);
    signal int_A_42_read       : STD_LOGIC;
    signal int_A_42_write      : STD_LOGIC;
    signal int_A_42_shift0     : UNSIGNED(1 downto 0);
    signal int_A_43_address0   : UNSIGNED(0 downto 0);
    signal int_A_43_ce0        : STD_LOGIC;
    signal int_A_43_q0         : UNSIGNED(31 downto 0);
    signal int_A_43_address1   : UNSIGNED(0 downto 0);
    signal int_A_43_ce1        : STD_LOGIC;
    signal int_A_43_we1        : STD_LOGIC;
    signal int_A_43_be1        : UNSIGNED(3 downto 0);
    signal int_A_43_d1         : UNSIGNED(31 downto 0);
    signal int_A_43_q1         : UNSIGNED(31 downto 0);
    signal int_A_43_read       : STD_LOGIC;
    signal int_A_43_write      : STD_LOGIC;
    signal int_A_43_shift0     : UNSIGNED(1 downto 0);
    signal int_A_44_address0   : UNSIGNED(0 downto 0);
    signal int_A_44_ce0        : STD_LOGIC;
    signal int_A_44_q0         : UNSIGNED(31 downto 0);
    signal int_A_44_address1   : UNSIGNED(0 downto 0);
    signal int_A_44_ce1        : STD_LOGIC;
    signal int_A_44_we1        : STD_LOGIC;
    signal int_A_44_be1        : UNSIGNED(3 downto 0);
    signal int_A_44_d1         : UNSIGNED(31 downto 0);
    signal int_A_44_q1         : UNSIGNED(31 downto 0);
    signal int_A_44_read       : STD_LOGIC;
    signal int_A_44_write      : STD_LOGIC;
    signal int_A_44_shift0     : UNSIGNED(1 downto 0);
    signal int_A_45_address0   : UNSIGNED(0 downto 0);
    signal int_A_45_ce0        : STD_LOGIC;
    signal int_A_45_q0         : UNSIGNED(31 downto 0);
    signal int_A_45_address1   : UNSIGNED(0 downto 0);
    signal int_A_45_ce1        : STD_LOGIC;
    signal int_A_45_we1        : STD_LOGIC;
    signal int_A_45_be1        : UNSIGNED(3 downto 0);
    signal int_A_45_d1         : UNSIGNED(31 downto 0);
    signal int_A_45_q1         : UNSIGNED(31 downto 0);
    signal int_A_45_read       : STD_LOGIC;
    signal int_A_45_write      : STD_LOGIC;
    signal int_A_45_shift0     : UNSIGNED(1 downto 0);
    signal int_A_46_address0   : UNSIGNED(0 downto 0);
    signal int_A_46_ce0        : STD_LOGIC;
    signal int_A_46_q0         : UNSIGNED(31 downto 0);
    signal int_A_46_address1   : UNSIGNED(0 downto 0);
    signal int_A_46_ce1        : STD_LOGIC;
    signal int_A_46_we1        : STD_LOGIC;
    signal int_A_46_be1        : UNSIGNED(3 downto 0);
    signal int_A_46_d1         : UNSIGNED(31 downto 0);
    signal int_A_46_q1         : UNSIGNED(31 downto 0);
    signal int_A_46_read       : STD_LOGIC;
    signal int_A_46_write      : STD_LOGIC;
    signal int_A_46_shift0     : UNSIGNED(1 downto 0);
    signal int_A_47_address0   : UNSIGNED(0 downto 0);
    signal int_A_47_ce0        : STD_LOGIC;
    signal int_A_47_q0         : UNSIGNED(31 downto 0);
    signal int_A_47_address1   : UNSIGNED(0 downto 0);
    signal int_A_47_ce1        : STD_LOGIC;
    signal int_A_47_we1        : STD_LOGIC;
    signal int_A_47_be1        : UNSIGNED(3 downto 0);
    signal int_A_47_d1         : UNSIGNED(31 downto 0);
    signal int_A_47_q1         : UNSIGNED(31 downto 0);
    signal int_A_47_read       : STD_LOGIC;
    signal int_A_47_write      : STD_LOGIC;
    signal int_A_47_shift0     : UNSIGNED(1 downto 0);
    signal int_A_48_address0   : UNSIGNED(0 downto 0);
    signal int_A_48_ce0        : STD_LOGIC;
    signal int_A_48_q0         : UNSIGNED(31 downto 0);
    signal int_A_48_address1   : UNSIGNED(0 downto 0);
    signal int_A_48_ce1        : STD_LOGIC;
    signal int_A_48_we1        : STD_LOGIC;
    signal int_A_48_be1        : UNSIGNED(3 downto 0);
    signal int_A_48_d1         : UNSIGNED(31 downto 0);
    signal int_A_48_q1         : UNSIGNED(31 downto 0);
    signal int_A_48_read       : STD_LOGIC;
    signal int_A_48_write      : STD_LOGIC;
    signal int_A_48_shift0     : UNSIGNED(1 downto 0);
    signal int_A_49_address0   : UNSIGNED(0 downto 0);
    signal int_A_49_ce0        : STD_LOGIC;
    signal int_A_49_q0         : UNSIGNED(31 downto 0);
    signal int_A_49_address1   : UNSIGNED(0 downto 0);
    signal int_A_49_ce1        : STD_LOGIC;
    signal int_A_49_we1        : STD_LOGIC;
    signal int_A_49_be1        : UNSIGNED(3 downto 0);
    signal int_A_49_d1         : UNSIGNED(31 downto 0);
    signal int_A_49_q1         : UNSIGNED(31 downto 0);
    signal int_A_49_read       : STD_LOGIC;
    signal int_A_49_write      : STD_LOGIC;
    signal int_A_49_shift0     : UNSIGNED(1 downto 0);
    signal int_A_50_address0   : UNSIGNED(0 downto 0);
    signal int_A_50_ce0        : STD_LOGIC;
    signal int_A_50_q0         : UNSIGNED(31 downto 0);
    signal int_A_50_address1   : UNSIGNED(0 downto 0);
    signal int_A_50_ce1        : STD_LOGIC;
    signal int_A_50_we1        : STD_LOGIC;
    signal int_A_50_be1        : UNSIGNED(3 downto 0);
    signal int_A_50_d1         : UNSIGNED(31 downto 0);
    signal int_A_50_q1         : UNSIGNED(31 downto 0);
    signal int_A_50_read       : STD_LOGIC;
    signal int_A_50_write      : STD_LOGIC;
    signal int_A_50_shift0     : UNSIGNED(1 downto 0);
    signal int_A_51_address0   : UNSIGNED(0 downto 0);
    signal int_A_51_ce0        : STD_LOGIC;
    signal int_A_51_q0         : UNSIGNED(31 downto 0);
    signal int_A_51_address1   : UNSIGNED(0 downto 0);
    signal int_A_51_ce1        : STD_LOGIC;
    signal int_A_51_we1        : STD_LOGIC;
    signal int_A_51_be1        : UNSIGNED(3 downto 0);
    signal int_A_51_d1         : UNSIGNED(31 downto 0);
    signal int_A_51_q1         : UNSIGNED(31 downto 0);
    signal int_A_51_read       : STD_LOGIC;
    signal int_A_51_write      : STD_LOGIC;
    signal int_A_51_shift0     : UNSIGNED(1 downto 0);
    signal int_A_52_address0   : UNSIGNED(0 downto 0);
    signal int_A_52_ce0        : STD_LOGIC;
    signal int_A_52_q0         : UNSIGNED(31 downto 0);
    signal int_A_52_address1   : UNSIGNED(0 downto 0);
    signal int_A_52_ce1        : STD_LOGIC;
    signal int_A_52_we1        : STD_LOGIC;
    signal int_A_52_be1        : UNSIGNED(3 downto 0);
    signal int_A_52_d1         : UNSIGNED(31 downto 0);
    signal int_A_52_q1         : UNSIGNED(31 downto 0);
    signal int_A_52_read       : STD_LOGIC;
    signal int_A_52_write      : STD_LOGIC;
    signal int_A_52_shift0     : UNSIGNED(1 downto 0);
    signal int_A_53_address0   : UNSIGNED(0 downto 0);
    signal int_A_53_ce0        : STD_LOGIC;
    signal int_A_53_q0         : UNSIGNED(31 downto 0);
    signal int_A_53_address1   : UNSIGNED(0 downto 0);
    signal int_A_53_ce1        : STD_LOGIC;
    signal int_A_53_we1        : STD_LOGIC;
    signal int_A_53_be1        : UNSIGNED(3 downto 0);
    signal int_A_53_d1         : UNSIGNED(31 downto 0);
    signal int_A_53_q1         : UNSIGNED(31 downto 0);
    signal int_A_53_read       : STD_LOGIC;
    signal int_A_53_write      : STD_LOGIC;
    signal int_A_53_shift0     : UNSIGNED(1 downto 0);
    signal int_A_54_address0   : UNSIGNED(0 downto 0);
    signal int_A_54_ce0        : STD_LOGIC;
    signal int_A_54_q0         : UNSIGNED(31 downto 0);
    signal int_A_54_address1   : UNSIGNED(0 downto 0);
    signal int_A_54_ce1        : STD_LOGIC;
    signal int_A_54_we1        : STD_LOGIC;
    signal int_A_54_be1        : UNSIGNED(3 downto 0);
    signal int_A_54_d1         : UNSIGNED(31 downto 0);
    signal int_A_54_q1         : UNSIGNED(31 downto 0);
    signal int_A_54_read       : STD_LOGIC;
    signal int_A_54_write      : STD_LOGIC;
    signal int_A_54_shift0     : UNSIGNED(1 downto 0);
    signal int_A_55_address0   : UNSIGNED(0 downto 0);
    signal int_A_55_ce0        : STD_LOGIC;
    signal int_A_55_q0         : UNSIGNED(31 downto 0);
    signal int_A_55_address1   : UNSIGNED(0 downto 0);
    signal int_A_55_ce1        : STD_LOGIC;
    signal int_A_55_we1        : STD_LOGIC;
    signal int_A_55_be1        : UNSIGNED(3 downto 0);
    signal int_A_55_d1         : UNSIGNED(31 downto 0);
    signal int_A_55_q1         : UNSIGNED(31 downto 0);
    signal int_A_55_read       : STD_LOGIC;
    signal int_A_55_write      : STD_LOGIC;
    signal int_A_55_shift0     : UNSIGNED(1 downto 0);
    signal int_A_56_address0   : UNSIGNED(0 downto 0);
    signal int_A_56_ce0        : STD_LOGIC;
    signal int_A_56_q0         : UNSIGNED(31 downto 0);
    signal int_A_56_address1   : UNSIGNED(0 downto 0);
    signal int_A_56_ce1        : STD_LOGIC;
    signal int_A_56_we1        : STD_LOGIC;
    signal int_A_56_be1        : UNSIGNED(3 downto 0);
    signal int_A_56_d1         : UNSIGNED(31 downto 0);
    signal int_A_56_q1         : UNSIGNED(31 downto 0);
    signal int_A_56_read       : STD_LOGIC;
    signal int_A_56_write      : STD_LOGIC;
    signal int_A_56_shift0     : UNSIGNED(1 downto 0);
    signal int_A_57_address0   : UNSIGNED(0 downto 0);
    signal int_A_57_ce0        : STD_LOGIC;
    signal int_A_57_q0         : UNSIGNED(31 downto 0);
    signal int_A_57_address1   : UNSIGNED(0 downto 0);
    signal int_A_57_ce1        : STD_LOGIC;
    signal int_A_57_we1        : STD_LOGIC;
    signal int_A_57_be1        : UNSIGNED(3 downto 0);
    signal int_A_57_d1         : UNSIGNED(31 downto 0);
    signal int_A_57_q1         : UNSIGNED(31 downto 0);
    signal int_A_57_read       : STD_LOGIC;
    signal int_A_57_write      : STD_LOGIC;
    signal int_A_57_shift0     : UNSIGNED(1 downto 0);
    signal int_A_58_address0   : UNSIGNED(0 downto 0);
    signal int_A_58_ce0        : STD_LOGIC;
    signal int_A_58_q0         : UNSIGNED(31 downto 0);
    signal int_A_58_address1   : UNSIGNED(0 downto 0);
    signal int_A_58_ce1        : STD_LOGIC;
    signal int_A_58_we1        : STD_LOGIC;
    signal int_A_58_be1        : UNSIGNED(3 downto 0);
    signal int_A_58_d1         : UNSIGNED(31 downto 0);
    signal int_A_58_q1         : UNSIGNED(31 downto 0);
    signal int_A_58_read       : STD_LOGIC;
    signal int_A_58_write      : STD_LOGIC;
    signal int_A_58_shift0     : UNSIGNED(1 downto 0);
    signal int_A_59_address0   : UNSIGNED(0 downto 0);
    signal int_A_59_ce0        : STD_LOGIC;
    signal int_A_59_q0         : UNSIGNED(31 downto 0);
    signal int_A_59_address1   : UNSIGNED(0 downto 0);
    signal int_A_59_ce1        : STD_LOGIC;
    signal int_A_59_we1        : STD_LOGIC;
    signal int_A_59_be1        : UNSIGNED(3 downto 0);
    signal int_A_59_d1         : UNSIGNED(31 downto 0);
    signal int_A_59_q1         : UNSIGNED(31 downto 0);
    signal int_A_59_read       : STD_LOGIC;
    signal int_A_59_write      : STD_LOGIC;
    signal int_A_59_shift0     : UNSIGNED(1 downto 0);
    signal int_A_60_address0   : UNSIGNED(0 downto 0);
    signal int_A_60_ce0        : STD_LOGIC;
    signal int_A_60_q0         : UNSIGNED(31 downto 0);
    signal int_A_60_address1   : UNSIGNED(0 downto 0);
    signal int_A_60_ce1        : STD_LOGIC;
    signal int_A_60_we1        : STD_LOGIC;
    signal int_A_60_be1        : UNSIGNED(3 downto 0);
    signal int_A_60_d1         : UNSIGNED(31 downto 0);
    signal int_A_60_q1         : UNSIGNED(31 downto 0);
    signal int_A_60_read       : STD_LOGIC;
    signal int_A_60_write      : STD_LOGIC;
    signal int_A_60_shift0     : UNSIGNED(1 downto 0);
    signal int_A_61_address0   : UNSIGNED(0 downto 0);
    signal int_A_61_ce0        : STD_LOGIC;
    signal int_A_61_q0         : UNSIGNED(31 downto 0);
    signal int_A_61_address1   : UNSIGNED(0 downto 0);
    signal int_A_61_ce1        : STD_LOGIC;
    signal int_A_61_we1        : STD_LOGIC;
    signal int_A_61_be1        : UNSIGNED(3 downto 0);
    signal int_A_61_d1         : UNSIGNED(31 downto 0);
    signal int_A_61_q1         : UNSIGNED(31 downto 0);
    signal int_A_61_read       : STD_LOGIC;
    signal int_A_61_write      : STD_LOGIC;
    signal int_A_61_shift0     : UNSIGNED(1 downto 0);
    signal int_A_62_address0   : UNSIGNED(0 downto 0);
    signal int_A_62_ce0        : STD_LOGIC;
    signal int_A_62_q0         : UNSIGNED(31 downto 0);
    signal int_A_62_address1   : UNSIGNED(0 downto 0);
    signal int_A_62_ce1        : STD_LOGIC;
    signal int_A_62_we1        : STD_LOGIC;
    signal int_A_62_be1        : UNSIGNED(3 downto 0);
    signal int_A_62_d1         : UNSIGNED(31 downto 0);
    signal int_A_62_q1         : UNSIGNED(31 downto 0);
    signal int_A_62_read       : STD_LOGIC;
    signal int_A_62_write      : STD_LOGIC;
    signal int_A_62_shift0     : UNSIGNED(1 downto 0);
    signal int_A_63_address0   : UNSIGNED(0 downto 0);
    signal int_A_63_ce0        : STD_LOGIC;
    signal int_A_63_q0         : UNSIGNED(31 downto 0);
    signal int_A_63_address1   : UNSIGNED(0 downto 0);
    signal int_A_63_ce1        : STD_LOGIC;
    signal int_A_63_we1        : STD_LOGIC;
    signal int_A_63_be1        : UNSIGNED(3 downto 0);
    signal int_A_63_d1         : UNSIGNED(31 downto 0);
    signal int_A_63_q1         : UNSIGNED(31 downto 0);
    signal int_A_63_read       : STD_LOGIC;
    signal int_A_63_write      : STD_LOGIC;
    signal int_A_63_shift0     : UNSIGNED(1 downto 0);
    signal int_B_0_address0    : UNSIGNED(0 downto 0);
    signal int_B_0_ce0         : STD_LOGIC;
    signal int_B_0_q0          : UNSIGNED(31 downto 0);
    signal int_B_0_address1    : UNSIGNED(0 downto 0);
    signal int_B_0_ce1         : STD_LOGIC;
    signal int_B_0_we1         : STD_LOGIC;
    signal int_B_0_be1         : UNSIGNED(3 downto 0);
    signal int_B_0_d1          : UNSIGNED(31 downto 0);
    signal int_B_0_q1          : UNSIGNED(31 downto 0);
    signal int_B_0_read        : STD_LOGIC;
    signal int_B_0_write       : STD_LOGIC;
    signal int_B_0_shift0      : UNSIGNED(1 downto 0);
    signal int_B_1_address0    : UNSIGNED(0 downto 0);
    signal int_B_1_ce0         : STD_LOGIC;
    signal int_B_1_q0          : UNSIGNED(31 downto 0);
    signal int_B_1_address1    : UNSIGNED(0 downto 0);
    signal int_B_1_ce1         : STD_LOGIC;
    signal int_B_1_we1         : STD_LOGIC;
    signal int_B_1_be1         : UNSIGNED(3 downto 0);
    signal int_B_1_d1          : UNSIGNED(31 downto 0);
    signal int_B_1_q1          : UNSIGNED(31 downto 0);
    signal int_B_1_read        : STD_LOGIC;
    signal int_B_1_write       : STD_LOGIC;
    signal int_B_1_shift0      : UNSIGNED(1 downto 0);
    signal int_B_2_address0    : UNSIGNED(0 downto 0);
    signal int_B_2_ce0         : STD_LOGIC;
    signal int_B_2_q0          : UNSIGNED(31 downto 0);
    signal int_B_2_address1    : UNSIGNED(0 downto 0);
    signal int_B_2_ce1         : STD_LOGIC;
    signal int_B_2_we1         : STD_LOGIC;
    signal int_B_2_be1         : UNSIGNED(3 downto 0);
    signal int_B_2_d1          : UNSIGNED(31 downto 0);
    signal int_B_2_q1          : UNSIGNED(31 downto 0);
    signal int_B_2_read        : STD_LOGIC;
    signal int_B_2_write       : STD_LOGIC;
    signal int_B_2_shift0      : UNSIGNED(1 downto 0);
    signal int_B_3_address0    : UNSIGNED(0 downto 0);
    signal int_B_3_ce0         : STD_LOGIC;
    signal int_B_3_q0          : UNSIGNED(31 downto 0);
    signal int_B_3_address1    : UNSIGNED(0 downto 0);
    signal int_B_3_ce1         : STD_LOGIC;
    signal int_B_3_we1         : STD_LOGIC;
    signal int_B_3_be1         : UNSIGNED(3 downto 0);
    signal int_B_3_d1          : UNSIGNED(31 downto 0);
    signal int_B_3_q1          : UNSIGNED(31 downto 0);
    signal int_B_3_read        : STD_LOGIC;
    signal int_B_3_write       : STD_LOGIC;
    signal int_B_3_shift0      : UNSIGNED(1 downto 0);
    signal int_B_4_address0    : UNSIGNED(0 downto 0);
    signal int_B_4_ce0         : STD_LOGIC;
    signal int_B_4_q0          : UNSIGNED(31 downto 0);
    signal int_B_4_address1    : UNSIGNED(0 downto 0);
    signal int_B_4_ce1         : STD_LOGIC;
    signal int_B_4_we1         : STD_LOGIC;
    signal int_B_4_be1         : UNSIGNED(3 downto 0);
    signal int_B_4_d1          : UNSIGNED(31 downto 0);
    signal int_B_4_q1          : UNSIGNED(31 downto 0);
    signal int_B_4_read        : STD_LOGIC;
    signal int_B_4_write       : STD_LOGIC;
    signal int_B_4_shift0      : UNSIGNED(1 downto 0);
    signal int_B_5_address0    : UNSIGNED(0 downto 0);
    signal int_B_5_ce0         : STD_LOGIC;
    signal int_B_5_q0          : UNSIGNED(31 downto 0);
    signal int_B_5_address1    : UNSIGNED(0 downto 0);
    signal int_B_5_ce1         : STD_LOGIC;
    signal int_B_5_we1         : STD_LOGIC;
    signal int_B_5_be1         : UNSIGNED(3 downto 0);
    signal int_B_5_d1          : UNSIGNED(31 downto 0);
    signal int_B_5_q1          : UNSIGNED(31 downto 0);
    signal int_B_5_read        : STD_LOGIC;
    signal int_B_5_write       : STD_LOGIC;
    signal int_B_5_shift0      : UNSIGNED(1 downto 0);
    signal int_B_6_address0    : UNSIGNED(0 downto 0);
    signal int_B_6_ce0         : STD_LOGIC;
    signal int_B_6_q0          : UNSIGNED(31 downto 0);
    signal int_B_6_address1    : UNSIGNED(0 downto 0);
    signal int_B_6_ce1         : STD_LOGIC;
    signal int_B_6_we1         : STD_LOGIC;
    signal int_B_6_be1         : UNSIGNED(3 downto 0);
    signal int_B_6_d1          : UNSIGNED(31 downto 0);
    signal int_B_6_q1          : UNSIGNED(31 downto 0);
    signal int_B_6_read        : STD_LOGIC;
    signal int_B_6_write       : STD_LOGIC;
    signal int_B_6_shift0      : UNSIGNED(1 downto 0);
    signal int_B_7_address0    : UNSIGNED(0 downto 0);
    signal int_B_7_ce0         : STD_LOGIC;
    signal int_B_7_q0          : UNSIGNED(31 downto 0);
    signal int_B_7_address1    : UNSIGNED(0 downto 0);
    signal int_B_7_ce1         : STD_LOGIC;
    signal int_B_7_we1         : STD_LOGIC;
    signal int_B_7_be1         : UNSIGNED(3 downto 0);
    signal int_B_7_d1          : UNSIGNED(31 downto 0);
    signal int_B_7_q1          : UNSIGNED(31 downto 0);
    signal int_B_7_read        : STD_LOGIC;
    signal int_B_7_write       : STD_LOGIC;
    signal int_B_7_shift0      : UNSIGNED(1 downto 0);
    signal int_B_8_address0    : UNSIGNED(0 downto 0);
    signal int_B_8_ce0         : STD_LOGIC;
    signal int_B_8_q0          : UNSIGNED(31 downto 0);
    signal int_B_8_address1    : UNSIGNED(0 downto 0);
    signal int_B_8_ce1         : STD_LOGIC;
    signal int_B_8_we1         : STD_LOGIC;
    signal int_B_8_be1         : UNSIGNED(3 downto 0);
    signal int_B_8_d1          : UNSIGNED(31 downto 0);
    signal int_B_8_q1          : UNSIGNED(31 downto 0);
    signal int_B_8_read        : STD_LOGIC;
    signal int_B_8_write       : STD_LOGIC;
    signal int_B_8_shift0      : UNSIGNED(1 downto 0);
    signal int_B_9_address0    : UNSIGNED(0 downto 0);
    signal int_B_9_ce0         : STD_LOGIC;
    signal int_B_9_q0          : UNSIGNED(31 downto 0);
    signal int_B_9_address1    : UNSIGNED(0 downto 0);
    signal int_B_9_ce1         : STD_LOGIC;
    signal int_B_9_we1         : STD_LOGIC;
    signal int_B_9_be1         : UNSIGNED(3 downto 0);
    signal int_B_9_d1          : UNSIGNED(31 downto 0);
    signal int_B_9_q1          : UNSIGNED(31 downto 0);
    signal int_B_9_read        : STD_LOGIC;
    signal int_B_9_write       : STD_LOGIC;
    signal int_B_9_shift0      : UNSIGNED(1 downto 0);
    signal int_B_10_address0   : UNSIGNED(0 downto 0);
    signal int_B_10_ce0        : STD_LOGIC;
    signal int_B_10_q0         : UNSIGNED(31 downto 0);
    signal int_B_10_address1   : UNSIGNED(0 downto 0);
    signal int_B_10_ce1        : STD_LOGIC;
    signal int_B_10_we1        : STD_LOGIC;
    signal int_B_10_be1        : UNSIGNED(3 downto 0);
    signal int_B_10_d1         : UNSIGNED(31 downto 0);
    signal int_B_10_q1         : UNSIGNED(31 downto 0);
    signal int_B_10_read       : STD_LOGIC;
    signal int_B_10_write      : STD_LOGIC;
    signal int_B_10_shift0     : UNSIGNED(1 downto 0);
    signal int_B_11_address0   : UNSIGNED(0 downto 0);
    signal int_B_11_ce0        : STD_LOGIC;
    signal int_B_11_q0         : UNSIGNED(31 downto 0);
    signal int_B_11_address1   : UNSIGNED(0 downto 0);
    signal int_B_11_ce1        : STD_LOGIC;
    signal int_B_11_we1        : STD_LOGIC;
    signal int_B_11_be1        : UNSIGNED(3 downto 0);
    signal int_B_11_d1         : UNSIGNED(31 downto 0);
    signal int_B_11_q1         : UNSIGNED(31 downto 0);
    signal int_B_11_read       : STD_LOGIC;
    signal int_B_11_write      : STD_LOGIC;
    signal int_B_11_shift0     : UNSIGNED(1 downto 0);
    signal int_B_12_address0   : UNSIGNED(0 downto 0);
    signal int_B_12_ce0        : STD_LOGIC;
    signal int_B_12_q0         : UNSIGNED(31 downto 0);
    signal int_B_12_address1   : UNSIGNED(0 downto 0);
    signal int_B_12_ce1        : STD_LOGIC;
    signal int_B_12_we1        : STD_LOGIC;
    signal int_B_12_be1        : UNSIGNED(3 downto 0);
    signal int_B_12_d1         : UNSIGNED(31 downto 0);
    signal int_B_12_q1         : UNSIGNED(31 downto 0);
    signal int_B_12_read       : STD_LOGIC;
    signal int_B_12_write      : STD_LOGIC;
    signal int_B_12_shift0     : UNSIGNED(1 downto 0);
    signal int_B_13_address0   : UNSIGNED(0 downto 0);
    signal int_B_13_ce0        : STD_LOGIC;
    signal int_B_13_q0         : UNSIGNED(31 downto 0);
    signal int_B_13_address1   : UNSIGNED(0 downto 0);
    signal int_B_13_ce1        : STD_LOGIC;
    signal int_B_13_we1        : STD_LOGIC;
    signal int_B_13_be1        : UNSIGNED(3 downto 0);
    signal int_B_13_d1         : UNSIGNED(31 downto 0);
    signal int_B_13_q1         : UNSIGNED(31 downto 0);
    signal int_B_13_read       : STD_LOGIC;
    signal int_B_13_write      : STD_LOGIC;
    signal int_B_13_shift0     : UNSIGNED(1 downto 0);
    signal int_B_14_address0   : UNSIGNED(0 downto 0);
    signal int_B_14_ce0        : STD_LOGIC;
    signal int_B_14_q0         : UNSIGNED(31 downto 0);
    signal int_B_14_address1   : UNSIGNED(0 downto 0);
    signal int_B_14_ce1        : STD_LOGIC;
    signal int_B_14_we1        : STD_LOGIC;
    signal int_B_14_be1        : UNSIGNED(3 downto 0);
    signal int_B_14_d1         : UNSIGNED(31 downto 0);
    signal int_B_14_q1         : UNSIGNED(31 downto 0);
    signal int_B_14_read       : STD_LOGIC;
    signal int_B_14_write      : STD_LOGIC;
    signal int_B_14_shift0     : UNSIGNED(1 downto 0);
    signal int_B_15_address0   : UNSIGNED(0 downto 0);
    signal int_B_15_ce0        : STD_LOGIC;
    signal int_B_15_q0         : UNSIGNED(31 downto 0);
    signal int_B_15_address1   : UNSIGNED(0 downto 0);
    signal int_B_15_ce1        : STD_LOGIC;
    signal int_B_15_we1        : STD_LOGIC;
    signal int_B_15_be1        : UNSIGNED(3 downto 0);
    signal int_B_15_d1         : UNSIGNED(31 downto 0);
    signal int_B_15_q1         : UNSIGNED(31 downto 0);
    signal int_B_15_read       : STD_LOGIC;
    signal int_B_15_write      : STD_LOGIC;
    signal int_B_15_shift0     : UNSIGNED(1 downto 0);
    signal int_B_16_address0   : UNSIGNED(0 downto 0);
    signal int_B_16_ce0        : STD_LOGIC;
    signal int_B_16_q0         : UNSIGNED(31 downto 0);
    signal int_B_16_address1   : UNSIGNED(0 downto 0);
    signal int_B_16_ce1        : STD_LOGIC;
    signal int_B_16_we1        : STD_LOGIC;
    signal int_B_16_be1        : UNSIGNED(3 downto 0);
    signal int_B_16_d1         : UNSIGNED(31 downto 0);
    signal int_B_16_q1         : UNSIGNED(31 downto 0);
    signal int_B_16_read       : STD_LOGIC;
    signal int_B_16_write      : STD_LOGIC;
    signal int_B_16_shift0     : UNSIGNED(1 downto 0);
    signal int_B_17_address0   : UNSIGNED(0 downto 0);
    signal int_B_17_ce0        : STD_LOGIC;
    signal int_B_17_q0         : UNSIGNED(31 downto 0);
    signal int_B_17_address1   : UNSIGNED(0 downto 0);
    signal int_B_17_ce1        : STD_LOGIC;
    signal int_B_17_we1        : STD_LOGIC;
    signal int_B_17_be1        : UNSIGNED(3 downto 0);
    signal int_B_17_d1         : UNSIGNED(31 downto 0);
    signal int_B_17_q1         : UNSIGNED(31 downto 0);
    signal int_B_17_read       : STD_LOGIC;
    signal int_B_17_write      : STD_LOGIC;
    signal int_B_17_shift0     : UNSIGNED(1 downto 0);
    signal int_B_18_address0   : UNSIGNED(0 downto 0);
    signal int_B_18_ce0        : STD_LOGIC;
    signal int_B_18_q0         : UNSIGNED(31 downto 0);
    signal int_B_18_address1   : UNSIGNED(0 downto 0);
    signal int_B_18_ce1        : STD_LOGIC;
    signal int_B_18_we1        : STD_LOGIC;
    signal int_B_18_be1        : UNSIGNED(3 downto 0);
    signal int_B_18_d1         : UNSIGNED(31 downto 0);
    signal int_B_18_q1         : UNSIGNED(31 downto 0);
    signal int_B_18_read       : STD_LOGIC;
    signal int_B_18_write      : STD_LOGIC;
    signal int_B_18_shift0     : UNSIGNED(1 downto 0);
    signal int_B_19_address0   : UNSIGNED(0 downto 0);
    signal int_B_19_ce0        : STD_LOGIC;
    signal int_B_19_q0         : UNSIGNED(31 downto 0);
    signal int_B_19_address1   : UNSIGNED(0 downto 0);
    signal int_B_19_ce1        : STD_LOGIC;
    signal int_B_19_we1        : STD_LOGIC;
    signal int_B_19_be1        : UNSIGNED(3 downto 0);
    signal int_B_19_d1         : UNSIGNED(31 downto 0);
    signal int_B_19_q1         : UNSIGNED(31 downto 0);
    signal int_B_19_read       : STD_LOGIC;
    signal int_B_19_write      : STD_LOGIC;
    signal int_B_19_shift0     : UNSIGNED(1 downto 0);
    signal int_B_20_address0   : UNSIGNED(0 downto 0);
    signal int_B_20_ce0        : STD_LOGIC;
    signal int_B_20_q0         : UNSIGNED(31 downto 0);
    signal int_B_20_address1   : UNSIGNED(0 downto 0);
    signal int_B_20_ce1        : STD_LOGIC;
    signal int_B_20_we1        : STD_LOGIC;
    signal int_B_20_be1        : UNSIGNED(3 downto 0);
    signal int_B_20_d1         : UNSIGNED(31 downto 0);
    signal int_B_20_q1         : UNSIGNED(31 downto 0);
    signal int_B_20_read       : STD_LOGIC;
    signal int_B_20_write      : STD_LOGIC;
    signal int_B_20_shift0     : UNSIGNED(1 downto 0);
    signal int_B_21_address0   : UNSIGNED(0 downto 0);
    signal int_B_21_ce0        : STD_LOGIC;
    signal int_B_21_q0         : UNSIGNED(31 downto 0);
    signal int_B_21_address1   : UNSIGNED(0 downto 0);
    signal int_B_21_ce1        : STD_LOGIC;
    signal int_B_21_we1        : STD_LOGIC;
    signal int_B_21_be1        : UNSIGNED(3 downto 0);
    signal int_B_21_d1         : UNSIGNED(31 downto 0);
    signal int_B_21_q1         : UNSIGNED(31 downto 0);
    signal int_B_21_read       : STD_LOGIC;
    signal int_B_21_write      : STD_LOGIC;
    signal int_B_21_shift0     : UNSIGNED(1 downto 0);
    signal int_B_22_address0   : UNSIGNED(0 downto 0);
    signal int_B_22_ce0        : STD_LOGIC;
    signal int_B_22_q0         : UNSIGNED(31 downto 0);
    signal int_B_22_address1   : UNSIGNED(0 downto 0);
    signal int_B_22_ce1        : STD_LOGIC;
    signal int_B_22_we1        : STD_LOGIC;
    signal int_B_22_be1        : UNSIGNED(3 downto 0);
    signal int_B_22_d1         : UNSIGNED(31 downto 0);
    signal int_B_22_q1         : UNSIGNED(31 downto 0);
    signal int_B_22_read       : STD_LOGIC;
    signal int_B_22_write      : STD_LOGIC;
    signal int_B_22_shift0     : UNSIGNED(1 downto 0);
    signal int_B_23_address0   : UNSIGNED(0 downto 0);
    signal int_B_23_ce0        : STD_LOGIC;
    signal int_B_23_q0         : UNSIGNED(31 downto 0);
    signal int_B_23_address1   : UNSIGNED(0 downto 0);
    signal int_B_23_ce1        : STD_LOGIC;
    signal int_B_23_we1        : STD_LOGIC;
    signal int_B_23_be1        : UNSIGNED(3 downto 0);
    signal int_B_23_d1         : UNSIGNED(31 downto 0);
    signal int_B_23_q1         : UNSIGNED(31 downto 0);
    signal int_B_23_read       : STD_LOGIC;
    signal int_B_23_write      : STD_LOGIC;
    signal int_B_23_shift0     : UNSIGNED(1 downto 0);
    signal int_B_24_address0   : UNSIGNED(0 downto 0);
    signal int_B_24_ce0        : STD_LOGIC;
    signal int_B_24_q0         : UNSIGNED(31 downto 0);
    signal int_B_24_address1   : UNSIGNED(0 downto 0);
    signal int_B_24_ce1        : STD_LOGIC;
    signal int_B_24_we1        : STD_LOGIC;
    signal int_B_24_be1        : UNSIGNED(3 downto 0);
    signal int_B_24_d1         : UNSIGNED(31 downto 0);
    signal int_B_24_q1         : UNSIGNED(31 downto 0);
    signal int_B_24_read       : STD_LOGIC;
    signal int_B_24_write      : STD_LOGIC;
    signal int_B_24_shift0     : UNSIGNED(1 downto 0);
    signal int_B_25_address0   : UNSIGNED(0 downto 0);
    signal int_B_25_ce0        : STD_LOGIC;
    signal int_B_25_q0         : UNSIGNED(31 downto 0);
    signal int_B_25_address1   : UNSIGNED(0 downto 0);
    signal int_B_25_ce1        : STD_LOGIC;
    signal int_B_25_we1        : STD_LOGIC;
    signal int_B_25_be1        : UNSIGNED(3 downto 0);
    signal int_B_25_d1         : UNSIGNED(31 downto 0);
    signal int_B_25_q1         : UNSIGNED(31 downto 0);
    signal int_B_25_read       : STD_LOGIC;
    signal int_B_25_write      : STD_LOGIC;
    signal int_B_25_shift0     : UNSIGNED(1 downto 0);
    signal int_B_26_address0   : UNSIGNED(0 downto 0);
    signal int_B_26_ce0        : STD_LOGIC;
    signal int_B_26_q0         : UNSIGNED(31 downto 0);
    signal int_B_26_address1   : UNSIGNED(0 downto 0);
    signal int_B_26_ce1        : STD_LOGIC;
    signal int_B_26_we1        : STD_LOGIC;
    signal int_B_26_be1        : UNSIGNED(3 downto 0);
    signal int_B_26_d1         : UNSIGNED(31 downto 0);
    signal int_B_26_q1         : UNSIGNED(31 downto 0);
    signal int_B_26_read       : STD_LOGIC;
    signal int_B_26_write      : STD_LOGIC;
    signal int_B_26_shift0     : UNSIGNED(1 downto 0);
    signal int_B_27_address0   : UNSIGNED(0 downto 0);
    signal int_B_27_ce0        : STD_LOGIC;
    signal int_B_27_q0         : UNSIGNED(31 downto 0);
    signal int_B_27_address1   : UNSIGNED(0 downto 0);
    signal int_B_27_ce1        : STD_LOGIC;
    signal int_B_27_we1        : STD_LOGIC;
    signal int_B_27_be1        : UNSIGNED(3 downto 0);
    signal int_B_27_d1         : UNSIGNED(31 downto 0);
    signal int_B_27_q1         : UNSIGNED(31 downto 0);
    signal int_B_27_read       : STD_LOGIC;
    signal int_B_27_write      : STD_LOGIC;
    signal int_B_27_shift0     : UNSIGNED(1 downto 0);
    signal int_B_28_address0   : UNSIGNED(0 downto 0);
    signal int_B_28_ce0        : STD_LOGIC;
    signal int_B_28_q0         : UNSIGNED(31 downto 0);
    signal int_B_28_address1   : UNSIGNED(0 downto 0);
    signal int_B_28_ce1        : STD_LOGIC;
    signal int_B_28_we1        : STD_LOGIC;
    signal int_B_28_be1        : UNSIGNED(3 downto 0);
    signal int_B_28_d1         : UNSIGNED(31 downto 0);
    signal int_B_28_q1         : UNSIGNED(31 downto 0);
    signal int_B_28_read       : STD_LOGIC;
    signal int_B_28_write      : STD_LOGIC;
    signal int_B_28_shift0     : UNSIGNED(1 downto 0);
    signal int_B_29_address0   : UNSIGNED(0 downto 0);
    signal int_B_29_ce0        : STD_LOGIC;
    signal int_B_29_q0         : UNSIGNED(31 downto 0);
    signal int_B_29_address1   : UNSIGNED(0 downto 0);
    signal int_B_29_ce1        : STD_LOGIC;
    signal int_B_29_we1        : STD_LOGIC;
    signal int_B_29_be1        : UNSIGNED(3 downto 0);
    signal int_B_29_d1         : UNSIGNED(31 downto 0);
    signal int_B_29_q1         : UNSIGNED(31 downto 0);
    signal int_B_29_read       : STD_LOGIC;
    signal int_B_29_write      : STD_LOGIC;
    signal int_B_29_shift0     : UNSIGNED(1 downto 0);
    signal int_B_30_address0   : UNSIGNED(0 downto 0);
    signal int_B_30_ce0        : STD_LOGIC;
    signal int_B_30_q0         : UNSIGNED(31 downto 0);
    signal int_B_30_address1   : UNSIGNED(0 downto 0);
    signal int_B_30_ce1        : STD_LOGIC;
    signal int_B_30_we1        : STD_LOGIC;
    signal int_B_30_be1        : UNSIGNED(3 downto 0);
    signal int_B_30_d1         : UNSIGNED(31 downto 0);
    signal int_B_30_q1         : UNSIGNED(31 downto 0);
    signal int_B_30_read       : STD_LOGIC;
    signal int_B_30_write      : STD_LOGIC;
    signal int_B_30_shift0     : UNSIGNED(1 downto 0);
    signal int_B_31_address0   : UNSIGNED(0 downto 0);
    signal int_B_31_ce0        : STD_LOGIC;
    signal int_B_31_q0         : UNSIGNED(31 downto 0);
    signal int_B_31_address1   : UNSIGNED(0 downto 0);
    signal int_B_31_ce1        : STD_LOGIC;
    signal int_B_31_we1        : STD_LOGIC;
    signal int_B_31_be1        : UNSIGNED(3 downto 0);
    signal int_B_31_d1         : UNSIGNED(31 downto 0);
    signal int_B_31_q1         : UNSIGNED(31 downto 0);
    signal int_B_31_read       : STD_LOGIC;
    signal int_B_31_write      : STD_LOGIC;
    signal int_B_31_shift0     : UNSIGNED(1 downto 0);
    signal int_B_32_address0   : UNSIGNED(0 downto 0);
    signal int_B_32_ce0        : STD_LOGIC;
    signal int_B_32_q0         : UNSIGNED(31 downto 0);
    signal int_B_32_address1   : UNSIGNED(0 downto 0);
    signal int_B_32_ce1        : STD_LOGIC;
    signal int_B_32_we1        : STD_LOGIC;
    signal int_B_32_be1        : UNSIGNED(3 downto 0);
    signal int_B_32_d1         : UNSIGNED(31 downto 0);
    signal int_B_32_q1         : UNSIGNED(31 downto 0);
    signal int_B_32_read       : STD_LOGIC;
    signal int_B_32_write      : STD_LOGIC;
    signal int_B_32_shift0     : UNSIGNED(1 downto 0);
    signal int_B_33_address0   : UNSIGNED(0 downto 0);
    signal int_B_33_ce0        : STD_LOGIC;
    signal int_B_33_q0         : UNSIGNED(31 downto 0);
    signal int_B_33_address1   : UNSIGNED(0 downto 0);
    signal int_B_33_ce1        : STD_LOGIC;
    signal int_B_33_we1        : STD_LOGIC;
    signal int_B_33_be1        : UNSIGNED(3 downto 0);
    signal int_B_33_d1         : UNSIGNED(31 downto 0);
    signal int_B_33_q1         : UNSIGNED(31 downto 0);
    signal int_B_33_read       : STD_LOGIC;
    signal int_B_33_write      : STD_LOGIC;
    signal int_B_33_shift0     : UNSIGNED(1 downto 0);
    signal int_B_34_address0   : UNSIGNED(0 downto 0);
    signal int_B_34_ce0        : STD_LOGIC;
    signal int_B_34_q0         : UNSIGNED(31 downto 0);
    signal int_B_34_address1   : UNSIGNED(0 downto 0);
    signal int_B_34_ce1        : STD_LOGIC;
    signal int_B_34_we1        : STD_LOGIC;
    signal int_B_34_be1        : UNSIGNED(3 downto 0);
    signal int_B_34_d1         : UNSIGNED(31 downto 0);
    signal int_B_34_q1         : UNSIGNED(31 downto 0);
    signal int_B_34_read       : STD_LOGIC;
    signal int_B_34_write      : STD_LOGIC;
    signal int_B_34_shift0     : UNSIGNED(1 downto 0);
    signal int_B_35_address0   : UNSIGNED(0 downto 0);
    signal int_B_35_ce0        : STD_LOGIC;
    signal int_B_35_q0         : UNSIGNED(31 downto 0);
    signal int_B_35_address1   : UNSIGNED(0 downto 0);
    signal int_B_35_ce1        : STD_LOGIC;
    signal int_B_35_we1        : STD_LOGIC;
    signal int_B_35_be1        : UNSIGNED(3 downto 0);
    signal int_B_35_d1         : UNSIGNED(31 downto 0);
    signal int_B_35_q1         : UNSIGNED(31 downto 0);
    signal int_B_35_read       : STD_LOGIC;
    signal int_B_35_write      : STD_LOGIC;
    signal int_B_35_shift0     : UNSIGNED(1 downto 0);
    signal int_B_36_address0   : UNSIGNED(0 downto 0);
    signal int_B_36_ce0        : STD_LOGIC;
    signal int_B_36_q0         : UNSIGNED(31 downto 0);
    signal int_B_36_address1   : UNSIGNED(0 downto 0);
    signal int_B_36_ce1        : STD_LOGIC;
    signal int_B_36_we1        : STD_LOGIC;
    signal int_B_36_be1        : UNSIGNED(3 downto 0);
    signal int_B_36_d1         : UNSIGNED(31 downto 0);
    signal int_B_36_q1         : UNSIGNED(31 downto 0);
    signal int_B_36_read       : STD_LOGIC;
    signal int_B_36_write      : STD_LOGIC;
    signal int_B_36_shift0     : UNSIGNED(1 downto 0);
    signal int_B_37_address0   : UNSIGNED(0 downto 0);
    signal int_B_37_ce0        : STD_LOGIC;
    signal int_B_37_q0         : UNSIGNED(31 downto 0);
    signal int_B_37_address1   : UNSIGNED(0 downto 0);
    signal int_B_37_ce1        : STD_LOGIC;
    signal int_B_37_we1        : STD_LOGIC;
    signal int_B_37_be1        : UNSIGNED(3 downto 0);
    signal int_B_37_d1         : UNSIGNED(31 downto 0);
    signal int_B_37_q1         : UNSIGNED(31 downto 0);
    signal int_B_37_read       : STD_LOGIC;
    signal int_B_37_write      : STD_LOGIC;
    signal int_B_37_shift0     : UNSIGNED(1 downto 0);
    signal int_B_38_address0   : UNSIGNED(0 downto 0);
    signal int_B_38_ce0        : STD_LOGIC;
    signal int_B_38_q0         : UNSIGNED(31 downto 0);
    signal int_B_38_address1   : UNSIGNED(0 downto 0);
    signal int_B_38_ce1        : STD_LOGIC;
    signal int_B_38_we1        : STD_LOGIC;
    signal int_B_38_be1        : UNSIGNED(3 downto 0);
    signal int_B_38_d1         : UNSIGNED(31 downto 0);
    signal int_B_38_q1         : UNSIGNED(31 downto 0);
    signal int_B_38_read       : STD_LOGIC;
    signal int_B_38_write      : STD_LOGIC;
    signal int_B_38_shift0     : UNSIGNED(1 downto 0);
    signal int_B_39_address0   : UNSIGNED(0 downto 0);
    signal int_B_39_ce0        : STD_LOGIC;
    signal int_B_39_q0         : UNSIGNED(31 downto 0);
    signal int_B_39_address1   : UNSIGNED(0 downto 0);
    signal int_B_39_ce1        : STD_LOGIC;
    signal int_B_39_we1        : STD_LOGIC;
    signal int_B_39_be1        : UNSIGNED(3 downto 0);
    signal int_B_39_d1         : UNSIGNED(31 downto 0);
    signal int_B_39_q1         : UNSIGNED(31 downto 0);
    signal int_B_39_read       : STD_LOGIC;
    signal int_B_39_write      : STD_LOGIC;
    signal int_B_39_shift0     : UNSIGNED(1 downto 0);
    signal int_B_40_address0   : UNSIGNED(0 downto 0);
    signal int_B_40_ce0        : STD_LOGIC;
    signal int_B_40_q0         : UNSIGNED(31 downto 0);
    signal int_B_40_address1   : UNSIGNED(0 downto 0);
    signal int_B_40_ce1        : STD_LOGIC;
    signal int_B_40_we1        : STD_LOGIC;
    signal int_B_40_be1        : UNSIGNED(3 downto 0);
    signal int_B_40_d1         : UNSIGNED(31 downto 0);
    signal int_B_40_q1         : UNSIGNED(31 downto 0);
    signal int_B_40_read       : STD_LOGIC;
    signal int_B_40_write      : STD_LOGIC;
    signal int_B_40_shift0     : UNSIGNED(1 downto 0);
    signal int_B_41_address0   : UNSIGNED(0 downto 0);
    signal int_B_41_ce0        : STD_LOGIC;
    signal int_B_41_q0         : UNSIGNED(31 downto 0);
    signal int_B_41_address1   : UNSIGNED(0 downto 0);
    signal int_B_41_ce1        : STD_LOGIC;
    signal int_B_41_we1        : STD_LOGIC;
    signal int_B_41_be1        : UNSIGNED(3 downto 0);
    signal int_B_41_d1         : UNSIGNED(31 downto 0);
    signal int_B_41_q1         : UNSIGNED(31 downto 0);
    signal int_B_41_read       : STD_LOGIC;
    signal int_B_41_write      : STD_LOGIC;
    signal int_B_41_shift0     : UNSIGNED(1 downto 0);
    signal int_B_42_address0   : UNSIGNED(0 downto 0);
    signal int_B_42_ce0        : STD_LOGIC;
    signal int_B_42_q0         : UNSIGNED(31 downto 0);
    signal int_B_42_address1   : UNSIGNED(0 downto 0);
    signal int_B_42_ce1        : STD_LOGIC;
    signal int_B_42_we1        : STD_LOGIC;
    signal int_B_42_be1        : UNSIGNED(3 downto 0);
    signal int_B_42_d1         : UNSIGNED(31 downto 0);
    signal int_B_42_q1         : UNSIGNED(31 downto 0);
    signal int_B_42_read       : STD_LOGIC;
    signal int_B_42_write      : STD_LOGIC;
    signal int_B_42_shift0     : UNSIGNED(1 downto 0);
    signal int_B_43_address0   : UNSIGNED(0 downto 0);
    signal int_B_43_ce0        : STD_LOGIC;
    signal int_B_43_q0         : UNSIGNED(31 downto 0);
    signal int_B_43_address1   : UNSIGNED(0 downto 0);
    signal int_B_43_ce1        : STD_LOGIC;
    signal int_B_43_we1        : STD_LOGIC;
    signal int_B_43_be1        : UNSIGNED(3 downto 0);
    signal int_B_43_d1         : UNSIGNED(31 downto 0);
    signal int_B_43_q1         : UNSIGNED(31 downto 0);
    signal int_B_43_read       : STD_LOGIC;
    signal int_B_43_write      : STD_LOGIC;
    signal int_B_43_shift0     : UNSIGNED(1 downto 0);
    signal int_B_44_address0   : UNSIGNED(0 downto 0);
    signal int_B_44_ce0        : STD_LOGIC;
    signal int_B_44_q0         : UNSIGNED(31 downto 0);
    signal int_B_44_address1   : UNSIGNED(0 downto 0);
    signal int_B_44_ce1        : STD_LOGIC;
    signal int_B_44_we1        : STD_LOGIC;
    signal int_B_44_be1        : UNSIGNED(3 downto 0);
    signal int_B_44_d1         : UNSIGNED(31 downto 0);
    signal int_B_44_q1         : UNSIGNED(31 downto 0);
    signal int_B_44_read       : STD_LOGIC;
    signal int_B_44_write      : STD_LOGIC;
    signal int_B_44_shift0     : UNSIGNED(1 downto 0);
    signal int_B_45_address0   : UNSIGNED(0 downto 0);
    signal int_B_45_ce0        : STD_LOGIC;
    signal int_B_45_q0         : UNSIGNED(31 downto 0);
    signal int_B_45_address1   : UNSIGNED(0 downto 0);
    signal int_B_45_ce1        : STD_LOGIC;
    signal int_B_45_we1        : STD_LOGIC;
    signal int_B_45_be1        : UNSIGNED(3 downto 0);
    signal int_B_45_d1         : UNSIGNED(31 downto 0);
    signal int_B_45_q1         : UNSIGNED(31 downto 0);
    signal int_B_45_read       : STD_LOGIC;
    signal int_B_45_write      : STD_LOGIC;
    signal int_B_45_shift0     : UNSIGNED(1 downto 0);
    signal int_B_46_address0   : UNSIGNED(0 downto 0);
    signal int_B_46_ce0        : STD_LOGIC;
    signal int_B_46_q0         : UNSIGNED(31 downto 0);
    signal int_B_46_address1   : UNSIGNED(0 downto 0);
    signal int_B_46_ce1        : STD_LOGIC;
    signal int_B_46_we1        : STD_LOGIC;
    signal int_B_46_be1        : UNSIGNED(3 downto 0);
    signal int_B_46_d1         : UNSIGNED(31 downto 0);
    signal int_B_46_q1         : UNSIGNED(31 downto 0);
    signal int_B_46_read       : STD_LOGIC;
    signal int_B_46_write      : STD_LOGIC;
    signal int_B_46_shift0     : UNSIGNED(1 downto 0);
    signal int_B_47_address0   : UNSIGNED(0 downto 0);
    signal int_B_47_ce0        : STD_LOGIC;
    signal int_B_47_q0         : UNSIGNED(31 downto 0);
    signal int_B_47_address1   : UNSIGNED(0 downto 0);
    signal int_B_47_ce1        : STD_LOGIC;
    signal int_B_47_we1        : STD_LOGIC;
    signal int_B_47_be1        : UNSIGNED(3 downto 0);
    signal int_B_47_d1         : UNSIGNED(31 downto 0);
    signal int_B_47_q1         : UNSIGNED(31 downto 0);
    signal int_B_47_read       : STD_LOGIC;
    signal int_B_47_write      : STD_LOGIC;
    signal int_B_47_shift0     : UNSIGNED(1 downto 0);
    signal int_B_48_address0   : UNSIGNED(0 downto 0);
    signal int_B_48_ce0        : STD_LOGIC;
    signal int_B_48_q0         : UNSIGNED(31 downto 0);
    signal int_B_48_address1   : UNSIGNED(0 downto 0);
    signal int_B_48_ce1        : STD_LOGIC;
    signal int_B_48_we1        : STD_LOGIC;
    signal int_B_48_be1        : UNSIGNED(3 downto 0);
    signal int_B_48_d1         : UNSIGNED(31 downto 0);
    signal int_B_48_q1         : UNSIGNED(31 downto 0);
    signal int_B_48_read       : STD_LOGIC;
    signal int_B_48_write      : STD_LOGIC;
    signal int_B_48_shift0     : UNSIGNED(1 downto 0);
    signal int_B_49_address0   : UNSIGNED(0 downto 0);
    signal int_B_49_ce0        : STD_LOGIC;
    signal int_B_49_q0         : UNSIGNED(31 downto 0);
    signal int_B_49_address1   : UNSIGNED(0 downto 0);
    signal int_B_49_ce1        : STD_LOGIC;
    signal int_B_49_we1        : STD_LOGIC;
    signal int_B_49_be1        : UNSIGNED(3 downto 0);
    signal int_B_49_d1         : UNSIGNED(31 downto 0);
    signal int_B_49_q1         : UNSIGNED(31 downto 0);
    signal int_B_49_read       : STD_LOGIC;
    signal int_B_49_write      : STD_LOGIC;
    signal int_B_49_shift0     : UNSIGNED(1 downto 0);
    signal int_B_50_address0   : UNSIGNED(0 downto 0);
    signal int_B_50_ce0        : STD_LOGIC;
    signal int_B_50_q0         : UNSIGNED(31 downto 0);
    signal int_B_50_address1   : UNSIGNED(0 downto 0);
    signal int_B_50_ce1        : STD_LOGIC;
    signal int_B_50_we1        : STD_LOGIC;
    signal int_B_50_be1        : UNSIGNED(3 downto 0);
    signal int_B_50_d1         : UNSIGNED(31 downto 0);
    signal int_B_50_q1         : UNSIGNED(31 downto 0);
    signal int_B_50_read       : STD_LOGIC;
    signal int_B_50_write      : STD_LOGIC;
    signal int_B_50_shift0     : UNSIGNED(1 downto 0);
    signal int_B_51_address0   : UNSIGNED(0 downto 0);
    signal int_B_51_ce0        : STD_LOGIC;
    signal int_B_51_q0         : UNSIGNED(31 downto 0);
    signal int_B_51_address1   : UNSIGNED(0 downto 0);
    signal int_B_51_ce1        : STD_LOGIC;
    signal int_B_51_we1        : STD_LOGIC;
    signal int_B_51_be1        : UNSIGNED(3 downto 0);
    signal int_B_51_d1         : UNSIGNED(31 downto 0);
    signal int_B_51_q1         : UNSIGNED(31 downto 0);
    signal int_B_51_read       : STD_LOGIC;
    signal int_B_51_write      : STD_LOGIC;
    signal int_B_51_shift0     : UNSIGNED(1 downto 0);
    signal int_B_52_address0   : UNSIGNED(0 downto 0);
    signal int_B_52_ce0        : STD_LOGIC;
    signal int_B_52_q0         : UNSIGNED(31 downto 0);
    signal int_B_52_address1   : UNSIGNED(0 downto 0);
    signal int_B_52_ce1        : STD_LOGIC;
    signal int_B_52_we1        : STD_LOGIC;
    signal int_B_52_be1        : UNSIGNED(3 downto 0);
    signal int_B_52_d1         : UNSIGNED(31 downto 0);
    signal int_B_52_q1         : UNSIGNED(31 downto 0);
    signal int_B_52_read       : STD_LOGIC;
    signal int_B_52_write      : STD_LOGIC;
    signal int_B_52_shift0     : UNSIGNED(1 downto 0);
    signal int_B_53_address0   : UNSIGNED(0 downto 0);
    signal int_B_53_ce0        : STD_LOGIC;
    signal int_B_53_q0         : UNSIGNED(31 downto 0);
    signal int_B_53_address1   : UNSIGNED(0 downto 0);
    signal int_B_53_ce1        : STD_LOGIC;
    signal int_B_53_we1        : STD_LOGIC;
    signal int_B_53_be1        : UNSIGNED(3 downto 0);
    signal int_B_53_d1         : UNSIGNED(31 downto 0);
    signal int_B_53_q1         : UNSIGNED(31 downto 0);
    signal int_B_53_read       : STD_LOGIC;
    signal int_B_53_write      : STD_LOGIC;
    signal int_B_53_shift0     : UNSIGNED(1 downto 0);
    signal int_B_54_address0   : UNSIGNED(0 downto 0);
    signal int_B_54_ce0        : STD_LOGIC;
    signal int_B_54_q0         : UNSIGNED(31 downto 0);
    signal int_B_54_address1   : UNSIGNED(0 downto 0);
    signal int_B_54_ce1        : STD_LOGIC;
    signal int_B_54_we1        : STD_LOGIC;
    signal int_B_54_be1        : UNSIGNED(3 downto 0);
    signal int_B_54_d1         : UNSIGNED(31 downto 0);
    signal int_B_54_q1         : UNSIGNED(31 downto 0);
    signal int_B_54_read       : STD_LOGIC;
    signal int_B_54_write      : STD_LOGIC;
    signal int_B_54_shift0     : UNSIGNED(1 downto 0);
    signal int_B_55_address0   : UNSIGNED(0 downto 0);
    signal int_B_55_ce0        : STD_LOGIC;
    signal int_B_55_q0         : UNSIGNED(31 downto 0);
    signal int_B_55_address1   : UNSIGNED(0 downto 0);
    signal int_B_55_ce1        : STD_LOGIC;
    signal int_B_55_we1        : STD_LOGIC;
    signal int_B_55_be1        : UNSIGNED(3 downto 0);
    signal int_B_55_d1         : UNSIGNED(31 downto 0);
    signal int_B_55_q1         : UNSIGNED(31 downto 0);
    signal int_B_55_read       : STD_LOGIC;
    signal int_B_55_write      : STD_LOGIC;
    signal int_B_55_shift0     : UNSIGNED(1 downto 0);
    signal int_B_56_address0   : UNSIGNED(0 downto 0);
    signal int_B_56_ce0        : STD_LOGIC;
    signal int_B_56_q0         : UNSIGNED(31 downto 0);
    signal int_B_56_address1   : UNSIGNED(0 downto 0);
    signal int_B_56_ce1        : STD_LOGIC;
    signal int_B_56_we1        : STD_LOGIC;
    signal int_B_56_be1        : UNSIGNED(3 downto 0);
    signal int_B_56_d1         : UNSIGNED(31 downto 0);
    signal int_B_56_q1         : UNSIGNED(31 downto 0);
    signal int_B_56_read       : STD_LOGIC;
    signal int_B_56_write      : STD_LOGIC;
    signal int_B_56_shift0     : UNSIGNED(1 downto 0);
    signal int_B_57_address0   : UNSIGNED(0 downto 0);
    signal int_B_57_ce0        : STD_LOGIC;
    signal int_B_57_q0         : UNSIGNED(31 downto 0);
    signal int_B_57_address1   : UNSIGNED(0 downto 0);
    signal int_B_57_ce1        : STD_LOGIC;
    signal int_B_57_we1        : STD_LOGIC;
    signal int_B_57_be1        : UNSIGNED(3 downto 0);
    signal int_B_57_d1         : UNSIGNED(31 downto 0);
    signal int_B_57_q1         : UNSIGNED(31 downto 0);
    signal int_B_57_read       : STD_LOGIC;
    signal int_B_57_write      : STD_LOGIC;
    signal int_B_57_shift0     : UNSIGNED(1 downto 0);
    signal int_B_58_address0   : UNSIGNED(0 downto 0);
    signal int_B_58_ce0        : STD_LOGIC;
    signal int_B_58_q0         : UNSIGNED(31 downto 0);
    signal int_B_58_address1   : UNSIGNED(0 downto 0);
    signal int_B_58_ce1        : STD_LOGIC;
    signal int_B_58_we1        : STD_LOGIC;
    signal int_B_58_be1        : UNSIGNED(3 downto 0);
    signal int_B_58_d1         : UNSIGNED(31 downto 0);
    signal int_B_58_q1         : UNSIGNED(31 downto 0);
    signal int_B_58_read       : STD_LOGIC;
    signal int_B_58_write      : STD_LOGIC;
    signal int_B_58_shift0     : UNSIGNED(1 downto 0);
    signal int_B_59_address0   : UNSIGNED(0 downto 0);
    signal int_B_59_ce0        : STD_LOGIC;
    signal int_B_59_q0         : UNSIGNED(31 downto 0);
    signal int_B_59_address1   : UNSIGNED(0 downto 0);
    signal int_B_59_ce1        : STD_LOGIC;
    signal int_B_59_we1        : STD_LOGIC;
    signal int_B_59_be1        : UNSIGNED(3 downto 0);
    signal int_B_59_d1         : UNSIGNED(31 downto 0);
    signal int_B_59_q1         : UNSIGNED(31 downto 0);
    signal int_B_59_read       : STD_LOGIC;
    signal int_B_59_write      : STD_LOGIC;
    signal int_B_59_shift0     : UNSIGNED(1 downto 0);
    signal int_B_60_address0   : UNSIGNED(0 downto 0);
    signal int_B_60_ce0        : STD_LOGIC;
    signal int_B_60_q0         : UNSIGNED(31 downto 0);
    signal int_B_60_address1   : UNSIGNED(0 downto 0);
    signal int_B_60_ce1        : STD_LOGIC;
    signal int_B_60_we1        : STD_LOGIC;
    signal int_B_60_be1        : UNSIGNED(3 downto 0);
    signal int_B_60_d1         : UNSIGNED(31 downto 0);
    signal int_B_60_q1         : UNSIGNED(31 downto 0);
    signal int_B_60_read       : STD_LOGIC;
    signal int_B_60_write      : STD_LOGIC;
    signal int_B_60_shift0     : UNSIGNED(1 downto 0);
    signal int_B_61_address0   : UNSIGNED(0 downto 0);
    signal int_B_61_ce0        : STD_LOGIC;
    signal int_B_61_q0         : UNSIGNED(31 downto 0);
    signal int_B_61_address1   : UNSIGNED(0 downto 0);
    signal int_B_61_ce1        : STD_LOGIC;
    signal int_B_61_we1        : STD_LOGIC;
    signal int_B_61_be1        : UNSIGNED(3 downto 0);
    signal int_B_61_d1         : UNSIGNED(31 downto 0);
    signal int_B_61_q1         : UNSIGNED(31 downto 0);
    signal int_B_61_read       : STD_LOGIC;
    signal int_B_61_write      : STD_LOGIC;
    signal int_B_61_shift0     : UNSIGNED(1 downto 0);
    signal int_B_62_address0   : UNSIGNED(0 downto 0);
    signal int_B_62_ce0        : STD_LOGIC;
    signal int_B_62_q0         : UNSIGNED(31 downto 0);
    signal int_B_62_address1   : UNSIGNED(0 downto 0);
    signal int_B_62_ce1        : STD_LOGIC;
    signal int_B_62_we1        : STD_LOGIC;
    signal int_B_62_be1        : UNSIGNED(3 downto 0);
    signal int_B_62_d1         : UNSIGNED(31 downto 0);
    signal int_B_62_q1         : UNSIGNED(31 downto 0);
    signal int_B_62_read       : STD_LOGIC;
    signal int_B_62_write      : STD_LOGIC;
    signal int_B_62_shift0     : UNSIGNED(1 downto 0);
    signal int_B_63_address0   : UNSIGNED(0 downto 0);
    signal int_B_63_ce0        : STD_LOGIC;
    signal int_B_63_q0         : UNSIGNED(31 downto 0);
    signal int_B_63_address1   : UNSIGNED(0 downto 0);
    signal int_B_63_ce1        : STD_LOGIC;
    signal int_B_63_we1        : STD_LOGIC;
    signal int_B_63_be1        : UNSIGNED(3 downto 0);
    signal int_B_63_d1         : UNSIGNED(31 downto 0);
    signal int_B_63_q1         : UNSIGNED(31 downto 0);
    signal int_B_63_read       : STD_LOGIC;
    signal int_B_63_write      : STD_LOGIC;
    signal int_B_63_shift0     : UNSIGNED(1 downto 0);

    component eucHW_control_s_axi_ram is
        generic (
            MEM_STYLE : STRING :="auto";
            MEM_TYPE  : STRING :="S2P";
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component eucHW_control_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_A_0
int_A_0 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_0_address0,
     ce0       => int_A_0_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_0_q0,
     clk1      => ACLK,
     address1  => int_A_0_address1,
     ce1       => int_A_0_ce1,
     we1       => int_A_0_be1,
     d1        => int_A_0_d1,
     q1        => int_A_0_q1);
-- int_A_1
int_A_1 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_1_address0,
     ce0       => int_A_1_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_1_q0,
     clk1      => ACLK,
     address1  => int_A_1_address1,
     ce1       => int_A_1_ce1,
     we1       => int_A_1_be1,
     d1        => int_A_1_d1,
     q1        => int_A_1_q1);
-- int_A_2
int_A_2 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_2_address0,
     ce0       => int_A_2_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_2_q0,
     clk1      => ACLK,
     address1  => int_A_2_address1,
     ce1       => int_A_2_ce1,
     we1       => int_A_2_be1,
     d1        => int_A_2_d1,
     q1        => int_A_2_q1);
-- int_A_3
int_A_3 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_3_address0,
     ce0       => int_A_3_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_3_q0,
     clk1      => ACLK,
     address1  => int_A_3_address1,
     ce1       => int_A_3_ce1,
     we1       => int_A_3_be1,
     d1        => int_A_3_d1,
     q1        => int_A_3_q1);
-- int_A_4
int_A_4 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_4_address0,
     ce0       => int_A_4_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_4_q0,
     clk1      => ACLK,
     address1  => int_A_4_address1,
     ce1       => int_A_4_ce1,
     we1       => int_A_4_be1,
     d1        => int_A_4_d1,
     q1        => int_A_4_q1);
-- int_A_5
int_A_5 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_5_address0,
     ce0       => int_A_5_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_5_q0,
     clk1      => ACLK,
     address1  => int_A_5_address1,
     ce1       => int_A_5_ce1,
     we1       => int_A_5_be1,
     d1        => int_A_5_d1,
     q1        => int_A_5_q1);
-- int_A_6
int_A_6 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_6_address0,
     ce0       => int_A_6_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_6_q0,
     clk1      => ACLK,
     address1  => int_A_6_address1,
     ce1       => int_A_6_ce1,
     we1       => int_A_6_be1,
     d1        => int_A_6_d1,
     q1        => int_A_6_q1);
-- int_A_7
int_A_7 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_7_address0,
     ce0       => int_A_7_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_7_q0,
     clk1      => ACLK,
     address1  => int_A_7_address1,
     ce1       => int_A_7_ce1,
     we1       => int_A_7_be1,
     d1        => int_A_7_d1,
     q1        => int_A_7_q1);
-- int_A_8
int_A_8 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_8_address0,
     ce0       => int_A_8_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_8_q0,
     clk1      => ACLK,
     address1  => int_A_8_address1,
     ce1       => int_A_8_ce1,
     we1       => int_A_8_be1,
     d1        => int_A_8_d1,
     q1        => int_A_8_q1);
-- int_A_9
int_A_9 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_9_address0,
     ce0       => int_A_9_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_9_q0,
     clk1      => ACLK,
     address1  => int_A_9_address1,
     ce1       => int_A_9_ce1,
     we1       => int_A_9_be1,
     d1        => int_A_9_d1,
     q1        => int_A_9_q1);
-- int_A_10
int_A_10 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_10_address0,
     ce0       => int_A_10_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_10_q0,
     clk1      => ACLK,
     address1  => int_A_10_address1,
     ce1       => int_A_10_ce1,
     we1       => int_A_10_be1,
     d1        => int_A_10_d1,
     q1        => int_A_10_q1);
-- int_A_11
int_A_11 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_11_address0,
     ce0       => int_A_11_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_11_q0,
     clk1      => ACLK,
     address1  => int_A_11_address1,
     ce1       => int_A_11_ce1,
     we1       => int_A_11_be1,
     d1        => int_A_11_d1,
     q1        => int_A_11_q1);
-- int_A_12
int_A_12 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_12_address0,
     ce0       => int_A_12_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_12_q0,
     clk1      => ACLK,
     address1  => int_A_12_address1,
     ce1       => int_A_12_ce1,
     we1       => int_A_12_be1,
     d1        => int_A_12_d1,
     q1        => int_A_12_q1);
-- int_A_13
int_A_13 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_13_address0,
     ce0       => int_A_13_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_13_q0,
     clk1      => ACLK,
     address1  => int_A_13_address1,
     ce1       => int_A_13_ce1,
     we1       => int_A_13_be1,
     d1        => int_A_13_d1,
     q1        => int_A_13_q1);
-- int_A_14
int_A_14 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_14_address0,
     ce0       => int_A_14_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_14_q0,
     clk1      => ACLK,
     address1  => int_A_14_address1,
     ce1       => int_A_14_ce1,
     we1       => int_A_14_be1,
     d1        => int_A_14_d1,
     q1        => int_A_14_q1);
-- int_A_15
int_A_15 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_15_address0,
     ce0       => int_A_15_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_15_q0,
     clk1      => ACLK,
     address1  => int_A_15_address1,
     ce1       => int_A_15_ce1,
     we1       => int_A_15_be1,
     d1        => int_A_15_d1,
     q1        => int_A_15_q1);
-- int_A_16
int_A_16 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_16_address0,
     ce0       => int_A_16_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_16_q0,
     clk1      => ACLK,
     address1  => int_A_16_address1,
     ce1       => int_A_16_ce1,
     we1       => int_A_16_be1,
     d1        => int_A_16_d1,
     q1        => int_A_16_q1);
-- int_A_17
int_A_17 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_17_address0,
     ce0       => int_A_17_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_17_q0,
     clk1      => ACLK,
     address1  => int_A_17_address1,
     ce1       => int_A_17_ce1,
     we1       => int_A_17_be1,
     d1        => int_A_17_d1,
     q1        => int_A_17_q1);
-- int_A_18
int_A_18 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_18_address0,
     ce0       => int_A_18_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_18_q0,
     clk1      => ACLK,
     address1  => int_A_18_address1,
     ce1       => int_A_18_ce1,
     we1       => int_A_18_be1,
     d1        => int_A_18_d1,
     q1        => int_A_18_q1);
-- int_A_19
int_A_19 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_19_address0,
     ce0       => int_A_19_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_19_q0,
     clk1      => ACLK,
     address1  => int_A_19_address1,
     ce1       => int_A_19_ce1,
     we1       => int_A_19_be1,
     d1        => int_A_19_d1,
     q1        => int_A_19_q1);
-- int_A_20
int_A_20 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_20_address0,
     ce0       => int_A_20_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_20_q0,
     clk1      => ACLK,
     address1  => int_A_20_address1,
     ce1       => int_A_20_ce1,
     we1       => int_A_20_be1,
     d1        => int_A_20_d1,
     q1        => int_A_20_q1);
-- int_A_21
int_A_21 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_21_address0,
     ce0       => int_A_21_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_21_q0,
     clk1      => ACLK,
     address1  => int_A_21_address1,
     ce1       => int_A_21_ce1,
     we1       => int_A_21_be1,
     d1        => int_A_21_d1,
     q1        => int_A_21_q1);
-- int_A_22
int_A_22 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_22_address0,
     ce0       => int_A_22_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_22_q0,
     clk1      => ACLK,
     address1  => int_A_22_address1,
     ce1       => int_A_22_ce1,
     we1       => int_A_22_be1,
     d1        => int_A_22_d1,
     q1        => int_A_22_q1);
-- int_A_23
int_A_23 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_23_address0,
     ce0       => int_A_23_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_23_q0,
     clk1      => ACLK,
     address1  => int_A_23_address1,
     ce1       => int_A_23_ce1,
     we1       => int_A_23_be1,
     d1        => int_A_23_d1,
     q1        => int_A_23_q1);
-- int_A_24
int_A_24 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_24_address0,
     ce0       => int_A_24_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_24_q0,
     clk1      => ACLK,
     address1  => int_A_24_address1,
     ce1       => int_A_24_ce1,
     we1       => int_A_24_be1,
     d1        => int_A_24_d1,
     q1        => int_A_24_q1);
-- int_A_25
int_A_25 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_25_address0,
     ce0       => int_A_25_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_25_q0,
     clk1      => ACLK,
     address1  => int_A_25_address1,
     ce1       => int_A_25_ce1,
     we1       => int_A_25_be1,
     d1        => int_A_25_d1,
     q1        => int_A_25_q1);
-- int_A_26
int_A_26 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_26_address0,
     ce0       => int_A_26_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_26_q0,
     clk1      => ACLK,
     address1  => int_A_26_address1,
     ce1       => int_A_26_ce1,
     we1       => int_A_26_be1,
     d1        => int_A_26_d1,
     q1        => int_A_26_q1);
-- int_A_27
int_A_27 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_27_address0,
     ce0       => int_A_27_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_27_q0,
     clk1      => ACLK,
     address1  => int_A_27_address1,
     ce1       => int_A_27_ce1,
     we1       => int_A_27_be1,
     d1        => int_A_27_d1,
     q1        => int_A_27_q1);
-- int_A_28
int_A_28 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_28_address0,
     ce0       => int_A_28_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_28_q0,
     clk1      => ACLK,
     address1  => int_A_28_address1,
     ce1       => int_A_28_ce1,
     we1       => int_A_28_be1,
     d1        => int_A_28_d1,
     q1        => int_A_28_q1);
-- int_A_29
int_A_29 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_29_address0,
     ce0       => int_A_29_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_29_q0,
     clk1      => ACLK,
     address1  => int_A_29_address1,
     ce1       => int_A_29_ce1,
     we1       => int_A_29_be1,
     d1        => int_A_29_d1,
     q1        => int_A_29_q1);
-- int_A_30
int_A_30 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_30_address0,
     ce0       => int_A_30_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_30_q0,
     clk1      => ACLK,
     address1  => int_A_30_address1,
     ce1       => int_A_30_ce1,
     we1       => int_A_30_be1,
     d1        => int_A_30_d1,
     q1        => int_A_30_q1);
-- int_A_31
int_A_31 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_31_address0,
     ce0       => int_A_31_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_31_q0,
     clk1      => ACLK,
     address1  => int_A_31_address1,
     ce1       => int_A_31_ce1,
     we1       => int_A_31_be1,
     d1        => int_A_31_d1,
     q1        => int_A_31_q1);
-- int_A_32
int_A_32 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_32_address0,
     ce0       => int_A_32_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_32_q0,
     clk1      => ACLK,
     address1  => int_A_32_address1,
     ce1       => int_A_32_ce1,
     we1       => int_A_32_be1,
     d1        => int_A_32_d1,
     q1        => int_A_32_q1);
-- int_A_33
int_A_33 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_33_address0,
     ce0       => int_A_33_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_33_q0,
     clk1      => ACLK,
     address1  => int_A_33_address1,
     ce1       => int_A_33_ce1,
     we1       => int_A_33_be1,
     d1        => int_A_33_d1,
     q1        => int_A_33_q1);
-- int_A_34
int_A_34 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_34_address0,
     ce0       => int_A_34_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_34_q0,
     clk1      => ACLK,
     address1  => int_A_34_address1,
     ce1       => int_A_34_ce1,
     we1       => int_A_34_be1,
     d1        => int_A_34_d1,
     q1        => int_A_34_q1);
-- int_A_35
int_A_35 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_35_address0,
     ce0       => int_A_35_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_35_q0,
     clk1      => ACLK,
     address1  => int_A_35_address1,
     ce1       => int_A_35_ce1,
     we1       => int_A_35_be1,
     d1        => int_A_35_d1,
     q1        => int_A_35_q1);
-- int_A_36
int_A_36 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_36_address0,
     ce0       => int_A_36_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_36_q0,
     clk1      => ACLK,
     address1  => int_A_36_address1,
     ce1       => int_A_36_ce1,
     we1       => int_A_36_be1,
     d1        => int_A_36_d1,
     q1        => int_A_36_q1);
-- int_A_37
int_A_37 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_37_address0,
     ce0       => int_A_37_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_37_q0,
     clk1      => ACLK,
     address1  => int_A_37_address1,
     ce1       => int_A_37_ce1,
     we1       => int_A_37_be1,
     d1        => int_A_37_d1,
     q1        => int_A_37_q1);
-- int_A_38
int_A_38 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_38_address0,
     ce0       => int_A_38_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_38_q0,
     clk1      => ACLK,
     address1  => int_A_38_address1,
     ce1       => int_A_38_ce1,
     we1       => int_A_38_be1,
     d1        => int_A_38_d1,
     q1        => int_A_38_q1);
-- int_A_39
int_A_39 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_39_address0,
     ce0       => int_A_39_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_39_q0,
     clk1      => ACLK,
     address1  => int_A_39_address1,
     ce1       => int_A_39_ce1,
     we1       => int_A_39_be1,
     d1        => int_A_39_d1,
     q1        => int_A_39_q1);
-- int_A_40
int_A_40 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_40_address0,
     ce0       => int_A_40_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_40_q0,
     clk1      => ACLK,
     address1  => int_A_40_address1,
     ce1       => int_A_40_ce1,
     we1       => int_A_40_be1,
     d1        => int_A_40_d1,
     q1        => int_A_40_q1);
-- int_A_41
int_A_41 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_41_address0,
     ce0       => int_A_41_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_41_q0,
     clk1      => ACLK,
     address1  => int_A_41_address1,
     ce1       => int_A_41_ce1,
     we1       => int_A_41_be1,
     d1        => int_A_41_d1,
     q1        => int_A_41_q1);
-- int_A_42
int_A_42 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_42_address0,
     ce0       => int_A_42_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_42_q0,
     clk1      => ACLK,
     address1  => int_A_42_address1,
     ce1       => int_A_42_ce1,
     we1       => int_A_42_be1,
     d1        => int_A_42_d1,
     q1        => int_A_42_q1);
-- int_A_43
int_A_43 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_43_address0,
     ce0       => int_A_43_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_43_q0,
     clk1      => ACLK,
     address1  => int_A_43_address1,
     ce1       => int_A_43_ce1,
     we1       => int_A_43_be1,
     d1        => int_A_43_d1,
     q1        => int_A_43_q1);
-- int_A_44
int_A_44 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_44_address0,
     ce0       => int_A_44_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_44_q0,
     clk1      => ACLK,
     address1  => int_A_44_address1,
     ce1       => int_A_44_ce1,
     we1       => int_A_44_be1,
     d1        => int_A_44_d1,
     q1        => int_A_44_q1);
-- int_A_45
int_A_45 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_45_address0,
     ce0       => int_A_45_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_45_q0,
     clk1      => ACLK,
     address1  => int_A_45_address1,
     ce1       => int_A_45_ce1,
     we1       => int_A_45_be1,
     d1        => int_A_45_d1,
     q1        => int_A_45_q1);
-- int_A_46
int_A_46 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_46_address0,
     ce0       => int_A_46_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_46_q0,
     clk1      => ACLK,
     address1  => int_A_46_address1,
     ce1       => int_A_46_ce1,
     we1       => int_A_46_be1,
     d1        => int_A_46_d1,
     q1        => int_A_46_q1);
-- int_A_47
int_A_47 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_47_address0,
     ce0       => int_A_47_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_47_q0,
     clk1      => ACLK,
     address1  => int_A_47_address1,
     ce1       => int_A_47_ce1,
     we1       => int_A_47_be1,
     d1        => int_A_47_d1,
     q1        => int_A_47_q1);
-- int_A_48
int_A_48 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_48_address0,
     ce0       => int_A_48_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_48_q0,
     clk1      => ACLK,
     address1  => int_A_48_address1,
     ce1       => int_A_48_ce1,
     we1       => int_A_48_be1,
     d1        => int_A_48_d1,
     q1        => int_A_48_q1);
-- int_A_49
int_A_49 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_49_address0,
     ce0       => int_A_49_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_49_q0,
     clk1      => ACLK,
     address1  => int_A_49_address1,
     ce1       => int_A_49_ce1,
     we1       => int_A_49_be1,
     d1        => int_A_49_d1,
     q1        => int_A_49_q1);
-- int_A_50
int_A_50 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_50_address0,
     ce0       => int_A_50_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_50_q0,
     clk1      => ACLK,
     address1  => int_A_50_address1,
     ce1       => int_A_50_ce1,
     we1       => int_A_50_be1,
     d1        => int_A_50_d1,
     q1        => int_A_50_q1);
-- int_A_51
int_A_51 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_51_address0,
     ce0       => int_A_51_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_51_q0,
     clk1      => ACLK,
     address1  => int_A_51_address1,
     ce1       => int_A_51_ce1,
     we1       => int_A_51_be1,
     d1        => int_A_51_d1,
     q1        => int_A_51_q1);
-- int_A_52
int_A_52 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_52_address0,
     ce0       => int_A_52_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_52_q0,
     clk1      => ACLK,
     address1  => int_A_52_address1,
     ce1       => int_A_52_ce1,
     we1       => int_A_52_be1,
     d1        => int_A_52_d1,
     q1        => int_A_52_q1);
-- int_A_53
int_A_53 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_53_address0,
     ce0       => int_A_53_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_53_q0,
     clk1      => ACLK,
     address1  => int_A_53_address1,
     ce1       => int_A_53_ce1,
     we1       => int_A_53_be1,
     d1        => int_A_53_d1,
     q1        => int_A_53_q1);
-- int_A_54
int_A_54 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_54_address0,
     ce0       => int_A_54_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_54_q0,
     clk1      => ACLK,
     address1  => int_A_54_address1,
     ce1       => int_A_54_ce1,
     we1       => int_A_54_be1,
     d1        => int_A_54_d1,
     q1        => int_A_54_q1);
-- int_A_55
int_A_55 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_55_address0,
     ce0       => int_A_55_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_55_q0,
     clk1      => ACLK,
     address1  => int_A_55_address1,
     ce1       => int_A_55_ce1,
     we1       => int_A_55_be1,
     d1        => int_A_55_d1,
     q1        => int_A_55_q1);
-- int_A_56
int_A_56 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_56_address0,
     ce0       => int_A_56_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_56_q0,
     clk1      => ACLK,
     address1  => int_A_56_address1,
     ce1       => int_A_56_ce1,
     we1       => int_A_56_be1,
     d1        => int_A_56_d1,
     q1        => int_A_56_q1);
-- int_A_57
int_A_57 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_57_address0,
     ce0       => int_A_57_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_57_q0,
     clk1      => ACLK,
     address1  => int_A_57_address1,
     ce1       => int_A_57_ce1,
     we1       => int_A_57_be1,
     d1        => int_A_57_d1,
     q1        => int_A_57_q1);
-- int_A_58
int_A_58 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_58_address0,
     ce0       => int_A_58_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_58_q0,
     clk1      => ACLK,
     address1  => int_A_58_address1,
     ce1       => int_A_58_ce1,
     we1       => int_A_58_be1,
     d1        => int_A_58_d1,
     q1        => int_A_58_q1);
-- int_A_59
int_A_59 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_59_address0,
     ce0       => int_A_59_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_59_q0,
     clk1      => ACLK,
     address1  => int_A_59_address1,
     ce1       => int_A_59_ce1,
     we1       => int_A_59_be1,
     d1        => int_A_59_d1,
     q1        => int_A_59_q1);
-- int_A_60
int_A_60 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_60_address0,
     ce0       => int_A_60_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_60_q0,
     clk1      => ACLK,
     address1  => int_A_60_address1,
     ce1       => int_A_60_ce1,
     we1       => int_A_60_be1,
     d1        => int_A_60_d1,
     q1        => int_A_60_q1);
-- int_A_61
int_A_61 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_61_address0,
     ce0       => int_A_61_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_61_q0,
     clk1      => ACLK,
     address1  => int_A_61_address1,
     ce1       => int_A_61_ce1,
     we1       => int_A_61_be1,
     d1        => int_A_61_d1,
     q1        => int_A_61_q1);
-- int_A_62
int_A_62 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_62_address0,
     ce0       => int_A_62_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_62_q0,
     clk1      => ACLK,
     address1  => int_A_62_address1,
     ce1       => int_A_62_ce1,
     we1       => int_A_62_be1,
     d1        => int_A_62_d1,
     q1        => int_A_62_q1);
-- int_A_63
int_A_63 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_A_63_address0,
     ce0       => int_A_63_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_63_q0,
     clk1      => ACLK,
     address1  => int_A_63_address1,
     ce1       => int_A_63_ce1,
     we1       => int_A_63_be1,
     d1        => int_A_63_d1,
     q1        => int_A_63_q1);
-- int_B_0
int_B_0 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_0_address0,
     ce0       => int_B_0_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_0_q0,
     clk1      => ACLK,
     address1  => int_B_0_address1,
     ce1       => int_B_0_ce1,
     we1       => int_B_0_be1,
     d1        => int_B_0_d1,
     q1        => int_B_0_q1);
-- int_B_1
int_B_1 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_1_address0,
     ce0       => int_B_1_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_1_q0,
     clk1      => ACLK,
     address1  => int_B_1_address1,
     ce1       => int_B_1_ce1,
     we1       => int_B_1_be1,
     d1        => int_B_1_d1,
     q1        => int_B_1_q1);
-- int_B_2
int_B_2 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_2_address0,
     ce0       => int_B_2_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_2_q0,
     clk1      => ACLK,
     address1  => int_B_2_address1,
     ce1       => int_B_2_ce1,
     we1       => int_B_2_be1,
     d1        => int_B_2_d1,
     q1        => int_B_2_q1);
-- int_B_3
int_B_3 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_3_address0,
     ce0       => int_B_3_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_3_q0,
     clk1      => ACLK,
     address1  => int_B_3_address1,
     ce1       => int_B_3_ce1,
     we1       => int_B_3_be1,
     d1        => int_B_3_d1,
     q1        => int_B_3_q1);
-- int_B_4
int_B_4 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_4_address0,
     ce0       => int_B_4_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_4_q0,
     clk1      => ACLK,
     address1  => int_B_4_address1,
     ce1       => int_B_4_ce1,
     we1       => int_B_4_be1,
     d1        => int_B_4_d1,
     q1        => int_B_4_q1);
-- int_B_5
int_B_5 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_5_address0,
     ce0       => int_B_5_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_5_q0,
     clk1      => ACLK,
     address1  => int_B_5_address1,
     ce1       => int_B_5_ce1,
     we1       => int_B_5_be1,
     d1        => int_B_5_d1,
     q1        => int_B_5_q1);
-- int_B_6
int_B_6 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_6_address0,
     ce0       => int_B_6_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_6_q0,
     clk1      => ACLK,
     address1  => int_B_6_address1,
     ce1       => int_B_6_ce1,
     we1       => int_B_6_be1,
     d1        => int_B_6_d1,
     q1        => int_B_6_q1);
-- int_B_7
int_B_7 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_7_address0,
     ce0       => int_B_7_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_7_q0,
     clk1      => ACLK,
     address1  => int_B_7_address1,
     ce1       => int_B_7_ce1,
     we1       => int_B_7_be1,
     d1        => int_B_7_d1,
     q1        => int_B_7_q1);
-- int_B_8
int_B_8 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_8_address0,
     ce0       => int_B_8_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_8_q0,
     clk1      => ACLK,
     address1  => int_B_8_address1,
     ce1       => int_B_8_ce1,
     we1       => int_B_8_be1,
     d1        => int_B_8_d1,
     q1        => int_B_8_q1);
-- int_B_9
int_B_9 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_9_address0,
     ce0       => int_B_9_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_9_q0,
     clk1      => ACLK,
     address1  => int_B_9_address1,
     ce1       => int_B_9_ce1,
     we1       => int_B_9_be1,
     d1        => int_B_9_d1,
     q1        => int_B_9_q1);
-- int_B_10
int_B_10 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_10_address0,
     ce0       => int_B_10_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_10_q0,
     clk1      => ACLK,
     address1  => int_B_10_address1,
     ce1       => int_B_10_ce1,
     we1       => int_B_10_be1,
     d1        => int_B_10_d1,
     q1        => int_B_10_q1);
-- int_B_11
int_B_11 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_11_address0,
     ce0       => int_B_11_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_11_q0,
     clk1      => ACLK,
     address1  => int_B_11_address1,
     ce1       => int_B_11_ce1,
     we1       => int_B_11_be1,
     d1        => int_B_11_d1,
     q1        => int_B_11_q1);
-- int_B_12
int_B_12 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_12_address0,
     ce0       => int_B_12_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_12_q0,
     clk1      => ACLK,
     address1  => int_B_12_address1,
     ce1       => int_B_12_ce1,
     we1       => int_B_12_be1,
     d1        => int_B_12_d1,
     q1        => int_B_12_q1);
-- int_B_13
int_B_13 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_13_address0,
     ce0       => int_B_13_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_13_q0,
     clk1      => ACLK,
     address1  => int_B_13_address1,
     ce1       => int_B_13_ce1,
     we1       => int_B_13_be1,
     d1        => int_B_13_d1,
     q1        => int_B_13_q1);
-- int_B_14
int_B_14 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_14_address0,
     ce0       => int_B_14_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_14_q0,
     clk1      => ACLK,
     address1  => int_B_14_address1,
     ce1       => int_B_14_ce1,
     we1       => int_B_14_be1,
     d1        => int_B_14_d1,
     q1        => int_B_14_q1);
-- int_B_15
int_B_15 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_15_address0,
     ce0       => int_B_15_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_15_q0,
     clk1      => ACLK,
     address1  => int_B_15_address1,
     ce1       => int_B_15_ce1,
     we1       => int_B_15_be1,
     d1        => int_B_15_d1,
     q1        => int_B_15_q1);
-- int_B_16
int_B_16 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_16_address0,
     ce0       => int_B_16_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_16_q0,
     clk1      => ACLK,
     address1  => int_B_16_address1,
     ce1       => int_B_16_ce1,
     we1       => int_B_16_be1,
     d1        => int_B_16_d1,
     q1        => int_B_16_q1);
-- int_B_17
int_B_17 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_17_address0,
     ce0       => int_B_17_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_17_q0,
     clk1      => ACLK,
     address1  => int_B_17_address1,
     ce1       => int_B_17_ce1,
     we1       => int_B_17_be1,
     d1        => int_B_17_d1,
     q1        => int_B_17_q1);
-- int_B_18
int_B_18 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_18_address0,
     ce0       => int_B_18_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_18_q0,
     clk1      => ACLK,
     address1  => int_B_18_address1,
     ce1       => int_B_18_ce1,
     we1       => int_B_18_be1,
     d1        => int_B_18_d1,
     q1        => int_B_18_q1);
-- int_B_19
int_B_19 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_19_address0,
     ce0       => int_B_19_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_19_q0,
     clk1      => ACLK,
     address1  => int_B_19_address1,
     ce1       => int_B_19_ce1,
     we1       => int_B_19_be1,
     d1        => int_B_19_d1,
     q1        => int_B_19_q1);
-- int_B_20
int_B_20 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_20_address0,
     ce0       => int_B_20_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_20_q0,
     clk1      => ACLK,
     address1  => int_B_20_address1,
     ce1       => int_B_20_ce1,
     we1       => int_B_20_be1,
     d1        => int_B_20_d1,
     q1        => int_B_20_q1);
-- int_B_21
int_B_21 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_21_address0,
     ce0       => int_B_21_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_21_q0,
     clk1      => ACLK,
     address1  => int_B_21_address1,
     ce1       => int_B_21_ce1,
     we1       => int_B_21_be1,
     d1        => int_B_21_d1,
     q1        => int_B_21_q1);
-- int_B_22
int_B_22 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_22_address0,
     ce0       => int_B_22_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_22_q0,
     clk1      => ACLK,
     address1  => int_B_22_address1,
     ce1       => int_B_22_ce1,
     we1       => int_B_22_be1,
     d1        => int_B_22_d1,
     q1        => int_B_22_q1);
-- int_B_23
int_B_23 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_23_address0,
     ce0       => int_B_23_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_23_q0,
     clk1      => ACLK,
     address1  => int_B_23_address1,
     ce1       => int_B_23_ce1,
     we1       => int_B_23_be1,
     d1        => int_B_23_d1,
     q1        => int_B_23_q1);
-- int_B_24
int_B_24 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_24_address0,
     ce0       => int_B_24_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_24_q0,
     clk1      => ACLK,
     address1  => int_B_24_address1,
     ce1       => int_B_24_ce1,
     we1       => int_B_24_be1,
     d1        => int_B_24_d1,
     q1        => int_B_24_q1);
-- int_B_25
int_B_25 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_25_address0,
     ce0       => int_B_25_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_25_q0,
     clk1      => ACLK,
     address1  => int_B_25_address1,
     ce1       => int_B_25_ce1,
     we1       => int_B_25_be1,
     d1        => int_B_25_d1,
     q1        => int_B_25_q1);
-- int_B_26
int_B_26 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_26_address0,
     ce0       => int_B_26_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_26_q0,
     clk1      => ACLK,
     address1  => int_B_26_address1,
     ce1       => int_B_26_ce1,
     we1       => int_B_26_be1,
     d1        => int_B_26_d1,
     q1        => int_B_26_q1);
-- int_B_27
int_B_27 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_27_address0,
     ce0       => int_B_27_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_27_q0,
     clk1      => ACLK,
     address1  => int_B_27_address1,
     ce1       => int_B_27_ce1,
     we1       => int_B_27_be1,
     d1        => int_B_27_d1,
     q1        => int_B_27_q1);
-- int_B_28
int_B_28 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_28_address0,
     ce0       => int_B_28_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_28_q0,
     clk1      => ACLK,
     address1  => int_B_28_address1,
     ce1       => int_B_28_ce1,
     we1       => int_B_28_be1,
     d1        => int_B_28_d1,
     q1        => int_B_28_q1);
-- int_B_29
int_B_29 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_29_address0,
     ce0       => int_B_29_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_29_q0,
     clk1      => ACLK,
     address1  => int_B_29_address1,
     ce1       => int_B_29_ce1,
     we1       => int_B_29_be1,
     d1        => int_B_29_d1,
     q1        => int_B_29_q1);
-- int_B_30
int_B_30 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_30_address0,
     ce0       => int_B_30_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_30_q0,
     clk1      => ACLK,
     address1  => int_B_30_address1,
     ce1       => int_B_30_ce1,
     we1       => int_B_30_be1,
     d1        => int_B_30_d1,
     q1        => int_B_30_q1);
-- int_B_31
int_B_31 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_31_address0,
     ce0       => int_B_31_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_31_q0,
     clk1      => ACLK,
     address1  => int_B_31_address1,
     ce1       => int_B_31_ce1,
     we1       => int_B_31_be1,
     d1        => int_B_31_d1,
     q1        => int_B_31_q1);
-- int_B_32
int_B_32 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_32_address0,
     ce0       => int_B_32_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_32_q0,
     clk1      => ACLK,
     address1  => int_B_32_address1,
     ce1       => int_B_32_ce1,
     we1       => int_B_32_be1,
     d1        => int_B_32_d1,
     q1        => int_B_32_q1);
-- int_B_33
int_B_33 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_33_address0,
     ce0       => int_B_33_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_33_q0,
     clk1      => ACLK,
     address1  => int_B_33_address1,
     ce1       => int_B_33_ce1,
     we1       => int_B_33_be1,
     d1        => int_B_33_d1,
     q1        => int_B_33_q1);
-- int_B_34
int_B_34 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_34_address0,
     ce0       => int_B_34_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_34_q0,
     clk1      => ACLK,
     address1  => int_B_34_address1,
     ce1       => int_B_34_ce1,
     we1       => int_B_34_be1,
     d1        => int_B_34_d1,
     q1        => int_B_34_q1);
-- int_B_35
int_B_35 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_35_address0,
     ce0       => int_B_35_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_35_q0,
     clk1      => ACLK,
     address1  => int_B_35_address1,
     ce1       => int_B_35_ce1,
     we1       => int_B_35_be1,
     d1        => int_B_35_d1,
     q1        => int_B_35_q1);
-- int_B_36
int_B_36 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_36_address0,
     ce0       => int_B_36_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_36_q0,
     clk1      => ACLK,
     address1  => int_B_36_address1,
     ce1       => int_B_36_ce1,
     we1       => int_B_36_be1,
     d1        => int_B_36_d1,
     q1        => int_B_36_q1);
-- int_B_37
int_B_37 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_37_address0,
     ce0       => int_B_37_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_37_q0,
     clk1      => ACLK,
     address1  => int_B_37_address1,
     ce1       => int_B_37_ce1,
     we1       => int_B_37_be1,
     d1        => int_B_37_d1,
     q1        => int_B_37_q1);
-- int_B_38
int_B_38 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_38_address0,
     ce0       => int_B_38_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_38_q0,
     clk1      => ACLK,
     address1  => int_B_38_address1,
     ce1       => int_B_38_ce1,
     we1       => int_B_38_be1,
     d1        => int_B_38_d1,
     q1        => int_B_38_q1);
-- int_B_39
int_B_39 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_39_address0,
     ce0       => int_B_39_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_39_q0,
     clk1      => ACLK,
     address1  => int_B_39_address1,
     ce1       => int_B_39_ce1,
     we1       => int_B_39_be1,
     d1        => int_B_39_d1,
     q1        => int_B_39_q1);
-- int_B_40
int_B_40 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_40_address0,
     ce0       => int_B_40_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_40_q0,
     clk1      => ACLK,
     address1  => int_B_40_address1,
     ce1       => int_B_40_ce1,
     we1       => int_B_40_be1,
     d1        => int_B_40_d1,
     q1        => int_B_40_q1);
-- int_B_41
int_B_41 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_41_address0,
     ce0       => int_B_41_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_41_q0,
     clk1      => ACLK,
     address1  => int_B_41_address1,
     ce1       => int_B_41_ce1,
     we1       => int_B_41_be1,
     d1        => int_B_41_d1,
     q1        => int_B_41_q1);
-- int_B_42
int_B_42 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_42_address0,
     ce0       => int_B_42_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_42_q0,
     clk1      => ACLK,
     address1  => int_B_42_address1,
     ce1       => int_B_42_ce1,
     we1       => int_B_42_be1,
     d1        => int_B_42_d1,
     q1        => int_B_42_q1);
-- int_B_43
int_B_43 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_43_address0,
     ce0       => int_B_43_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_43_q0,
     clk1      => ACLK,
     address1  => int_B_43_address1,
     ce1       => int_B_43_ce1,
     we1       => int_B_43_be1,
     d1        => int_B_43_d1,
     q1        => int_B_43_q1);
-- int_B_44
int_B_44 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_44_address0,
     ce0       => int_B_44_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_44_q0,
     clk1      => ACLK,
     address1  => int_B_44_address1,
     ce1       => int_B_44_ce1,
     we1       => int_B_44_be1,
     d1        => int_B_44_d1,
     q1        => int_B_44_q1);
-- int_B_45
int_B_45 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_45_address0,
     ce0       => int_B_45_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_45_q0,
     clk1      => ACLK,
     address1  => int_B_45_address1,
     ce1       => int_B_45_ce1,
     we1       => int_B_45_be1,
     d1        => int_B_45_d1,
     q1        => int_B_45_q1);
-- int_B_46
int_B_46 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_46_address0,
     ce0       => int_B_46_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_46_q0,
     clk1      => ACLK,
     address1  => int_B_46_address1,
     ce1       => int_B_46_ce1,
     we1       => int_B_46_be1,
     d1        => int_B_46_d1,
     q1        => int_B_46_q1);
-- int_B_47
int_B_47 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_47_address0,
     ce0       => int_B_47_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_47_q0,
     clk1      => ACLK,
     address1  => int_B_47_address1,
     ce1       => int_B_47_ce1,
     we1       => int_B_47_be1,
     d1        => int_B_47_d1,
     q1        => int_B_47_q1);
-- int_B_48
int_B_48 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_48_address0,
     ce0       => int_B_48_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_48_q0,
     clk1      => ACLK,
     address1  => int_B_48_address1,
     ce1       => int_B_48_ce1,
     we1       => int_B_48_be1,
     d1        => int_B_48_d1,
     q1        => int_B_48_q1);
-- int_B_49
int_B_49 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_49_address0,
     ce0       => int_B_49_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_49_q0,
     clk1      => ACLK,
     address1  => int_B_49_address1,
     ce1       => int_B_49_ce1,
     we1       => int_B_49_be1,
     d1        => int_B_49_d1,
     q1        => int_B_49_q1);
-- int_B_50
int_B_50 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_50_address0,
     ce0       => int_B_50_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_50_q0,
     clk1      => ACLK,
     address1  => int_B_50_address1,
     ce1       => int_B_50_ce1,
     we1       => int_B_50_be1,
     d1        => int_B_50_d1,
     q1        => int_B_50_q1);
-- int_B_51
int_B_51 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_51_address0,
     ce0       => int_B_51_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_51_q0,
     clk1      => ACLK,
     address1  => int_B_51_address1,
     ce1       => int_B_51_ce1,
     we1       => int_B_51_be1,
     d1        => int_B_51_d1,
     q1        => int_B_51_q1);
-- int_B_52
int_B_52 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_52_address0,
     ce0       => int_B_52_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_52_q0,
     clk1      => ACLK,
     address1  => int_B_52_address1,
     ce1       => int_B_52_ce1,
     we1       => int_B_52_be1,
     d1        => int_B_52_d1,
     q1        => int_B_52_q1);
-- int_B_53
int_B_53 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_53_address0,
     ce0       => int_B_53_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_53_q0,
     clk1      => ACLK,
     address1  => int_B_53_address1,
     ce1       => int_B_53_ce1,
     we1       => int_B_53_be1,
     d1        => int_B_53_d1,
     q1        => int_B_53_q1);
-- int_B_54
int_B_54 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_54_address0,
     ce0       => int_B_54_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_54_q0,
     clk1      => ACLK,
     address1  => int_B_54_address1,
     ce1       => int_B_54_ce1,
     we1       => int_B_54_be1,
     d1        => int_B_54_d1,
     q1        => int_B_54_q1);
-- int_B_55
int_B_55 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_55_address0,
     ce0       => int_B_55_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_55_q0,
     clk1      => ACLK,
     address1  => int_B_55_address1,
     ce1       => int_B_55_ce1,
     we1       => int_B_55_be1,
     d1        => int_B_55_d1,
     q1        => int_B_55_q1);
-- int_B_56
int_B_56 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_56_address0,
     ce0       => int_B_56_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_56_q0,
     clk1      => ACLK,
     address1  => int_B_56_address1,
     ce1       => int_B_56_ce1,
     we1       => int_B_56_be1,
     d1        => int_B_56_d1,
     q1        => int_B_56_q1);
-- int_B_57
int_B_57 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_57_address0,
     ce0       => int_B_57_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_57_q0,
     clk1      => ACLK,
     address1  => int_B_57_address1,
     ce1       => int_B_57_ce1,
     we1       => int_B_57_be1,
     d1        => int_B_57_d1,
     q1        => int_B_57_q1);
-- int_B_58
int_B_58 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_58_address0,
     ce0       => int_B_58_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_58_q0,
     clk1      => ACLK,
     address1  => int_B_58_address1,
     ce1       => int_B_58_ce1,
     we1       => int_B_58_be1,
     d1        => int_B_58_d1,
     q1        => int_B_58_q1);
-- int_B_59
int_B_59 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_59_address0,
     ce0       => int_B_59_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_59_q0,
     clk1      => ACLK,
     address1  => int_B_59_address1,
     ce1       => int_B_59_ce1,
     we1       => int_B_59_be1,
     d1        => int_B_59_d1,
     q1        => int_B_59_q1);
-- int_B_60
int_B_60 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_60_address0,
     ce0       => int_B_60_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_60_q0,
     clk1      => ACLK,
     address1  => int_B_60_address1,
     ce1       => int_B_60_ce1,
     we1       => int_B_60_be1,
     d1        => int_B_60_d1,
     q1        => int_B_60_q1);
-- int_B_61
int_B_61 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_61_address0,
     ce0       => int_B_61_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_61_q0,
     clk1      => ACLK,
     address1  => int_B_61_address1,
     ce1       => int_B_61_ce1,
     we1       => int_B_61_be1,
     d1        => int_B_61_d1,
     q1        => int_B_61_q1);
-- int_B_62
int_B_62 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_62_address0,
     ce0       => int_B_62_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_62_q0,
     clk1      => ACLK,
     address1  => int_B_62_address1,
     ce1       => int_B_62_ce1,
     we1       => int_B_62_be1,
     d1        => int_B_62_d1,
     q1        => int_B_62_q1);
-- int_B_63
int_B_63 : eucHW_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 2,
     AWIDTH    => log2(2))
port map (
     clk0      => ACLK,
     address0  => int_B_63_address0,
     ce0       => int_B_63_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_63_q0,
     clk1      => ACLK,
     address1  => int_B_63_address1,
     ce1       => int_B_63_ce1,
     we1       => int_B_63_be1,
     d1        => int_B_63_d1,
     q1        => int_B_63_q1);


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata and ar_hs = '0' else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, w_hs, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (w_hs = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_A_0_read = '0') and (int_A_1_read = '0') and (int_A_2_read = '0') and (int_A_3_read = '0') and (int_A_4_read = '0') and (int_A_5_read = '0') and (int_A_6_read = '0') and (int_A_7_read = '0') and (int_A_8_read = '0') and (int_A_9_read = '0') and (int_A_10_read = '0') and (int_A_11_read = '0') and (int_A_12_read = '0') and (int_A_13_read = '0') and (int_A_14_read = '0') and (int_A_15_read = '0') and (int_A_16_read = '0') and (int_A_17_read = '0') and (int_A_18_read = '0') and (int_A_19_read = '0') and (int_A_20_read = '0') and (int_A_21_read = '0') and (int_A_22_read = '0') and (int_A_23_read = '0') and (int_A_24_read = '0') and (int_A_25_read = '0') and (int_A_26_read = '0') and (int_A_27_read = '0') and (int_A_28_read = '0') and (int_A_29_read = '0') and (int_A_30_read = '0') and (int_A_31_read = '0') and (int_A_32_read = '0') and (int_A_33_read = '0') and (int_A_34_read = '0') and (int_A_35_read = '0') and (int_A_36_read = '0') and (int_A_37_read = '0') and (int_A_38_read = '0') and (int_A_39_read = '0') and (int_A_40_read = '0') and (int_A_41_read = '0') and (int_A_42_read = '0') and (int_A_43_read = '0') and (int_A_44_read = '0') and (int_A_45_read = '0') and (int_A_46_read = '0') and (int_A_47_read = '0') and (int_A_48_read = '0') and (int_A_49_read = '0') and (int_A_50_read = '0') and (int_A_51_read = '0') and (int_A_52_read = '0') and (int_A_53_read = '0') and (int_A_54_read = '0') and (int_A_55_read = '0') and (int_A_56_read = '0') and (int_A_57_read = '0') and (int_A_58_read = '0') and (int_A_59_read = '0') and (int_A_60_read = '0') and (int_A_61_read = '0') and (int_A_62_read = '0') and (int_A_63_read = '0') and (int_B_0_read = '0') and (int_B_1_read = '0') and (int_B_2_read = '0') and (int_B_3_read = '0') and (int_B_4_read = '0') and (int_B_5_read = '0') and (int_B_6_read = '0') and (int_B_7_read = '0') and (int_B_8_read = '0') and (int_B_9_read = '0') and (int_B_10_read = '0') and (int_B_11_read = '0') and (int_B_12_read = '0') and (int_B_13_read = '0') and (int_B_14_read = '0') and (int_B_15_read = '0') and (int_B_16_read = '0') and (int_B_17_read = '0') and (int_B_18_read = '0') and (int_B_19_read = '0') and (int_B_20_read = '0') and (int_B_21_read = '0') and (int_B_22_read = '0') and (int_B_23_read = '0') and (int_B_24_read = '0') and (int_B_25_read = '0') and (int_B_26_read = '0') and (int_B_27_read = '0') and (int_B_28_read = '0') and (int_B_29_read = '0') and (int_B_30_read = '0') and (int_B_31_read = '0') and (int_B_32_read = '0') and (int_B_33_read = '0') and (int_B_34_read = '0') and (int_B_35_read = '0') and (int_B_36_read = '0') and (int_B_37_read = '0') and (int_B_38_read = '0') and (int_B_39_read = '0') and (int_B_40_read = '0') and (int_B_41_read = '0') and (int_B_42_read = '0') and (int_B_43_read = '0') and (int_B_44_read = '0') and (int_B_45_read = '0') and (int_B_46_read = '0') and (int_B_47_read = '0') and (int_B_48_read = '0') and (int_B_49_read = '0') and (int_B_50_read = '0') and (int_B_51_read = '0') and (int_B_52_read = '0') and (int_B_53_read = '0') and (int_B_54_read = '0') and (int_B_55_read = '0') and (int_B_56_read = '0') and (int_B_57_read = '0') and (int_B_58_read = '0') and (int_B_59_read = '0') and (int_B_60_read = '0') and (int_B_61_read = '0') and (int_B_62_read = '0') and (int_B_63_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_C_DATA_0 =>
                        rdata_data <= RESIZE(int_C(31 downto 0), 32);
                    when ADDR_C_CTRL =>
                        rdata_data(0) <= int_C_ap_vld;
                    when others =>
                        NULL;
                    end case;
                elsif (int_A_0_read = '1') then
                    rdata_data <= int_A_0_q1;
                elsif (int_A_1_read = '1') then
                    rdata_data <= int_A_1_q1;
                elsif (int_A_2_read = '1') then
                    rdata_data <= int_A_2_q1;
                elsif (int_A_3_read = '1') then
                    rdata_data <= int_A_3_q1;
                elsif (int_A_4_read = '1') then
                    rdata_data <= int_A_4_q1;
                elsif (int_A_5_read = '1') then
                    rdata_data <= int_A_5_q1;
                elsif (int_A_6_read = '1') then
                    rdata_data <= int_A_6_q1;
                elsif (int_A_7_read = '1') then
                    rdata_data <= int_A_7_q1;
                elsif (int_A_8_read = '1') then
                    rdata_data <= int_A_8_q1;
                elsif (int_A_9_read = '1') then
                    rdata_data <= int_A_9_q1;
                elsif (int_A_10_read = '1') then
                    rdata_data <= int_A_10_q1;
                elsif (int_A_11_read = '1') then
                    rdata_data <= int_A_11_q1;
                elsif (int_A_12_read = '1') then
                    rdata_data <= int_A_12_q1;
                elsif (int_A_13_read = '1') then
                    rdata_data <= int_A_13_q1;
                elsif (int_A_14_read = '1') then
                    rdata_data <= int_A_14_q1;
                elsif (int_A_15_read = '1') then
                    rdata_data <= int_A_15_q1;
                elsif (int_A_16_read = '1') then
                    rdata_data <= int_A_16_q1;
                elsif (int_A_17_read = '1') then
                    rdata_data <= int_A_17_q1;
                elsif (int_A_18_read = '1') then
                    rdata_data <= int_A_18_q1;
                elsif (int_A_19_read = '1') then
                    rdata_data <= int_A_19_q1;
                elsif (int_A_20_read = '1') then
                    rdata_data <= int_A_20_q1;
                elsif (int_A_21_read = '1') then
                    rdata_data <= int_A_21_q1;
                elsif (int_A_22_read = '1') then
                    rdata_data <= int_A_22_q1;
                elsif (int_A_23_read = '1') then
                    rdata_data <= int_A_23_q1;
                elsif (int_A_24_read = '1') then
                    rdata_data <= int_A_24_q1;
                elsif (int_A_25_read = '1') then
                    rdata_data <= int_A_25_q1;
                elsif (int_A_26_read = '1') then
                    rdata_data <= int_A_26_q1;
                elsif (int_A_27_read = '1') then
                    rdata_data <= int_A_27_q1;
                elsif (int_A_28_read = '1') then
                    rdata_data <= int_A_28_q1;
                elsif (int_A_29_read = '1') then
                    rdata_data <= int_A_29_q1;
                elsif (int_A_30_read = '1') then
                    rdata_data <= int_A_30_q1;
                elsif (int_A_31_read = '1') then
                    rdata_data <= int_A_31_q1;
                elsif (int_A_32_read = '1') then
                    rdata_data <= int_A_32_q1;
                elsif (int_A_33_read = '1') then
                    rdata_data <= int_A_33_q1;
                elsif (int_A_34_read = '1') then
                    rdata_data <= int_A_34_q1;
                elsif (int_A_35_read = '1') then
                    rdata_data <= int_A_35_q1;
                elsif (int_A_36_read = '1') then
                    rdata_data <= int_A_36_q1;
                elsif (int_A_37_read = '1') then
                    rdata_data <= int_A_37_q1;
                elsif (int_A_38_read = '1') then
                    rdata_data <= int_A_38_q1;
                elsif (int_A_39_read = '1') then
                    rdata_data <= int_A_39_q1;
                elsif (int_A_40_read = '1') then
                    rdata_data <= int_A_40_q1;
                elsif (int_A_41_read = '1') then
                    rdata_data <= int_A_41_q1;
                elsif (int_A_42_read = '1') then
                    rdata_data <= int_A_42_q1;
                elsif (int_A_43_read = '1') then
                    rdata_data <= int_A_43_q1;
                elsif (int_A_44_read = '1') then
                    rdata_data <= int_A_44_q1;
                elsif (int_A_45_read = '1') then
                    rdata_data <= int_A_45_q1;
                elsif (int_A_46_read = '1') then
                    rdata_data <= int_A_46_q1;
                elsif (int_A_47_read = '1') then
                    rdata_data <= int_A_47_q1;
                elsif (int_A_48_read = '1') then
                    rdata_data <= int_A_48_q1;
                elsif (int_A_49_read = '1') then
                    rdata_data <= int_A_49_q1;
                elsif (int_A_50_read = '1') then
                    rdata_data <= int_A_50_q1;
                elsif (int_A_51_read = '1') then
                    rdata_data <= int_A_51_q1;
                elsif (int_A_52_read = '1') then
                    rdata_data <= int_A_52_q1;
                elsif (int_A_53_read = '1') then
                    rdata_data <= int_A_53_q1;
                elsif (int_A_54_read = '1') then
                    rdata_data <= int_A_54_q1;
                elsif (int_A_55_read = '1') then
                    rdata_data <= int_A_55_q1;
                elsif (int_A_56_read = '1') then
                    rdata_data <= int_A_56_q1;
                elsif (int_A_57_read = '1') then
                    rdata_data <= int_A_57_q1;
                elsif (int_A_58_read = '1') then
                    rdata_data <= int_A_58_q1;
                elsif (int_A_59_read = '1') then
                    rdata_data <= int_A_59_q1;
                elsif (int_A_60_read = '1') then
                    rdata_data <= int_A_60_q1;
                elsif (int_A_61_read = '1') then
                    rdata_data <= int_A_61_q1;
                elsif (int_A_62_read = '1') then
                    rdata_data <= int_A_62_q1;
                elsif (int_A_63_read = '1') then
                    rdata_data <= int_A_63_q1;
                elsif (int_B_0_read = '1') then
                    rdata_data <= int_B_0_q1;
                elsif (int_B_1_read = '1') then
                    rdata_data <= int_B_1_q1;
                elsif (int_B_2_read = '1') then
                    rdata_data <= int_B_2_q1;
                elsif (int_B_3_read = '1') then
                    rdata_data <= int_B_3_q1;
                elsif (int_B_4_read = '1') then
                    rdata_data <= int_B_4_q1;
                elsif (int_B_5_read = '1') then
                    rdata_data <= int_B_5_q1;
                elsif (int_B_6_read = '1') then
                    rdata_data <= int_B_6_q1;
                elsif (int_B_7_read = '1') then
                    rdata_data <= int_B_7_q1;
                elsif (int_B_8_read = '1') then
                    rdata_data <= int_B_8_q1;
                elsif (int_B_9_read = '1') then
                    rdata_data <= int_B_9_q1;
                elsif (int_B_10_read = '1') then
                    rdata_data <= int_B_10_q1;
                elsif (int_B_11_read = '1') then
                    rdata_data <= int_B_11_q1;
                elsif (int_B_12_read = '1') then
                    rdata_data <= int_B_12_q1;
                elsif (int_B_13_read = '1') then
                    rdata_data <= int_B_13_q1;
                elsif (int_B_14_read = '1') then
                    rdata_data <= int_B_14_q1;
                elsif (int_B_15_read = '1') then
                    rdata_data <= int_B_15_q1;
                elsif (int_B_16_read = '1') then
                    rdata_data <= int_B_16_q1;
                elsif (int_B_17_read = '1') then
                    rdata_data <= int_B_17_q1;
                elsif (int_B_18_read = '1') then
                    rdata_data <= int_B_18_q1;
                elsif (int_B_19_read = '1') then
                    rdata_data <= int_B_19_q1;
                elsif (int_B_20_read = '1') then
                    rdata_data <= int_B_20_q1;
                elsif (int_B_21_read = '1') then
                    rdata_data <= int_B_21_q1;
                elsif (int_B_22_read = '1') then
                    rdata_data <= int_B_22_q1;
                elsif (int_B_23_read = '1') then
                    rdata_data <= int_B_23_q1;
                elsif (int_B_24_read = '1') then
                    rdata_data <= int_B_24_q1;
                elsif (int_B_25_read = '1') then
                    rdata_data <= int_B_25_q1;
                elsif (int_B_26_read = '1') then
                    rdata_data <= int_B_26_q1;
                elsif (int_B_27_read = '1') then
                    rdata_data <= int_B_27_q1;
                elsif (int_B_28_read = '1') then
                    rdata_data <= int_B_28_q1;
                elsif (int_B_29_read = '1') then
                    rdata_data <= int_B_29_q1;
                elsif (int_B_30_read = '1') then
                    rdata_data <= int_B_30_q1;
                elsif (int_B_31_read = '1') then
                    rdata_data <= int_B_31_q1;
                elsif (int_B_32_read = '1') then
                    rdata_data <= int_B_32_q1;
                elsif (int_B_33_read = '1') then
                    rdata_data <= int_B_33_q1;
                elsif (int_B_34_read = '1') then
                    rdata_data <= int_B_34_q1;
                elsif (int_B_35_read = '1') then
                    rdata_data <= int_B_35_q1;
                elsif (int_B_36_read = '1') then
                    rdata_data <= int_B_36_q1;
                elsif (int_B_37_read = '1') then
                    rdata_data <= int_B_37_q1;
                elsif (int_B_38_read = '1') then
                    rdata_data <= int_B_38_q1;
                elsif (int_B_39_read = '1') then
                    rdata_data <= int_B_39_q1;
                elsif (int_B_40_read = '1') then
                    rdata_data <= int_B_40_q1;
                elsif (int_B_41_read = '1') then
                    rdata_data <= int_B_41_q1;
                elsif (int_B_42_read = '1') then
                    rdata_data <= int_B_42_q1;
                elsif (int_B_43_read = '1') then
                    rdata_data <= int_B_43_q1;
                elsif (int_B_44_read = '1') then
                    rdata_data <= int_B_44_q1;
                elsif (int_B_45_read = '1') then
                    rdata_data <= int_B_45_q1;
                elsif (int_B_46_read = '1') then
                    rdata_data <= int_B_46_q1;
                elsif (int_B_47_read = '1') then
                    rdata_data <= int_B_47_q1;
                elsif (int_B_48_read = '1') then
                    rdata_data <= int_B_48_q1;
                elsif (int_B_49_read = '1') then
                    rdata_data <= int_B_49_q1;
                elsif (int_B_50_read = '1') then
                    rdata_data <= int_B_50_q1;
                elsif (int_B_51_read = '1') then
                    rdata_data <= int_B_51_q1;
                elsif (int_B_52_read = '1') then
                    rdata_data <= int_B_52_q1;
                elsif (int_B_53_read = '1') then
                    rdata_data <= int_B_53_q1;
                elsif (int_B_54_read = '1') then
                    rdata_data <= int_B_54_q1;
                elsif (int_B_55_read = '1') then
                    rdata_data <= int_B_55_q1;
                elsif (int_B_56_read = '1') then
                    rdata_data <= int_B_56_q1;
                elsif (int_B_57_read = '1') then
                    rdata_data <= int_B_57_q1;
                elsif (int_B_58_read = '1') then
                    rdata_data <= int_B_58_q1;
                elsif (int_B_59_read = '1') then
                    rdata_data <= int_B_59_q1;
                elsif (int_B_60_read = '1') then
                    rdata_data <= int_B_60_q1;
                elsif (int_B_61_read = '1') then
                    rdata_data <= int_B_61_q1;
                elsif (int_B_62_read = '1') then
                    rdata_data <= int_B_62_q1;
                elsif (int_B_63_read = '1') then
                    rdata_data <= int_B_63_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (C_ap_vld = '1') then
                    int_C <= UNSIGNED(C);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (C_ap_vld = '1') then
                    int_C_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_C_CTRL) then
                    int_C_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- A_0
    int_A_0_address0     <= SHIFT_RIGHT(UNSIGNED(A_0_address0), 2)(0 downto 0);
    int_A_0_ce0          <= A_0_ce0;
    A_0_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_0_q0, TO_INTEGER(int_A_0_shift0) * 8)(7 downto 0));
    int_A_0_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_0_ce1          <= '1' when ar_hs = '1' or (int_A_0_write = '1' and WVALID  = '1') else '0';
    int_A_0_we1          <= '1' when int_A_0_write = '1' and w_hs = '1' else '0';
    int_A_0_be1          <= UNSIGNED(WSTRB) when int_A_0_we1 = '1' else (others=>'0');
    int_A_0_d1           <= UNSIGNED(WDATA);
    -- A_1
    int_A_1_address0     <= SHIFT_RIGHT(UNSIGNED(A_1_address0), 2)(0 downto 0);
    int_A_1_ce0          <= A_1_ce0;
    A_1_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_1_q0, TO_INTEGER(int_A_1_shift0) * 8)(7 downto 0));
    int_A_1_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_1_ce1          <= '1' when ar_hs = '1' or (int_A_1_write = '1' and WVALID  = '1') else '0';
    int_A_1_we1          <= '1' when int_A_1_write = '1' and w_hs = '1' else '0';
    int_A_1_be1          <= UNSIGNED(WSTRB) when int_A_1_we1 = '1' else (others=>'0');
    int_A_1_d1           <= UNSIGNED(WDATA);
    -- A_2
    int_A_2_address0     <= SHIFT_RIGHT(UNSIGNED(A_2_address0), 2)(0 downto 0);
    int_A_2_ce0          <= A_2_ce0;
    A_2_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_2_q0, TO_INTEGER(int_A_2_shift0) * 8)(7 downto 0));
    int_A_2_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_2_ce1          <= '1' when ar_hs = '1' or (int_A_2_write = '1' and WVALID  = '1') else '0';
    int_A_2_we1          <= '1' when int_A_2_write = '1' and w_hs = '1' else '0';
    int_A_2_be1          <= UNSIGNED(WSTRB) when int_A_2_we1 = '1' else (others=>'0');
    int_A_2_d1           <= UNSIGNED(WDATA);
    -- A_3
    int_A_3_address0     <= SHIFT_RIGHT(UNSIGNED(A_3_address0), 2)(0 downto 0);
    int_A_3_ce0          <= A_3_ce0;
    A_3_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_3_q0, TO_INTEGER(int_A_3_shift0) * 8)(7 downto 0));
    int_A_3_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_3_ce1          <= '1' when ar_hs = '1' or (int_A_3_write = '1' and WVALID  = '1') else '0';
    int_A_3_we1          <= '1' when int_A_3_write = '1' and w_hs = '1' else '0';
    int_A_3_be1          <= UNSIGNED(WSTRB) when int_A_3_we1 = '1' else (others=>'0');
    int_A_3_d1           <= UNSIGNED(WDATA);
    -- A_4
    int_A_4_address0     <= SHIFT_RIGHT(UNSIGNED(A_4_address0), 2)(0 downto 0);
    int_A_4_ce0          <= A_4_ce0;
    A_4_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_4_q0, TO_INTEGER(int_A_4_shift0) * 8)(7 downto 0));
    int_A_4_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_4_ce1          <= '1' when ar_hs = '1' or (int_A_4_write = '1' and WVALID  = '1') else '0';
    int_A_4_we1          <= '1' when int_A_4_write = '1' and w_hs = '1' else '0';
    int_A_4_be1          <= UNSIGNED(WSTRB) when int_A_4_we1 = '1' else (others=>'0');
    int_A_4_d1           <= UNSIGNED(WDATA);
    -- A_5
    int_A_5_address0     <= SHIFT_RIGHT(UNSIGNED(A_5_address0), 2)(0 downto 0);
    int_A_5_ce0          <= A_5_ce0;
    A_5_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_5_q0, TO_INTEGER(int_A_5_shift0) * 8)(7 downto 0));
    int_A_5_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_5_ce1          <= '1' when ar_hs = '1' or (int_A_5_write = '1' and WVALID  = '1') else '0';
    int_A_5_we1          <= '1' when int_A_5_write = '1' and w_hs = '1' else '0';
    int_A_5_be1          <= UNSIGNED(WSTRB) when int_A_5_we1 = '1' else (others=>'0');
    int_A_5_d1           <= UNSIGNED(WDATA);
    -- A_6
    int_A_6_address0     <= SHIFT_RIGHT(UNSIGNED(A_6_address0), 2)(0 downto 0);
    int_A_6_ce0          <= A_6_ce0;
    A_6_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_6_q0, TO_INTEGER(int_A_6_shift0) * 8)(7 downto 0));
    int_A_6_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_6_ce1          <= '1' when ar_hs = '1' or (int_A_6_write = '1' and WVALID  = '1') else '0';
    int_A_6_we1          <= '1' when int_A_6_write = '1' and w_hs = '1' else '0';
    int_A_6_be1          <= UNSIGNED(WSTRB) when int_A_6_we1 = '1' else (others=>'0');
    int_A_6_d1           <= UNSIGNED(WDATA);
    -- A_7
    int_A_7_address0     <= SHIFT_RIGHT(UNSIGNED(A_7_address0), 2)(0 downto 0);
    int_A_7_ce0          <= A_7_ce0;
    A_7_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_7_q0, TO_INTEGER(int_A_7_shift0) * 8)(7 downto 0));
    int_A_7_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_7_ce1          <= '1' when ar_hs = '1' or (int_A_7_write = '1' and WVALID  = '1') else '0';
    int_A_7_we1          <= '1' when int_A_7_write = '1' and w_hs = '1' else '0';
    int_A_7_be1          <= UNSIGNED(WSTRB) when int_A_7_we1 = '1' else (others=>'0');
    int_A_7_d1           <= UNSIGNED(WDATA);
    -- A_8
    int_A_8_address0     <= SHIFT_RIGHT(UNSIGNED(A_8_address0), 2)(0 downto 0);
    int_A_8_ce0          <= A_8_ce0;
    A_8_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_8_q0, TO_INTEGER(int_A_8_shift0) * 8)(7 downto 0));
    int_A_8_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_8_ce1          <= '1' when ar_hs = '1' or (int_A_8_write = '1' and WVALID  = '1') else '0';
    int_A_8_we1          <= '1' when int_A_8_write = '1' and w_hs = '1' else '0';
    int_A_8_be1          <= UNSIGNED(WSTRB) when int_A_8_we1 = '1' else (others=>'0');
    int_A_8_d1           <= UNSIGNED(WDATA);
    -- A_9
    int_A_9_address0     <= SHIFT_RIGHT(UNSIGNED(A_9_address0), 2)(0 downto 0);
    int_A_9_ce0          <= A_9_ce0;
    A_9_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_9_q0, TO_INTEGER(int_A_9_shift0) * 8)(7 downto 0));
    int_A_9_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_9_ce1          <= '1' when ar_hs = '1' or (int_A_9_write = '1' and WVALID  = '1') else '0';
    int_A_9_we1          <= '1' when int_A_9_write = '1' and w_hs = '1' else '0';
    int_A_9_be1          <= UNSIGNED(WSTRB) when int_A_9_we1 = '1' else (others=>'0');
    int_A_9_d1           <= UNSIGNED(WDATA);
    -- A_10
    int_A_10_address0    <= SHIFT_RIGHT(UNSIGNED(A_10_address0), 2)(0 downto 0);
    int_A_10_ce0         <= A_10_ce0;
    A_10_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_10_q0, TO_INTEGER(int_A_10_shift0) * 8)(7 downto 0));
    int_A_10_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_10_ce1         <= '1' when ar_hs = '1' or (int_A_10_write = '1' and WVALID  = '1') else '0';
    int_A_10_we1         <= '1' when int_A_10_write = '1' and w_hs = '1' else '0';
    int_A_10_be1         <= UNSIGNED(WSTRB) when int_A_10_we1 = '1' else (others=>'0');
    int_A_10_d1          <= UNSIGNED(WDATA);
    -- A_11
    int_A_11_address0    <= SHIFT_RIGHT(UNSIGNED(A_11_address0), 2)(0 downto 0);
    int_A_11_ce0         <= A_11_ce0;
    A_11_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_11_q0, TO_INTEGER(int_A_11_shift0) * 8)(7 downto 0));
    int_A_11_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_11_ce1         <= '1' when ar_hs = '1' or (int_A_11_write = '1' and WVALID  = '1') else '0';
    int_A_11_we1         <= '1' when int_A_11_write = '1' and w_hs = '1' else '0';
    int_A_11_be1         <= UNSIGNED(WSTRB) when int_A_11_we1 = '1' else (others=>'0');
    int_A_11_d1          <= UNSIGNED(WDATA);
    -- A_12
    int_A_12_address0    <= SHIFT_RIGHT(UNSIGNED(A_12_address0), 2)(0 downto 0);
    int_A_12_ce0         <= A_12_ce0;
    A_12_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_12_q0, TO_INTEGER(int_A_12_shift0) * 8)(7 downto 0));
    int_A_12_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_12_ce1         <= '1' when ar_hs = '1' or (int_A_12_write = '1' and WVALID  = '1') else '0';
    int_A_12_we1         <= '1' when int_A_12_write = '1' and w_hs = '1' else '0';
    int_A_12_be1         <= UNSIGNED(WSTRB) when int_A_12_we1 = '1' else (others=>'0');
    int_A_12_d1          <= UNSIGNED(WDATA);
    -- A_13
    int_A_13_address0    <= SHIFT_RIGHT(UNSIGNED(A_13_address0), 2)(0 downto 0);
    int_A_13_ce0         <= A_13_ce0;
    A_13_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_13_q0, TO_INTEGER(int_A_13_shift0) * 8)(7 downto 0));
    int_A_13_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_13_ce1         <= '1' when ar_hs = '1' or (int_A_13_write = '1' and WVALID  = '1') else '0';
    int_A_13_we1         <= '1' when int_A_13_write = '1' and w_hs = '1' else '0';
    int_A_13_be1         <= UNSIGNED(WSTRB) when int_A_13_we1 = '1' else (others=>'0');
    int_A_13_d1          <= UNSIGNED(WDATA);
    -- A_14
    int_A_14_address0    <= SHIFT_RIGHT(UNSIGNED(A_14_address0), 2)(0 downto 0);
    int_A_14_ce0         <= A_14_ce0;
    A_14_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_14_q0, TO_INTEGER(int_A_14_shift0) * 8)(7 downto 0));
    int_A_14_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_14_ce1         <= '1' when ar_hs = '1' or (int_A_14_write = '1' and WVALID  = '1') else '0';
    int_A_14_we1         <= '1' when int_A_14_write = '1' and w_hs = '1' else '0';
    int_A_14_be1         <= UNSIGNED(WSTRB) when int_A_14_we1 = '1' else (others=>'0');
    int_A_14_d1          <= UNSIGNED(WDATA);
    -- A_15
    int_A_15_address0    <= SHIFT_RIGHT(UNSIGNED(A_15_address0), 2)(0 downto 0);
    int_A_15_ce0         <= A_15_ce0;
    A_15_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_15_q0, TO_INTEGER(int_A_15_shift0) * 8)(7 downto 0));
    int_A_15_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_15_ce1         <= '1' when ar_hs = '1' or (int_A_15_write = '1' and WVALID  = '1') else '0';
    int_A_15_we1         <= '1' when int_A_15_write = '1' and w_hs = '1' else '0';
    int_A_15_be1         <= UNSIGNED(WSTRB) when int_A_15_we1 = '1' else (others=>'0');
    int_A_15_d1          <= UNSIGNED(WDATA);
    -- A_16
    int_A_16_address0    <= SHIFT_RIGHT(UNSIGNED(A_16_address0), 2)(0 downto 0);
    int_A_16_ce0         <= A_16_ce0;
    A_16_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_16_q0, TO_INTEGER(int_A_16_shift0) * 8)(7 downto 0));
    int_A_16_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_16_ce1         <= '1' when ar_hs = '1' or (int_A_16_write = '1' and WVALID  = '1') else '0';
    int_A_16_we1         <= '1' when int_A_16_write = '1' and w_hs = '1' else '0';
    int_A_16_be1         <= UNSIGNED(WSTRB) when int_A_16_we1 = '1' else (others=>'0');
    int_A_16_d1          <= UNSIGNED(WDATA);
    -- A_17
    int_A_17_address0    <= SHIFT_RIGHT(UNSIGNED(A_17_address0), 2)(0 downto 0);
    int_A_17_ce0         <= A_17_ce0;
    A_17_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_17_q0, TO_INTEGER(int_A_17_shift0) * 8)(7 downto 0));
    int_A_17_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_17_ce1         <= '1' when ar_hs = '1' or (int_A_17_write = '1' and WVALID  = '1') else '0';
    int_A_17_we1         <= '1' when int_A_17_write = '1' and w_hs = '1' else '0';
    int_A_17_be1         <= UNSIGNED(WSTRB) when int_A_17_we1 = '1' else (others=>'0');
    int_A_17_d1          <= UNSIGNED(WDATA);
    -- A_18
    int_A_18_address0    <= SHIFT_RIGHT(UNSIGNED(A_18_address0), 2)(0 downto 0);
    int_A_18_ce0         <= A_18_ce0;
    A_18_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_18_q0, TO_INTEGER(int_A_18_shift0) * 8)(7 downto 0));
    int_A_18_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_18_ce1         <= '1' when ar_hs = '1' or (int_A_18_write = '1' and WVALID  = '1') else '0';
    int_A_18_we1         <= '1' when int_A_18_write = '1' and w_hs = '1' else '0';
    int_A_18_be1         <= UNSIGNED(WSTRB) when int_A_18_we1 = '1' else (others=>'0');
    int_A_18_d1          <= UNSIGNED(WDATA);
    -- A_19
    int_A_19_address0    <= SHIFT_RIGHT(UNSIGNED(A_19_address0), 2)(0 downto 0);
    int_A_19_ce0         <= A_19_ce0;
    A_19_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_19_q0, TO_INTEGER(int_A_19_shift0) * 8)(7 downto 0));
    int_A_19_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_19_ce1         <= '1' when ar_hs = '1' or (int_A_19_write = '1' and WVALID  = '1') else '0';
    int_A_19_we1         <= '1' when int_A_19_write = '1' and w_hs = '1' else '0';
    int_A_19_be1         <= UNSIGNED(WSTRB) when int_A_19_we1 = '1' else (others=>'0');
    int_A_19_d1          <= UNSIGNED(WDATA);
    -- A_20
    int_A_20_address0    <= SHIFT_RIGHT(UNSIGNED(A_20_address0), 2)(0 downto 0);
    int_A_20_ce0         <= A_20_ce0;
    A_20_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_20_q0, TO_INTEGER(int_A_20_shift0) * 8)(7 downto 0));
    int_A_20_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_20_ce1         <= '1' when ar_hs = '1' or (int_A_20_write = '1' and WVALID  = '1') else '0';
    int_A_20_we1         <= '1' when int_A_20_write = '1' and w_hs = '1' else '0';
    int_A_20_be1         <= UNSIGNED(WSTRB) when int_A_20_we1 = '1' else (others=>'0');
    int_A_20_d1          <= UNSIGNED(WDATA);
    -- A_21
    int_A_21_address0    <= SHIFT_RIGHT(UNSIGNED(A_21_address0), 2)(0 downto 0);
    int_A_21_ce0         <= A_21_ce0;
    A_21_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_21_q0, TO_INTEGER(int_A_21_shift0) * 8)(7 downto 0));
    int_A_21_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_21_ce1         <= '1' when ar_hs = '1' or (int_A_21_write = '1' and WVALID  = '1') else '0';
    int_A_21_we1         <= '1' when int_A_21_write = '1' and w_hs = '1' else '0';
    int_A_21_be1         <= UNSIGNED(WSTRB) when int_A_21_we1 = '1' else (others=>'0');
    int_A_21_d1          <= UNSIGNED(WDATA);
    -- A_22
    int_A_22_address0    <= SHIFT_RIGHT(UNSIGNED(A_22_address0), 2)(0 downto 0);
    int_A_22_ce0         <= A_22_ce0;
    A_22_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_22_q0, TO_INTEGER(int_A_22_shift0) * 8)(7 downto 0));
    int_A_22_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_22_ce1         <= '1' when ar_hs = '1' or (int_A_22_write = '1' and WVALID  = '1') else '0';
    int_A_22_we1         <= '1' when int_A_22_write = '1' and w_hs = '1' else '0';
    int_A_22_be1         <= UNSIGNED(WSTRB) when int_A_22_we1 = '1' else (others=>'0');
    int_A_22_d1          <= UNSIGNED(WDATA);
    -- A_23
    int_A_23_address0    <= SHIFT_RIGHT(UNSIGNED(A_23_address0), 2)(0 downto 0);
    int_A_23_ce0         <= A_23_ce0;
    A_23_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_23_q0, TO_INTEGER(int_A_23_shift0) * 8)(7 downto 0));
    int_A_23_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_23_ce1         <= '1' when ar_hs = '1' or (int_A_23_write = '1' and WVALID  = '1') else '0';
    int_A_23_we1         <= '1' when int_A_23_write = '1' and w_hs = '1' else '0';
    int_A_23_be1         <= UNSIGNED(WSTRB) when int_A_23_we1 = '1' else (others=>'0');
    int_A_23_d1          <= UNSIGNED(WDATA);
    -- A_24
    int_A_24_address0    <= SHIFT_RIGHT(UNSIGNED(A_24_address0), 2)(0 downto 0);
    int_A_24_ce0         <= A_24_ce0;
    A_24_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_24_q0, TO_INTEGER(int_A_24_shift0) * 8)(7 downto 0));
    int_A_24_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_24_ce1         <= '1' when ar_hs = '1' or (int_A_24_write = '1' and WVALID  = '1') else '0';
    int_A_24_we1         <= '1' when int_A_24_write = '1' and w_hs = '1' else '0';
    int_A_24_be1         <= UNSIGNED(WSTRB) when int_A_24_we1 = '1' else (others=>'0');
    int_A_24_d1          <= UNSIGNED(WDATA);
    -- A_25
    int_A_25_address0    <= SHIFT_RIGHT(UNSIGNED(A_25_address0), 2)(0 downto 0);
    int_A_25_ce0         <= A_25_ce0;
    A_25_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_25_q0, TO_INTEGER(int_A_25_shift0) * 8)(7 downto 0));
    int_A_25_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_25_ce1         <= '1' when ar_hs = '1' or (int_A_25_write = '1' and WVALID  = '1') else '0';
    int_A_25_we1         <= '1' when int_A_25_write = '1' and w_hs = '1' else '0';
    int_A_25_be1         <= UNSIGNED(WSTRB) when int_A_25_we1 = '1' else (others=>'0');
    int_A_25_d1          <= UNSIGNED(WDATA);
    -- A_26
    int_A_26_address0    <= SHIFT_RIGHT(UNSIGNED(A_26_address0), 2)(0 downto 0);
    int_A_26_ce0         <= A_26_ce0;
    A_26_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_26_q0, TO_INTEGER(int_A_26_shift0) * 8)(7 downto 0));
    int_A_26_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_26_ce1         <= '1' when ar_hs = '1' or (int_A_26_write = '1' and WVALID  = '1') else '0';
    int_A_26_we1         <= '1' when int_A_26_write = '1' and w_hs = '1' else '0';
    int_A_26_be1         <= UNSIGNED(WSTRB) when int_A_26_we1 = '1' else (others=>'0');
    int_A_26_d1          <= UNSIGNED(WDATA);
    -- A_27
    int_A_27_address0    <= SHIFT_RIGHT(UNSIGNED(A_27_address0), 2)(0 downto 0);
    int_A_27_ce0         <= A_27_ce0;
    A_27_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_27_q0, TO_INTEGER(int_A_27_shift0) * 8)(7 downto 0));
    int_A_27_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_27_ce1         <= '1' when ar_hs = '1' or (int_A_27_write = '1' and WVALID  = '1') else '0';
    int_A_27_we1         <= '1' when int_A_27_write = '1' and w_hs = '1' else '0';
    int_A_27_be1         <= UNSIGNED(WSTRB) when int_A_27_we1 = '1' else (others=>'0');
    int_A_27_d1          <= UNSIGNED(WDATA);
    -- A_28
    int_A_28_address0    <= SHIFT_RIGHT(UNSIGNED(A_28_address0), 2)(0 downto 0);
    int_A_28_ce0         <= A_28_ce0;
    A_28_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_28_q0, TO_INTEGER(int_A_28_shift0) * 8)(7 downto 0));
    int_A_28_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_28_ce1         <= '1' when ar_hs = '1' or (int_A_28_write = '1' and WVALID  = '1') else '0';
    int_A_28_we1         <= '1' when int_A_28_write = '1' and w_hs = '1' else '0';
    int_A_28_be1         <= UNSIGNED(WSTRB) when int_A_28_we1 = '1' else (others=>'0');
    int_A_28_d1          <= UNSIGNED(WDATA);
    -- A_29
    int_A_29_address0    <= SHIFT_RIGHT(UNSIGNED(A_29_address0), 2)(0 downto 0);
    int_A_29_ce0         <= A_29_ce0;
    A_29_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_29_q0, TO_INTEGER(int_A_29_shift0) * 8)(7 downto 0));
    int_A_29_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_29_ce1         <= '1' when ar_hs = '1' or (int_A_29_write = '1' and WVALID  = '1') else '0';
    int_A_29_we1         <= '1' when int_A_29_write = '1' and w_hs = '1' else '0';
    int_A_29_be1         <= UNSIGNED(WSTRB) when int_A_29_we1 = '1' else (others=>'0');
    int_A_29_d1          <= UNSIGNED(WDATA);
    -- A_30
    int_A_30_address0    <= SHIFT_RIGHT(UNSIGNED(A_30_address0), 2)(0 downto 0);
    int_A_30_ce0         <= A_30_ce0;
    A_30_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_30_q0, TO_INTEGER(int_A_30_shift0) * 8)(7 downto 0));
    int_A_30_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_30_ce1         <= '1' when ar_hs = '1' or (int_A_30_write = '1' and WVALID  = '1') else '0';
    int_A_30_we1         <= '1' when int_A_30_write = '1' and w_hs = '1' else '0';
    int_A_30_be1         <= UNSIGNED(WSTRB) when int_A_30_we1 = '1' else (others=>'0');
    int_A_30_d1          <= UNSIGNED(WDATA);
    -- A_31
    int_A_31_address0    <= SHIFT_RIGHT(UNSIGNED(A_31_address0), 2)(0 downto 0);
    int_A_31_ce0         <= A_31_ce0;
    A_31_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_31_q0, TO_INTEGER(int_A_31_shift0) * 8)(7 downto 0));
    int_A_31_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_31_ce1         <= '1' when ar_hs = '1' or (int_A_31_write = '1' and WVALID  = '1') else '0';
    int_A_31_we1         <= '1' when int_A_31_write = '1' and w_hs = '1' else '0';
    int_A_31_be1         <= UNSIGNED(WSTRB) when int_A_31_we1 = '1' else (others=>'0');
    int_A_31_d1          <= UNSIGNED(WDATA);
    -- A_32
    int_A_32_address0    <= SHIFT_RIGHT(UNSIGNED(A_32_address0), 2)(0 downto 0);
    int_A_32_ce0         <= A_32_ce0;
    A_32_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_32_q0, TO_INTEGER(int_A_32_shift0) * 8)(7 downto 0));
    int_A_32_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_32_ce1         <= '1' when ar_hs = '1' or (int_A_32_write = '1' and WVALID  = '1') else '0';
    int_A_32_we1         <= '1' when int_A_32_write = '1' and w_hs = '1' else '0';
    int_A_32_be1         <= UNSIGNED(WSTRB) when int_A_32_we1 = '1' else (others=>'0');
    int_A_32_d1          <= UNSIGNED(WDATA);
    -- A_33
    int_A_33_address0    <= SHIFT_RIGHT(UNSIGNED(A_33_address0), 2)(0 downto 0);
    int_A_33_ce0         <= A_33_ce0;
    A_33_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_33_q0, TO_INTEGER(int_A_33_shift0) * 8)(7 downto 0));
    int_A_33_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_33_ce1         <= '1' when ar_hs = '1' or (int_A_33_write = '1' and WVALID  = '1') else '0';
    int_A_33_we1         <= '1' when int_A_33_write = '1' and w_hs = '1' else '0';
    int_A_33_be1         <= UNSIGNED(WSTRB) when int_A_33_we1 = '1' else (others=>'0');
    int_A_33_d1          <= UNSIGNED(WDATA);
    -- A_34
    int_A_34_address0    <= SHIFT_RIGHT(UNSIGNED(A_34_address0), 2)(0 downto 0);
    int_A_34_ce0         <= A_34_ce0;
    A_34_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_34_q0, TO_INTEGER(int_A_34_shift0) * 8)(7 downto 0));
    int_A_34_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_34_ce1         <= '1' when ar_hs = '1' or (int_A_34_write = '1' and WVALID  = '1') else '0';
    int_A_34_we1         <= '1' when int_A_34_write = '1' and w_hs = '1' else '0';
    int_A_34_be1         <= UNSIGNED(WSTRB) when int_A_34_we1 = '1' else (others=>'0');
    int_A_34_d1          <= UNSIGNED(WDATA);
    -- A_35
    int_A_35_address0    <= SHIFT_RIGHT(UNSIGNED(A_35_address0), 2)(0 downto 0);
    int_A_35_ce0         <= A_35_ce0;
    A_35_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_35_q0, TO_INTEGER(int_A_35_shift0) * 8)(7 downto 0));
    int_A_35_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_35_ce1         <= '1' when ar_hs = '1' or (int_A_35_write = '1' and WVALID  = '1') else '0';
    int_A_35_we1         <= '1' when int_A_35_write = '1' and w_hs = '1' else '0';
    int_A_35_be1         <= UNSIGNED(WSTRB) when int_A_35_we1 = '1' else (others=>'0');
    int_A_35_d1          <= UNSIGNED(WDATA);
    -- A_36
    int_A_36_address0    <= SHIFT_RIGHT(UNSIGNED(A_36_address0), 2)(0 downto 0);
    int_A_36_ce0         <= A_36_ce0;
    A_36_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_36_q0, TO_INTEGER(int_A_36_shift0) * 8)(7 downto 0));
    int_A_36_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_36_ce1         <= '1' when ar_hs = '1' or (int_A_36_write = '1' and WVALID  = '1') else '0';
    int_A_36_we1         <= '1' when int_A_36_write = '1' and w_hs = '1' else '0';
    int_A_36_be1         <= UNSIGNED(WSTRB) when int_A_36_we1 = '1' else (others=>'0');
    int_A_36_d1          <= UNSIGNED(WDATA);
    -- A_37
    int_A_37_address0    <= SHIFT_RIGHT(UNSIGNED(A_37_address0), 2)(0 downto 0);
    int_A_37_ce0         <= A_37_ce0;
    A_37_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_37_q0, TO_INTEGER(int_A_37_shift0) * 8)(7 downto 0));
    int_A_37_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_37_ce1         <= '1' when ar_hs = '1' or (int_A_37_write = '1' and WVALID  = '1') else '0';
    int_A_37_we1         <= '1' when int_A_37_write = '1' and w_hs = '1' else '0';
    int_A_37_be1         <= UNSIGNED(WSTRB) when int_A_37_we1 = '1' else (others=>'0');
    int_A_37_d1          <= UNSIGNED(WDATA);
    -- A_38
    int_A_38_address0    <= SHIFT_RIGHT(UNSIGNED(A_38_address0), 2)(0 downto 0);
    int_A_38_ce0         <= A_38_ce0;
    A_38_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_38_q0, TO_INTEGER(int_A_38_shift0) * 8)(7 downto 0));
    int_A_38_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_38_ce1         <= '1' when ar_hs = '1' or (int_A_38_write = '1' and WVALID  = '1') else '0';
    int_A_38_we1         <= '1' when int_A_38_write = '1' and w_hs = '1' else '0';
    int_A_38_be1         <= UNSIGNED(WSTRB) when int_A_38_we1 = '1' else (others=>'0');
    int_A_38_d1          <= UNSIGNED(WDATA);
    -- A_39
    int_A_39_address0    <= SHIFT_RIGHT(UNSIGNED(A_39_address0), 2)(0 downto 0);
    int_A_39_ce0         <= A_39_ce0;
    A_39_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_39_q0, TO_INTEGER(int_A_39_shift0) * 8)(7 downto 0));
    int_A_39_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_39_ce1         <= '1' when ar_hs = '1' or (int_A_39_write = '1' and WVALID  = '1') else '0';
    int_A_39_we1         <= '1' when int_A_39_write = '1' and w_hs = '1' else '0';
    int_A_39_be1         <= UNSIGNED(WSTRB) when int_A_39_we1 = '1' else (others=>'0');
    int_A_39_d1          <= UNSIGNED(WDATA);
    -- A_40
    int_A_40_address0    <= SHIFT_RIGHT(UNSIGNED(A_40_address0), 2)(0 downto 0);
    int_A_40_ce0         <= A_40_ce0;
    A_40_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_40_q0, TO_INTEGER(int_A_40_shift0) * 8)(7 downto 0));
    int_A_40_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_40_ce1         <= '1' when ar_hs = '1' or (int_A_40_write = '1' and WVALID  = '1') else '0';
    int_A_40_we1         <= '1' when int_A_40_write = '1' and w_hs = '1' else '0';
    int_A_40_be1         <= UNSIGNED(WSTRB) when int_A_40_we1 = '1' else (others=>'0');
    int_A_40_d1          <= UNSIGNED(WDATA);
    -- A_41
    int_A_41_address0    <= SHIFT_RIGHT(UNSIGNED(A_41_address0), 2)(0 downto 0);
    int_A_41_ce0         <= A_41_ce0;
    A_41_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_41_q0, TO_INTEGER(int_A_41_shift0) * 8)(7 downto 0));
    int_A_41_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_41_ce1         <= '1' when ar_hs = '1' or (int_A_41_write = '1' and WVALID  = '1') else '0';
    int_A_41_we1         <= '1' when int_A_41_write = '1' and w_hs = '1' else '0';
    int_A_41_be1         <= UNSIGNED(WSTRB) when int_A_41_we1 = '1' else (others=>'0');
    int_A_41_d1          <= UNSIGNED(WDATA);
    -- A_42
    int_A_42_address0    <= SHIFT_RIGHT(UNSIGNED(A_42_address0), 2)(0 downto 0);
    int_A_42_ce0         <= A_42_ce0;
    A_42_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_42_q0, TO_INTEGER(int_A_42_shift0) * 8)(7 downto 0));
    int_A_42_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_42_ce1         <= '1' when ar_hs = '1' or (int_A_42_write = '1' and WVALID  = '1') else '0';
    int_A_42_we1         <= '1' when int_A_42_write = '1' and w_hs = '1' else '0';
    int_A_42_be1         <= UNSIGNED(WSTRB) when int_A_42_we1 = '1' else (others=>'0');
    int_A_42_d1          <= UNSIGNED(WDATA);
    -- A_43
    int_A_43_address0    <= SHIFT_RIGHT(UNSIGNED(A_43_address0), 2)(0 downto 0);
    int_A_43_ce0         <= A_43_ce0;
    A_43_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_43_q0, TO_INTEGER(int_A_43_shift0) * 8)(7 downto 0));
    int_A_43_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_43_ce1         <= '1' when ar_hs = '1' or (int_A_43_write = '1' and WVALID  = '1') else '0';
    int_A_43_we1         <= '1' when int_A_43_write = '1' and w_hs = '1' else '0';
    int_A_43_be1         <= UNSIGNED(WSTRB) when int_A_43_we1 = '1' else (others=>'0');
    int_A_43_d1          <= UNSIGNED(WDATA);
    -- A_44
    int_A_44_address0    <= SHIFT_RIGHT(UNSIGNED(A_44_address0), 2)(0 downto 0);
    int_A_44_ce0         <= A_44_ce0;
    A_44_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_44_q0, TO_INTEGER(int_A_44_shift0) * 8)(7 downto 0));
    int_A_44_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_44_ce1         <= '1' when ar_hs = '1' or (int_A_44_write = '1' and WVALID  = '1') else '0';
    int_A_44_we1         <= '1' when int_A_44_write = '1' and w_hs = '1' else '0';
    int_A_44_be1         <= UNSIGNED(WSTRB) when int_A_44_we1 = '1' else (others=>'0');
    int_A_44_d1          <= UNSIGNED(WDATA);
    -- A_45
    int_A_45_address0    <= SHIFT_RIGHT(UNSIGNED(A_45_address0), 2)(0 downto 0);
    int_A_45_ce0         <= A_45_ce0;
    A_45_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_45_q0, TO_INTEGER(int_A_45_shift0) * 8)(7 downto 0));
    int_A_45_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_45_ce1         <= '1' when ar_hs = '1' or (int_A_45_write = '1' and WVALID  = '1') else '0';
    int_A_45_we1         <= '1' when int_A_45_write = '1' and w_hs = '1' else '0';
    int_A_45_be1         <= UNSIGNED(WSTRB) when int_A_45_we1 = '1' else (others=>'0');
    int_A_45_d1          <= UNSIGNED(WDATA);
    -- A_46
    int_A_46_address0    <= SHIFT_RIGHT(UNSIGNED(A_46_address0), 2)(0 downto 0);
    int_A_46_ce0         <= A_46_ce0;
    A_46_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_46_q0, TO_INTEGER(int_A_46_shift0) * 8)(7 downto 0));
    int_A_46_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_46_ce1         <= '1' when ar_hs = '1' or (int_A_46_write = '1' and WVALID  = '1') else '0';
    int_A_46_we1         <= '1' when int_A_46_write = '1' and w_hs = '1' else '0';
    int_A_46_be1         <= UNSIGNED(WSTRB) when int_A_46_we1 = '1' else (others=>'0');
    int_A_46_d1          <= UNSIGNED(WDATA);
    -- A_47
    int_A_47_address0    <= SHIFT_RIGHT(UNSIGNED(A_47_address0), 2)(0 downto 0);
    int_A_47_ce0         <= A_47_ce0;
    A_47_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_47_q0, TO_INTEGER(int_A_47_shift0) * 8)(7 downto 0));
    int_A_47_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_47_ce1         <= '1' when ar_hs = '1' or (int_A_47_write = '1' and WVALID  = '1') else '0';
    int_A_47_we1         <= '1' when int_A_47_write = '1' and w_hs = '1' else '0';
    int_A_47_be1         <= UNSIGNED(WSTRB) when int_A_47_we1 = '1' else (others=>'0');
    int_A_47_d1          <= UNSIGNED(WDATA);
    -- A_48
    int_A_48_address0    <= SHIFT_RIGHT(UNSIGNED(A_48_address0), 2)(0 downto 0);
    int_A_48_ce0         <= A_48_ce0;
    A_48_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_48_q0, TO_INTEGER(int_A_48_shift0) * 8)(7 downto 0));
    int_A_48_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_48_ce1         <= '1' when ar_hs = '1' or (int_A_48_write = '1' and WVALID  = '1') else '0';
    int_A_48_we1         <= '1' when int_A_48_write = '1' and w_hs = '1' else '0';
    int_A_48_be1         <= UNSIGNED(WSTRB) when int_A_48_we1 = '1' else (others=>'0');
    int_A_48_d1          <= UNSIGNED(WDATA);
    -- A_49
    int_A_49_address0    <= SHIFT_RIGHT(UNSIGNED(A_49_address0), 2)(0 downto 0);
    int_A_49_ce0         <= A_49_ce0;
    A_49_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_49_q0, TO_INTEGER(int_A_49_shift0) * 8)(7 downto 0));
    int_A_49_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_49_ce1         <= '1' when ar_hs = '1' or (int_A_49_write = '1' and WVALID  = '1') else '0';
    int_A_49_we1         <= '1' when int_A_49_write = '1' and w_hs = '1' else '0';
    int_A_49_be1         <= UNSIGNED(WSTRB) when int_A_49_we1 = '1' else (others=>'0');
    int_A_49_d1          <= UNSIGNED(WDATA);
    -- A_50
    int_A_50_address0    <= SHIFT_RIGHT(UNSIGNED(A_50_address0), 2)(0 downto 0);
    int_A_50_ce0         <= A_50_ce0;
    A_50_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_50_q0, TO_INTEGER(int_A_50_shift0) * 8)(7 downto 0));
    int_A_50_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_50_ce1         <= '1' when ar_hs = '1' or (int_A_50_write = '1' and WVALID  = '1') else '0';
    int_A_50_we1         <= '1' when int_A_50_write = '1' and w_hs = '1' else '0';
    int_A_50_be1         <= UNSIGNED(WSTRB) when int_A_50_we1 = '1' else (others=>'0');
    int_A_50_d1          <= UNSIGNED(WDATA);
    -- A_51
    int_A_51_address0    <= SHIFT_RIGHT(UNSIGNED(A_51_address0), 2)(0 downto 0);
    int_A_51_ce0         <= A_51_ce0;
    A_51_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_51_q0, TO_INTEGER(int_A_51_shift0) * 8)(7 downto 0));
    int_A_51_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_51_ce1         <= '1' when ar_hs = '1' or (int_A_51_write = '1' and WVALID  = '1') else '0';
    int_A_51_we1         <= '1' when int_A_51_write = '1' and w_hs = '1' else '0';
    int_A_51_be1         <= UNSIGNED(WSTRB) when int_A_51_we1 = '1' else (others=>'0');
    int_A_51_d1          <= UNSIGNED(WDATA);
    -- A_52
    int_A_52_address0    <= SHIFT_RIGHT(UNSIGNED(A_52_address0), 2)(0 downto 0);
    int_A_52_ce0         <= A_52_ce0;
    A_52_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_52_q0, TO_INTEGER(int_A_52_shift0) * 8)(7 downto 0));
    int_A_52_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_52_ce1         <= '1' when ar_hs = '1' or (int_A_52_write = '1' and WVALID  = '1') else '0';
    int_A_52_we1         <= '1' when int_A_52_write = '1' and w_hs = '1' else '0';
    int_A_52_be1         <= UNSIGNED(WSTRB) when int_A_52_we1 = '1' else (others=>'0');
    int_A_52_d1          <= UNSIGNED(WDATA);
    -- A_53
    int_A_53_address0    <= SHIFT_RIGHT(UNSIGNED(A_53_address0), 2)(0 downto 0);
    int_A_53_ce0         <= A_53_ce0;
    A_53_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_53_q0, TO_INTEGER(int_A_53_shift0) * 8)(7 downto 0));
    int_A_53_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_53_ce1         <= '1' when ar_hs = '1' or (int_A_53_write = '1' and WVALID  = '1') else '0';
    int_A_53_we1         <= '1' when int_A_53_write = '1' and w_hs = '1' else '0';
    int_A_53_be1         <= UNSIGNED(WSTRB) when int_A_53_we1 = '1' else (others=>'0');
    int_A_53_d1          <= UNSIGNED(WDATA);
    -- A_54
    int_A_54_address0    <= SHIFT_RIGHT(UNSIGNED(A_54_address0), 2)(0 downto 0);
    int_A_54_ce0         <= A_54_ce0;
    A_54_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_54_q0, TO_INTEGER(int_A_54_shift0) * 8)(7 downto 0));
    int_A_54_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_54_ce1         <= '1' when ar_hs = '1' or (int_A_54_write = '1' and WVALID  = '1') else '0';
    int_A_54_we1         <= '1' when int_A_54_write = '1' and w_hs = '1' else '0';
    int_A_54_be1         <= UNSIGNED(WSTRB) when int_A_54_we1 = '1' else (others=>'0');
    int_A_54_d1          <= UNSIGNED(WDATA);
    -- A_55
    int_A_55_address0    <= SHIFT_RIGHT(UNSIGNED(A_55_address0), 2)(0 downto 0);
    int_A_55_ce0         <= A_55_ce0;
    A_55_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_55_q0, TO_INTEGER(int_A_55_shift0) * 8)(7 downto 0));
    int_A_55_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_55_ce1         <= '1' when ar_hs = '1' or (int_A_55_write = '1' and WVALID  = '1') else '0';
    int_A_55_we1         <= '1' when int_A_55_write = '1' and w_hs = '1' else '0';
    int_A_55_be1         <= UNSIGNED(WSTRB) when int_A_55_we1 = '1' else (others=>'0');
    int_A_55_d1          <= UNSIGNED(WDATA);
    -- A_56
    int_A_56_address0    <= SHIFT_RIGHT(UNSIGNED(A_56_address0), 2)(0 downto 0);
    int_A_56_ce0         <= A_56_ce0;
    A_56_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_56_q0, TO_INTEGER(int_A_56_shift0) * 8)(7 downto 0));
    int_A_56_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_56_ce1         <= '1' when ar_hs = '1' or (int_A_56_write = '1' and WVALID  = '1') else '0';
    int_A_56_we1         <= '1' when int_A_56_write = '1' and w_hs = '1' else '0';
    int_A_56_be1         <= UNSIGNED(WSTRB) when int_A_56_we1 = '1' else (others=>'0');
    int_A_56_d1          <= UNSIGNED(WDATA);
    -- A_57
    int_A_57_address0    <= SHIFT_RIGHT(UNSIGNED(A_57_address0), 2)(0 downto 0);
    int_A_57_ce0         <= A_57_ce0;
    A_57_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_57_q0, TO_INTEGER(int_A_57_shift0) * 8)(7 downto 0));
    int_A_57_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_57_ce1         <= '1' when ar_hs = '1' or (int_A_57_write = '1' and WVALID  = '1') else '0';
    int_A_57_we1         <= '1' when int_A_57_write = '1' and w_hs = '1' else '0';
    int_A_57_be1         <= UNSIGNED(WSTRB) when int_A_57_we1 = '1' else (others=>'0');
    int_A_57_d1          <= UNSIGNED(WDATA);
    -- A_58
    int_A_58_address0    <= SHIFT_RIGHT(UNSIGNED(A_58_address0), 2)(0 downto 0);
    int_A_58_ce0         <= A_58_ce0;
    A_58_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_58_q0, TO_INTEGER(int_A_58_shift0) * 8)(7 downto 0));
    int_A_58_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_58_ce1         <= '1' when ar_hs = '1' or (int_A_58_write = '1' and WVALID  = '1') else '0';
    int_A_58_we1         <= '1' when int_A_58_write = '1' and w_hs = '1' else '0';
    int_A_58_be1         <= UNSIGNED(WSTRB) when int_A_58_we1 = '1' else (others=>'0');
    int_A_58_d1          <= UNSIGNED(WDATA);
    -- A_59
    int_A_59_address0    <= SHIFT_RIGHT(UNSIGNED(A_59_address0), 2)(0 downto 0);
    int_A_59_ce0         <= A_59_ce0;
    A_59_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_59_q0, TO_INTEGER(int_A_59_shift0) * 8)(7 downto 0));
    int_A_59_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_59_ce1         <= '1' when ar_hs = '1' or (int_A_59_write = '1' and WVALID  = '1') else '0';
    int_A_59_we1         <= '1' when int_A_59_write = '1' and w_hs = '1' else '0';
    int_A_59_be1         <= UNSIGNED(WSTRB) when int_A_59_we1 = '1' else (others=>'0');
    int_A_59_d1          <= UNSIGNED(WDATA);
    -- A_60
    int_A_60_address0    <= SHIFT_RIGHT(UNSIGNED(A_60_address0), 2)(0 downto 0);
    int_A_60_ce0         <= A_60_ce0;
    A_60_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_60_q0, TO_INTEGER(int_A_60_shift0) * 8)(7 downto 0));
    int_A_60_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_60_ce1         <= '1' when ar_hs = '1' or (int_A_60_write = '1' and WVALID  = '1') else '0';
    int_A_60_we1         <= '1' when int_A_60_write = '1' and w_hs = '1' else '0';
    int_A_60_be1         <= UNSIGNED(WSTRB) when int_A_60_we1 = '1' else (others=>'0');
    int_A_60_d1          <= UNSIGNED(WDATA);
    -- A_61
    int_A_61_address0    <= SHIFT_RIGHT(UNSIGNED(A_61_address0), 2)(0 downto 0);
    int_A_61_ce0         <= A_61_ce0;
    A_61_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_61_q0, TO_INTEGER(int_A_61_shift0) * 8)(7 downto 0));
    int_A_61_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_61_ce1         <= '1' when ar_hs = '1' or (int_A_61_write = '1' and WVALID  = '1') else '0';
    int_A_61_we1         <= '1' when int_A_61_write = '1' and w_hs = '1' else '0';
    int_A_61_be1         <= UNSIGNED(WSTRB) when int_A_61_we1 = '1' else (others=>'0');
    int_A_61_d1          <= UNSIGNED(WDATA);
    -- A_62
    int_A_62_address0    <= SHIFT_RIGHT(UNSIGNED(A_62_address0), 2)(0 downto 0);
    int_A_62_ce0         <= A_62_ce0;
    A_62_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_62_q0, TO_INTEGER(int_A_62_shift0) * 8)(7 downto 0));
    int_A_62_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_62_ce1         <= '1' when ar_hs = '1' or (int_A_62_write = '1' and WVALID  = '1') else '0';
    int_A_62_we1         <= '1' when int_A_62_write = '1' and w_hs = '1' else '0';
    int_A_62_be1         <= UNSIGNED(WSTRB) when int_A_62_we1 = '1' else (others=>'0');
    int_A_62_d1          <= UNSIGNED(WDATA);
    -- A_63
    int_A_63_address0    <= SHIFT_RIGHT(UNSIGNED(A_63_address0), 2)(0 downto 0);
    int_A_63_ce0         <= A_63_ce0;
    A_63_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_A_63_q0, TO_INTEGER(int_A_63_shift0) * 8)(7 downto 0));
    int_A_63_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_A_63_ce1         <= '1' when ar_hs = '1' or (int_A_63_write = '1' and WVALID  = '1') else '0';
    int_A_63_we1         <= '1' when int_A_63_write = '1' and w_hs = '1' else '0';
    int_A_63_be1         <= UNSIGNED(WSTRB) when int_A_63_we1 = '1' else (others=>'0');
    int_A_63_d1          <= UNSIGNED(WDATA);
    -- B_0
    int_B_0_address0     <= SHIFT_RIGHT(UNSIGNED(B_0_address0), 2)(0 downto 0);
    int_B_0_ce0          <= B_0_ce0;
    B_0_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_0_q0, TO_INTEGER(int_B_0_shift0) * 8)(7 downto 0));
    int_B_0_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_0_ce1          <= '1' when ar_hs = '1' or (int_B_0_write = '1' and WVALID  = '1') else '0';
    int_B_0_we1          <= '1' when int_B_0_write = '1' and w_hs = '1' else '0';
    int_B_0_be1          <= UNSIGNED(WSTRB) when int_B_0_we1 = '1' else (others=>'0');
    int_B_0_d1           <= UNSIGNED(WDATA);
    -- B_1
    int_B_1_address0     <= SHIFT_RIGHT(UNSIGNED(B_1_address0), 2)(0 downto 0);
    int_B_1_ce0          <= B_1_ce0;
    B_1_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_1_q0, TO_INTEGER(int_B_1_shift0) * 8)(7 downto 0));
    int_B_1_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_1_ce1          <= '1' when ar_hs = '1' or (int_B_1_write = '1' and WVALID  = '1') else '0';
    int_B_1_we1          <= '1' when int_B_1_write = '1' and w_hs = '1' else '0';
    int_B_1_be1          <= UNSIGNED(WSTRB) when int_B_1_we1 = '1' else (others=>'0');
    int_B_1_d1           <= UNSIGNED(WDATA);
    -- B_2
    int_B_2_address0     <= SHIFT_RIGHT(UNSIGNED(B_2_address0), 2)(0 downto 0);
    int_B_2_ce0          <= B_2_ce0;
    B_2_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_2_q0, TO_INTEGER(int_B_2_shift0) * 8)(7 downto 0));
    int_B_2_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_2_ce1          <= '1' when ar_hs = '1' or (int_B_2_write = '1' and WVALID  = '1') else '0';
    int_B_2_we1          <= '1' when int_B_2_write = '1' and w_hs = '1' else '0';
    int_B_2_be1          <= UNSIGNED(WSTRB) when int_B_2_we1 = '1' else (others=>'0');
    int_B_2_d1           <= UNSIGNED(WDATA);
    -- B_3
    int_B_3_address0     <= SHIFT_RIGHT(UNSIGNED(B_3_address0), 2)(0 downto 0);
    int_B_3_ce0          <= B_3_ce0;
    B_3_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_3_q0, TO_INTEGER(int_B_3_shift0) * 8)(7 downto 0));
    int_B_3_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_3_ce1          <= '1' when ar_hs = '1' or (int_B_3_write = '1' and WVALID  = '1') else '0';
    int_B_3_we1          <= '1' when int_B_3_write = '1' and w_hs = '1' else '0';
    int_B_3_be1          <= UNSIGNED(WSTRB) when int_B_3_we1 = '1' else (others=>'0');
    int_B_3_d1           <= UNSIGNED(WDATA);
    -- B_4
    int_B_4_address0     <= SHIFT_RIGHT(UNSIGNED(B_4_address0), 2)(0 downto 0);
    int_B_4_ce0          <= B_4_ce0;
    B_4_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_4_q0, TO_INTEGER(int_B_4_shift0) * 8)(7 downto 0));
    int_B_4_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_4_ce1          <= '1' when ar_hs = '1' or (int_B_4_write = '1' and WVALID  = '1') else '0';
    int_B_4_we1          <= '1' when int_B_4_write = '1' and w_hs = '1' else '0';
    int_B_4_be1          <= UNSIGNED(WSTRB) when int_B_4_we1 = '1' else (others=>'0');
    int_B_4_d1           <= UNSIGNED(WDATA);
    -- B_5
    int_B_5_address0     <= SHIFT_RIGHT(UNSIGNED(B_5_address0), 2)(0 downto 0);
    int_B_5_ce0          <= B_5_ce0;
    B_5_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_5_q0, TO_INTEGER(int_B_5_shift0) * 8)(7 downto 0));
    int_B_5_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_5_ce1          <= '1' when ar_hs = '1' or (int_B_5_write = '1' and WVALID  = '1') else '0';
    int_B_5_we1          <= '1' when int_B_5_write = '1' and w_hs = '1' else '0';
    int_B_5_be1          <= UNSIGNED(WSTRB) when int_B_5_we1 = '1' else (others=>'0');
    int_B_5_d1           <= UNSIGNED(WDATA);
    -- B_6
    int_B_6_address0     <= SHIFT_RIGHT(UNSIGNED(B_6_address0), 2)(0 downto 0);
    int_B_6_ce0          <= B_6_ce0;
    B_6_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_6_q0, TO_INTEGER(int_B_6_shift0) * 8)(7 downto 0));
    int_B_6_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_6_ce1          <= '1' when ar_hs = '1' or (int_B_6_write = '1' and WVALID  = '1') else '0';
    int_B_6_we1          <= '1' when int_B_6_write = '1' and w_hs = '1' else '0';
    int_B_6_be1          <= UNSIGNED(WSTRB) when int_B_6_we1 = '1' else (others=>'0');
    int_B_6_d1           <= UNSIGNED(WDATA);
    -- B_7
    int_B_7_address0     <= SHIFT_RIGHT(UNSIGNED(B_7_address0), 2)(0 downto 0);
    int_B_7_ce0          <= B_7_ce0;
    B_7_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_7_q0, TO_INTEGER(int_B_7_shift0) * 8)(7 downto 0));
    int_B_7_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_7_ce1          <= '1' when ar_hs = '1' or (int_B_7_write = '1' and WVALID  = '1') else '0';
    int_B_7_we1          <= '1' when int_B_7_write = '1' and w_hs = '1' else '0';
    int_B_7_be1          <= UNSIGNED(WSTRB) when int_B_7_we1 = '1' else (others=>'0');
    int_B_7_d1           <= UNSIGNED(WDATA);
    -- B_8
    int_B_8_address0     <= SHIFT_RIGHT(UNSIGNED(B_8_address0), 2)(0 downto 0);
    int_B_8_ce0          <= B_8_ce0;
    B_8_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_8_q0, TO_INTEGER(int_B_8_shift0) * 8)(7 downto 0));
    int_B_8_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_8_ce1          <= '1' when ar_hs = '1' or (int_B_8_write = '1' and WVALID  = '1') else '0';
    int_B_8_we1          <= '1' when int_B_8_write = '1' and w_hs = '1' else '0';
    int_B_8_be1          <= UNSIGNED(WSTRB) when int_B_8_we1 = '1' else (others=>'0');
    int_B_8_d1           <= UNSIGNED(WDATA);
    -- B_9
    int_B_9_address0     <= SHIFT_RIGHT(UNSIGNED(B_9_address0), 2)(0 downto 0);
    int_B_9_ce0          <= B_9_ce0;
    B_9_q0               <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_9_q0, TO_INTEGER(int_B_9_shift0) * 8)(7 downto 0));
    int_B_9_address1     <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_9_ce1          <= '1' when ar_hs = '1' or (int_B_9_write = '1' and WVALID  = '1') else '0';
    int_B_9_we1          <= '1' when int_B_9_write = '1' and w_hs = '1' else '0';
    int_B_9_be1          <= UNSIGNED(WSTRB) when int_B_9_we1 = '1' else (others=>'0');
    int_B_9_d1           <= UNSIGNED(WDATA);
    -- B_10
    int_B_10_address0    <= SHIFT_RIGHT(UNSIGNED(B_10_address0), 2)(0 downto 0);
    int_B_10_ce0         <= B_10_ce0;
    B_10_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_10_q0, TO_INTEGER(int_B_10_shift0) * 8)(7 downto 0));
    int_B_10_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_10_ce1         <= '1' when ar_hs = '1' or (int_B_10_write = '1' and WVALID  = '1') else '0';
    int_B_10_we1         <= '1' when int_B_10_write = '1' and w_hs = '1' else '0';
    int_B_10_be1         <= UNSIGNED(WSTRB) when int_B_10_we1 = '1' else (others=>'0');
    int_B_10_d1          <= UNSIGNED(WDATA);
    -- B_11
    int_B_11_address0    <= SHIFT_RIGHT(UNSIGNED(B_11_address0), 2)(0 downto 0);
    int_B_11_ce0         <= B_11_ce0;
    B_11_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_11_q0, TO_INTEGER(int_B_11_shift0) * 8)(7 downto 0));
    int_B_11_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_11_ce1         <= '1' when ar_hs = '1' or (int_B_11_write = '1' and WVALID  = '1') else '0';
    int_B_11_we1         <= '1' when int_B_11_write = '1' and w_hs = '1' else '0';
    int_B_11_be1         <= UNSIGNED(WSTRB) when int_B_11_we1 = '1' else (others=>'0');
    int_B_11_d1          <= UNSIGNED(WDATA);
    -- B_12
    int_B_12_address0    <= SHIFT_RIGHT(UNSIGNED(B_12_address0), 2)(0 downto 0);
    int_B_12_ce0         <= B_12_ce0;
    B_12_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_12_q0, TO_INTEGER(int_B_12_shift0) * 8)(7 downto 0));
    int_B_12_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_12_ce1         <= '1' when ar_hs = '1' or (int_B_12_write = '1' and WVALID  = '1') else '0';
    int_B_12_we1         <= '1' when int_B_12_write = '1' and w_hs = '1' else '0';
    int_B_12_be1         <= UNSIGNED(WSTRB) when int_B_12_we1 = '1' else (others=>'0');
    int_B_12_d1          <= UNSIGNED(WDATA);
    -- B_13
    int_B_13_address0    <= SHIFT_RIGHT(UNSIGNED(B_13_address0), 2)(0 downto 0);
    int_B_13_ce0         <= B_13_ce0;
    B_13_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_13_q0, TO_INTEGER(int_B_13_shift0) * 8)(7 downto 0));
    int_B_13_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_13_ce1         <= '1' when ar_hs = '1' or (int_B_13_write = '1' and WVALID  = '1') else '0';
    int_B_13_we1         <= '1' when int_B_13_write = '1' and w_hs = '1' else '0';
    int_B_13_be1         <= UNSIGNED(WSTRB) when int_B_13_we1 = '1' else (others=>'0');
    int_B_13_d1          <= UNSIGNED(WDATA);
    -- B_14
    int_B_14_address0    <= SHIFT_RIGHT(UNSIGNED(B_14_address0), 2)(0 downto 0);
    int_B_14_ce0         <= B_14_ce0;
    B_14_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_14_q0, TO_INTEGER(int_B_14_shift0) * 8)(7 downto 0));
    int_B_14_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_14_ce1         <= '1' when ar_hs = '1' or (int_B_14_write = '1' and WVALID  = '1') else '0';
    int_B_14_we1         <= '1' when int_B_14_write = '1' and w_hs = '1' else '0';
    int_B_14_be1         <= UNSIGNED(WSTRB) when int_B_14_we1 = '1' else (others=>'0');
    int_B_14_d1          <= UNSIGNED(WDATA);
    -- B_15
    int_B_15_address0    <= SHIFT_RIGHT(UNSIGNED(B_15_address0), 2)(0 downto 0);
    int_B_15_ce0         <= B_15_ce0;
    B_15_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_15_q0, TO_INTEGER(int_B_15_shift0) * 8)(7 downto 0));
    int_B_15_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_15_ce1         <= '1' when ar_hs = '1' or (int_B_15_write = '1' and WVALID  = '1') else '0';
    int_B_15_we1         <= '1' when int_B_15_write = '1' and w_hs = '1' else '0';
    int_B_15_be1         <= UNSIGNED(WSTRB) when int_B_15_we1 = '1' else (others=>'0');
    int_B_15_d1          <= UNSIGNED(WDATA);
    -- B_16
    int_B_16_address0    <= SHIFT_RIGHT(UNSIGNED(B_16_address0), 2)(0 downto 0);
    int_B_16_ce0         <= B_16_ce0;
    B_16_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_16_q0, TO_INTEGER(int_B_16_shift0) * 8)(7 downto 0));
    int_B_16_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_16_ce1         <= '1' when ar_hs = '1' or (int_B_16_write = '1' and WVALID  = '1') else '0';
    int_B_16_we1         <= '1' when int_B_16_write = '1' and w_hs = '1' else '0';
    int_B_16_be1         <= UNSIGNED(WSTRB) when int_B_16_we1 = '1' else (others=>'0');
    int_B_16_d1          <= UNSIGNED(WDATA);
    -- B_17
    int_B_17_address0    <= SHIFT_RIGHT(UNSIGNED(B_17_address0), 2)(0 downto 0);
    int_B_17_ce0         <= B_17_ce0;
    B_17_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_17_q0, TO_INTEGER(int_B_17_shift0) * 8)(7 downto 0));
    int_B_17_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_17_ce1         <= '1' when ar_hs = '1' or (int_B_17_write = '1' and WVALID  = '1') else '0';
    int_B_17_we1         <= '1' when int_B_17_write = '1' and w_hs = '1' else '0';
    int_B_17_be1         <= UNSIGNED(WSTRB) when int_B_17_we1 = '1' else (others=>'0');
    int_B_17_d1          <= UNSIGNED(WDATA);
    -- B_18
    int_B_18_address0    <= SHIFT_RIGHT(UNSIGNED(B_18_address0), 2)(0 downto 0);
    int_B_18_ce0         <= B_18_ce0;
    B_18_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_18_q0, TO_INTEGER(int_B_18_shift0) * 8)(7 downto 0));
    int_B_18_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_18_ce1         <= '1' when ar_hs = '1' or (int_B_18_write = '1' and WVALID  = '1') else '0';
    int_B_18_we1         <= '1' when int_B_18_write = '1' and w_hs = '1' else '0';
    int_B_18_be1         <= UNSIGNED(WSTRB) when int_B_18_we1 = '1' else (others=>'0');
    int_B_18_d1          <= UNSIGNED(WDATA);
    -- B_19
    int_B_19_address0    <= SHIFT_RIGHT(UNSIGNED(B_19_address0), 2)(0 downto 0);
    int_B_19_ce0         <= B_19_ce0;
    B_19_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_19_q0, TO_INTEGER(int_B_19_shift0) * 8)(7 downto 0));
    int_B_19_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_19_ce1         <= '1' when ar_hs = '1' or (int_B_19_write = '1' and WVALID  = '1') else '0';
    int_B_19_we1         <= '1' when int_B_19_write = '1' and w_hs = '1' else '0';
    int_B_19_be1         <= UNSIGNED(WSTRB) when int_B_19_we1 = '1' else (others=>'0');
    int_B_19_d1          <= UNSIGNED(WDATA);
    -- B_20
    int_B_20_address0    <= SHIFT_RIGHT(UNSIGNED(B_20_address0), 2)(0 downto 0);
    int_B_20_ce0         <= B_20_ce0;
    B_20_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_20_q0, TO_INTEGER(int_B_20_shift0) * 8)(7 downto 0));
    int_B_20_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_20_ce1         <= '1' when ar_hs = '1' or (int_B_20_write = '1' and WVALID  = '1') else '0';
    int_B_20_we1         <= '1' when int_B_20_write = '1' and w_hs = '1' else '0';
    int_B_20_be1         <= UNSIGNED(WSTRB) when int_B_20_we1 = '1' else (others=>'0');
    int_B_20_d1          <= UNSIGNED(WDATA);
    -- B_21
    int_B_21_address0    <= SHIFT_RIGHT(UNSIGNED(B_21_address0), 2)(0 downto 0);
    int_B_21_ce0         <= B_21_ce0;
    B_21_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_21_q0, TO_INTEGER(int_B_21_shift0) * 8)(7 downto 0));
    int_B_21_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_21_ce1         <= '1' when ar_hs = '1' or (int_B_21_write = '1' and WVALID  = '1') else '0';
    int_B_21_we1         <= '1' when int_B_21_write = '1' and w_hs = '1' else '0';
    int_B_21_be1         <= UNSIGNED(WSTRB) when int_B_21_we1 = '1' else (others=>'0');
    int_B_21_d1          <= UNSIGNED(WDATA);
    -- B_22
    int_B_22_address0    <= SHIFT_RIGHT(UNSIGNED(B_22_address0), 2)(0 downto 0);
    int_B_22_ce0         <= B_22_ce0;
    B_22_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_22_q0, TO_INTEGER(int_B_22_shift0) * 8)(7 downto 0));
    int_B_22_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_22_ce1         <= '1' when ar_hs = '1' or (int_B_22_write = '1' and WVALID  = '1') else '0';
    int_B_22_we1         <= '1' when int_B_22_write = '1' and w_hs = '1' else '0';
    int_B_22_be1         <= UNSIGNED(WSTRB) when int_B_22_we1 = '1' else (others=>'0');
    int_B_22_d1          <= UNSIGNED(WDATA);
    -- B_23
    int_B_23_address0    <= SHIFT_RIGHT(UNSIGNED(B_23_address0), 2)(0 downto 0);
    int_B_23_ce0         <= B_23_ce0;
    B_23_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_23_q0, TO_INTEGER(int_B_23_shift0) * 8)(7 downto 0));
    int_B_23_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_23_ce1         <= '1' when ar_hs = '1' or (int_B_23_write = '1' and WVALID  = '1') else '0';
    int_B_23_we1         <= '1' when int_B_23_write = '1' and w_hs = '1' else '0';
    int_B_23_be1         <= UNSIGNED(WSTRB) when int_B_23_we1 = '1' else (others=>'0');
    int_B_23_d1          <= UNSIGNED(WDATA);
    -- B_24
    int_B_24_address0    <= SHIFT_RIGHT(UNSIGNED(B_24_address0), 2)(0 downto 0);
    int_B_24_ce0         <= B_24_ce0;
    B_24_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_24_q0, TO_INTEGER(int_B_24_shift0) * 8)(7 downto 0));
    int_B_24_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_24_ce1         <= '1' when ar_hs = '1' or (int_B_24_write = '1' and WVALID  = '1') else '0';
    int_B_24_we1         <= '1' when int_B_24_write = '1' and w_hs = '1' else '0';
    int_B_24_be1         <= UNSIGNED(WSTRB) when int_B_24_we1 = '1' else (others=>'0');
    int_B_24_d1          <= UNSIGNED(WDATA);
    -- B_25
    int_B_25_address0    <= SHIFT_RIGHT(UNSIGNED(B_25_address0), 2)(0 downto 0);
    int_B_25_ce0         <= B_25_ce0;
    B_25_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_25_q0, TO_INTEGER(int_B_25_shift0) * 8)(7 downto 0));
    int_B_25_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_25_ce1         <= '1' when ar_hs = '1' or (int_B_25_write = '1' and WVALID  = '1') else '0';
    int_B_25_we1         <= '1' when int_B_25_write = '1' and w_hs = '1' else '0';
    int_B_25_be1         <= UNSIGNED(WSTRB) when int_B_25_we1 = '1' else (others=>'0');
    int_B_25_d1          <= UNSIGNED(WDATA);
    -- B_26
    int_B_26_address0    <= SHIFT_RIGHT(UNSIGNED(B_26_address0), 2)(0 downto 0);
    int_B_26_ce0         <= B_26_ce0;
    B_26_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_26_q0, TO_INTEGER(int_B_26_shift0) * 8)(7 downto 0));
    int_B_26_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_26_ce1         <= '1' when ar_hs = '1' or (int_B_26_write = '1' and WVALID  = '1') else '0';
    int_B_26_we1         <= '1' when int_B_26_write = '1' and w_hs = '1' else '0';
    int_B_26_be1         <= UNSIGNED(WSTRB) when int_B_26_we1 = '1' else (others=>'0');
    int_B_26_d1          <= UNSIGNED(WDATA);
    -- B_27
    int_B_27_address0    <= SHIFT_RIGHT(UNSIGNED(B_27_address0), 2)(0 downto 0);
    int_B_27_ce0         <= B_27_ce0;
    B_27_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_27_q0, TO_INTEGER(int_B_27_shift0) * 8)(7 downto 0));
    int_B_27_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_27_ce1         <= '1' when ar_hs = '1' or (int_B_27_write = '1' and WVALID  = '1') else '0';
    int_B_27_we1         <= '1' when int_B_27_write = '1' and w_hs = '1' else '0';
    int_B_27_be1         <= UNSIGNED(WSTRB) when int_B_27_we1 = '1' else (others=>'0');
    int_B_27_d1          <= UNSIGNED(WDATA);
    -- B_28
    int_B_28_address0    <= SHIFT_RIGHT(UNSIGNED(B_28_address0), 2)(0 downto 0);
    int_B_28_ce0         <= B_28_ce0;
    B_28_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_28_q0, TO_INTEGER(int_B_28_shift0) * 8)(7 downto 0));
    int_B_28_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_28_ce1         <= '1' when ar_hs = '1' or (int_B_28_write = '1' and WVALID  = '1') else '0';
    int_B_28_we1         <= '1' when int_B_28_write = '1' and w_hs = '1' else '0';
    int_B_28_be1         <= UNSIGNED(WSTRB) when int_B_28_we1 = '1' else (others=>'0');
    int_B_28_d1          <= UNSIGNED(WDATA);
    -- B_29
    int_B_29_address0    <= SHIFT_RIGHT(UNSIGNED(B_29_address0), 2)(0 downto 0);
    int_B_29_ce0         <= B_29_ce0;
    B_29_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_29_q0, TO_INTEGER(int_B_29_shift0) * 8)(7 downto 0));
    int_B_29_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_29_ce1         <= '1' when ar_hs = '1' or (int_B_29_write = '1' and WVALID  = '1') else '0';
    int_B_29_we1         <= '1' when int_B_29_write = '1' and w_hs = '1' else '0';
    int_B_29_be1         <= UNSIGNED(WSTRB) when int_B_29_we1 = '1' else (others=>'0');
    int_B_29_d1          <= UNSIGNED(WDATA);
    -- B_30
    int_B_30_address0    <= SHIFT_RIGHT(UNSIGNED(B_30_address0), 2)(0 downto 0);
    int_B_30_ce0         <= B_30_ce0;
    B_30_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_30_q0, TO_INTEGER(int_B_30_shift0) * 8)(7 downto 0));
    int_B_30_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_30_ce1         <= '1' when ar_hs = '1' or (int_B_30_write = '1' and WVALID  = '1') else '0';
    int_B_30_we1         <= '1' when int_B_30_write = '1' and w_hs = '1' else '0';
    int_B_30_be1         <= UNSIGNED(WSTRB) when int_B_30_we1 = '1' else (others=>'0');
    int_B_30_d1          <= UNSIGNED(WDATA);
    -- B_31
    int_B_31_address0    <= SHIFT_RIGHT(UNSIGNED(B_31_address0), 2)(0 downto 0);
    int_B_31_ce0         <= B_31_ce0;
    B_31_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_31_q0, TO_INTEGER(int_B_31_shift0) * 8)(7 downto 0));
    int_B_31_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_31_ce1         <= '1' when ar_hs = '1' or (int_B_31_write = '1' and WVALID  = '1') else '0';
    int_B_31_we1         <= '1' when int_B_31_write = '1' and w_hs = '1' else '0';
    int_B_31_be1         <= UNSIGNED(WSTRB) when int_B_31_we1 = '1' else (others=>'0');
    int_B_31_d1          <= UNSIGNED(WDATA);
    -- B_32
    int_B_32_address0    <= SHIFT_RIGHT(UNSIGNED(B_32_address0), 2)(0 downto 0);
    int_B_32_ce0         <= B_32_ce0;
    B_32_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_32_q0, TO_INTEGER(int_B_32_shift0) * 8)(7 downto 0));
    int_B_32_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_32_ce1         <= '1' when ar_hs = '1' or (int_B_32_write = '1' and WVALID  = '1') else '0';
    int_B_32_we1         <= '1' when int_B_32_write = '1' and w_hs = '1' else '0';
    int_B_32_be1         <= UNSIGNED(WSTRB) when int_B_32_we1 = '1' else (others=>'0');
    int_B_32_d1          <= UNSIGNED(WDATA);
    -- B_33
    int_B_33_address0    <= SHIFT_RIGHT(UNSIGNED(B_33_address0), 2)(0 downto 0);
    int_B_33_ce0         <= B_33_ce0;
    B_33_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_33_q0, TO_INTEGER(int_B_33_shift0) * 8)(7 downto 0));
    int_B_33_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_33_ce1         <= '1' when ar_hs = '1' or (int_B_33_write = '1' and WVALID  = '1') else '0';
    int_B_33_we1         <= '1' when int_B_33_write = '1' and w_hs = '1' else '0';
    int_B_33_be1         <= UNSIGNED(WSTRB) when int_B_33_we1 = '1' else (others=>'0');
    int_B_33_d1          <= UNSIGNED(WDATA);
    -- B_34
    int_B_34_address0    <= SHIFT_RIGHT(UNSIGNED(B_34_address0), 2)(0 downto 0);
    int_B_34_ce0         <= B_34_ce0;
    B_34_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_34_q0, TO_INTEGER(int_B_34_shift0) * 8)(7 downto 0));
    int_B_34_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_34_ce1         <= '1' when ar_hs = '1' or (int_B_34_write = '1' and WVALID  = '1') else '0';
    int_B_34_we1         <= '1' when int_B_34_write = '1' and w_hs = '1' else '0';
    int_B_34_be1         <= UNSIGNED(WSTRB) when int_B_34_we1 = '1' else (others=>'0');
    int_B_34_d1          <= UNSIGNED(WDATA);
    -- B_35
    int_B_35_address0    <= SHIFT_RIGHT(UNSIGNED(B_35_address0), 2)(0 downto 0);
    int_B_35_ce0         <= B_35_ce0;
    B_35_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_35_q0, TO_INTEGER(int_B_35_shift0) * 8)(7 downto 0));
    int_B_35_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_35_ce1         <= '1' when ar_hs = '1' or (int_B_35_write = '1' and WVALID  = '1') else '0';
    int_B_35_we1         <= '1' when int_B_35_write = '1' and w_hs = '1' else '0';
    int_B_35_be1         <= UNSIGNED(WSTRB) when int_B_35_we1 = '1' else (others=>'0');
    int_B_35_d1          <= UNSIGNED(WDATA);
    -- B_36
    int_B_36_address0    <= SHIFT_RIGHT(UNSIGNED(B_36_address0), 2)(0 downto 0);
    int_B_36_ce0         <= B_36_ce0;
    B_36_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_36_q0, TO_INTEGER(int_B_36_shift0) * 8)(7 downto 0));
    int_B_36_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_36_ce1         <= '1' when ar_hs = '1' or (int_B_36_write = '1' and WVALID  = '1') else '0';
    int_B_36_we1         <= '1' when int_B_36_write = '1' and w_hs = '1' else '0';
    int_B_36_be1         <= UNSIGNED(WSTRB) when int_B_36_we1 = '1' else (others=>'0');
    int_B_36_d1          <= UNSIGNED(WDATA);
    -- B_37
    int_B_37_address0    <= SHIFT_RIGHT(UNSIGNED(B_37_address0), 2)(0 downto 0);
    int_B_37_ce0         <= B_37_ce0;
    B_37_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_37_q0, TO_INTEGER(int_B_37_shift0) * 8)(7 downto 0));
    int_B_37_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_37_ce1         <= '1' when ar_hs = '1' or (int_B_37_write = '1' and WVALID  = '1') else '0';
    int_B_37_we1         <= '1' when int_B_37_write = '1' and w_hs = '1' else '0';
    int_B_37_be1         <= UNSIGNED(WSTRB) when int_B_37_we1 = '1' else (others=>'0');
    int_B_37_d1          <= UNSIGNED(WDATA);
    -- B_38
    int_B_38_address0    <= SHIFT_RIGHT(UNSIGNED(B_38_address0), 2)(0 downto 0);
    int_B_38_ce0         <= B_38_ce0;
    B_38_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_38_q0, TO_INTEGER(int_B_38_shift0) * 8)(7 downto 0));
    int_B_38_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_38_ce1         <= '1' when ar_hs = '1' or (int_B_38_write = '1' and WVALID  = '1') else '0';
    int_B_38_we1         <= '1' when int_B_38_write = '1' and w_hs = '1' else '0';
    int_B_38_be1         <= UNSIGNED(WSTRB) when int_B_38_we1 = '1' else (others=>'0');
    int_B_38_d1          <= UNSIGNED(WDATA);
    -- B_39
    int_B_39_address0    <= SHIFT_RIGHT(UNSIGNED(B_39_address0), 2)(0 downto 0);
    int_B_39_ce0         <= B_39_ce0;
    B_39_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_39_q0, TO_INTEGER(int_B_39_shift0) * 8)(7 downto 0));
    int_B_39_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_39_ce1         <= '1' when ar_hs = '1' or (int_B_39_write = '1' and WVALID  = '1') else '0';
    int_B_39_we1         <= '1' when int_B_39_write = '1' and w_hs = '1' else '0';
    int_B_39_be1         <= UNSIGNED(WSTRB) when int_B_39_we1 = '1' else (others=>'0');
    int_B_39_d1          <= UNSIGNED(WDATA);
    -- B_40
    int_B_40_address0    <= SHIFT_RIGHT(UNSIGNED(B_40_address0), 2)(0 downto 0);
    int_B_40_ce0         <= B_40_ce0;
    B_40_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_40_q0, TO_INTEGER(int_B_40_shift0) * 8)(7 downto 0));
    int_B_40_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_40_ce1         <= '1' when ar_hs = '1' or (int_B_40_write = '1' and WVALID  = '1') else '0';
    int_B_40_we1         <= '1' when int_B_40_write = '1' and w_hs = '1' else '0';
    int_B_40_be1         <= UNSIGNED(WSTRB) when int_B_40_we1 = '1' else (others=>'0');
    int_B_40_d1          <= UNSIGNED(WDATA);
    -- B_41
    int_B_41_address0    <= SHIFT_RIGHT(UNSIGNED(B_41_address0), 2)(0 downto 0);
    int_B_41_ce0         <= B_41_ce0;
    B_41_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_41_q0, TO_INTEGER(int_B_41_shift0) * 8)(7 downto 0));
    int_B_41_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_41_ce1         <= '1' when ar_hs = '1' or (int_B_41_write = '1' and WVALID  = '1') else '0';
    int_B_41_we1         <= '1' when int_B_41_write = '1' and w_hs = '1' else '0';
    int_B_41_be1         <= UNSIGNED(WSTRB) when int_B_41_we1 = '1' else (others=>'0');
    int_B_41_d1          <= UNSIGNED(WDATA);
    -- B_42
    int_B_42_address0    <= SHIFT_RIGHT(UNSIGNED(B_42_address0), 2)(0 downto 0);
    int_B_42_ce0         <= B_42_ce0;
    B_42_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_42_q0, TO_INTEGER(int_B_42_shift0) * 8)(7 downto 0));
    int_B_42_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_42_ce1         <= '1' when ar_hs = '1' or (int_B_42_write = '1' and WVALID  = '1') else '0';
    int_B_42_we1         <= '1' when int_B_42_write = '1' and w_hs = '1' else '0';
    int_B_42_be1         <= UNSIGNED(WSTRB) when int_B_42_we1 = '1' else (others=>'0');
    int_B_42_d1          <= UNSIGNED(WDATA);
    -- B_43
    int_B_43_address0    <= SHIFT_RIGHT(UNSIGNED(B_43_address0), 2)(0 downto 0);
    int_B_43_ce0         <= B_43_ce0;
    B_43_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_43_q0, TO_INTEGER(int_B_43_shift0) * 8)(7 downto 0));
    int_B_43_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_43_ce1         <= '1' when ar_hs = '1' or (int_B_43_write = '1' and WVALID  = '1') else '0';
    int_B_43_we1         <= '1' when int_B_43_write = '1' and w_hs = '1' else '0';
    int_B_43_be1         <= UNSIGNED(WSTRB) when int_B_43_we1 = '1' else (others=>'0');
    int_B_43_d1          <= UNSIGNED(WDATA);
    -- B_44
    int_B_44_address0    <= SHIFT_RIGHT(UNSIGNED(B_44_address0), 2)(0 downto 0);
    int_B_44_ce0         <= B_44_ce0;
    B_44_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_44_q0, TO_INTEGER(int_B_44_shift0) * 8)(7 downto 0));
    int_B_44_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_44_ce1         <= '1' when ar_hs = '1' or (int_B_44_write = '1' and WVALID  = '1') else '0';
    int_B_44_we1         <= '1' when int_B_44_write = '1' and w_hs = '1' else '0';
    int_B_44_be1         <= UNSIGNED(WSTRB) when int_B_44_we1 = '1' else (others=>'0');
    int_B_44_d1          <= UNSIGNED(WDATA);
    -- B_45
    int_B_45_address0    <= SHIFT_RIGHT(UNSIGNED(B_45_address0), 2)(0 downto 0);
    int_B_45_ce0         <= B_45_ce0;
    B_45_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_45_q0, TO_INTEGER(int_B_45_shift0) * 8)(7 downto 0));
    int_B_45_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_45_ce1         <= '1' when ar_hs = '1' or (int_B_45_write = '1' and WVALID  = '1') else '0';
    int_B_45_we1         <= '1' when int_B_45_write = '1' and w_hs = '1' else '0';
    int_B_45_be1         <= UNSIGNED(WSTRB) when int_B_45_we1 = '1' else (others=>'0');
    int_B_45_d1          <= UNSIGNED(WDATA);
    -- B_46
    int_B_46_address0    <= SHIFT_RIGHT(UNSIGNED(B_46_address0), 2)(0 downto 0);
    int_B_46_ce0         <= B_46_ce0;
    B_46_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_46_q0, TO_INTEGER(int_B_46_shift0) * 8)(7 downto 0));
    int_B_46_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_46_ce1         <= '1' when ar_hs = '1' or (int_B_46_write = '1' and WVALID  = '1') else '0';
    int_B_46_we1         <= '1' when int_B_46_write = '1' and w_hs = '1' else '0';
    int_B_46_be1         <= UNSIGNED(WSTRB) when int_B_46_we1 = '1' else (others=>'0');
    int_B_46_d1          <= UNSIGNED(WDATA);
    -- B_47
    int_B_47_address0    <= SHIFT_RIGHT(UNSIGNED(B_47_address0), 2)(0 downto 0);
    int_B_47_ce0         <= B_47_ce0;
    B_47_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_47_q0, TO_INTEGER(int_B_47_shift0) * 8)(7 downto 0));
    int_B_47_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_47_ce1         <= '1' when ar_hs = '1' or (int_B_47_write = '1' and WVALID  = '1') else '0';
    int_B_47_we1         <= '1' when int_B_47_write = '1' and w_hs = '1' else '0';
    int_B_47_be1         <= UNSIGNED(WSTRB) when int_B_47_we1 = '1' else (others=>'0');
    int_B_47_d1          <= UNSIGNED(WDATA);
    -- B_48
    int_B_48_address0    <= SHIFT_RIGHT(UNSIGNED(B_48_address0), 2)(0 downto 0);
    int_B_48_ce0         <= B_48_ce0;
    B_48_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_48_q0, TO_INTEGER(int_B_48_shift0) * 8)(7 downto 0));
    int_B_48_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_48_ce1         <= '1' when ar_hs = '1' or (int_B_48_write = '1' and WVALID  = '1') else '0';
    int_B_48_we1         <= '1' when int_B_48_write = '1' and w_hs = '1' else '0';
    int_B_48_be1         <= UNSIGNED(WSTRB) when int_B_48_we1 = '1' else (others=>'0');
    int_B_48_d1          <= UNSIGNED(WDATA);
    -- B_49
    int_B_49_address0    <= SHIFT_RIGHT(UNSIGNED(B_49_address0), 2)(0 downto 0);
    int_B_49_ce0         <= B_49_ce0;
    B_49_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_49_q0, TO_INTEGER(int_B_49_shift0) * 8)(7 downto 0));
    int_B_49_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_49_ce1         <= '1' when ar_hs = '1' or (int_B_49_write = '1' and WVALID  = '1') else '0';
    int_B_49_we1         <= '1' when int_B_49_write = '1' and w_hs = '1' else '0';
    int_B_49_be1         <= UNSIGNED(WSTRB) when int_B_49_we1 = '1' else (others=>'0');
    int_B_49_d1          <= UNSIGNED(WDATA);
    -- B_50
    int_B_50_address0    <= SHIFT_RIGHT(UNSIGNED(B_50_address0), 2)(0 downto 0);
    int_B_50_ce0         <= B_50_ce0;
    B_50_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_50_q0, TO_INTEGER(int_B_50_shift0) * 8)(7 downto 0));
    int_B_50_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_50_ce1         <= '1' when ar_hs = '1' or (int_B_50_write = '1' and WVALID  = '1') else '0';
    int_B_50_we1         <= '1' when int_B_50_write = '1' and w_hs = '1' else '0';
    int_B_50_be1         <= UNSIGNED(WSTRB) when int_B_50_we1 = '1' else (others=>'0');
    int_B_50_d1          <= UNSIGNED(WDATA);
    -- B_51
    int_B_51_address0    <= SHIFT_RIGHT(UNSIGNED(B_51_address0), 2)(0 downto 0);
    int_B_51_ce0         <= B_51_ce0;
    B_51_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_51_q0, TO_INTEGER(int_B_51_shift0) * 8)(7 downto 0));
    int_B_51_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_51_ce1         <= '1' when ar_hs = '1' or (int_B_51_write = '1' and WVALID  = '1') else '0';
    int_B_51_we1         <= '1' when int_B_51_write = '1' and w_hs = '1' else '0';
    int_B_51_be1         <= UNSIGNED(WSTRB) when int_B_51_we1 = '1' else (others=>'0');
    int_B_51_d1          <= UNSIGNED(WDATA);
    -- B_52
    int_B_52_address0    <= SHIFT_RIGHT(UNSIGNED(B_52_address0), 2)(0 downto 0);
    int_B_52_ce0         <= B_52_ce0;
    B_52_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_52_q0, TO_INTEGER(int_B_52_shift0) * 8)(7 downto 0));
    int_B_52_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_52_ce1         <= '1' when ar_hs = '1' or (int_B_52_write = '1' and WVALID  = '1') else '0';
    int_B_52_we1         <= '1' when int_B_52_write = '1' and w_hs = '1' else '0';
    int_B_52_be1         <= UNSIGNED(WSTRB) when int_B_52_we1 = '1' else (others=>'0');
    int_B_52_d1          <= UNSIGNED(WDATA);
    -- B_53
    int_B_53_address0    <= SHIFT_RIGHT(UNSIGNED(B_53_address0), 2)(0 downto 0);
    int_B_53_ce0         <= B_53_ce0;
    B_53_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_53_q0, TO_INTEGER(int_B_53_shift0) * 8)(7 downto 0));
    int_B_53_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_53_ce1         <= '1' when ar_hs = '1' or (int_B_53_write = '1' and WVALID  = '1') else '0';
    int_B_53_we1         <= '1' when int_B_53_write = '1' and w_hs = '1' else '0';
    int_B_53_be1         <= UNSIGNED(WSTRB) when int_B_53_we1 = '1' else (others=>'0');
    int_B_53_d1          <= UNSIGNED(WDATA);
    -- B_54
    int_B_54_address0    <= SHIFT_RIGHT(UNSIGNED(B_54_address0), 2)(0 downto 0);
    int_B_54_ce0         <= B_54_ce0;
    B_54_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_54_q0, TO_INTEGER(int_B_54_shift0) * 8)(7 downto 0));
    int_B_54_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_54_ce1         <= '1' when ar_hs = '1' or (int_B_54_write = '1' and WVALID  = '1') else '0';
    int_B_54_we1         <= '1' when int_B_54_write = '1' and w_hs = '1' else '0';
    int_B_54_be1         <= UNSIGNED(WSTRB) when int_B_54_we1 = '1' else (others=>'0');
    int_B_54_d1          <= UNSIGNED(WDATA);
    -- B_55
    int_B_55_address0    <= SHIFT_RIGHT(UNSIGNED(B_55_address0), 2)(0 downto 0);
    int_B_55_ce0         <= B_55_ce0;
    B_55_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_55_q0, TO_INTEGER(int_B_55_shift0) * 8)(7 downto 0));
    int_B_55_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_55_ce1         <= '1' when ar_hs = '1' or (int_B_55_write = '1' and WVALID  = '1') else '0';
    int_B_55_we1         <= '1' when int_B_55_write = '1' and w_hs = '1' else '0';
    int_B_55_be1         <= UNSIGNED(WSTRB) when int_B_55_we1 = '1' else (others=>'0');
    int_B_55_d1          <= UNSIGNED(WDATA);
    -- B_56
    int_B_56_address0    <= SHIFT_RIGHT(UNSIGNED(B_56_address0), 2)(0 downto 0);
    int_B_56_ce0         <= B_56_ce0;
    B_56_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_56_q0, TO_INTEGER(int_B_56_shift0) * 8)(7 downto 0));
    int_B_56_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_56_ce1         <= '1' when ar_hs = '1' or (int_B_56_write = '1' and WVALID  = '1') else '0';
    int_B_56_we1         <= '1' when int_B_56_write = '1' and w_hs = '1' else '0';
    int_B_56_be1         <= UNSIGNED(WSTRB) when int_B_56_we1 = '1' else (others=>'0');
    int_B_56_d1          <= UNSIGNED(WDATA);
    -- B_57
    int_B_57_address0    <= SHIFT_RIGHT(UNSIGNED(B_57_address0), 2)(0 downto 0);
    int_B_57_ce0         <= B_57_ce0;
    B_57_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_57_q0, TO_INTEGER(int_B_57_shift0) * 8)(7 downto 0));
    int_B_57_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_57_ce1         <= '1' when ar_hs = '1' or (int_B_57_write = '1' and WVALID  = '1') else '0';
    int_B_57_we1         <= '1' when int_B_57_write = '1' and w_hs = '1' else '0';
    int_B_57_be1         <= UNSIGNED(WSTRB) when int_B_57_we1 = '1' else (others=>'0');
    int_B_57_d1          <= UNSIGNED(WDATA);
    -- B_58
    int_B_58_address0    <= SHIFT_RIGHT(UNSIGNED(B_58_address0), 2)(0 downto 0);
    int_B_58_ce0         <= B_58_ce0;
    B_58_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_58_q0, TO_INTEGER(int_B_58_shift0) * 8)(7 downto 0));
    int_B_58_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_58_ce1         <= '1' when ar_hs = '1' or (int_B_58_write = '1' and WVALID  = '1') else '0';
    int_B_58_we1         <= '1' when int_B_58_write = '1' and w_hs = '1' else '0';
    int_B_58_be1         <= UNSIGNED(WSTRB) when int_B_58_we1 = '1' else (others=>'0');
    int_B_58_d1          <= UNSIGNED(WDATA);
    -- B_59
    int_B_59_address0    <= SHIFT_RIGHT(UNSIGNED(B_59_address0), 2)(0 downto 0);
    int_B_59_ce0         <= B_59_ce0;
    B_59_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_59_q0, TO_INTEGER(int_B_59_shift0) * 8)(7 downto 0));
    int_B_59_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_59_ce1         <= '1' when ar_hs = '1' or (int_B_59_write = '1' and WVALID  = '1') else '0';
    int_B_59_we1         <= '1' when int_B_59_write = '1' and w_hs = '1' else '0';
    int_B_59_be1         <= UNSIGNED(WSTRB) when int_B_59_we1 = '1' else (others=>'0');
    int_B_59_d1          <= UNSIGNED(WDATA);
    -- B_60
    int_B_60_address0    <= SHIFT_RIGHT(UNSIGNED(B_60_address0), 2)(0 downto 0);
    int_B_60_ce0         <= B_60_ce0;
    B_60_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_60_q0, TO_INTEGER(int_B_60_shift0) * 8)(7 downto 0));
    int_B_60_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_60_ce1         <= '1' when ar_hs = '1' or (int_B_60_write = '1' and WVALID  = '1') else '0';
    int_B_60_we1         <= '1' when int_B_60_write = '1' and w_hs = '1' else '0';
    int_B_60_be1         <= UNSIGNED(WSTRB) when int_B_60_we1 = '1' else (others=>'0');
    int_B_60_d1          <= UNSIGNED(WDATA);
    -- B_61
    int_B_61_address0    <= SHIFT_RIGHT(UNSIGNED(B_61_address0), 2)(0 downto 0);
    int_B_61_ce0         <= B_61_ce0;
    B_61_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_61_q0, TO_INTEGER(int_B_61_shift0) * 8)(7 downto 0));
    int_B_61_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_61_ce1         <= '1' when ar_hs = '1' or (int_B_61_write = '1' and WVALID  = '1') else '0';
    int_B_61_we1         <= '1' when int_B_61_write = '1' and w_hs = '1' else '0';
    int_B_61_be1         <= UNSIGNED(WSTRB) when int_B_61_we1 = '1' else (others=>'0');
    int_B_61_d1          <= UNSIGNED(WDATA);
    -- B_62
    int_B_62_address0    <= SHIFT_RIGHT(UNSIGNED(B_62_address0), 2)(0 downto 0);
    int_B_62_ce0         <= B_62_ce0;
    B_62_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_62_q0, TO_INTEGER(int_B_62_shift0) * 8)(7 downto 0));
    int_B_62_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_62_ce1         <= '1' when ar_hs = '1' or (int_B_62_write = '1' and WVALID  = '1') else '0';
    int_B_62_we1         <= '1' when int_B_62_write = '1' and w_hs = '1' else '0';
    int_B_62_be1         <= UNSIGNED(WSTRB) when int_B_62_we1 = '1' else (others=>'0');
    int_B_62_d1          <= UNSIGNED(WDATA);
    -- B_63
    int_B_63_address0    <= SHIFT_RIGHT(UNSIGNED(B_63_address0), 2)(0 downto 0);
    int_B_63_ce0         <= B_63_ce0;
    B_63_q0              <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_B_63_q0, TO_INTEGER(int_B_63_shift0) * 8)(7 downto 0));
    int_B_63_address1    <= raddr(2 downto 2) when ar_hs = '1' else waddr(2 downto 2);
    int_B_63_ce1         <= '1' when ar_hs = '1' or (int_B_63_write = '1' and WVALID  = '1') else '0';
    int_B_63_we1         <= '1' when int_B_63_write = '1' and w_hs = '1' else '0';
    int_B_63_be1         <= UNSIGNED(WSTRB) when int_B_63_we1 = '1' else (others=>'0');
    int_B_63_d1          <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_0_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_0_BASE and raddr <= ADDR_A_0_HIGH) then
                    int_A_0_read <= '1';
                else
                    int_A_0_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_0_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_0_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_0_HIGH) then
                    int_A_0_write <= '1';
                elsif (w_hs = '1') then
                    int_A_0_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_0_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_0_ce0 = '1') then
                    int_A_0_shift0 <= UNSIGNED(A_0_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_1_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_1_BASE and raddr <= ADDR_A_1_HIGH) then
                    int_A_1_read <= '1';
                else
                    int_A_1_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_1_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_1_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_1_HIGH) then
                    int_A_1_write <= '1';
                elsif (w_hs = '1') then
                    int_A_1_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_1_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_1_ce0 = '1') then
                    int_A_1_shift0 <= UNSIGNED(A_1_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_2_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_2_BASE and raddr <= ADDR_A_2_HIGH) then
                    int_A_2_read <= '1';
                else
                    int_A_2_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_2_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_2_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_2_HIGH) then
                    int_A_2_write <= '1';
                elsif (w_hs = '1') then
                    int_A_2_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_2_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_2_ce0 = '1') then
                    int_A_2_shift0 <= UNSIGNED(A_2_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_3_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_3_BASE and raddr <= ADDR_A_3_HIGH) then
                    int_A_3_read <= '1';
                else
                    int_A_3_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_3_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_3_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_3_HIGH) then
                    int_A_3_write <= '1';
                elsif (w_hs = '1') then
                    int_A_3_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_3_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_3_ce0 = '1') then
                    int_A_3_shift0 <= UNSIGNED(A_3_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_4_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_4_BASE and raddr <= ADDR_A_4_HIGH) then
                    int_A_4_read <= '1';
                else
                    int_A_4_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_4_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_4_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_4_HIGH) then
                    int_A_4_write <= '1';
                elsif (w_hs = '1') then
                    int_A_4_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_4_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_4_ce0 = '1') then
                    int_A_4_shift0 <= UNSIGNED(A_4_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_5_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_5_BASE and raddr <= ADDR_A_5_HIGH) then
                    int_A_5_read <= '1';
                else
                    int_A_5_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_5_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_5_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_5_HIGH) then
                    int_A_5_write <= '1';
                elsif (w_hs = '1') then
                    int_A_5_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_5_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_5_ce0 = '1') then
                    int_A_5_shift0 <= UNSIGNED(A_5_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_6_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_6_BASE and raddr <= ADDR_A_6_HIGH) then
                    int_A_6_read <= '1';
                else
                    int_A_6_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_6_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_6_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_6_HIGH) then
                    int_A_6_write <= '1';
                elsif (w_hs = '1') then
                    int_A_6_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_6_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_6_ce0 = '1') then
                    int_A_6_shift0 <= UNSIGNED(A_6_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_7_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_7_BASE and raddr <= ADDR_A_7_HIGH) then
                    int_A_7_read <= '1';
                else
                    int_A_7_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_7_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_7_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_7_HIGH) then
                    int_A_7_write <= '1';
                elsif (w_hs = '1') then
                    int_A_7_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_7_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_7_ce0 = '1') then
                    int_A_7_shift0 <= UNSIGNED(A_7_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_8_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_8_BASE and raddr <= ADDR_A_8_HIGH) then
                    int_A_8_read <= '1';
                else
                    int_A_8_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_8_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_8_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_8_HIGH) then
                    int_A_8_write <= '1';
                elsif (w_hs = '1') then
                    int_A_8_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_8_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_8_ce0 = '1') then
                    int_A_8_shift0 <= UNSIGNED(A_8_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_9_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_9_BASE and raddr <= ADDR_A_9_HIGH) then
                    int_A_9_read <= '1';
                else
                    int_A_9_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_9_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_9_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_9_HIGH) then
                    int_A_9_write <= '1';
                elsif (w_hs = '1') then
                    int_A_9_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_9_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_9_ce0 = '1') then
                    int_A_9_shift0 <= UNSIGNED(A_9_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_10_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_10_BASE and raddr <= ADDR_A_10_HIGH) then
                    int_A_10_read <= '1';
                else
                    int_A_10_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_10_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_10_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_10_HIGH) then
                    int_A_10_write <= '1';
                elsif (w_hs = '1') then
                    int_A_10_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_10_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_10_ce0 = '1') then
                    int_A_10_shift0 <= UNSIGNED(A_10_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_11_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_11_BASE and raddr <= ADDR_A_11_HIGH) then
                    int_A_11_read <= '1';
                else
                    int_A_11_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_11_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_11_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_11_HIGH) then
                    int_A_11_write <= '1';
                elsif (w_hs = '1') then
                    int_A_11_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_11_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_11_ce0 = '1') then
                    int_A_11_shift0 <= UNSIGNED(A_11_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_12_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_12_BASE and raddr <= ADDR_A_12_HIGH) then
                    int_A_12_read <= '1';
                else
                    int_A_12_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_12_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_12_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_12_HIGH) then
                    int_A_12_write <= '1';
                elsif (w_hs = '1') then
                    int_A_12_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_12_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_12_ce0 = '1') then
                    int_A_12_shift0 <= UNSIGNED(A_12_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_13_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_13_BASE and raddr <= ADDR_A_13_HIGH) then
                    int_A_13_read <= '1';
                else
                    int_A_13_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_13_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_13_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_13_HIGH) then
                    int_A_13_write <= '1';
                elsif (w_hs = '1') then
                    int_A_13_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_13_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_13_ce0 = '1') then
                    int_A_13_shift0 <= UNSIGNED(A_13_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_14_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_14_BASE and raddr <= ADDR_A_14_HIGH) then
                    int_A_14_read <= '1';
                else
                    int_A_14_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_14_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_14_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_14_HIGH) then
                    int_A_14_write <= '1';
                elsif (w_hs = '1') then
                    int_A_14_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_14_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_14_ce0 = '1') then
                    int_A_14_shift0 <= UNSIGNED(A_14_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_15_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_15_BASE and raddr <= ADDR_A_15_HIGH) then
                    int_A_15_read <= '1';
                else
                    int_A_15_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_15_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_15_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_15_HIGH) then
                    int_A_15_write <= '1';
                elsif (w_hs = '1') then
                    int_A_15_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_15_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_15_ce0 = '1') then
                    int_A_15_shift0 <= UNSIGNED(A_15_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_16_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_16_BASE and raddr <= ADDR_A_16_HIGH) then
                    int_A_16_read <= '1';
                else
                    int_A_16_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_16_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_16_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_16_HIGH) then
                    int_A_16_write <= '1';
                elsif (w_hs = '1') then
                    int_A_16_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_16_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_16_ce0 = '1') then
                    int_A_16_shift0 <= UNSIGNED(A_16_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_17_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_17_BASE and raddr <= ADDR_A_17_HIGH) then
                    int_A_17_read <= '1';
                else
                    int_A_17_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_17_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_17_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_17_HIGH) then
                    int_A_17_write <= '1';
                elsif (w_hs = '1') then
                    int_A_17_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_17_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_17_ce0 = '1') then
                    int_A_17_shift0 <= UNSIGNED(A_17_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_18_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_18_BASE and raddr <= ADDR_A_18_HIGH) then
                    int_A_18_read <= '1';
                else
                    int_A_18_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_18_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_18_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_18_HIGH) then
                    int_A_18_write <= '1';
                elsif (w_hs = '1') then
                    int_A_18_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_18_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_18_ce0 = '1') then
                    int_A_18_shift0 <= UNSIGNED(A_18_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_19_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_19_BASE and raddr <= ADDR_A_19_HIGH) then
                    int_A_19_read <= '1';
                else
                    int_A_19_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_19_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_19_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_19_HIGH) then
                    int_A_19_write <= '1';
                elsif (w_hs = '1') then
                    int_A_19_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_19_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_19_ce0 = '1') then
                    int_A_19_shift0 <= UNSIGNED(A_19_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_20_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_20_BASE and raddr <= ADDR_A_20_HIGH) then
                    int_A_20_read <= '1';
                else
                    int_A_20_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_20_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_20_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_20_HIGH) then
                    int_A_20_write <= '1';
                elsif (w_hs = '1') then
                    int_A_20_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_20_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_20_ce0 = '1') then
                    int_A_20_shift0 <= UNSIGNED(A_20_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_21_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_21_BASE and raddr <= ADDR_A_21_HIGH) then
                    int_A_21_read <= '1';
                else
                    int_A_21_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_21_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_21_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_21_HIGH) then
                    int_A_21_write <= '1';
                elsif (w_hs = '1') then
                    int_A_21_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_21_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_21_ce0 = '1') then
                    int_A_21_shift0 <= UNSIGNED(A_21_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_22_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_22_BASE and raddr <= ADDR_A_22_HIGH) then
                    int_A_22_read <= '1';
                else
                    int_A_22_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_22_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_22_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_22_HIGH) then
                    int_A_22_write <= '1';
                elsif (w_hs = '1') then
                    int_A_22_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_22_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_22_ce0 = '1') then
                    int_A_22_shift0 <= UNSIGNED(A_22_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_23_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_23_BASE and raddr <= ADDR_A_23_HIGH) then
                    int_A_23_read <= '1';
                else
                    int_A_23_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_23_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_23_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_23_HIGH) then
                    int_A_23_write <= '1';
                elsif (w_hs = '1') then
                    int_A_23_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_23_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_23_ce0 = '1') then
                    int_A_23_shift0 <= UNSIGNED(A_23_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_24_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_24_BASE and raddr <= ADDR_A_24_HIGH) then
                    int_A_24_read <= '1';
                else
                    int_A_24_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_24_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_24_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_24_HIGH) then
                    int_A_24_write <= '1';
                elsif (w_hs = '1') then
                    int_A_24_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_24_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_24_ce0 = '1') then
                    int_A_24_shift0 <= UNSIGNED(A_24_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_25_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_25_BASE and raddr <= ADDR_A_25_HIGH) then
                    int_A_25_read <= '1';
                else
                    int_A_25_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_25_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_25_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_25_HIGH) then
                    int_A_25_write <= '1';
                elsif (w_hs = '1') then
                    int_A_25_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_25_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_25_ce0 = '1') then
                    int_A_25_shift0 <= UNSIGNED(A_25_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_26_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_26_BASE and raddr <= ADDR_A_26_HIGH) then
                    int_A_26_read <= '1';
                else
                    int_A_26_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_26_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_26_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_26_HIGH) then
                    int_A_26_write <= '1';
                elsif (w_hs = '1') then
                    int_A_26_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_26_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_26_ce0 = '1') then
                    int_A_26_shift0 <= UNSIGNED(A_26_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_27_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_27_BASE and raddr <= ADDR_A_27_HIGH) then
                    int_A_27_read <= '1';
                else
                    int_A_27_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_27_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_27_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_27_HIGH) then
                    int_A_27_write <= '1';
                elsif (w_hs = '1') then
                    int_A_27_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_27_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_27_ce0 = '1') then
                    int_A_27_shift0 <= UNSIGNED(A_27_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_28_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_28_BASE and raddr <= ADDR_A_28_HIGH) then
                    int_A_28_read <= '1';
                else
                    int_A_28_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_28_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_28_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_28_HIGH) then
                    int_A_28_write <= '1';
                elsif (w_hs = '1') then
                    int_A_28_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_28_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_28_ce0 = '1') then
                    int_A_28_shift0 <= UNSIGNED(A_28_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_29_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_29_BASE and raddr <= ADDR_A_29_HIGH) then
                    int_A_29_read <= '1';
                else
                    int_A_29_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_29_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_29_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_29_HIGH) then
                    int_A_29_write <= '1';
                elsif (w_hs = '1') then
                    int_A_29_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_29_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_29_ce0 = '1') then
                    int_A_29_shift0 <= UNSIGNED(A_29_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_30_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_30_BASE and raddr <= ADDR_A_30_HIGH) then
                    int_A_30_read <= '1';
                else
                    int_A_30_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_30_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_30_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_30_HIGH) then
                    int_A_30_write <= '1';
                elsif (w_hs = '1') then
                    int_A_30_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_30_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_30_ce0 = '1') then
                    int_A_30_shift0 <= UNSIGNED(A_30_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_31_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_31_BASE and raddr <= ADDR_A_31_HIGH) then
                    int_A_31_read <= '1';
                else
                    int_A_31_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_31_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_31_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_31_HIGH) then
                    int_A_31_write <= '1';
                elsif (w_hs = '1') then
                    int_A_31_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_31_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_31_ce0 = '1') then
                    int_A_31_shift0 <= UNSIGNED(A_31_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_32_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_32_BASE and raddr <= ADDR_A_32_HIGH) then
                    int_A_32_read <= '1';
                else
                    int_A_32_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_32_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_32_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_32_HIGH) then
                    int_A_32_write <= '1';
                elsif (w_hs = '1') then
                    int_A_32_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_32_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_32_ce0 = '1') then
                    int_A_32_shift0 <= UNSIGNED(A_32_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_33_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_33_BASE and raddr <= ADDR_A_33_HIGH) then
                    int_A_33_read <= '1';
                else
                    int_A_33_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_33_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_33_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_33_HIGH) then
                    int_A_33_write <= '1';
                elsif (w_hs = '1') then
                    int_A_33_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_33_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_33_ce0 = '1') then
                    int_A_33_shift0 <= UNSIGNED(A_33_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_34_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_34_BASE and raddr <= ADDR_A_34_HIGH) then
                    int_A_34_read <= '1';
                else
                    int_A_34_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_34_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_34_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_34_HIGH) then
                    int_A_34_write <= '1';
                elsif (w_hs = '1') then
                    int_A_34_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_34_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_34_ce0 = '1') then
                    int_A_34_shift0 <= UNSIGNED(A_34_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_35_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_35_BASE and raddr <= ADDR_A_35_HIGH) then
                    int_A_35_read <= '1';
                else
                    int_A_35_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_35_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_35_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_35_HIGH) then
                    int_A_35_write <= '1';
                elsif (w_hs = '1') then
                    int_A_35_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_35_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_35_ce0 = '1') then
                    int_A_35_shift0 <= UNSIGNED(A_35_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_36_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_36_BASE and raddr <= ADDR_A_36_HIGH) then
                    int_A_36_read <= '1';
                else
                    int_A_36_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_36_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_36_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_36_HIGH) then
                    int_A_36_write <= '1';
                elsif (w_hs = '1') then
                    int_A_36_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_36_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_36_ce0 = '1') then
                    int_A_36_shift0 <= UNSIGNED(A_36_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_37_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_37_BASE and raddr <= ADDR_A_37_HIGH) then
                    int_A_37_read <= '1';
                else
                    int_A_37_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_37_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_37_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_37_HIGH) then
                    int_A_37_write <= '1';
                elsif (w_hs = '1') then
                    int_A_37_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_37_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_37_ce0 = '1') then
                    int_A_37_shift0 <= UNSIGNED(A_37_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_38_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_38_BASE and raddr <= ADDR_A_38_HIGH) then
                    int_A_38_read <= '1';
                else
                    int_A_38_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_38_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_38_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_38_HIGH) then
                    int_A_38_write <= '1';
                elsif (w_hs = '1') then
                    int_A_38_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_38_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_38_ce0 = '1') then
                    int_A_38_shift0 <= UNSIGNED(A_38_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_39_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_39_BASE and raddr <= ADDR_A_39_HIGH) then
                    int_A_39_read <= '1';
                else
                    int_A_39_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_39_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_39_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_39_HIGH) then
                    int_A_39_write <= '1';
                elsif (w_hs = '1') then
                    int_A_39_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_39_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_39_ce0 = '1') then
                    int_A_39_shift0 <= UNSIGNED(A_39_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_40_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_40_BASE and raddr <= ADDR_A_40_HIGH) then
                    int_A_40_read <= '1';
                else
                    int_A_40_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_40_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_40_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_40_HIGH) then
                    int_A_40_write <= '1';
                elsif (w_hs = '1') then
                    int_A_40_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_40_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_40_ce0 = '1') then
                    int_A_40_shift0 <= UNSIGNED(A_40_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_41_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_41_BASE and raddr <= ADDR_A_41_HIGH) then
                    int_A_41_read <= '1';
                else
                    int_A_41_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_41_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_41_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_41_HIGH) then
                    int_A_41_write <= '1';
                elsif (w_hs = '1') then
                    int_A_41_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_41_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_41_ce0 = '1') then
                    int_A_41_shift0 <= UNSIGNED(A_41_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_42_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_42_BASE and raddr <= ADDR_A_42_HIGH) then
                    int_A_42_read <= '1';
                else
                    int_A_42_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_42_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_42_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_42_HIGH) then
                    int_A_42_write <= '1';
                elsif (w_hs = '1') then
                    int_A_42_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_42_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_42_ce0 = '1') then
                    int_A_42_shift0 <= UNSIGNED(A_42_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_43_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_43_BASE and raddr <= ADDR_A_43_HIGH) then
                    int_A_43_read <= '1';
                else
                    int_A_43_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_43_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_43_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_43_HIGH) then
                    int_A_43_write <= '1';
                elsif (w_hs = '1') then
                    int_A_43_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_43_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_43_ce0 = '1') then
                    int_A_43_shift0 <= UNSIGNED(A_43_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_44_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_44_BASE and raddr <= ADDR_A_44_HIGH) then
                    int_A_44_read <= '1';
                else
                    int_A_44_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_44_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_44_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_44_HIGH) then
                    int_A_44_write <= '1';
                elsif (w_hs = '1') then
                    int_A_44_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_44_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_44_ce0 = '1') then
                    int_A_44_shift0 <= UNSIGNED(A_44_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_45_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_45_BASE and raddr <= ADDR_A_45_HIGH) then
                    int_A_45_read <= '1';
                else
                    int_A_45_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_45_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_45_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_45_HIGH) then
                    int_A_45_write <= '1';
                elsif (w_hs = '1') then
                    int_A_45_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_45_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_45_ce0 = '1') then
                    int_A_45_shift0 <= UNSIGNED(A_45_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_46_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_46_BASE and raddr <= ADDR_A_46_HIGH) then
                    int_A_46_read <= '1';
                else
                    int_A_46_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_46_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_46_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_46_HIGH) then
                    int_A_46_write <= '1';
                elsif (w_hs = '1') then
                    int_A_46_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_46_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_46_ce0 = '1') then
                    int_A_46_shift0 <= UNSIGNED(A_46_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_47_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_47_BASE and raddr <= ADDR_A_47_HIGH) then
                    int_A_47_read <= '1';
                else
                    int_A_47_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_47_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_47_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_47_HIGH) then
                    int_A_47_write <= '1';
                elsif (w_hs = '1') then
                    int_A_47_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_47_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_47_ce0 = '1') then
                    int_A_47_shift0 <= UNSIGNED(A_47_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_48_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_48_BASE and raddr <= ADDR_A_48_HIGH) then
                    int_A_48_read <= '1';
                else
                    int_A_48_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_48_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_48_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_48_HIGH) then
                    int_A_48_write <= '1';
                elsif (w_hs = '1') then
                    int_A_48_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_48_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_48_ce0 = '1') then
                    int_A_48_shift0 <= UNSIGNED(A_48_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_49_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_49_BASE and raddr <= ADDR_A_49_HIGH) then
                    int_A_49_read <= '1';
                else
                    int_A_49_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_49_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_49_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_49_HIGH) then
                    int_A_49_write <= '1';
                elsif (w_hs = '1') then
                    int_A_49_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_49_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_49_ce0 = '1') then
                    int_A_49_shift0 <= UNSIGNED(A_49_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_50_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_50_BASE and raddr <= ADDR_A_50_HIGH) then
                    int_A_50_read <= '1';
                else
                    int_A_50_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_50_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_50_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_50_HIGH) then
                    int_A_50_write <= '1';
                elsif (w_hs = '1') then
                    int_A_50_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_50_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_50_ce0 = '1') then
                    int_A_50_shift0 <= UNSIGNED(A_50_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_51_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_51_BASE and raddr <= ADDR_A_51_HIGH) then
                    int_A_51_read <= '1';
                else
                    int_A_51_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_51_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_51_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_51_HIGH) then
                    int_A_51_write <= '1';
                elsif (w_hs = '1') then
                    int_A_51_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_51_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_51_ce0 = '1') then
                    int_A_51_shift0 <= UNSIGNED(A_51_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_52_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_52_BASE and raddr <= ADDR_A_52_HIGH) then
                    int_A_52_read <= '1';
                else
                    int_A_52_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_52_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_52_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_52_HIGH) then
                    int_A_52_write <= '1';
                elsif (w_hs = '1') then
                    int_A_52_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_52_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_52_ce0 = '1') then
                    int_A_52_shift0 <= UNSIGNED(A_52_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_53_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_53_BASE and raddr <= ADDR_A_53_HIGH) then
                    int_A_53_read <= '1';
                else
                    int_A_53_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_53_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_53_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_53_HIGH) then
                    int_A_53_write <= '1';
                elsif (w_hs = '1') then
                    int_A_53_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_53_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_53_ce0 = '1') then
                    int_A_53_shift0 <= UNSIGNED(A_53_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_54_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_54_BASE and raddr <= ADDR_A_54_HIGH) then
                    int_A_54_read <= '1';
                else
                    int_A_54_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_54_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_54_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_54_HIGH) then
                    int_A_54_write <= '1';
                elsif (w_hs = '1') then
                    int_A_54_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_54_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_54_ce0 = '1') then
                    int_A_54_shift0 <= UNSIGNED(A_54_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_55_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_55_BASE and raddr <= ADDR_A_55_HIGH) then
                    int_A_55_read <= '1';
                else
                    int_A_55_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_55_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_55_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_55_HIGH) then
                    int_A_55_write <= '1';
                elsif (w_hs = '1') then
                    int_A_55_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_55_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_55_ce0 = '1') then
                    int_A_55_shift0 <= UNSIGNED(A_55_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_56_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_56_BASE and raddr <= ADDR_A_56_HIGH) then
                    int_A_56_read <= '1';
                else
                    int_A_56_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_56_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_56_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_56_HIGH) then
                    int_A_56_write <= '1';
                elsif (w_hs = '1') then
                    int_A_56_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_56_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_56_ce0 = '1') then
                    int_A_56_shift0 <= UNSIGNED(A_56_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_57_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_57_BASE and raddr <= ADDR_A_57_HIGH) then
                    int_A_57_read <= '1';
                else
                    int_A_57_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_57_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_57_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_57_HIGH) then
                    int_A_57_write <= '1';
                elsif (w_hs = '1') then
                    int_A_57_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_57_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_57_ce0 = '1') then
                    int_A_57_shift0 <= UNSIGNED(A_57_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_58_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_58_BASE and raddr <= ADDR_A_58_HIGH) then
                    int_A_58_read <= '1';
                else
                    int_A_58_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_58_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_58_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_58_HIGH) then
                    int_A_58_write <= '1';
                elsif (w_hs = '1') then
                    int_A_58_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_58_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_58_ce0 = '1') then
                    int_A_58_shift0 <= UNSIGNED(A_58_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_59_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_59_BASE and raddr <= ADDR_A_59_HIGH) then
                    int_A_59_read <= '1';
                else
                    int_A_59_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_59_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_59_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_59_HIGH) then
                    int_A_59_write <= '1';
                elsif (w_hs = '1') then
                    int_A_59_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_59_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_59_ce0 = '1') then
                    int_A_59_shift0 <= UNSIGNED(A_59_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_60_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_60_BASE and raddr <= ADDR_A_60_HIGH) then
                    int_A_60_read <= '1';
                else
                    int_A_60_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_60_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_60_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_60_HIGH) then
                    int_A_60_write <= '1';
                elsif (w_hs = '1') then
                    int_A_60_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_60_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_60_ce0 = '1') then
                    int_A_60_shift0 <= UNSIGNED(A_60_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_61_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_61_BASE and raddr <= ADDR_A_61_HIGH) then
                    int_A_61_read <= '1';
                else
                    int_A_61_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_61_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_61_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_61_HIGH) then
                    int_A_61_write <= '1';
                elsif (w_hs = '1') then
                    int_A_61_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_61_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_61_ce0 = '1') then
                    int_A_61_shift0 <= UNSIGNED(A_61_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_62_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_62_BASE and raddr <= ADDR_A_62_HIGH) then
                    int_A_62_read <= '1';
                else
                    int_A_62_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_62_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_62_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_62_HIGH) then
                    int_A_62_write <= '1';
                elsif (w_hs = '1') then
                    int_A_62_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_62_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_62_ce0 = '1') then
                    int_A_62_shift0 <= UNSIGNED(A_62_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_63_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_63_BASE and raddr <= ADDR_A_63_HIGH) then
                    int_A_63_read <= '1';
                else
                    int_A_63_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_63_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_63_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_63_HIGH) then
                    int_A_63_write <= '1';
                elsif (w_hs = '1') then
                    int_A_63_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_63_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (A_63_ce0 = '1') then
                    int_A_63_shift0 <= UNSIGNED(A_63_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_0_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_0_BASE and raddr <= ADDR_B_0_HIGH) then
                    int_B_0_read <= '1';
                else
                    int_B_0_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_0_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_0_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_0_HIGH) then
                    int_B_0_write <= '1';
                elsif (w_hs = '1') then
                    int_B_0_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_0_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_0_ce0 = '1') then
                    int_B_0_shift0 <= UNSIGNED(B_0_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_1_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_1_BASE and raddr <= ADDR_B_1_HIGH) then
                    int_B_1_read <= '1';
                else
                    int_B_1_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_1_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_1_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_1_HIGH) then
                    int_B_1_write <= '1';
                elsif (w_hs = '1') then
                    int_B_1_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_1_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_1_ce0 = '1') then
                    int_B_1_shift0 <= UNSIGNED(B_1_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_2_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_2_BASE and raddr <= ADDR_B_2_HIGH) then
                    int_B_2_read <= '1';
                else
                    int_B_2_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_2_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_2_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_2_HIGH) then
                    int_B_2_write <= '1';
                elsif (w_hs = '1') then
                    int_B_2_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_2_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_2_ce0 = '1') then
                    int_B_2_shift0 <= UNSIGNED(B_2_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_3_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_3_BASE and raddr <= ADDR_B_3_HIGH) then
                    int_B_3_read <= '1';
                else
                    int_B_3_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_3_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_3_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_3_HIGH) then
                    int_B_3_write <= '1';
                elsif (w_hs = '1') then
                    int_B_3_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_3_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_3_ce0 = '1') then
                    int_B_3_shift0 <= UNSIGNED(B_3_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_4_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_4_BASE and raddr <= ADDR_B_4_HIGH) then
                    int_B_4_read <= '1';
                else
                    int_B_4_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_4_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_4_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_4_HIGH) then
                    int_B_4_write <= '1';
                elsif (w_hs = '1') then
                    int_B_4_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_4_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_4_ce0 = '1') then
                    int_B_4_shift0 <= UNSIGNED(B_4_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_5_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_5_BASE and raddr <= ADDR_B_5_HIGH) then
                    int_B_5_read <= '1';
                else
                    int_B_5_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_5_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_5_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_5_HIGH) then
                    int_B_5_write <= '1';
                elsif (w_hs = '1') then
                    int_B_5_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_5_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_5_ce0 = '1') then
                    int_B_5_shift0 <= UNSIGNED(B_5_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_6_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_6_BASE and raddr <= ADDR_B_6_HIGH) then
                    int_B_6_read <= '1';
                else
                    int_B_6_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_6_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_6_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_6_HIGH) then
                    int_B_6_write <= '1';
                elsif (w_hs = '1') then
                    int_B_6_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_6_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_6_ce0 = '1') then
                    int_B_6_shift0 <= UNSIGNED(B_6_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_7_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_7_BASE and raddr <= ADDR_B_7_HIGH) then
                    int_B_7_read <= '1';
                else
                    int_B_7_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_7_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_7_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_7_HIGH) then
                    int_B_7_write <= '1';
                elsif (w_hs = '1') then
                    int_B_7_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_7_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_7_ce0 = '1') then
                    int_B_7_shift0 <= UNSIGNED(B_7_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_8_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_8_BASE and raddr <= ADDR_B_8_HIGH) then
                    int_B_8_read <= '1';
                else
                    int_B_8_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_8_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_8_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_8_HIGH) then
                    int_B_8_write <= '1';
                elsif (w_hs = '1') then
                    int_B_8_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_8_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_8_ce0 = '1') then
                    int_B_8_shift0 <= UNSIGNED(B_8_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_9_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_9_BASE and raddr <= ADDR_B_9_HIGH) then
                    int_B_9_read <= '1';
                else
                    int_B_9_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_9_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_9_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_9_HIGH) then
                    int_B_9_write <= '1';
                elsif (w_hs = '1') then
                    int_B_9_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_9_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_9_ce0 = '1') then
                    int_B_9_shift0 <= UNSIGNED(B_9_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_10_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_10_BASE and raddr <= ADDR_B_10_HIGH) then
                    int_B_10_read <= '1';
                else
                    int_B_10_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_10_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_10_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_10_HIGH) then
                    int_B_10_write <= '1';
                elsif (w_hs = '1') then
                    int_B_10_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_10_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_10_ce0 = '1') then
                    int_B_10_shift0 <= UNSIGNED(B_10_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_11_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_11_BASE and raddr <= ADDR_B_11_HIGH) then
                    int_B_11_read <= '1';
                else
                    int_B_11_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_11_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_11_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_11_HIGH) then
                    int_B_11_write <= '1';
                elsif (w_hs = '1') then
                    int_B_11_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_11_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_11_ce0 = '1') then
                    int_B_11_shift0 <= UNSIGNED(B_11_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_12_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_12_BASE and raddr <= ADDR_B_12_HIGH) then
                    int_B_12_read <= '1';
                else
                    int_B_12_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_12_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_12_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_12_HIGH) then
                    int_B_12_write <= '1';
                elsif (w_hs = '1') then
                    int_B_12_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_12_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_12_ce0 = '1') then
                    int_B_12_shift0 <= UNSIGNED(B_12_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_13_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_13_BASE and raddr <= ADDR_B_13_HIGH) then
                    int_B_13_read <= '1';
                else
                    int_B_13_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_13_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_13_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_13_HIGH) then
                    int_B_13_write <= '1';
                elsif (w_hs = '1') then
                    int_B_13_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_13_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_13_ce0 = '1') then
                    int_B_13_shift0 <= UNSIGNED(B_13_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_14_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_14_BASE and raddr <= ADDR_B_14_HIGH) then
                    int_B_14_read <= '1';
                else
                    int_B_14_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_14_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_14_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_14_HIGH) then
                    int_B_14_write <= '1';
                elsif (w_hs = '1') then
                    int_B_14_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_14_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_14_ce0 = '1') then
                    int_B_14_shift0 <= UNSIGNED(B_14_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_15_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_15_BASE and raddr <= ADDR_B_15_HIGH) then
                    int_B_15_read <= '1';
                else
                    int_B_15_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_15_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_15_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_15_HIGH) then
                    int_B_15_write <= '1';
                elsif (w_hs = '1') then
                    int_B_15_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_15_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_15_ce0 = '1') then
                    int_B_15_shift0 <= UNSIGNED(B_15_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_16_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_16_BASE and raddr <= ADDR_B_16_HIGH) then
                    int_B_16_read <= '1';
                else
                    int_B_16_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_16_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_16_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_16_HIGH) then
                    int_B_16_write <= '1';
                elsif (w_hs = '1') then
                    int_B_16_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_16_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_16_ce0 = '1') then
                    int_B_16_shift0 <= UNSIGNED(B_16_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_17_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_17_BASE and raddr <= ADDR_B_17_HIGH) then
                    int_B_17_read <= '1';
                else
                    int_B_17_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_17_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_17_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_17_HIGH) then
                    int_B_17_write <= '1';
                elsif (w_hs = '1') then
                    int_B_17_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_17_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_17_ce0 = '1') then
                    int_B_17_shift0 <= UNSIGNED(B_17_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_18_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_18_BASE and raddr <= ADDR_B_18_HIGH) then
                    int_B_18_read <= '1';
                else
                    int_B_18_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_18_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_18_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_18_HIGH) then
                    int_B_18_write <= '1';
                elsif (w_hs = '1') then
                    int_B_18_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_18_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_18_ce0 = '1') then
                    int_B_18_shift0 <= UNSIGNED(B_18_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_19_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_19_BASE and raddr <= ADDR_B_19_HIGH) then
                    int_B_19_read <= '1';
                else
                    int_B_19_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_19_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_19_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_19_HIGH) then
                    int_B_19_write <= '1';
                elsif (w_hs = '1') then
                    int_B_19_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_19_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_19_ce0 = '1') then
                    int_B_19_shift0 <= UNSIGNED(B_19_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_20_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_20_BASE and raddr <= ADDR_B_20_HIGH) then
                    int_B_20_read <= '1';
                else
                    int_B_20_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_20_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_20_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_20_HIGH) then
                    int_B_20_write <= '1';
                elsif (w_hs = '1') then
                    int_B_20_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_20_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_20_ce0 = '1') then
                    int_B_20_shift0 <= UNSIGNED(B_20_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_21_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_21_BASE and raddr <= ADDR_B_21_HIGH) then
                    int_B_21_read <= '1';
                else
                    int_B_21_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_21_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_21_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_21_HIGH) then
                    int_B_21_write <= '1';
                elsif (w_hs = '1') then
                    int_B_21_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_21_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_21_ce0 = '1') then
                    int_B_21_shift0 <= UNSIGNED(B_21_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_22_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_22_BASE and raddr <= ADDR_B_22_HIGH) then
                    int_B_22_read <= '1';
                else
                    int_B_22_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_22_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_22_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_22_HIGH) then
                    int_B_22_write <= '1';
                elsif (w_hs = '1') then
                    int_B_22_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_22_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_22_ce0 = '1') then
                    int_B_22_shift0 <= UNSIGNED(B_22_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_23_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_23_BASE and raddr <= ADDR_B_23_HIGH) then
                    int_B_23_read <= '1';
                else
                    int_B_23_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_23_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_23_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_23_HIGH) then
                    int_B_23_write <= '1';
                elsif (w_hs = '1') then
                    int_B_23_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_23_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_23_ce0 = '1') then
                    int_B_23_shift0 <= UNSIGNED(B_23_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_24_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_24_BASE and raddr <= ADDR_B_24_HIGH) then
                    int_B_24_read <= '1';
                else
                    int_B_24_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_24_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_24_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_24_HIGH) then
                    int_B_24_write <= '1';
                elsif (w_hs = '1') then
                    int_B_24_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_24_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_24_ce0 = '1') then
                    int_B_24_shift0 <= UNSIGNED(B_24_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_25_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_25_BASE and raddr <= ADDR_B_25_HIGH) then
                    int_B_25_read <= '1';
                else
                    int_B_25_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_25_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_25_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_25_HIGH) then
                    int_B_25_write <= '1';
                elsif (w_hs = '1') then
                    int_B_25_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_25_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_25_ce0 = '1') then
                    int_B_25_shift0 <= UNSIGNED(B_25_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_26_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_26_BASE and raddr <= ADDR_B_26_HIGH) then
                    int_B_26_read <= '1';
                else
                    int_B_26_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_26_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_26_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_26_HIGH) then
                    int_B_26_write <= '1';
                elsif (w_hs = '1') then
                    int_B_26_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_26_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_26_ce0 = '1') then
                    int_B_26_shift0 <= UNSIGNED(B_26_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_27_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_27_BASE and raddr <= ADDR_B_27_HIGH) then
                    int_B_27_read <= '1';
                else
                    int_B_27_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_27_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_27_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_27_HIGH) then
                    int_B_27_write <= '1';
                elsif (w_hs = '1') then
                    int_B_27_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_27_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_27_ce0 = '1') then
                    int_B_27_shift0 <= UNSIGNED(B_27_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_28_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_28_BASE and raddr <= ADDR_B_28_HIGH) then
                    int_B_28_read <= '1';
                else
                    int_B_28_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_28_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_28_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_28_HIGH) then
                    int_B_28_write <= '1';
                elsif (w_hs = '1') then
                    int_B_28_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_28_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_28_ce0 = '1') then
                    int_B_28_shift0 <= UNSIGNED(B_28_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_29_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_29_BASE and raddr <= ADDR_B_29_HIGH) then
                    int_B_29_read <= '1';
                else
                    int_B_29_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_29_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_29_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_29_HIGH) then
                    int_B_29_write <= '1';
                elsif (w_hs = '1') then
                    int_B_29_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_29_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_29_ce0 = '1') then
                    int_B_29_shift0 <= UNSIGNED(B_29_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_30_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_30_BASE and raddr <= ADDR_B_30_HIGH) then
                    int_B_30_read <= '1';
                else
                    int_B_30_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_30_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_30_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_30_HIGH) then
                    int_B_30_write <= '1';
                elsif (w_hs = '1') then
                    int_B_30_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_30_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_30_ce0 = '1') then
                    int_B_30_shift0 <= UNSIGNED(B_30_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_31_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_31_BASE and raddr <= ADDR_B_31_HIGH) then
                    int_B_31_read <= '1';
                else
                    int_B_31_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_31_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_31_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_31_HIGH) then
                    int_B_31_write <= '1';
                elsif (w_hs = '1') then
                    int_B_31_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_31_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_31_ce0 = '1') then
                    int_B_31_shift0 <= UNSIGNED(B_31_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_32_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_32_BASE and raddr <= ADDR_B_32_HIGH) then
                    int_B_32_read <= '1';
                else
                    int_B_32_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_32_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_32_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_32_HIGH) then
                    int_B_32_write <= '1';
                elsif (w_hs = '1') then
                    int_B_32_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_32_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_32_ce0 = '1') then
                    int_B_32_shift0 <= UNSIGNED(B_32_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_33_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_33_BASE and raddr <= ADDR_B_33_HIGH) then
                    int_B_33_read <= '1';
                else
                    int_B_33_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_33_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_33_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_33_HIGH) then
                    int_B_33_write <= '1';
                elsif (w_hs = '1') then
                    int_B_33_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_33_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_33_ce0 = '1') then
                    int_B_33_shift0 <= UNSIGNED(B_33_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_34_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_34_BASE and raddr <= ADDR_B_34_HIGH) then
                    int_B_34_read <= '1';
                else
                    int_B_34_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_34_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_34_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_34_HIGH) then
                    int_B_34_write <= '1';
                elsif (w_hs = '1') then
                    int_B_34_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_34_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_34_ce0 = '1') then
                    int_B_34_shift0 <= UNSIGNED(B_34_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_35_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_35_BASE and raddr <= ADDR_B_35_HIGH) then
                    int_B_35_read <= '1';
                else
                    int_B_35_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_35_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_35_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_35_HIGH) then
                    int_B_35_write <= '1';
                elsif (w_hs = '1') then
                    int_B_35_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_35_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_35_ce0 = '1') then
                    int_B_35_shift0 <= UNSIGNED(B_35_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_36_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_36_BASE and raddr <= ADDR_B_36_HIGH) then
                    int_B_36_read <= '1';
                else
                    int_B_36_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_36_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_36_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_36_HIGH) then
                    int_B_36_write <= '1';
                elsif (w_hs = '1') then
                    int_B_36_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_36_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_36_ce0 = '1') then
                    int_B_36_shift0 <= UNSIGNED(B_36_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_37_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_37_BASE and raddr <= ADDR_B_37_HIGH) then
                    int_B_37_read <= '1';
                else
                    int_B_37_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_37_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_37_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_37_HIGH) then
                    int_B_37_write <= '1';
                elsif (w_hs = '1') then
                    int_B_37_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_37_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_37_ce0 = '1') then
                    int_B_37_shift0 <= UNSIGNED(B_37_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_38_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_38_BASE and raddr <= ADDR_B_38_HIGH) then
                    int_B_38_read <= '1';
                else
                    int_B_38_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_38_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_38_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_38_HIGH) then
                    int_B_38_write <= '1';
                elsif (w_hs = '1') then
                    int_B_38_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_38_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_38_ce0 = '1') then
                    int_B_38_shift0 <= UNSIGNED(B_38_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_39_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_39_BASE and raddr <= ADDR_B_39_HIGH) then
                    int_B_39_read <= '1';
                else
                    int_B_39_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_39_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_39_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_39_HIGH) then
                    int_B_39_write <= '1';
                elsif (w_hs = '1') then
                    int_B_39_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_39_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_39_ce0 = '1') then
                    int_B_39_shift0 <= UNSIGNED(B_39_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_40_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_40_BASE and raddr <= ADDR_B_40_HIGH) then
                    int_B_40_read <= '1';
                else
                    int_B_40_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_40_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_40_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_40_HIGH) then
                    int_B_40_write <= '1';
                elsif (w_hs = '1') then
                    int_B_40_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_40_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_40_ce0 = '1') then
                    int_B_40_shift0 <= UNSIGNED(B_40_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_41_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_41_BASE and raddr <= ADDR_B_41_HIGH) then
                    int_B_41_read <= '1';
                else
                    int_B_41_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_41_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_41_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_41_HIGH) then
                    int_B_41_write <= '1';
                elsif (w_hs = '1') then
                    int_B_41_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_41_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_41_ce0 = '1') then
                    int_B_41_shift0 <= UNSIGNED(B_41_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_42_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_42_BASE and raddr <= ADDR_B_42_HIGH) then
                    int_B_42_read <= '1';
                else
                    int_B_42_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_42_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_42_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_42_HIGH) then
                    int_B_42_write <= '1';
                elsif (w_hs = '1') then
                    int_B_42_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_42_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_42_ce0 = '1') then
                    int_B_42_shift0 <= UNSIGNED(B_42_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_43_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_43_BASE and raddr <= ADDR_B_43_HIGH) then
                    int_B_43_read <= '1';
                else
                    int_B_43_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_43_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_43_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_43_HIGH) then
                    int_B_43_write <= '1';
                elsif (w_hs = '1') then
                    int_B_43_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_43_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_43_ce0 = '1') then
                    int_B_43_shift0 <= UNSIGNED(B_43_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_44_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_44_BASE and raddr <= ADDR_B_44_HIGH) then
                    int_B_44_read <= '1';
                else
                    int_B_44_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_44_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_44_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_44_HIGH) then
                    int_B_44_write <= '1';
                elsif (w_hs = '1') then
                    int_B_44_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_44_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_44_ce0 = '1') then
                    int_B_44_shift0 <= UNSIGNED(B_44_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_45_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_45_BASE and raddr <= ADDR_B_45_HIGH) then
                    int_B_45_read <= '1';
                else
                    int_B_45_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_45_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_45_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_45_HIGH) then
                    int_B_45_write <= '1';
                elsif (w_hs = '1') then
                    int_B_45_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_45_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_45_ce0 = '1') then
                    int_B_45_shift0 <= UNSIGNED(B_45_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_46_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_46_BASE and raddr <= ADDR_B_46_HIGH) then
                    int_B_46_read <= '1';
                else
                    int_B_46_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_46_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_46_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_46_HIGH) then
                    int_B_46_write <= '1';
                elsif (w_hs = '1') then
                    int_B_46_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_46_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_46_ce0 = '1') then
                    int_B_46_shift0 <= UNSIGNED(B_46_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_47_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_47_BASE and raddr <= ADDR_B_47_HIGH) then
                    int_B_47_read <= '1';
                else
                    int_B_47_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_47_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_47_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_47_HIGH) then
                    int_B_47_write <= '1';
                elsif (w_hs = '1') then
                    int_B_47_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_47_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_47_ce0 = '1') then
                    int_B_47_shift0 <= UNSIGNED(B_47_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_48_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_48_BASE and raddr <= ADDR_B_48_HIGH) then
                    int_B_48_read <= '1';
                else
                    int_B_48_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_48_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_48_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_48_HIGH) then
                    int_B_48_write <= '1';
                elsif (w_hs = '1') then
                    int_B_48_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_48_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_48_ce0 = '1') then
                    int_B_48_shift0 <= UNSIGNED(B_48_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_49_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_49_BASE and raddr <= ADDR_B_49_HIGH) then
                    int_B_49_read <= '1';
                else
                    int_B_49_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_49_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_49_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_49_HIGH) then
                    int_B_49_write <= '1';
                elsif (w_hs = '1') then
                    int_B_49_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_49_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_49_ce0 = '1') then
                    int_B_49_shift0 <= UNSIGNED(B_49_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_50_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_50_BASE and raddr <= ADDR_B_50_HIGH) then
                    int_B_50_read <= '1';
                else
                    int_B_50_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_50_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_50_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_50_HIGH) then
                    int_B_50_write <= '1';
                elsif (w_hs = '1') then
                    int_B_50_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_50_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_50_ce0 = '1') then
                    int_B_50_shift0 <= UNSIGNED(B_50_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_51_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_51_BASE and raddr <= ADDR_B_51_HIGH) then
                    int_B_51_read <= '1';
                else
                    int_B_51_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_51_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_51_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_51_HIGH) then
                    int_B_51_write <= '1';
                elsif (w_hs = '1') then
                    int_B_51_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_51_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_51_ce0 = '1') then
                    int_B_51_shift0 <= UNSIGNED(B_51_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_52_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_52_BASE and raddr <= ADDR_B_52_HIGH) then
                    int_B_52_read <= '1';
                else
                    int_B_52_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_52_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_52_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_52_HIGH) then
                    int_B_52_write <= '1';
                elsif (w_hs = '1') then
                    int_B_52_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_52_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_52_ce0 = '1') then
                    int_B_52_shift0 <= UNSIGNED(B_52_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_53_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_53_BASE and raddr <= ADDR_B_53_HIGH) then
                    int_B_53_read <= '1';
                else
                    int_B_53_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_53_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_53_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_53_HIGH) then
                    int_B_53_write <= '1';
                elsif (w_hs = '1') then
                    int_B_53_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_53_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_53_ce0 = '1') then
                    int_B_53_shift0 <= UNSIGNED(B_53_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_54_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_54_BASE and raddr <= ADDR_B_54_HIGH) then
                    int_B_54_read <= '1';
                else
                    int_B_54_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_54_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_54_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_54_HIGH) then
                    int_B_54_write <= '1';
                elsif (w_hs = '1') then
                    int_B_54_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_54_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_54_ce0 = '1') then
                    int_B_54_shift0 <= UNSIGNED(B_54_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_55_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_55_BASE and raddr <= ADDR_B_55_HIGH) then
                    int_B_55_read <= '1';
                else
                    int_B_55_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_55_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_55_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_55_HIGH) then
                    int_B_55_write <= '1';
                elsif (w_hs = '1') then
                    int_B_55_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_55_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_55_ce0 = '1') then
                    int_B_55_shift0 <= UNSIGNED(B_55_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_56_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_56_BASE and raddr <= ADDR_B_56_HIGH) then
                    int_B_56_read <= '1';
                else
                    int_B_56_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_56_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_56_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_56_HIGH) then
                    int_B_56_write <= '1';
                elsif (w_hs = '1') then
                    int_B_56_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_56_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_56_ce0 = '1') then
                    int_B_56_shift0 <= UNSIGNED(B_56_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_57_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_57_BASE and raddr <= ADDR_B_57_HIGH) then
                    int_B_57_read <= '1';
                else
                    int_B_57_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_57_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_57_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_57_HIGH) then
                    int_B_57_write <= '1';
                elsif (w_hs = '1') then
                    int_B_57_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_57_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_57_ce0 = '1') then
                    int_B_57_shift0 <= UNSIGNED(B_57_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_58_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_58_BASE and raddr <= ADDR_B_58_HIGH) then
                    int_B_58_read <= '1';
                else
                    int_B_58_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_58_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_58_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_58_HIGH) then
                    int_B_58_write <= '1';
                elsif (w_hs = '1') then
                    int_B_58_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_58_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_58_ce0 = '1') then
                    int_B_58_shift0 <= UNSIGNED(B_58_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_59_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_59_BASE and raddr <= ADDR_B_59_HIGH) then
                    int_B_59_read <= '1';
                else
                    int_B_59_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_59_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_59_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_59_HIGH) then
                    int_B_59_write <= '1';
                elsif (w_hs = '1') then
                    int_B_59_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_59_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_59_ce0 = '1') then
                    int_B_59_shift0 <= UNSIGNED(B_59_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_60_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_60_BASE and raddr <= ADDR_B_60_HIGH) then
                    int_B_60_read <= '1';
                else
                    int_B_60_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_60_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_60_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_60_HIGH) then
                    int_B_60_write <= '1';
                elsif (w_hs = '1') then
                    int_B_60_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_60_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_60_ce0 = '1') then
                    int_B_60_shift0 <= UNSIGNED(B_60_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_61_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_61_BASE and raddr <= ADDR_B_61_HIGH) then
                    int_B_61_read <= '1';
                else
                    int_B_61_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_61_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_61_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_61_HIGH) then
                    int_B_61_write <= '1';
                elsif (w_hs = '1') then
                    int_B_61_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_61_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_61_ce0 = '1') then
                    int_B_61_shift0 <= UNSIGNED(B_61_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_62_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_62_BASE and raddr <= ADDR_B_62_HIGH) then
                    int_B_62_read <= '1';
                else
                    int_B_62_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_62_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_62_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_62_HIGH) then
                    int_B_62_write <= '1';
                elsif (w_hs = '1') then
                    int_B_62_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_62_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_62_ce0 = '1') then
                    int_B_62_shift0 <= UNSIGNED(B_62_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_63_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_63_BASE and raddr <= ADDR_B_63_HIGH) then
                    int_B_63_read <= '1';
                else
                    int_B_63_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_63_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_63_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_63_HIGH) then
                    int_B_63_write <= '1';
                elsif (w_hs = '1') then
                    int_B_63_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_63_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (B_63_ce0 = '1') then
                    int_B_63_shift0 <= UNSIGNED(B_63_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity eucHW_control_s_axi_ram is
    generic (
        MEM_STYLE : STRING :="auto";
        MEM_TYPE  : STRING :="S2P";
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity eucHW_control_s_axi_ram;

architecture behave of eucHW_control_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
    attribute ram_style: string;
    attribute ram_style of mem: variable is MEM_STYLE;
    constant BYTE_WIDTH :INTEGER := 8;

    function port_type_gen( MEM_TYPE: STRING; MEM_STYLE: STRING; PORT_NAME: STRING) return STRING is
    begin
        if (MEM_TYPE = "S2P") and (PORT_NAME = "PORT0") then
            return "WO";
        elsif((MEM_TYPE = "S2P") and (PORT_NAME = "PORT1")) or ((MEM_TYPE = "2P") and (PORT_NAME = "PORT0")) then
            return "RO";
        elsif (MEM_STYLE = "hls_ultra") then
            return "RWNC";
        else
            return "RWRF";
        end if;
    end port_type_gen;
    constant PORT0 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT0");
    constant PORT1 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT1");

    function or_reduce( V: UNSIGNED) return std_logic is
    variable result: std_logic;
    begin
        for i in V'range loop
            if i = V'left then
                result := V(i);
            else
                result := result OR V(i);
            end if;
            exit when result = '1';
        end loop;
        return result;
    end or_reduce;

begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
        if (address0 > DEPTH-1) then
            address0_tmp <= (others => '0');
        else
            address0_tmp <= address0;
        end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
        if (address1 > DEPTH-1) then
            address1_tmp <= (others => '0');
        else
            address1_tmp <= address1;
        end if;
    --synthesis translate_on
    end process;

    --read port 0
    read_p0_rf : if (PORT0 = "RO" or PORT0 = "RWRF") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    q0 <= mem(to_integer(address0_tmp));
                end if;
            end if;
        end process;
    end generate read_p0_rf;

    read_p0_nc : if (PORT0 = "RWNC") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    if (we0 = (we0'range => '0')) then
                        q0 <= mem(to_integer(address0_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p0_nc;

    --read port 1
    read_p1_rf : if (PORT1 = "RO" or PORT1 = "RWRF") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    q1 <= mem(to_integer(address1_tmp));
                end if;
            end if;
        end process;
    end generate read_p1_rf;

    read_p1_nc : if (PORT1 = "RWNC") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    if (we1 = (we1'range => '0')) then
                        q1 <= mem(to_integer(address1_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p1_nc;

    --write port 0
    write_p0 : if (PORT0 /= "RO") generate
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we0(i) = '1') then
                        mem(to_integer(address0_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d0((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p0;

    --write port 1
    write_p1 : if (PORT1 /= "RO") generate
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we1(i) = '1') then
                        mem(to_integer(address1_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d1((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p1;

end architecture behave;


