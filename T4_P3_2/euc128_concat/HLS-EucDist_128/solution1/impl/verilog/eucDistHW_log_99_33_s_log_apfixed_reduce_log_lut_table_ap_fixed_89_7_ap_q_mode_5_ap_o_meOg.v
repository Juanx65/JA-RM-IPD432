// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module eucDistHW_log_99_33_s_log_apfixed_reduce_log_lut_table_ap_fixed_89_7_ap_q_mode_5_ap_o_meOg (
address0, ce0, q0, reset,clk);

parameter DataWidth = 70;
parameter AddressWidth = 6;
parameter AddressRange = 64;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./eucDistHW_log_99_33_s_log_apfixed_reduce_log_lut_table_ap_fixed_89_7_ap_q_mode_5_ap_o_meOg.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

