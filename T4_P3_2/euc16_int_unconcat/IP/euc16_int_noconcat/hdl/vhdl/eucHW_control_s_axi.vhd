-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eucHW_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 9;
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
    A_0                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_1                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_2                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_3                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_4                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_5                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_6                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_7                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_8                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_9                   :out  STD_LOGIC_VECTOR(7 downto 0);
    A_10                  :out  STD_LOGIC_VECTOR(7 downto 0);
    A_11                  :out  STD_LOGIC_VECTOR(7 downto 0);
    A_12                  :out  STD_LOGIC_VECTOR(7 downto 0);
    A_13                  :out  STD_LOGIC_VECTOR(7 downto 0);
    A_14                  :out  STD_LOGIC_VECTOR(7 downto 0);
    A_15                  :out  STD_LOGIC_VECTOR(7 downto 0);
    B_0                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_1                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_2                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_3                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_4                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_5                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_6                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_7                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_8                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_9                   :out  STD_LOGIC_VECTOR(7 downto 0);
    B_10                  :out  STD_LOGIC_VECTOR(7 downto 0);
    B_11                  :out  STD_LOGIC_VECTOR(7 downto 0);
    B_12                  :out  STD_LOGIC_VECTOR(7 downto 0);
    B_13                  :out  STD_LOGIC_VECTOR(7 downto 0);
    B_14                  :out  STD_LOGIC_VECTOR(7 downto 0);
    B_15                  :out  STD_LOGIC_VECTOR(7 downto 0);
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
-- 0x010 : Data signal of A_0
--         bit 7~0 - A_0[7:0] (Read/Write)
--         others  - reserved
-- 0x014 : reserved
-- 0x018 : Data signal of A_1
--         bit 7~0 - A_1[7:0] (Read/Write)
--         others  - reserved
-- 0x01c : reserved
-- 0x020 : Data signal of A_2
--         bit 7~0 - A_2[7:0] (Read/Write)
--         others  - reserved
-- 0x024 : reserved
-- 0x028 : Data signal of A_3
--         bit 7~0 - A_3[7:0] (Read/Write)
--         others  - reserved
-- 0x02c : reserved
-- 0x030 : Data signal of A_4
--         bit 7~0 - A_4[7:0] (Read/Write)
--         others  - reserved
-- 0x034 : reserved
-- 0x038 : Data signal of A_5
--         bit 7~0 - A_5[7:0] (Read/Write)
--         others  - reserved
-- 0x03c : reserved
-- 0x040 : Data signal of A_6
--         bit 7~0 - A_6[7:0] (Read/Write)
--         others  - reserved
-- 0x044 : reserved
-- 0x048 : Data signal of A_7
--         bit 7~0 - A_7[7:0] (Read/Write)
--         others  - reserved
-- 0x04c : reserved
-- 0x050 : Data signal of A_8
--         bit 7~0 - A_8[7:0] (Read/Write)
--         others  - reserved
-- 0x054 : reserved
-- 0x058 : Data signal of A_9
--         bit 7~0 - A_9[7:0] (Read/Write)
--         others  - reserved
-- 0x05c : reserved
-- 0x060 : Data signal of A_10
--         bit 7~0 - A_10[7:0] (Read/Write)
--         others  - reserved
-- 0x064 : reserved
-- 0x068 : Data signal of A_11
--         bit 7~0 - A_11[7:0] (Read/Write)
--         others  - reserved
-- 0x06c : reserved
-- 0x070 : Data signal of A_12
--         bit 7~0 - A_12[7:0] (Read/Write)
--         others  - reserved
-- 0x074 : reserved
-- 0x078 : Data signal of A_13
--         bit 7~0 - A_13[7:0] (Read/Write)
--         others  - reserved
-- 0x07c : reserved
-- 0x080 : Data signal of A_14
--         bit 7~0 - A_14[7:0] (Read/Write)
--         others  - reserved
-- 0x084 : reserved
-- 0x088 : Data signal of A_15
--         bit 7~0 - A_15[7:0] (Read/Write)
--         others  - reserved
-- 0x08c : reserved
-- 0x090 : Data signal of B_0
--         bit 7~0 - B_0[7:0] (Read/Write)
--         others  - reserved
-- 0x094 : reserved
-- 0x098 : Data signal of B_1
--         bit 7~0 - B_1[7:0] (Read/Write)
--         others  - reserved
-- 0x09c : reserved
-- 0x0a0 : Data signal of B_2
--         bit 7~0 - B_2[7:0] (Read/Write)
--         others  - reserved
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of B_3
--         bit 7~0 - B_3[7:0] (Read/Write)
--         others  - reserved
-- 0x0ac : reserved
-- 0x0b0 : Data signal of B_4
--         bit 7~0 - B_4[7:0] (Read/Write)
--         others  - reserved
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of B_5
--         bit 7~0 - B_5[7:0] (Read/Write)
--         others  - reserved
-- 0x0bc : reserved
-- 0x0c0 : Data signal of B_6
--         bit 7~0 - B_6[7:0] (Read/Write)
--         others  - reserved
-- 0x0c4 : reserved
-- 0x0c8 : Data signal of B_7
--         bit 7~0 - B_7[7:0] (Read/Write)
--         others  - reserved
-- 0x0cc : reserved
-- 0x0d0 : Data signal of B_8
--         bit 7~0 - B_8[7:0] (Read/Write)
--         others  - reserved
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of B_9
--         bit 7~0 - B_9[7:0] (Read/Write)
--         others  - reserved
-- 0x0dc : reserved
-- 0x0e0 : Data signal of B_10
--         bit 7~0 - B_10[7:0] (Read/Write)
--         others  - reserved
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of B_11
--         bit 7~0 - B_11[7:0] (Read/Write)
--         others  - reserved
-- 0x0ec : reserved
-- 0x0f0 : Data signal of B_12
--         bit 7~0 - B_12[7:0] (Read/Write)
--         others  - reserved
-- 0x0f4 : reserved
-- 0x0f8 : Data signal of B_13
--         bit 7~0 - B_13[7:0] (Read/Write)
--         others  - reserved
-- 0x0fc : reserved
-- 0x100 : Data signal of B_14
--         bit 7~0 - B_14[7:0] (Read/Write)
--         others  - reserved
-- 0x104 : reserved
-- 0x108 : Data signal of B_15
--         bit 7~0 - B_15[7:0] (Read/Write)
--         others  - reserved
-- 0x10c : reserved
-- 0x110 : Data signal of C
--         bit 31~0 - C[31:0] (Read)
-- 0x114 : Control signal of C
--         bit 0  - C_ap_vld (Read/COR)
--         others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of eucHW_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL     : INTEGER := 16#000#;
    constant ADDR_GIE         : INTEGER := 16#004#;
    constant ADDR_IER         : INTEGER := 16#008#;
    constant ADDR_ISR         : INTEGER := 16#00c#;
    constant ADDR_A_0_DATA_0  : INTEGER := 16#010#;
    constant ADDR_A_0_CTRL    : INTEGER := 16#014#;
    constant ADDR_A_1_DATA_0  : INTEGER := 16#018#;
    constant ADDR_A_1_CTRL    : INTEGER := 16#01c#;
    constant ADDR_A_2_DATA_0  : INTEGER := 16#020#;
    constant ADDR_A_2_CTRL    : INTEGER := 16#024#;
    constant ADDR_A_3_DATA_0  : INTEGER := 16#028#;
    constant ADDR_A_3_CTRL    : INTEGER := 16#02c#;
    constant ADDR_A_4_DATA_0  : INTEGER := 16#030#;
    constant ADDR_A_4_CTRL    : INTEGER := 16#034#;
    constant ADDR_A_5_DATA_0  : INTEGER := 16#038#;
    constant ADDR_A_5_CTRL    : INTEGER := 16#03c#;
    constant ADDR_A_6_DATA_0  : INTEGER := 16#040#;
    constant ADDR_A_6_CTRL    : INTEGER := 16#044#;
    constant ADDR_A_7_DATA_0  : INTEGER := 16#048#;
    constant ADDR_A_7_CTRL    : INTEGER := 16#04c#;
    constant ADDR_A_8_DATA_0  : INTEGER := 16#050#;
    constant ADDR_A_8_CTRL    : INTEGER := 16#054#;
    constant ADDR_A_9_DATA_0  : INTEGER := 16#058#;
    constant ADDR_A_9_CTRL    : INTEGER := 16#05c#;
    constant ADDR_A_10_DATA_0 : INTEGER := 16#060#;
    constant ADDR_A_10_CTRL   : INTEGER := 16#064#;
    constant ADDR_A_11_DATA_0 : INTEGER := 16#068#;
    constant ADDR_A_11_CTRL   : INTEGER := 16#06c#;
    constant ADDR_A_12_DATA_0 : INTEGER := 16#070#;
    constant ADDR_A_12_CTRL   : INTEGER := 16#074#;
    constant ADDR_A_13_DATA_0 : INTEGER := 16#078#;
    constant ADDR_A_13_CTRL   : INTEGER := 16#07c#;
    constant ADDR_A_14_DATA_0 : INTEGER := 16#080#;
    constant ADDR_A_14_CTRL   : INTEGER := 16#084#;
    constant ADDR_A_15_DATA_0 : INTEGER := 16#088#;
    constant ADDR_A_15_CTRL   : INTEGER := 16#08c#;
    constant ADDR_B_0_DATA_0  : INTEGER := 16#090#;
    constant ADDR_B_0_CTRL    : INTEGER := 16#094#;
    constant ADDR_B_1_DATA_0  : INTEGER := 16#098#;
    constant ADDR_B_1_CTRL    : INTEGER := 16#09c#;
    constant ADDR_B_2_DATA_0  : INTEGER := 16#0a0#;
    constant ADDR_B_2_CTRL    : INTEGER := 16#0a4#;
    constant ADDR_B_3_DATA_0  : INTEGER := 16#0a8#;
    constant ADDR_B_3_CTRL    : INTEGER := 16#0ac#;
    constant ADDR_B_4_DATA_0  : INTEGER := 16#0b0#;
    constant ADDR_B_4_CTRL    : INTEGER := 16#0b4#;
    constant ADDR_B_5_DATA_0  : INTEGER := 16#0b8#;
    constant ADDR_B_5_CTRL    : INTEGER := 16#0bc#;
    constant ADDR_B_6_DATA_0  : INTEGER := 16#0c0#;
    constant ADDR_B_6_CTRL    : INTEGER := 16#0c4#;
    constant ADDR_B_7_DATA_0  : INTEGER := 16#0c8#;
    constant ADDR_B_7_CTRL    : INTEGER := 16#0cc#;
    constant ADDR_B_8_DATA_0  : INTEGER := 16#0d0#;
    constant ADDR_B_8_CTRL    : INTEGER := 16#0d4#;
    constant ADDR_B_9_DATA_0  : INTEGER := 16#0d8#;
    constant ADDR_B_9_CTRL    : INTEGER := 16#0dc#;
    constant ADDR_B_10_DATA_0 : INTEGER := 16#0e0#;
    constant ADDR_B_10_CTRL   : INTEGER := 16#0e4#;
    constant ADDR_B_11_DATA_0 : INTEGER := 16#0e8#;
    constant ADDR_B_11_CTRL   : INTEGER := 16#0ec#;
    constant ADDR_B_12_DATA_0 : INTEGER := 16#0f0#;
    constant ADDR_B_12_CTRL   : INTEGER := 16#0f4#;
    constant ADDR_B_13_DATA_0 : INTEGER := 16#0f8#;
    constant ADDR_B_13_CTRL   : INTEGER := 16#0fc#;
    constant ADDR_B_14_DATA_0 : INTEGER := 16#100#;
    constant ADDR_B_14_CTRL   : INTEGER := 16#104#;
    constant ADDR_B_15_DATA_0 : INTEGER := 16#108#;
    constant ADDR_B_15_CTRL   : INTEGER := 16#10c#;
    constant ADDR_C_DATA_0    : INTEGER := 16#110#;
    constant ADDR_C_CTRL      : INTEGER := 16#114#;
    constant ADDR_BITS         : INTEGER := 9;

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
    signal int_A_0             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_1             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_2             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_3             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_4             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_5             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_6             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_7             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_8             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_9             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_10            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_11            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_12            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_13            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_14            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_A_15            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_0             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_1             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_2             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_3             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_4             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_5             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_6             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_7             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_8             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_9             : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_10            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_11            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_12            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_13            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_14            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_B_15            : UNSIGNED(7 downto 0) := (others => '0');
    signal int_C_ap_vld        : STD_LOGIC;
    signal int_C               : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
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

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
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
    RVALID_t  <= '1' when (rstate = rddata) else '0';
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
                    when ADDR_A_0_DATA_0 =>
                        rdata_data <= RESIZE(int_A_0(7 downto 0), 32);
                    when ADDR_A_1_DATA_0 =>
                        rdata_data <= RESIZE(int_A_1(7 downto 0), 32);
                    when ADDR_A_2_DATA_0 =>
                        rdata_data <= RESIZE(int_A_2(7 downto 0), 32);
                    when ADDR_A_3_DATA_0 =>
                        rdata_data <= RESIZE(int_A_3(7 downto 0), 32);
                    when ADDR_A_4_DATA_0 =>
                        rdata_data <= RESIZE(int_A_4(7 downto 0), 32);
                    when ADDR_A_5_DATA_0 =>
                        rdata_data <= RESIZE(int_A_5(7 downto 0), 32);
                    when ADDR_A_6_DATA_0 =>
                        rdata_data <= RESIZE(int_A_6(7 downto 0), 32);
                    when ADDR_A_7_DATA_0 =>
                        rdata_data <= RESIZE(int_A_7(7 downto 0), 32);
                    when ADDR_A_8_DATA_0 =>
                        rdata_data <= RESIZE(int_A_8(7 downto 0), 32);
                    when ADDR_A_9_DATA_0 =>
                        rdata_data <= RESIZE(int_A_9(7 downto 0), 32);
                    when ADDR_A_10_DATA_0 =>
                        rdata_data <= RESIZE(int_A_10(7 downto 0), 32);
                    when ADDR_A_11_DATA_0 =>
                        rdata_data <= RESIZE(int_A_11(7 downto 0), 32);
                    when ADDR_A_12_DATA_0 =>
                        rdata_data <= RESIZE(int_A_12(7 downto 0), 32);
                    when ADDR_A_13_DATA_0 =>
                        rdata_data <= RESIZE(int_A_13(7 downto 0), 32);
                    when ADDR_A_14_DATA_0 =>
                        rdata_data <= RESIZE(int_A_14(7 downto 0), 32);
                    when ADDR_A_15_DATA_0 =>
                        rdata_data <= RESIZE(int_A_15(7 downto 0), 32);
                    when ADDR_B_0_DATA_0 =>
                        rdata_data <= RESIZE(int_B_0(7 downto 0), 32);
                    when ADDR_B_1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_1(7 downto 0), 32);
                    when ADDR_B_2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_2(7 downto 0), 32);
                    when ADDR_B_3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_3(7 downto 0), 32);
                    when ADDR_B_4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_4(7 downto 0), 32);
                    when ADDR_B_5_DATA_0 =>
                        rdata_data <= RESIZE(int_B_5(7 downto 0), 32);
                    when ADDR_B_6_DATA_0 =>
                        rdata_data <= RESIZE(int_B_6(7 downto 0), 32);
                    when ADDR_B_7_DATA_0 =>
                        rdata_data <= RESIZE(int_B_7(7 downto 0), 32);
                    when ADDR_B_8_DATA_0 =>
                        rdata_data <= RESIZE(int_B_8(7 downto 0), 32);
                    when ADDR_B_9_DATA_0 =>
                        rdata_data <= RESIZE(int_B_9(7 downto 0), 32);
                    when ADDR_B_10_DATA_0 =>
                        rdata_data <= RESIZE(int_B_10(7 downto 0), 32);
                    when ADDR_B_11_DATA_0 =>
                        rdata_data <= RESIZE(int_B_11(7 downto 0), 32);
                    when ADDR_B_12_DATA_0 =>
                        rdata_data <= RESIZE(int_B_12(7 downto 0), 32);
                    when ADDR_B_13_DATA_0 =>
                        rdata_data <= RESIZE(int_B_13(7 downto 0), 32);
                    when ADDR_B_14_DATA_0 =>
                        rdata_data <= RESIZE(int_B_14(7 downto 0), 32);
                    when ADDR_B_15_DATA_0 =>
                        rdata_data <= RESIZE(int_B_15(7 downto 0), 32);
                    when ADDR_C_DATA_0 =>
                        rdata_data <= RESIZE(int_C(31 downto 0), 32);
                    when ADDR_C_CTRL =>
                        rdata_data(0) <= int_C_ap_vld;
                    when others =>
                        NULL;
                    end case;
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
    A_0                  <= STD_LOGIC_VECTOR(int_A_0);
    A_1                  <= STD_LOGIC_VECTOR(int_A_1);
    A_2                  <= STD_LOGIC_VECTOR(int_A_2);
    A_3                  <= STD_LOGIC_VECTOR(int_A_3);
    A_4                  <= STD_LOGIC_VECTOR(int_A_4);
    A_5                  <= STD_LOGIC_VECTOR(int_A_5);
    A_6                  <= STD_LOGIC_VECTOR(int_A_6);
    A_7                  <= STD_LOGIC_VECTOR(int_A_7);
    A_8                  <= STD_LOGIC_VECTOR(int_A_8);
    A_9                  <= STD_LOGIC_VECTOR(int_A_9);
    A_10                 <= STD_LOGIC_VECTOR(int_A_10);
    A_11                 <= STD_LOGIC_VECTOR(int_A_11);
    A_12                 <= STD_LOGIC_VECTOR(int_A_12);
    A_13                 <= STD_LOGIC_VECTOR(int_A_13);
    A_14                 <= STD_LOGIC_VECTOR(int_A_14);
    A_15                 <= STD_LOGIC_VECTOR(int_A_15);
    B_0                  <= STD_LOGIC_VECTOR(int_B_0);
    B_1                  <= STD_LOGIC_VECTOR(int_B_1);
    B_2                  <= STD_LOGIC_VECTOR(int_B_2);
    B_3                  <= STD_LOGIC_VECTOR(int_B_3);
    B_4                  <= STD_LOGIC_VECTOR(int_B_4);
    B_5                  <= STD_LOGIC_VECTOR(int_B_5);
    B_6                  <= STD_LOGIC_VECTOR(int_B_6);
    B_7                  <= STD_LOGIC_VECTOR(int_B_7);
    B_8                  <= STD_LOGIC_VECTOR(int_B_8);
    B_9                  <= STD_LOGIC_VECTOR(int_B_9);
    B_10                 <= STD_LOGIC_VECTOR(int_B_10);
    B_11                 <= STD_LOGIC_VECTOR(int_B_11);
    B_12                 <= STD_LOGIC_VECTOR(int_B_12);
    B_13                 <= STD_LOGIC_VECTOR(int_B_13);
    B_14                 <= STD_LOGIC_VECTOR(int_B_14);
    B_15                 <= STD_LOGIC_VECTOR(int_B_15);

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
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_0_DATA_0) then
                    int_A_0(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_0(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_1_DATA_0) then
                    int_A_1(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_1(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_2_DATA_0) then
                    int_A_2(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_2(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_3_DATA_0) then
                    int_A_3(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_3(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_4_DATA_0) then
                    int_A_4(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_4(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_5_DATA_0) then
                    int_A_5(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_5(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_6_DATA_0) then
                    int_A_6(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_6(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_7_DATA_0) then
                    int_A_7(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_7(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_8_DATA_0) then
                    int_A_8(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_8(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_9_DATA_0) then
                    int_A_9(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_9(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_10_DATA_0) then
                    int_A_10(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_10(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_11_DATA_0) then
                    int_A_11(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_11(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_12_DATA_0) then
                    int_A_12(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_12(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_13_DATA_0) then
                    int_A_13(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_13(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_14_DATA_0) then
                    int_A_14(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_14(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_15_DATA_0) then
                    int_A_15(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_A_15(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_0_DATA_0) then
                    int_B_0(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_0(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_1_DATA_0) then
                    int_B_1(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_1(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_2_DATA_0) then
                    int_B_2(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_2(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_3_DATA_0) then
                    int_B_3(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_3(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_4_DATA_0) then
                    int_B_4(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_4(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_5_DATA_0) then
                    int_B_5(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_5(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_6_DATA_0) then
                    int_B_6(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_6(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_7_DATA_0) then
                    int_B_7(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_7(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_8_DATA_0) then
                    int_B_8(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_8(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_9_DATA_0) then
                    int_B_9(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_9(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_10_DATA_0) then
                    int_B_10(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_10(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_11_DATA_0) then
                    int_B_11(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_11(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_12_DATA_0) then
                    int_B_12(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_12(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_13_DATA_0) then
                    int_B_13(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_13(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_14_DATA_0) then
                    int_B_14(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_14(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_15_DATA_0) then
                    int_B_15(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_B_15(7 downto 0));
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

end architecture behave;
