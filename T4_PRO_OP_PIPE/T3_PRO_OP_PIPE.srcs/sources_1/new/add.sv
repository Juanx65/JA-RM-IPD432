`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 19:53:47
// Design Name: 
// Module Name: add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*(* use_dsp = "yes" *) */module add #(parameter NBITS = 8,
                       NBITS_RESULT = 32)(

    input logic clk, //enable,
    input logic [NBITS-1:0] A,
    input logic [NBITS-1:0] B,
    
    output logic [NBITS_RESULT-1:0] result 
    );
    
    logic [NBITS_RESULT-1:0] result_next ;
      
    always_ff @(posedge clk) begin
        //if(enable)
            result <= result_next;
    end

    assign result_next = A + B;
    
endmodule

