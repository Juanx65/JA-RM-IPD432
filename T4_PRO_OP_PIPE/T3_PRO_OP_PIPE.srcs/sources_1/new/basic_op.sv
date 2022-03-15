`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2021 21:52:22
// Design Name: 
// Module Name:  basic_op
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


module basic_op #(parameter WIDTH = 1024, NBITS = 8, RESULT_WIDTH =  ((WIDTH-1) < 2**$clog2(WIDTH)) ? NBITS + $clog2(WIDTH) : NBITS + $clog2(WIDTH) + 1)(
    input logic clk, rst,  //reloj y reset
    
    input logic [NBITS-1:0] A [WIDTH-1:0],  //vector de entrada A con palabras de 8 bits
    input logic [NBITS-1:0] B [WIDTH-1:0],  //vector de entrada B con palabras de 8 bits
    input logic flag_process,
    input logic [2:0] command,
    
    output logic flag_process_out,
    output logic [RESULT_WIDTH-1  :0] basic_result [WIDTH-1:0] //9 bits por palabra  
    );
    
    localparam READ_VEC_A = 'd1;
    localparam READ_VEC_B = 'd2;
    localparam SUM_VEC = 'd3;
    localparam AVG_VEC = 'd4;
    localparam MAN_DIST = 'd5;
    
    localparam N = WIDTH/2;
    
    logic [NBITS-1:0] A_half [N-1:0];
    logic [NBITS-1:0] B_half [N-1:0];
    logic [RESULT_WIDTH-1  :0] basic_half [N-1:0];
    logic [RESULT_WIDTH-1  :0] basic_result_nx [WIDTH-1:0];
    
    always_ff @(posedge clk) begin
        flag_process_out <= flag_process;
        basic_result <= basic_result_nx;
    end
    
    initial basic_result = '{WIDTH{0}};
    always_comb begin
        basic_result_nx = basic_result;
        if(flag_process) begin
            A_half = A [WIDTH-1:N];
            B_half = B [WIDTH-1:N];
            basic_result_nx [WIDTH-1:N] = basic_half;            
        end else begin
            A_half = A [N-1:0];
            B_half = B [N-1:0];
            basic_result_nx [N-1:0] = basic_half;  
        end     
    end
    
    logic  [RESULT_WIDTH-1  :0] suma_half [N-1:0];
    
     
    genvar i;
      generate 
        for (i = 0; i < N; i++) begin
            always_comb begin
                suma_half[i] = A_half[i] + B_half[i];
                case(command)
                     READ_VEC_A: basic_half[i] = A_half[i];
                     
                     READ_VEC_B: basic_half[i] = B_half[i];
                     
                     SUM_VEC: basic_half[i] = suma_half[i];     //suma
                     
                     AVG_VEC: basic_half[i] = (suma_half[i])/2;    //  avg
                     
                     MAN_DIST:  if (A_half[i] > B_half[i])
                                    basic_half[i] = A_half[i] - B_half[i];
                                else
                                    basic_half[i] = B_half[i] - A_half[i];
                                    
                    default: basic_half[i] = 0;//basic_result[i];
                 endcase
            end
        end  
    endgenerate
endmodule