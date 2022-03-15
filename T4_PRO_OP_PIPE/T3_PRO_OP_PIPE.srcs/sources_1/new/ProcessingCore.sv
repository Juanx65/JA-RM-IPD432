`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 5/12/2021
// Design Name: T2 IPD432
// Module Name: UART_TX_Logic
// Autor Name: Juan Aguilera
// 
//////////////////////////////////////////////////////////////////////////////////

module PocessingCore
 #(parameter WIDTH = 1024, NBITS = 8)(
    
    input logic clk, rst,  //reloj y reset    
    
    input logic [2:0] command,
    input logic [NBITS-1:0] A[WIDTH-1:0],  //vector resultado de basic_op
    input logic [NBITS-1:0] B[WIDTH-1:0],
    
    input logic flag_process, //indica que se debe realizar una operacoi?n
    input logic flag_sent32,
    
    output logic flag_ready32,                    
    output logic [31:0] process_result
      
    );
   
    localparam READ_VEC_A = 'd1;
    localparam READ_VEC_B = 'd2;
    localparam SUM_VEC = 'd3;
    localparam AVG_VEC = 'd4;
    localparam MAN_DIST = 'd5;
    
    localparam RESULT_WIDTH = ((WIDTH-1) < 2**$clog2(WIDTH)) ? NBITS + $clog2(WIDTH) : NBITS + $clog2(WIDTH) + 1;
    
    logic [RESULT_WIDTH-1 :0] basic_result [WIDTH-1:0]; //vector resultado de basic_result  9 bits
    
    logic [RESULT_WIDTH-1:0] result_tree;//, result_tree_out; //resultado del adder tree
    logic [RESULT_WIDTH-1:0] result_unpack; //resultado del adder tree 
       
           
    logic flag_tree, flag_unpack;
        
    //instance of   basic op
    basic_op #(.WIDTH(WIDTH), .NBITS(NBITS),.RESULT_WIDTH(RESULT_WIDTH)) 
     BASICPROCE(.clk(clk),
                .rst(rst),
                .A(A),
                .B(B),
                .flag_process(flag_process),
                .command(command),
                .flag_process_out(flag_process_out),
                .basic_result(basic_result));
       
    //instance of  adder tree             
     adder_tree #( .WIDTH(WIDTH), .NBITS(RESULT_WIDTH), .NBITS_RESULT(RESULT_WIDTH))
        ADDER ( .clk(clk),
                //.enable(1'b1),
                .data(basic_result),
                .result(result_tree));
                
    //instance of fsm_adder_tree
     fsm_adder_tree #(.NBITS(RESULT_WIDTH)) 
                  FSMADDER(.clk(clk),
	                       .rst(rst),
	                       .command(command),
	                       //.result_tree(result_tree),
	                       .flag_process(flag_process_out),
	                       .flag_sent32(flag_sent32),
	                       .flag_ready32(flag_tree)	                       
	                       //.data_out()
	                       );	                    	                      
	                                      
    //instance of fasm_unpack
    fsm_unpack  #(.WIDTH(WIDTH), .NBITS(RESULT_WIDTH)) 
              FSMUNPACK(.clk(clk),
                        .rst(rst),
                        .command(command),
                         .basic_result(basic_result),
                         .flag_process(flag_process_out),
                         .flag_sent32(flag_sent32),
                         .flag_ready32(flag_unpack),
                         .data_out(result_unpack));
    
    assign flag_ready32 = (command == MAN_DIST )? flag_tree : flag_unpack ;
    assign process_result = (command == MAN_DIST )? result_tree : result_unpack ;
endmodule
