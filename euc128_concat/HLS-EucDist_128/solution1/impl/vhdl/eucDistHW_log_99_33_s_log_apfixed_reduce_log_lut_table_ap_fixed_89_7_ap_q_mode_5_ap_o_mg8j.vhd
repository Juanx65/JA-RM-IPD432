-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity eucDistHW_log_99_33_s_log_apfixed_reduce_log_lut_table_ap_fixed_89_7_ap_q_mode_5_ap_o_mg8j is 
    generic(
             DataWidth     : integer := 60; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of eucDistHW_log_99_33_s_log_apfixed_reduce_log_lut_table_ap_fixed_89_7_ap_q_mode_5_ap_o_mg8j is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "000000000000000000000000000000000000000000000000000000000000", 
    1 => "000001000000000000000000000000000001111111111111110000000000", 
    2 => "000010000000000000000000000000000111111111111111100000000000", 
    3 => "000011000000000000000000000000010001111111111111010000000010", 
    4 => "000100000000000000000000000000011111111111111111000000000101", 
    5 => "000101000000000000000000000000110001111111111110110000001010", 
    6 => "000110000000000000000000000001000111111111111110100000010001", 
    7 => "000111000000000000000000000001100001111111111110010000011100", 
    8 => "001000000000000000000000000001111111111111111110000000101010", 
    9 => "001001000000000000000000000010100001111111111101110000111100", 
    10 => "001010000000000000000000000011000111111111111101100001010011", 
    11 => "001011000000000000000000000011110001111111111101010001101110", 
    12 => "001100000000000000000000000100011111111111111101000010001111", 
    13 => "001101000000000000000000000101010001111111111100110010110111", 
    14 => "001110000000000000000000000110000111111111111100100011100100", 
    15 => "001111000000000000000000000111000001111111111100010100011001", 
    16 => "010000000000000000000000000111111111111111111100000101010101", 
    17 => "010001000000000000000000001001000001111111111011110110011001", 
    18 => "010010000000000000000000001010000111111111111011100111100101", 
    19 => "010011000000000000000000001011010001111111111011011000111011", 
    20 => "010100000000000000000000001100011111111111111011001010011010", 
    21 => "010101000000000000000000001101110001111111111010111100000011", 
    22 => "010110000000000000000000001111000111111111111010101101110111", 
    23 => "010111000000000000000000010000100001111111111010011111110101", 
    24 => "011000000000000000000000010001111111111111111010010001111111", 
    25 => "011001000000000000000000010011100001111111111010000100010110", 
    26 => "011010000000000000000000010101000111111111111001110110111000", 
    27 => "011011000000000000000000010110110001111111111001101001101000", 
    28 => "011100000000000000000000011000011111111111111001011100100101", 
    29 => "011101000000000000000000011010010001111111111001001111110000", 
    30 => "011110000000000000000000011100000111111111111001000011001001", 
    31 => "011111000000000000000000011110000001111111111000110110110010", 
    32 => "100000000000000000000000011111111111111111111000101010101010", 
    33 => "100001000000000000000000100010000001111111111000011110110010", 
    34 => "100010000000000000000000100100000111111111111000010011001011", 
    35 => "100011000000000000000000100110010001111111111000000111110100", 
    36 => "100100000000000000000000101000011111111111110111111100101111", 
    37 => "100101000000000000000000101010110001111111110111110001111101", 
    38 => "100110000000000000000000101101000111111111110111100111011100", 
    39 => "100111000000000000000000101111100001111111110111011101001111", 
    40 => "101000000000000000000000110001111111111111110111010011010101", 
    41 => "101001000000000000000000110100100001111111110111001001101111", 
    42 => "101010000000000000000000110111000111111111110111000000011101", 
    43 => "101011000000000000000000111001110001111111110110110111100001", 
    44 => "101100000000000000000000111100011111111111110110101110111010", 
    45 => "101101000000000000000000111111010001111111110110100110101001", 
    46 => "101110000000000000000001000010000111111111110110011110101111", 
    47 => "101111000000000000000001000101000001111111110110010111001011", 
    48 => "110000000000000000000001000111111111111111110110001111111111", 
    49 => "110001000000000000000001001011000001111111110110001001001100", 
    50 => "110010000000000000000001001110000111111111110110000010110000", 
    51 => "110011000000000000000001010001010001111111110101111100101110", 
    52 => "110100000000000000000001010100011111111111110101110111000101", 
    53 => "110101000000000000000001010111110001111111110101110001110110", 
    54 => "110110000000000000000001011011000111111111110101101101000001", 
    55 => "110111000000000000000001011110100001111111110101101000101000", 
    56 => "111000000000000000000001100001111111111111110101100100101010", 
    57 => "111001000000000000000001100101100001111111110101100001001000", 
    58 => "111010000000000000000001101001000111111111110101011110000011", 
    59 => "111011000000000000000001101100110001111111110101011011011010", 
    60 => "111100000000000000000001110000011111111111110101011001001111", 
    61 => "111101000000000000000001110100010001111111110101010111100011", 
    62 => "111110000000000000000001111000000111111111110101010110010100", 
    63 => "111111000000000000000001111100000001111111110101010101100101" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

