# This script segment is generated automatically by AutoPilot

set name eucHW_mul_9s_9s_18_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 18
set name eucHW_mac_muladd_9s_9s_18s_18_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 9
set in0_signed 1
set in1_width 9
set in1_signed 1
set in2_width 18
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {9 1 +} i1 {9 1 +} m {18 1 +} i2 {18 1 +} p {18 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
y_sqrt { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
x_0 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 64
	offset_end 127
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_1 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 128
	offset_end 191
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_2 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 192
	offset_end 255
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_3 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 256
	offset_end 319
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_4 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 320
	offset_end 383
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_5 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 384
	offset_end 447
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_6 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 448
	offset_end 511
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_7 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 512
	offset_end 575
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_8 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 576
	offset_end 639
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_9 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 640
	offset_end 703
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_10 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 704
	offset_end 767
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_11 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 768
	offset_end 831
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_12 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 832
	offset_end 895
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_13 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 896
	offset_end 959
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_14 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 960
	offset_end 1023
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_15 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1024
	offset_end 1087
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_16 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1088
	offset_end 1151
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_17 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1152
	offset_end 1215
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_18 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1216
	offset_end 1279
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_19 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1280
	offset_end 1343
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_20 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1344
	offset_end 1407
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_21 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1408
	offset_end 1471
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_22 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1472
	offset_end 1535
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_23 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1536
	offset_end 1599
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_24 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1600
	offset_end 1663
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_25 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1664
	offset_end 1727
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_26 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1728
	offset_end 1791
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_27 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1792
	offset_end 1855
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_28 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1856
	offset_end 1919
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_29 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1920
	offset_end 1983
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_30 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 1984
	offset_end 2047
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
x_31 { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 2048
	offset_end 2111
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 36 \
			corename eucHW_control_axilite \
			name eucHW_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_mode default \
			is_flushable 0 \
			is_datawidth64 0 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eucHW_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


