-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity eucHW_eucHW_Pipeline_VITIS_LOOP_34_27 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_array_3_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_2_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_1_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_0_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_6_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_5_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_4_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_7_12_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    out_array_3_14_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_array_3_14_out_ap_vld : OUT STD_LOGIC;
    out_array_2_14_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_array_2_14_out_ap_vld : OUT STD_LOGIC;
    out_array_1_14_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_array_1_14_out_ap_vld : OUT STD_LOGIC;
    out_array_0_14_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_array_0_14_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of eucHW_eucHW_Pipeline_VITIS_LOOP_34_27 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln34_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_60 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln34_fu_190_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal out_array_1_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_array_1_9_fu_270_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln38_fu_208_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal out_array_1_5_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_array_1_6_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_array_1_7_fu_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln39_2_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln39_1_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln39_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln39_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln39_fu_244_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln39_1_fu_256_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tem2_fu_262_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tem1_fu_212_p6 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_236 : BOOLEAN;
    signal ap_condition_239 : BOOLEAN;
    signal ap_condition_242 : BOOLEAN;
    signal ap_condition_245 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component eucHW_mux_42_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component eucHW_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_42_32_1_1_U3061 : component eucHW_mux_42_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => out_array_1_fu_64,
        din1 => out_array_1_5_fu_68,
        din2 => out_array_1_6_fu_72,
        din3 => out_array_1_7_fu_76,
        din4 => trunc_ln38_fu_208_p1,
        dout => tem1_fu_212_p6);

    flow_control_loop_pipe_sequential_init_U : component eucHW_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_60 <= ap_const_lv3_0;
                elsif (((icmp_ln34_fu_184_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_60 <= add_ln34_fu_190_p2;
                end if;
            end if; 
        end if;
    end process;

    out_array_1_5_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    out_array_1_5_fu_68 <= out_array_1_12_reload;
                elsif ((ap_const_boolean_1 = ap_condition_236)) then 
                    out_array_1_5_fu_68 <= out_array_1_9_fu_270_p2;
                end if;
            end if; 
        end if;
    end process;

    out_array_1_6_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    out_array_1_6_fu_72 <= out_array_2_12_reload;
                elsif ((ap_const_boolean_1 = ap_condition_239)) then 
                    out_array_1_6_fu_72 <= out_array_1_9_fu_270_p2;
                end if;
            end if; 
        end if;
    end process;

    out_array_1_7_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    out_array_1_7_fu_76 <= out_array_3_12_reload;
                elsif ((ap_const_boolean_1 = ap_condition_242)) then 
                    out_array_1_7_fu_76 <= out_array_1_9_fu_270_p2;
                end if;
            end if; 
        end if;
    end process;

    out_array_1_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    out_array_1_fu_64 <= out_array_0_12_reload;
                elsif ((ap_const_boolean_1 = ap_condition_245)) then 
                    out_array_1_fu_64 <= out_array_1_9_fu_270_p2;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln34_fu_190_p2 <= std_logic_vector(unsigned(i_fu_60) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_236_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln34_fu_184_p2, trunc_ln38_fu_208_p1)
    begin
                ap_condition_236 <= ((trunc_ln38_fu_208_p1 = ap_const_lv2_1) and (icmp_ln34_fu_184_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_239_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln34_fu_184_p2, trunc_ln38_fu_208_p1)
    begin
                ap_condition_239 <= ((trunc_ln38_fu_208_p1 = ap_const_lv2_2) and (icmp_ln34_fu_184_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_242_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln34_fu_184_p2, trunc_ln38_fu_208_p1)
    begin
                ap_condition_242 <= ((trunc_ln38_fu_208_p1 = ap_const_lv2_3) and (icmp_ln34_fu_184_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_245_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln34_fu_184_p2, trunc_ln38_fu_208_p1)
    begin
                ap_condition_245 <= ((trunc_ln38_fu_208_p1 = ap_const_lv2_0) and (icmp_ln34_fu_184_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln34_fu_184_p2)
    begin
        if (((icmp_ln34_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln34_fu_184_p2 <= "1" when (i_fu_60 = ap_const_lv3_4) else "0";
    icmp_ln39_1_fu_232_p2 <= "1" when (trunc_ln38_fu_208_p1 = ap_const_lv2_1) else "0";
    icmp_ln39_2_fu_238_p2 <= "1" when (trunc_ln38_fu_208_p1 = ap_const_lv2_2) else "0";
    icmp_ln39_fu_226_p2 <= "1" when (trunc_ln38_fu_208_p1 = ap_const_lv2_0) else "0";
    or_ln39_fu_250_p2 <= (icmp_ln39_2_fu_238_p2 or icmp_ln39_1_fu_232_p2);
    out_array_0_14_out <= out_array_1_fu_64;

    out_array_0_14_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln34_fu_184_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln34_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_array_0_14_out_ap_vld <= ap_const_logic_1;
        else 
            out_array_0_14_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out_array_1_14_out <= out_array_1_5_fu_68;

    out_array_1_14_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln34_fu_184_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln34_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_array_1_14_out_ap_vld <= ap_const_logic_1;
        else 
            out_array_1_14_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out_array_1_9_fu_270_p2 <= std_logic_vector(unsigned(tem2_fu_262_p3) + unsigned(tem1_fu_212_p6));
    out_array_2_14_out <= out_array_1_6_fu_72;

    out_array_2_14_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln34_fu_184_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln34_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_array_2_14_out_ap_vld <= ap_const_logic_1;
        else 
            out_array_2_14_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out_array_3_14_out <= out_array_1_7_fu_76;

    out_array_3_14_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln34_fu_184_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln34_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_array_3_14_out_ap_vld <= ap_const_logic_1;
        else 
            out_array_3_14_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    select_ln39_1_fu_256_p3 <= 
        out_array_4_12_reload when (icmp_ln39_fu_226_p2(0) = '1') else 
        out_array_7_12_reload;
    select_ln39_fu_244_p3 <= 
        out_array_6_12_reload when (icmp_ln39_2_fu_238_p2(0) = '1') else 
        out_array_5_12_reload;
    tem2_fu_262_p3 <= 
        select_ln39_fu_244_p3 when (or_ln39_fu_250_p2(0) = '1') else 
        select_ln39_1_fu_256_p3;
    trunc_ln38_fu_208_p1 <= i_fu_60(2 - 1 downto 0);
end behav;
