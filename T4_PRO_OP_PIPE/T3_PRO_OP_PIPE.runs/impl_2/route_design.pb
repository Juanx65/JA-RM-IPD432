
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 6f4e82ba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:39 ; elapsed = 00:00:27 . Memory (MB): peak = 2669.770 ; gain = 62.8012default:defaulth px? 
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
A
,Phase 2.1 Create Timer | Checksum: 6f4e82ba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:40 ; elapsed = 00:00:28 . Memory (MB): peak = 2669.770 ; gain = 62.8012default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 6f4e82ba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:40 ; elapsed = 00:00:29 . Memory (MB): peak = 2673.172 ; gain = 66.2032default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 6f4e82ba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:40 ; elapsed = 00:00:29 . Memory (MB): peak = 2673.172 ; gain = 66.2032default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: 98473d57
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:08 ; elapsed = 00:00:47 . Memory (MB): peak = 2731.266 ; gain = 124.2972default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.014 | TNS=-0.164 | WHS=-0.132 | THS=-14.823|
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: cc97d3d9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:00:56 . Memory (MB): peak = 3063.656 ; gain = 456.6882default:defaulth px? 
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
C
.Phase 3.1 Global Routing | Checksum: cc97d3d9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:00:57 . Memory (MB): peak = 3063.656 ; gain = 456.6882default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1f1badd42
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:04 ; elapsed = 00:01:53 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
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
Intermediate Timing Summary %s164*route2L
8| WNS=-1.069 | TNS=-1288.946| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 16b3d4de3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:30 ; elapsed = 00:03:41 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.750 | TNS=-848.276| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: d81a924e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:14 ; elapsed = 00:04:19 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.677 | TNS=-513.278| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 1f524159a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:17 ; elapsed = 00:05:06 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.470 | TNS=-342.658| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.4 Global Iteration 3 | Checksum: 23e698c85
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:12 ; elapsed = 00:05:51 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
u

Phase %s%s
101*constraints2
4.5 2default:default2&
Global Iteration 42default:defaultZ18-101h px? 
H
3Phase 4.5 Global Iteration 4 | Checksum: 24b9d33ac
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:43 ; elapsed = 00:06:12 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 24b9d33ac
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:44 ; elapsed = 00:06:13 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
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
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1db537cb6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:50 ; elapsed = 00:06:17 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.419 | TNS=-185.768| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: dc528daa
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:51 ; elapsed = 00:06:17 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: dc528daa
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:51 ; elapsed = 00:06:17 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: dc528daa
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:51 ; elapsed = 00:06:18 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
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
E
0Phase 6.1.1 Update Timing | Checksum: 12b20fa0d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:57 ; elapsed = 00:06:21 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.389 | TNS=-168.315| WHS=0.037  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1862460e0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:57 ; elapsed = 00:06:22 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1862460e0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:57 ; elapsed = 00:06:22 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: 9b7403cd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:58 ; elapsed = 00:06:22 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: 9b7403cd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:58 ; elapsed = 00:06:23 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 176747c70
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:05 ; elapsed = 00:06:29 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2K
7| WNS=-0.389 | TNS=-168.315| WHS=0.037  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 176747c70
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:09 ; elapsed = 00:06:32 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:09 ; elapsed = 00:06:32 . Memory (MB): peak = 3102.113 ; gain = 495.1452default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
952default:default2
22default:default2
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
00:09:332default:default2
00:06:462default:default2
3102.1132default:default2
559.7662default:defaultZ17-268h px? 
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
00:00:172default:default2
00:00:072default:default2
3102.1132default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2,
report_design_analysis: 2default:default2
00:00:062default:default2
00:00:072default:default2
3102.1132default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2w
cC:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/impl_2/TOP_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:292default:default2
00:00:192default:default2
3102.1132default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2r
^Executing : report_drc -file TOP_drc_routed.rpt -pb TOP_drc_routed.pb -rpx TOP_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2e
Qreport_drc -file TOP_drc_routed.rpt -pb TOP_drc_routed.pb -rpx TOP_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
gC:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/impl_2/TOP_drc_routed.rptgC:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/impl_2/TOP_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:332default:default2
00:00:192default:default2
3102.1132default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file TOP_methodology_drc_routed.rpt -pb TOP_methodology_drc_routed.pb -rpx TOP_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
}report_methodology -file TOP_methodology_drc_routed.rpt -pb TOP_methodology_drc_routed.pb -rpx TOP_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
sC:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/impl_2/TOP_methodology_drc_routed.rptsC:/Users/juan_/Documents/FPGA/JA-RM-IPD432/T4_PRO_OP_PIPE/T3_PRO_OP_PIPE.runs/impl_2/TOP_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:182default:default2
00:00:112default:default2
3102.1132default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
nExecuting : report_power -file TOP_power_routed.rpt -pb TOP_power_summary_routed.pb -rpx TOP_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2u
areport_power -file TOP_power_routed.rpt -pb TOP_power_summary_routed.pb -rpx TOP_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1072default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:262default:default2
00:00:142default:default2
3102.1132default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2g
SExecuting : report_route_status -file TOP_route_status.rpt -pb TOP_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file TOP_timing_summary_routed.rpt -pb TOP_timing_summary_routed.pb -rpx TOP_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
|
%s4*runtcl2`
LExecuting : report_incremental_reuse -file TOP_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
|
%s4*runtcl2`
LExecuting : report_clock_utilization -file TOP_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file TOP_bus_skew_routed.rpt -pb TOP_bus_skew_routed.pb -rpx TOP_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record