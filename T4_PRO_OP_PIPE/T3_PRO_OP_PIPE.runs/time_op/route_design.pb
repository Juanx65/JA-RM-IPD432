
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 106a8613a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:34 ; elapsed = 00:00:23 . Memory (MB): peak = 2372.648 ; gain = 60.4412default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 106a8613a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:34 ; elapsed = 00:00:24 . Memory (MB): peak = 2372.648 ; gain = 60.4412default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 106a8613a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:24 . Memory (MB): peak = 2375.508 ; gain = 63.3012default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 106a8613a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:25 . Memory (MB): peak = 2375.508 ; gain = 63.3012default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 12a57e477
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:58 ; elapsed = 00:00:40 . Memory (MB): peak = 2437.895 ; gain = 125.6882default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.595  | TNS=0.000  | WHS=-0.129 | THS=-29.623|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1cbd768fb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:12 ; elapsed = 00:00:48 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 1cbd768fb
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:12 ; elapsed = 00:00:49 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 117219395
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:29 ; elapsed = 00:00:58 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.010 | TNS=-0.010 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: af482349
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:43 ; elapsed = 00:01:48 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.083  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 10f7eca6d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:53 ; elapsed = 00:01:58 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 10f7eca6d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:53 ; elapsed = 00:01:58 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 10f7eca6d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:54 ; elapsed = 00:01:58 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 10f7eca6d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:54 ; elapsed = 00:01:59 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 10f7eca6d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:54 ; elapsed = 00:01:59 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: ded3c736
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:59 ; elapsed = 00:02:02 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.083  | TNS=0.000  | WHS=0.035  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 11bf6347a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:59 ; elapsed = 00:02:02 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 11bf6347a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:00 ; elapsed = 00:02:03 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1998c1ae6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:00 ; elapsed = 00:02:03 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1998c1ae6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:00 ; elapsed = 00:02:03 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 14016c5c1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:06 ; elapsed = 00:02:09 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=0.083  | TNS=0.000  | WHS=0.035  | THS=0.000  |
2default:defaultZ35-20h px? 
F
1Phase 10 Post Router Timing | Checksum: f57a059f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:31 ; elapsed = 00:02:23 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
F
'The design met the timing requirement.
61*routeZ35-61h px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:31 ; elapsed = 00:02:23 . Memory (MB): peak = 2767.809 ; gain = 455.6022default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
852default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:03:412default:default2
00:02:292default:default2
2767.8092default:default2
529.3792default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:162default:default2
00:00:062default:default2
2767.8092default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2,
report_design_analysis: 2default:default2
00:00:072default:default2
00:00:072default:default2
2767.8092default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2x
dC:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/time_op/TOP_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:272default:default2
00:00:182default:default2
2767.8092default:default2
0.0002default:defaultZ17-268h px? 


End Record