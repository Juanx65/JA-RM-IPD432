-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity eucDistHW_log_99_33_s_log_apfixed_reduce_log0_lut_table_ap_fixed_89_7_ap_q_mode_5_ap_o_bkb is 
    generic(
             DataWidth     : integer := 82; 
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


architecture rtl of eucDistHW_log_99_33_s_log_apfixed_reduce_log0_lut_table_ap_fixed_89_7_ap_q_mode_5_ap_o_bkb is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 2=> "1111111101111100000111101111110100011001001011101110011101010000110011101110101001", 
    3 to 4=> "0000011110011100110011011100001000001100110100010000100110001000110110101000100010", 
    5 to 6=> "0001000000000001101101111011001010110111011010001110110111011001011100101110011111", 
    7 to 9=> "0001100010101111011111010101101001110010011110000110111111111110111011000100100011", 
    10 to 11=> "0010000110101011001111000000000101101000111101111101111100001101001101100000000011", 
    12 to 14=> "0010101011111010100111111101001111000001101010100100101101000111110101000001000000", 
    15 to 17=> "0011010010100011111110010111011000101110111000101010111000101111001001101011111101", 
    18 to 21=> "0011111010101110010101111101011010000000100101011101101001001100000000010110110110", 
    22 to 25=> "0100100100100001101001110100000111101100100111010011000100110001101111101001100000", 
    26 to 29=> "0101010000000110110101110001100111111011101111100100011010001001000011111001110010", 
    30 to 31=> "0101111101101000000001111110110001111001100000110101011100001000011010101110000100", 
    32 to 33=> "1011001111011000100101000001000110010100101110100010010011100000000110111100010111", 
    34 to 35=> "1011100111011110101011000100111001101010100101101010111101000010010110111100101011", 
    36 to 38=> "1100000000001001111011100010001001011100101100101001001000110110001001000101110101", 
    39 to 41=> "1100011001011100001011110110110111100011111110101010001111111000100000110011101000", 
    42 to 43=> "1100110011010111011010011100001100110000100000010111111001100100010011001000100101", 
    44 to 46=> "1101001101111101101111100001101111001010000001110011111110111111111001110010011000", 
    47 to 49=> "1101101001010001011110010000110011011001010001001010000010111000110000110011000101", 
    50 to 53=> "1110000101010101000101111000111011101110001111000000000101100110111001000110001001", 
    54 to 56=> "1110100010001011010011000111001000110011110000111001101110110100111010100101000010", 
    57 to 60=> "1110111111110111000001101001110100010000011111011001010000100000000100001000010110", 
    61 to 63=> "1111011110011011011110000011100101111011001000100010011100111101100100001010101101" );


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

