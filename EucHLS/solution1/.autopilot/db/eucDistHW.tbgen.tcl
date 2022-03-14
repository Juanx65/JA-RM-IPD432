set moduleName eucDistHW
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {eucDistHW}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_0 int 32 regular {pointer 0}  }
	{ A_1 int 32 regular {pointer 0}  }
	{ A_2 int 32 regular {pointer 0}  }
	{ A_3 int 32 regular {pointer 0}  }
	{ A_4 int 32 regular {pointer 0}  }
	{ A_5 int 32 regular {pointer 0}  }
	{ A_6 int 32 regular {pointer 0}  }
	{ A_7 int 32 regular {pointer 0}  }
	{ A_8 int 32 regular {pointer 0}  }
	{ A_9 int 32 regular {pointer 0}  }
	{ A_10 int 32 regular {pointer 0}  }
	{ A_11 int 32 regular {pointer 0}  }
	{ A_12 int 32 regular {pointer 0}  }
	{ A_13 int 32 regular {pointer 0}  }
	{ A_14 int 32 regular {pointer 0}  }
	{ A_15 int 32 regular {pointer 0}  }
	{ B_0 int 32 regular {pointer 0}  }
	{ B_1 int 32 regular {pointer 0}  }
	{ B_2 int 32 regular {pointer 0}  }
	{ B_3 int 32 regular {pointer 0}  }
	{ B_4 int 32 regular {pointer 0}  }
	{ B_5 int 32 regular {pointer 0}  }
	{ B_6 int 32 regular {pointer 0}  }
	{ B_7 int 32 regular {pointer 0}  }
	{ B_8 int 32 regular {pointer 0}  }
	{ B_9 int 32 regular {pointer 0}  }
	{ B_10 int 32 regular {pointer 0}  }
	{ B_11 int 32 regular {pointer 0}  }
	{ B_12 int 32 regular {pointer 0}  }
	{ B_13 int 32 regular {pointer 0}  }
	{ B_14 int 32 regular {pointer 0}  }
	{ B_15 int 32 regular {pointer 0}  }
	{ C int 32 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0 sc_in sc_lv 32 signal 0 } 
	{ A_1 sc_in sc_lv 32 signal 1 } 
	{ A_2 sc_in sc_lv 32 signal 2 } 
	{ A_3 sc_in sc_lv 32 signal 3 } 
	{ A_4 sc_in sc_lv 32 signal 4 } 
	{ A_5 sc_in sc_lv 32 signal 5 } 
	{ A_6 sc_in sc_lv 32 signal 6 } 
	{ A_7 sc_in sc_lv 32 signal 7 } 
	{ A_8 sc_in sc_lv 32 signal 8 } 
	{ A_9 sc_in sc_lv 32 signal 9 } 
	{ A_10 sc_in sc_lv 32 signal 10 } 
	{ A_11 sc_in sc_lv 32 signal 11 } 
	{ A_12 sc_in sc_lv 32 signal 12 } 
	{ A_13 sc_in sc_lv 32 signal 13 } 
	{ A_14 sc_in sc_lv 32 signal 14 } 
	{ A_15 sc_in sc_lv 32 signal 15 } 
	{ B_0 sc_in sc_lv 32 signal 16 } 
	{ B_1 sc_in sc_lv 32 signal 17 } 
	{ B_2 sc_in sc_lv 32 signal 18 } 
	{ B_3 sc_in sc_lv 32 signal 19 } 
	{ B_4 sc_in sc_lv 32 signal 20 } 
	{ B_5 sc_in sc_lv 32 signal 21 } 
	{ B_6 sc_in sc_lv 32 signal 22 } 
	{ B_7 sc_in sc_lv 32 signal 23 } 
	{ B_8 sc_in sc_lv 32 signal 24 } 
	{ B_9 sc_in sc_lv 32 signal 25 } 
	{ B_10 sc_in sc_lv 32 signal 26 } 
	{ B_11 sc_in sc_lv 32 signal 27 } 
	{ B_12 sc_in sc_lv 32 signal 28 } 
	{ B_13 sc_in sc_lv 32 signal 29 } 
	{ B_14 sc_in sc_lv 32 signal 30 } 
	{ B_15 sc_in sc_lv 32 signal 31 } 
	{ C_i sc_in sc_lv 32 signal 32 } 
	{ C_o sc_out sc_lv 32 signal 32 } 
	{ C_o_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "default" }} , 
 	{ "name": "A_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "default" }} , 
 	{ "name": "A_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "default" }} , 
 	{ "name": "A_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "default" }} , 
 	{ "name": "A_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "default" }} , 
 	{ "name": "A_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "default" }} , 
 	{ "name": "A_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "default" }} , 
 	{ "name": "A_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "default" }} , 
 	{ "name": "A_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8", "role": "default" }} , 
 	{ "name": "A_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9", "role": "default" }} , 
 	{ "name": "A_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10", "role": "default" }} , 
 	{ "name": "A_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11", "role": "default" }} , 
 	{ "name": "A_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12", "role": "default" }} , 
 	{ "name": "A_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13", "role": "default" }} , 
 	{ "name": "A_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14", "role": "default" }} , 
 	{ "name": "A_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15", "role": "default" }} , 
 	{ "name": "B_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0", "role": "default" }} , 
 	{ "name": "B_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1", "role": "default" }} , 
 	{ "name": "B_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2", "role": "default" }} , 
 	{ "name": "B_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3", "role": "default" }} , 
 	{ "name": "B_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4", "role": "default" }} , 
 	{ "name": "B_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5", "role": "default" }} , 
 	{ "name": "B_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6", "role": "default" }} , 
 	{ "name": "B_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7", "role": "default" }} , 
 	{ "name": "B_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_8", "role": "default" }} , 
 	{ "name": "B_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_9", "role": "default" }} , 
 	{ "name": "B_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_10", "role": "default" }} , 
 	{ "name": "B_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_11", "role": "default" }} , 
 	{ "name": "B_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_12", "role": "default" }} , 
 	{ "name": "B_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_13", "role": "default" }} , 
 	{ "name": "B_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_14", "role": "default" }} , 
 	{ "name": "B_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_15", "role": "default" }} , 
 	{ "name": "C_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "i" }} , 
 	{ "name": "C_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "o" }} , 
 	{ "name": "C_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "eucDistHW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_32_32_s_fu_293", "Parent" : "0",
		"CDFG" : "sqrt_fixed_32_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U17", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	eucDistHW {
		A_0 {Type I LastRead 2 FirstWrite -1}
		A_1 {Type I LastRead 2 FirstWrite -1}
		A_2 {Type I LastRead 2 FirstWrite -1}
		A_3 {Type I LastRead 2 FirstWrite -1}
		A_4 {Type I LastRead 2 FirstWrite -1}
		A_5 {Type I LastRead 2 FirstWrite -1}
		A_6 {Type I LastRead 2 FirstWrite -1}
		A_7 {Type I LastRead 2 FirstWrite -1}
		A_8 {Type I LastRead 2 FirstWrite -1}
		A_9 {Type I LastRead 2 FirstWrite -1}
		A_10 {Type I LastRead 2 FirstWrite -1}
		A_11 {Type I LastRead 1 FirstWrite -1}
		A_12 {Type I LastRead 1 FirstWrite -1}
		A_13 {Type I LastRead 0 FirstWrite -1}
		A_14 {Type I LastRead 0 FirstWrite -1}
		A_15 {Type I LastRead 0 FirstWrite -1}
		B_0 {Type I LastRead 2 FirstWrite -1}
		B_1 {Type I LastRead 2 FirstWrite -1}
		B_2 {Type I LastRead 2 FirstWrite -1}
		B_3 {Type I LastRead 2 FirstWrite -1}
		B_4 {Type I LastRead 2 FirstWrite -1}
		B_5 {Type I LastRead 2 FirstWrite -1}
		B_6 {Type I LastRead 2 FirstWrite -1}
		B_7 {Type I LastRead 2 FirstWrite -1}
		B_8 {Type I LastRead 2 FirstWrite -1}
		B_9 {Type I LastRead 2 FirstWrite -1}
		B_10 {Type I LastRead 2 FirstWrite -1}
		B_11 {Type I LastRead 1 FirstWrite -1}
		B_12 {Type I LastRead 1 FirstWrite -1}
		B_13 {Type I LastRead 0 FirstWrite -1}
		B_14 {Type I LastRead 0 FirstWrite -1}
		B_15 {Type I LastRead 0 FirstWrite -1}
		C {Type IO LastRead 5 FirstWrite 16}}
	sqrt_fixed_32_32_s {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0 { ap_none {  { A_0 in_data 0 32 } } }
	A_1 { ap_none {  { A_1 in_data 0 32 } } }
	A_2 { ap_none {  { A_2 in_data 0 32 } } }
	A_3 { ap_none {  { A_3 in_data 0 32 } } }
	A_4 { ap_none {  { A_4 in_data 0 32 } } }
	A_5 { ap_none {  { A_5 in_data 0 32 } } }
	A_6 { ap_none {  { A_6 in_data 0 32 } } }
	A_7 { ap_none {  { A_7 in_data 0 32 } } }
	A_8 { ap_none {  { A_8 in_data 0 32 } } }
	A_9 { ap_none {  { A_9 in_data 0 32 } } }
	A_10 { ap_none {  { A_10 in_data 0 32 } } }
	A_11 { ap_none {  { A_11 in_data 0 32 } } }
	A_12 { ap_none {  { A_12 in_data 0 32 } } }
	A_13 { ap_none {  { A_13 in_data 0 32 } } }
	A_14 { ap_none {  { A_14 in_data 0 32 } } }
	A_15 { ap_none {  { A_15 in_data 0 32 } } }
	B_0 { ap_none {  { B_0 in_data 0 32 } } }
	B_1 { ap_none {  { B_1 in_data 0 32 } } }
	B_2 { ap_none {  { B_2 in_data 0 32 } } }
	B_3 { ap_none {  { B_3 in_data 0 32 } } }
	B_4 { ap_none {  { B_4 in_data 0 32 } } }
	B_5 { ap_none {  { B_5 in_data 0 32 } } }
	B_6 { ap_none {  { B_6 in_data 0 32 } } }
	B_7 { ap_none {  { B_7 in_data 0 32 } } }
	B_8 { ap_none {  { B_8 in_data 0 32 } } }
	B_9 { ap_none {  { B_9 in_data 0 32 } } }
	B_10 { ap_none {  { B_10 in_data 0 32 } } }
	B_11 { ap_none {  { B_11 in_data 0 32 } } }
	B_12 { ap_none {  { B_12 in_data 0 32 } } }
	B_13 { ap_none {  { B_13 in_data 0 32 } } }
	B_14 { ap_none {  { B_14 in_data 0 32 } } }
	B_15 { ap_none {  { B_15 in_data 0 32 } } }
	C { ap_ovld {  { C_i in_data 0 32 }  { C_o out_data 1 32 }  { C_o_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
