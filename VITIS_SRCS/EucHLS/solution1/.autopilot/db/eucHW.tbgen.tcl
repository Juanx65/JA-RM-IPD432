set moduleName eucHW
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
set C_modelName {eucHW}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_sqrt int 32 regular {axi_slave 1}  }
	{ x_0 int 8 regular {axi_slave 0}  }
	{ x_1 int 8 regular {axi_slave 0}  }
	{ x_2 int 8 regular {axi_slave 0}  }
	{ x_3 int 8 regular {axi_slave 0}  }
	{ x_4 int 8 regular {axi_slave 0}  }
	{ x_5 int 8 regular {axi_slave 0}  }
	{ x_6 int 8 regular {axi_slave 0}  }
	{ x_7 int 8 regular {axi_slave 0}  }
	{ x_8 int 8 regular {axi_slave 0}  }
	{ x_9 int 8 regular {axi_slave 0}  }
	{ x_10 int 8 regular {axi_slave 0}  }
	{ x_11 int 8 regular {axi_slave 0}  }
	{ x_12 int 8 regular {axi_slave 0}  }
	{ x_13 int 8 regular {axi_slave 0}  }
	{ x_14 int 8 regular {axi_slave 0}  }
	{ x_15 int 8 regular {axi_slave 0}  }
	{ x_16 int 8 regular {axi_slave 0}  }
	{ x_17 int 8 regular {axi_slave 0}  }
	{ x_18 int 8 regular {axi_slave 0}  }
	{ x_19 int 8 regular {axi_slave 0}  }
	{ x_20 int 8 regular {axi_slave 0}  }
	{ x_21 int 8 regular {axi_slave 0}  }
	{ x_22 int 8 regular {axi_slave 0}  }
	{ x_23 int 8 regular {axi_slave 0}  }
	{ x_24 int 8 regular {axi_slave 0}  }
	{ x_25 int 8 regular {axi_slave 0}  }
	{ x_26 int 8 regular {axi_slave 0}  }
	{ x_27 int 8 regular {axi_slave 0}  }
	{ x_28 int 8 regular {axi_slave 0}  }
	{ x_29 int 8 regular {axi_slave 0}  }
	{ x_30 int 8 regular {axi_slave 0}  }
	{ x_31 int 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y_sqrt", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "x_0", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "x_1", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":191}} , 
 	{ "Name" : "x_2", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":255}} , 
 	{ "Name" : "x_3", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":319}} , 
 	{ "Name" : "x_4", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":320}, "offset_end" : {"in":383}} , 
 	{ "Name" : "x_5", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":384}, "offset_end" : {"in":447}} , 
 	{ "Name" : "x_6", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":448}, "offset_end" : {"in":511}} , 
 	{ "Name" : "x_7", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":512}, "offset_end" : {"in":575}} , 
 	{ "Name" : "x_8", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":576}, "offset_end" : {"in":639}} , 
 	{ "Name" : "x_9", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":640}, "offset_end" : {"in":703}} , 
 	{ "Name" : "x_10", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":704}, "offset_end" : {"in":767}} , 
 	{ "Name" : "x_11", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":768}, "offset_end" : {"in":831}} , 
 	{ "Name" : "x_12", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":832}, "offset_end" : {"in":895}} , 
 	{ "Name" : "x_13", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":896}, "offset_end" : {"in":959}} , 
 	{ "Name" : "x_14", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":960}, "offset_end" : {"in":1023}} , 
 	{ "Name" : "x_15", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1024}, "offset_end" : {"in":1087}} , 
 	{ "Name" : "x_16", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1088}, "offset_end" : {"in":1151}} , 
 	{ "Name" : "x_17", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1152}, "offset_end" : {"in":1215}} , 
 	{ "Name" : "x_18", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1216}, "offset_end" : {"in":1279}} , 
 	{ "Name" : "x_19", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1280}, "offset_end" : {"in":1343}} , 
 	{ "Name" : "x_20", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1344}, "offset_end" : {"in":1407}} , 
 	{ "Name" : "x_21", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1408}, "offset_end" : {"in":1471}} , 
 	{ "Name" : "x_22", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1472}, "offset_end" : {"in":1535}} , 
 	{ "Name" : "x_23", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1536}, "offset_end" : {"in":1599}} , 
 	{ "Name" : "x_24", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1600}, "offset_end" : {"in":1663}} , 
 	{ "Name" : "x_25", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1664}, "offset_end" : {"in":1727}} , 
 	{ "Name" : "x_26", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1728}, "offset_end" : {"in":1791}} , 
 	{ "Name" : "x_27", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1792}, "offset_end" : {"in":1855}} , 
 	{ "Name" : "x_28", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1856}, "offset_end" : {"in":1919}} , 
 	{ "Name" : "x_29", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1920}, "offset_end" : {"in":1983}} , 
 	{ "Name" : "x_30", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":1984}, "offset_end" : {"in":2047}} , 
 	{ "Name" : "x_31", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":2048}, "offset_end" : {"in":2111}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"eucHW","role":"start","value":"0","valid_bit":"0"},{"name":"eucHW","role":"continue","value":"0","valid_bit":"4"},{"name":"eucHW","role":"auto_start","value":"0","valid_bit":"7"},{"name":"x_0","role":"data","value":"64"},{"name":"x_1","role":"data","value":"128"},{"name":"x_2","role":"data","value":"192"},{"name":"x_3","role":"data","value":"256"},{"name":"x_4","role":"data","value":"320"},{"name":"x_5","role":"data","value":"384"},{"name":"x_6","role":"data","value":"448"},{"name":"x_7","role":"data","value":"512"},{"name":"x_8","role":"data","value":"576"},{"name":"x_9","role":"data","value":"640"},{"name":"x_10","role":"data","value":"704"},{"name":"x_11","role":"data","value":"768"},{"name":"x_12","role":"data","value":"832"},{"name":"x_13","role":"data","value":"896"},{"name":"x_14","role":"data","value":"960"},{"name":"x_15","role":"data","value":"1024"},{"name":"x_16","role":"data","value":"1088"},{"name":"x_17","role":"data","value":"1152"},{"name":"x_18","role":"data","value":"1216"},{"name":"x_19","role":"data","value":"1280"},{"name":"x_20","role":"data","value":"1344"},{"name":"x_21","role":"data","value":"1408"},{"name":"x_22","role":"data","value":"1472"},{"name":"x_23","role":"data","value":"1536"},{"name":"x_24","role":"data","value":"1600"},{"name":"x_25","role":"data","value":"1664"},{"name":"x_26","role":"data","value":"1728"},{"name":"x_27","role":"data","value":"1792"},{"name":"x_28","role":"data","value":"1856"},{"name":"x_29","role":"data","value":"1920"},{"name":"x_30","role":"data","value":"1984"},{"name":"x_31","role":"data","value":"2048"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"eucHW","role":"start","value":"0","valid_bit":"0"},{"name":"eucHW","role":"done","value":"0","valid_bit":"1"},{"name":"eucHW","role":"idle","value":"0","valid_bit":"2"},{"name":"eucHW","role":"ready","value":"0","valid_bit":"3"},{"name":"eucHW","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y_sqrt","role":"data","value":"16"}, {"name":"y_sqrt","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "eucHW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_sqrt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "MainLoop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state11"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_32_32_s_fu_949", "Parent" : "0",
		"CDFG" : "sqrt_fixed_32_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U20", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U21", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U22", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U23", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U24", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U25", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U26", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U27", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U28", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U29", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U30", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U31", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U32", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_18s_18_4_1_U33", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	eucHW {
		y_sqrt {Type O LastRead -1 FirstWrite 11}
		x_0 {Type I LastRead 2 FirstWrite -1}
		x_1 {Type I LastRead 2 FirstWrite -1}
		x_2 {Type I LastRead 2 FirstWrite -1}
		x_3 {Type I LastRead 2 FirstWrite -1}
		x_4 {Type I LastRead 2 FirstWrite -1}
		x_5 {Type I LastRead 2 FirstWrite -1}
		x_6 {Type I LastRead 2 FirstWrite -1}
		x_7 {Type I LastRead 2 FirstWrite -1}
		x_8 {Type I LastRead 2 FirstWrite -1}
		x_9 {Type I LastRead 2 FirstWrite -1}
		x_10 {Type I LastRead 2 FirstWrite -1}
		x_11 {Type I LastRead 2 FirstWrite -1}
		x_12 {Type I LastRead 2 FirstWrite -1}
		x_13 {Type I LastRead 2 FirstWrite -1}
		x_14 {Type I LastRead 2 FirstWrite -1}
		x_15 {Type I LastRead 2 FirstWrite -1}
		x_16 {Type I LastRead 3 FirstWrite -1}
		x_17 {Type I LastRead 3 FirstWrite -1}
		x_18 {Type I LastRead 3 FirstWrite -1}
		x_19 {Type I LastRead 3 FirstWrite -1}
		x_20 {Type I LastRead 3 FirstWrite -1}
		x_21 {Type I LastRead 3 FirstWrite -1}
		x_22 {Type I LastRead 3 FirstWrite -1}
		x_23 {Type I LastRead 3 FirstWrite -1}
		x_24 {Type I LastRead 3 FirstWrite -1}
		x_25 {Type I LastRead 3 FirstWrite -1}
		x_26 {Type I LastRead 3 FirstWrite -1}
		x_27 {Type I LastRead 3 FirstWrite -1}
		x_28 {Type I LastRead 3 FirstWrite -1}
		x_29 {Type I LastRead 3 FirstWrite -1}
		x_30 {Type I LastRead 3 FirstWrite -1}
		x_31 {Type I LastRead 3 FirstWrite -1}}
	sqrt_fixed_32_32_s {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "82", "Max" : "82"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
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
