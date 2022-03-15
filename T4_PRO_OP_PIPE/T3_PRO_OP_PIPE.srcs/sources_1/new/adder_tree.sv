`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 19:11:43
// Design Name: 
// Module Name: adder_tree
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


module adder_tree
    #(parameter
	           WIDTH = 1024, 
	           NBITS = 8,
	           
	           NBITS_RESULT = ((WIDTH-1) < 2**$clog2(WIDTH)) ? NBITS + $clog2(WIDTH) : NBITS + $clog2(WIDTH) + 1 ) //cantidad de resultados
	           
    (
    input logic clk, //enable,
    input logic [NBITS-1:0] data [WIDTH-1:0],
    
    output logic [NBITS_RESULT-1:0] result
    );
    
    
    generate
        if (WIDTH == 2) 
            add #(.NBITS(NBITS), .NBITS_RESULT(NBITS_RESULT))
                add_inst (.clk(clk),
                            //.enable(enable),
                             .A(data[0]),
                             .B(data[1]),
                             .result(result));
        else    
            begin
                localparam RES_WIDTH = (NBITS_RESULT > NBITS + 1) ? NBITS + 1 : NBITS_RESULT;
				localparam RESULTS = (WIDTH % 2 == 0) ? WIDTH/2 : WIDTH/2 + 1;
				
				logic [RES_WIDTH-1:0] res[RESULTS - 1:0];
				
				
				//instance of add pairs
				add_pairs #(.WIDTH(WIDTH), .NBITS(NBITS), .NBITS_RESULT(RES_WIDTH), .N_RESULTS(RESULTS))
				    add_pairs_inst(.clk(clk),
				                    //.enable(enable),
				                    .data(data),
				                    .result(res));
				                    
                //instance of adder tree
                adder_tree #( .WIDTH(RESULTS), .NBITS(RES_WIDTH))
                    add_tree_inst(  .clk(clk),
                                    //.enable(enable),
                                    .data(res),
                                    .result(result)); 
             end 				                    
    endgenerate                				                    

endmodule
















