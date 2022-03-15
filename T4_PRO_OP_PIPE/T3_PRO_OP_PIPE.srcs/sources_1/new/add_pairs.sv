`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 20:07:55
// Design Name: 
// Module Name: add_pairs
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


module add_pairs #(parameter WIDTH = 4,   //N words
                            NBITS = 8,    //bits of words
                            NBITS_RESULT = 32, //bits of results
                            N_RESULTS =  (WIDTH % 2 == 0) ? WIDTH/2 : WIDTH/2 + 1) //N of results from each level of tree
    (
    input logic clk,// enable,
    input logic [NBITS-1:0] data [WIDTH-1:0], //data from BRAMA +- BRAM B
    
    output logic [NBITS_RESULT -1:0] result [N_RESULTS-1 :0]                                                 
    );
    
    
    logic [NBITS_RESULT-1:0] res;
    
    genvar i;
    generate 
        for (i=0; i< WIDTH/2; i ++ ) 
            begin
            //Instance of adder
            add #( .NBITS(NBITS), 
                  .NBITS_RESULT(NBITS_RESULT))
                  
            Add(.clk(clk),
                    //.enable(enable),
                    .A(data[2*i]),
                    .B(data[2*i + 1]),
                    .result(result[i])
                    );
            end
        
        //caso impar
        if (N_RESULTS == WIDTH/2 + 1)
			begin							
				always_ff @(posedge clk)
					//if (enable)
						res <= data[WIDTH-1]; //ultimo dato de data
				
				assign result[N_RESULTS-1] = res; //Se guarda en la ultima posicion de resutlados
			end
        
    endgenerate                    
            
            
    
endmodule
