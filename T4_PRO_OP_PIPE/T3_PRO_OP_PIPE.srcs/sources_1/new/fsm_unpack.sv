// Module header:-----------------------------
module fsm_unpack
#(parameter
	NBITS = 8,
    WIDTH = 1024
)(
	input 	logic clk, rst,
	input logic [2:0] command,
	input 	logic [NBITS-1:0] basic_result [WIDTH-1:0],
	input	logic flag_process,
	input	logic flag_sent32,
	output 	logic flag_ready32,
	output	logic [NBITS-1:0] data_out
);
localparam READ_VEC_A = 'd1;
localparam READ_VEC_B = 'd2;
localparam SUM_VEC = 'd3;
localparam AVG_VEC = 'd4;
localparam MAN_DIST = 'd5;
localparam CW = $clog2(WIDTH); 

logic [CW-1:0] wait_ciclos, wait_ciclos_nx;
//FSM states type:
typedef enum logic [1:0] {IDLE,FLAG, WAIT_RESULT ,SENT} state;
state pr_state, nx_state;

//FSM state register:
always_ff @(posedge clk)
	if (rst) pr_state <= IDLE;
	else pr_state <= nx_state;

//FSM combinational logic:
always_comb begin
	nx_state = pr_state;
	data_out = basic_result[wait_ciclos];
	wait_ciclos_nx = wait_ciclos;
	flag_ready32 = 'b0;
	case (pr_state)
		IDLE:
		begin
		    wait_ciclos_nx = 'b0;
			if (flag_process & (command != MAN_DIST)) nx_state = FLAG;
	    end
	    FLAG:
	    begin
	       flag_ready32 = 'd1;
	       nx_state = WAIT_RESULT;
	    end
		WAIT_RESULT: 
		begin
			if (flag_sent32) nx_state = SENT;
		end
		SENT: 
		begin
            wait_ciclos_nx = wait_ciclos + 1;
		    if(wait_ciclos == WIDTH-1) nx_state = IDLE;//WIDTH) nx_state = IDLE;
			else nx_state = FLAG;
		end
	endcase
end

always_ff @(posedge clk)
    if(rst) wait_ciclos <= 0;
    else wait_ciclos <= wait_ciclos_nx;
endmodule
