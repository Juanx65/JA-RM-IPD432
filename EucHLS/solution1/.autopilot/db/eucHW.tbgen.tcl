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
	{ y_add int 32 regular {axi_slave 1}  }
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
	{ "Name" : "y_add", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "y_sqrt", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":32}, "offset_end" : {"out":39}} , 
 	{ "Name" : "x_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "x_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "x_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "x_3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "x_4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "x_5", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "x_6", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "x_7", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "x_8", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "x_9", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "x_10", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "x_11", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "x_12", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "x_13", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "x_14", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "x_15", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "x_16", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "x_17", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "x_18", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "x_19", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "x_20", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "x_21", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "x_22", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "x_23", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "x_24", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "x_25", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "x_26", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "x_27", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "x_28", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":279}} , 
 	{ "Name" : "x_29", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":287}} , 
 	{ "Name" : "x_30", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":288}, "offset_end" : {"in":295}} , 
 	{ "Name" : "x_31", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":296}, "offset_end" : {"in":303}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 9 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"eucHW","role":"start","value":"0","valid_bit":"0"},{"name":"eucHW","role":"continue","value":"0","valid_bit":"4"},{"name":"eucHW","role":"auto_start","value":"0","valid_bit":"7"},{"name":"x_0","role":"data","value":"48"},{"name":"x_1","role":"data","value":"56"},{"name":"x_2","role":"data","value":"64"},{"name":"x_3","role":"data","value":"72"},{"name":"x_4","role":"data","value":"80"},{"name":"x_5","role":"data","value":"88"},{"name":"x_6","role":"data","value":"96"},{"name":"x_7","role":"data","value":"104"},{"name":"x_8","role":"data","value":"112"},{"name":"x_9","role":"data","value":"120"},{"name":"x_10","role":"data","value":"128"},{"name":"x_11","role":"data","value":"136"},{"name":"x_12","role":"data","value":"144"},{"name":"x_13","role":"data","value":"152"},{"name":"x_14","role":"data","value":"160"},{"name":"x_15","role":"data","value":"168"},{"name":"x_16","role":"data","value":"176"},{"name":"x_17","role":"data","value":"184"},{"name":"x_18","role":"data","value":"192"},{"name":"x_19","role":"data","value":"200"},{"name":"x_20","role":"data","value":"208"},{"name":"x_21","role":"data","value":"216"},{"name":"x_22","role":"data","value":"224"},{"name":"x_23","role":"data","value":"232"},{"name":"x_24","role":"data","value":"240"},{"name":"x_25","role":"data","value":"248"},{"name":"x_26","role":"data","value":"256"},{"name":"x_27","role":"data","value":"264"},{"name":"x_28","role":"data","value":"272"},{"name":"x_29","role":"data","value":"280"},{"name":"x_30","role":"data","value":"288"},{"name":"x_31","role":"data","value":"296"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"eucHW","role":"start","value":"0","valid_bit":"0"},{"name":"eucHW","role":"done","value":"0","valid_bit":"1"},{"name":"eucHW","role":"idle","value":"0","valid_bit":"2"},{"name":"eucHW","role":"ready","value":"0","valid_bit":"3"},{"name":"eucHW","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y_add","role":"data","value":"16"}, {"name":"y_add","role":"valid","value":"20","valid_bit":"0"},{"name":"y_sqrt","role":"data","value":"32"}, {"name":"y_sqrt","role":"valid","value":"36","valid_bit":"0"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "eucHW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "97", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_add", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "y_sqrt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_31", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_6_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_6_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_16_no_dsp_1_U4", "Parent" : "0"},
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
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_18_1_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	eucHW {
		y_add {Type O LastRead -1 FirstWrite 97}
		y_sqrt {Type O LastRead -1 FirstWrite 97}
		x_0 {Type I LastRead 0 FirstWrite -1}
		x_1 {Type I LastRead 0 FirstWrite -1}
		x_2 {Type I LastRead 0 FirstWrite -1}
		x_3 {Type I LastRead 0 FirstWrite -1}
		x_4 {Type I LastRead 0 FirstWrite -1}
		x_5 {Type I LastRead 0 FirstWrite -1}
		x_6 {Type I LastRead 0 FirstWrite -1}
		x_7 {Type I LastRead 0 FirstWrite -1}
		x_8 {Type I LastRead 0 FirstWrite -1}
		x_9 {Type I LastRead 0 FirstWrite -1}
		x_10 {Type I LastRead 0 FirstWrite -1}
		x_11 {Type I LastRead 0 FirstWrite -1}
		x_12 {Type I LastRead 0 FirstWrite -1}
		x_13 {Type I LastRead 0 FirstWrite -1}
		x_14 {Type I LastRead 0 FirstWrite -1}
		x_15 {Type I LastRead 0 FirstWrite -1}
		x_16 {Type I LastRead 0 FirstWrite -1}
		x_17 {Type I LastRead 0 FirstWrite -1}
		x_18 {Type I LastRead 0 FirstWrite -1}
		x_19 {Type I LastRead 0 FirstWrite -1}
		x_20 {Type I LastRead 0 FirstWrite -1}
		x_21 {Type I LastRead 0 FirstWrite -1}
		x_22 {Type I LastRead 0 FirstWrite -1}
		x_23 {Type I LastRead 0 FirstWrite -1}
		x_24 {Type I LastRead 0 FirstWrite -1}
		x_25 {Type I LastRead 0 FirstWrite -1}
		x_26 {Type I LastRead 0 FirstWrite -1}
		x_27 {Type I LastRead 0 FirstWrite -1}
		x_28 {Type I LastRead 0 FirstWrite -1}
		x_29 {Type I LastRead 0 FirstWrite -1}
		x_30 {Type I LastRead 0 FirstWrite -1}
		x_31 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "97", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "98", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
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
