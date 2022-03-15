`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 23/11/2021
// Design Name: T2 IPD432
// Module Name: fsm_tx
// Autor Name: Juan Aguilera
// 
//////////////////////////////////////////////////////////////////////////////////

module fsm_tx
#(parameter
	BR_SIZE = 1024,
	BR_WIDTH = 10
)
(
	input  logic clk, rst,
	input  logic [7:0] dout,
    input  logic flag_rx,
    input  logic tx_busy,

	output logic enb,
    output logic [BR_WIDTH-1:0] addrb,
    output logic [7:0] tx_data,
    output logic flag_tx,
    output logic tx_send
);

 logic enb_nx;
 logic [BR_WIDTH-1:0] addrb_nx;
 logic [7:0] tx_data_nx;
 logic flag_tx_nx;
 logic tx_send_nx;
 logic [2:0] cont_ciclo, cont_ciclo_nx;
 
 //FSM states type:
 typedef enum logic [4:0] {IDLE, LEER, SEND,AVANZA, ESPERA} state;
 state pr_state, nx_state;

 //FSM state register:
 always_ff @(posedge clk)
	if (rst) pr_state <= IDLE;
	else pr_state <= nx_state;

  initial addrb = 'b0;
  initial flag_tx = 'b0;
  initial enb = 'b0;
  initial tx_data = 'b0;
  initial cont_ciclo = 'b0;
  
 //FSM combinational logic:
 always_comb begin
    enb_nx     = 'b0;
    addrb_nx   = addrb;
    tx_data_nx = tx_data;
    flag_tx_nx = 'b0;
    tx_send_nx = 'b0;
    cont_ciclo_nx = 'b0;
    nx_state = pr_state;
    
	case (pr_state)
		IDLE:
        begin
            if(~tx_busy && flag_rx)
                nx_state = LEER;
                
        end

        LEER:
        begin
            enb_nx = 'b1;
            tx_data_nx = dout;
            cont_ciclo_nx = cont_ciclo + 'd1;
            if(cont_ciclo >= 'd3) begin
                //tx_send_nx = 'b1; //lo cambio todo....
                nx_state = SEND;
                cont_ciclo_nx = 'd0;
            end
        end
        SEND:
        begin
            tx_send_nx = 'b1;
            nx_state = AVANZA;
        end
        AVANZA:
        begin
            addrb_nx = addrb + 'b1;
            if(addrb == BR_SIZE-1)
                nx_state = ESPERA;
            else
                nx_state = IDLE;

        end

        ESPERA:
        begin
            flag_tx_nx = 'b1;
            //if(flag_rx) begin
             nx_state = IDLE;
            //end
        end       
	endcase
 end

 //Optional output register (if required). It simply delays the combinational outputs to prevent propagation of glitches.
	always_ff @(posedge clk) begin
		enb     <= enb_nx;
		addrb   <= addrb_nx;
        tx_data <= tx_data_nx;
        flag_tx <= flag_tx_nx;
        tx_send <= tx_send_nx;
        cont_ciclo <= cont_ciclo_nx;
    end

 endmodule