// Module header:-----------------------------
module fsm_adder_tree
#(parameter
	NBITS = 8
)(
	input 	logic clk, rst,
	input logic [2:0] command,
	input	logic flag_process,
	input	logic flag_sent32,
	output 	logic flag_ready32
);

localparam READ_VEC_A = 'd1;
localparam READ_VEC_B = 'd2;
localparam SUM_VEC = 'd3;
localparam AVG_VEC = 'd4;
localparam MAN_DIST = 'd5;

localparam CICLOS = 18;
localparam CW = $clog2(CICLOS); 
logic [CW-1:0] wait_ciclos, wait_ciclos_nx;
logic flag_ready32_nx;

//FSM states type:
typedef enum logic [3:0] {IDLE, WAIT_TREE,FLAG ,SEND} state;
state pr_state, nx_state;

//FSM state register:
always_ff @(posedge clk)
	if (rst) pr_state <= IDLE;
	else pr_state <= nx_state;
// iniciales

//FSM combinational logic:
always_comb begin
	nx_state = pr_state;
	flag_ready32_nx = 'd0;
	wait_ciclos_nx = 'd0;
	case (pr_state)
		IDLE:
			if (flag_process & (command == MAN_DIST)) nx_state = WAIT_TREE;
		WAIT_TREE: 
		begin
			wait_ciclos_nx = wait_ciclos + 1;
			if (wait_ciclos == CICLOS) nx_state = FLAG;
		end
        FLAG:
        begin
            flag_ready32_nx = 'd1;
            nx_state = SEND;
        end
		SEND: 
		begin
			if(flag_sent32) nx_state = IDLE;
		end
	endcase
end

//Optional output register (if required). It simply delays the combinational outputs to prevent propagation of glitches.
always_ff @(posedge clk) begin
	wait_ciclos <= wait_ciclos_nx;
	flag_ready32 <= flag_ready32_nx;
end
endmodule
