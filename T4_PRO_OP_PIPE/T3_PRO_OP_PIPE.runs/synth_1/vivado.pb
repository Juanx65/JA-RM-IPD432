
?
Command: %s
53*	vivadotcl2?
?synth_design -top TOP -part xc7a100tcsg324-1 -flatten_hierarchy full -directive AreaOptimized_high -retiming -control_set_opt_threshold 1 -cascade_dsp tree -assert2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
45642default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
TOP2default:default2
 2default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/TOP.sv2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
UART_RX_Logic2default:default2
 2default:default2|
fC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/UART_RX_Logic.sv2default:default2
102default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter BR_SIZE bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter BR_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2?
jC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2
12default:default2
12default:default2?
jC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_rx.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	data_sync2default:default2
 2default:default2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/data_sync.v2default:default2
112default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	data_sync2default:default2
 2default:default2
22default:default2
12default:default2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/data_sync.v2default:default2
112default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_rx.v2default:default2
782default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
32default:default2
12default:default2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_rx.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
fsm_rx2default:default2
 2default:default2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_rx.sv2default:default2
102default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter BR_SIZE bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter BR_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_rx.sv2default:default2
562default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fsm_rx2default:default2
 2default:default2
42default:default2
12default:default2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_rx.sv2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
fsm_rx_data_in2default:default2
 2default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_rx_data_in.sv2default:default2
102default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_rx_data_in.sv2default:default2
642default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
fsm_rx_data_in2default:default2
 2default:default2
52default:default2
12default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_rx_data_in.sv2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
UART_RX_Logic2default:default2
 2default:default2
62default:default2
12default:default2|
fC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/UART_RX_Logic.sv2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
BRAM2default:default2
 2default:default2s
]C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/BRAM.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter SIZE bound to: 3 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter NBITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BRAM2default:default2
 2default:default2
72default:default2
12default:default2s
]C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/BRAM.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
CommandDecoder2default:default2
 2default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/CommandDecoder.sv2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
CommandDecoder2default:default2
 2default:default2
82default:default2
12default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/CommandDecoder.sv2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
UART_TX_Logic2default:default2
 2default:default2|
fC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/UART_TX_Logic.sv2default:default2
102default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter BR_SIZE bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter BR_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

fsm_send322default:default2
 2default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_send32.sv2default:default2
102default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_send32.sv2default:default2
472default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

fsm_send322default:default2
 2default:default2
92default:default2
12default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_send32.sv2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys26
"uart_baud_tick_gen__parameterized02default:default2
 2default:default2?
jC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"uart_baud_tick_gen__parameterized02default:default2
 2default:default2
92default:default2
12default:default2?
jC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_tx.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
102default:default2
12default:default2u
_C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/uart_tx.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
UART_TX_Logic2default:default2
 2default:default2
112default:default2
12default:default2|
fC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/UART_TX_Logic.sv2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
PocessingCore2default:default2
 2default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/ProcessingCore.sv2default:default2
102default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter NBITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
basic_op2default:default2
 2default:default2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/basic_op.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter NBITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RESULT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/basic_op.sv2default:default2
612default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/basic_op.sv2default:default2
612default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/basic_op.sv2default:default2
612default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/basic_op.sv2default:default2
612default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
basic_op2default:default2
 2default:default2
122default:default2
12default:default2w
aC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/basic_op.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

adder_tree2default:default2
 2default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter NBITS_RESULT bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
	add_pairs2default:default2
 2default:default2x
bC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add_pairs.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter NBITS_RESULT bound to: 11 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter N_RESULTS bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
add2default:default2
 2default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add.sv2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter NBITS_RESULT bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add2default:default2
 2default:default2
132default:default2
12default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	add_pairs2default:default2
 2default:default2
142default:default2
12default:default2x
bC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add_pairs.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized02default:default2
 2default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2-
add_pairs__parameterized02default:default2
 2default:default2x
bC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add_pairs.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter NBITS_RESULT bound to: 12 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter N_RESULTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2'
add__parameterized02default:default2
 2default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add.sv2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter NBITS_RESULT bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
add__parameterized02default:default2
 2default:default2
142default:default2
12default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
add_pairs__parameterized02default:default2
 2default:default2
142default:default2
12default:default2x
bC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add_pairs.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized12default:default2
 2default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
232default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter NBITS bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2'
add__parameterized12default:default2
 2default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add.sv2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter NBITS bound to: 12 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter NBITS_RESULT bound to: 13 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
add__parameterized12default:default2
 2default:default2
142default:default2
12default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/add.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized12default:default2
 2default:default2
152default:default2
12default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized02default:default2
 2default:default2
152default:default2
12default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
112default:default2
result2default:default2
132default:default2

adder_tree2default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
662default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

adder_tree2default:default2
 2default:default2
152default:default2
12default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/adder_tree.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
fsm_adder_tree2default:default2
 2default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_adder_tree.sv2default:default2
22default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_adder_tree.sv2default:default2
432default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
fsm_adder_tree2default:default2
 2default:default2
162default:default2
12default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_adder_tree.sv2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

fsm_unpack2default:default2
 2default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_unpack.sv2default:default2
22default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter NBITS bound to: 11 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_unpack.sv2default:default2
422default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

fsm_unpack2default:default2
 2default:default2
172default:default2
12default:default2y
cC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/fsm_unpack.sv2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
PocessingCore2default:default2
 2default:default2
182default:default2
12default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/ProcessingCore.sv2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
unsigned_to_bcd2default:default2
 2default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/unsigned_to_bcd.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
unsigned_to_bcd2default:default2
 2default:default2
192default:default2
12default:default2}
gC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/unsigned_to_bcd.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
display2default:default2
 2default:default2v
`C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/display.sv2default:default2
222default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_divider2default:default2
 2default:default2z
dC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/clk_divider.sv2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter frec bound to: 480 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_divider2default:default2
 2default:default2
202default:default2
12default:default2z
dC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/clk_divider.sv2default:default2
232default:default8@Z8-6155h px? 
?
default block is never used226*oasys2v
`C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/display.sv2default:default2
552default:default8@Z8-226h px? 
?
default block is never used226*oasys2v
`C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/display.sv2default:default2
712default:default8@Z8-226h px? 
?
default block is never used226*oasys2v
`C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/display.sv2default:default2
892default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
display2default:default2
 2default:default2
212default:default2
12default:default2v
`C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/display.sv2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
TOP2default:default2
 2default:default2
222default:default2
12default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/TOP.sv2default:default2
102default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1129.4382default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
lC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
lC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
lC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc2default:default2)
.Xil/TOP_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1129.4382default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1129.4382default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
pr_state_reg2default:default2
fsm_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
pr_state_reg2default:default2"
fsm_rx_data_in2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
pr_state_reg2default:default2

fsm_send322default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_tx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
pr_state_reg2default:default2"
fsm_adder_tree2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2 
pr_state_reg2default:default2

fsm_unpack2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
unsigned_to_bcd2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_IDLE |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                RX_START |                            00010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_RECV |                            00100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_STOP |                            01000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                RX_READY |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
uart_rx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                             0001 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 ESCRIBE |                             0010 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                  AVANZA |                             0100 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  ESPERA |                             1000 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
pr_state_reg2default:default2
one-hot2default:default2
fsm_rx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                           000001 |                           000000
2default:defaulth p
x
? 
?
%s
*synth2s
_              FIRST_BYTE |                           000010 |                           000001
2default:defaulth p
x
? 
?
%s
*synth2s
_              WRITE_BRAM |                           000100 |                           000100
2default:defaulth p
x
? 
?
%s
*synth2s
_               END_WRITE |                           001000 |                           000101
2default:defaulth p
x
? 
?
%s
*synth2s
_               COMM_DATA |                           010000 |                           000010
2default:defaulth p
x
? 
?
%s
*synth2s
_          SEND_COMM_DATA |                           100000 |                           000011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
pr_state_reg2default:default2
one-hot2default:default2"
fsm_rx_data_in2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                               00 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_              BYTE_READY |                               01 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    SEND |                               10 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  ESPERA |                               11 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
pr_state_reg2default:default2

sequential2default:default2

fsm_send322default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                TX_START |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_SEND |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_STOP |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_tx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                             0001 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_               WAIT_TREE |                             0010 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    FLAG |                             0100 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    SEND |                             1000 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
pr_state_reg2default:default2
one-hot2default:default2"
fsm_adder_tree2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                             0001 |                            00000
2default:defaulth p
x
? 
?
%s
*synth2s
_                    FLAG |                             0010 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_             WAIT_RESULT |                             0100 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    SENT |                             1000 |                            00011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
pr_state_reg2default:default2
one-hot2default:default2

fsm_unpack2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_IDLE |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 S_SHIFT |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_ADD3 |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
	state_reg2default:default2#
unsigned_to_bcd2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2#
data_to_display2default:default2r
\C:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.srcs/sources_1/new/TOP.sv2default:default2
1132default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   19 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   11 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               19 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 13    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 20    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP result_reg, operation Mode is: (C+(A:0x0):B)'.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register result_reg is absorbed into DSP result_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator result0 is absorbed into DSP result_reg.
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 11     | 11     | -      | 11     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 11     | 11     | -      | 11     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 11     | 11     | -      | 11     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 11     | 11     | -      | 11     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 11     | 11     | -      | 12     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 11     | 11     | -      | 12     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|add         | (C+(A:0x0):B)' | 30     | 12     | 12     | -      | 13     | 0    | 0    | 0    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1129.438 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1177.758 ; gain = 48.320
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Retiming module %s4230*oasys2O
;`TOP`
	Numbers of forward move = 0, and backward move = 0

2default:defaultZ8-5816h px? 
V
Retiming module %s4230*oasys2 
`TOP' done

2default:defaultZ8-5816h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |CARRY4  |    69|
2default:defaulth px? 
E
%s*synth2-
|3     |DSP48E1 |     7|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |    23|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |   166|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    |   102|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |   130|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |    98|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    |   132|
2default:defaulth px? 
E
%s*synth2-
|10    |FDCE    |     3|
2default:defaulth px? 
E
%s*synth2-
|11    |FDRE    |   428|
2default:defaulth px? 
E
%s*synth2-
|12    |FDSE    |    11|
2default:defaulth px? 
E
%s*synth2-
|13    |LD      |    11|
2default:defaulth px? 
E
%s*synth2-
|14    |IBUF    |     3|
2default:defaulth px? 
E
%s*synth2-
|15    |OBUF    |    16|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1185.254 ; gain = 55.816
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0122default:default2
1192.0352default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
872default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
TOP2default:default2
TOP2default:defaultZ29-101h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1195.7112default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 11 instances were transformed.
  LD => LDCE: 11 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
18880cd52default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1022default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:372default:default2
00:00:382default:default2
1195.7112default:default2
66.2732default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2k
WC:/Users/juan_/Documents/FPGA/IPD432/T3_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/synth_1/TOP.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jan  5 23:43:54 20222default:defaultZ17-206h px? 


End Record