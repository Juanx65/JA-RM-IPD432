# This script segment is generated automatically by AutoPilot

set name eucHW_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name eucHW_sitofp_32s_32_6_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitofp} IMPL {auto} LATENCY 5 ALLOW_PRAGMA 1
}


set name eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsqrt} IMPL {fabric} LATENCY 15 ALLOW_PRAGMA 1
}


set name eucHW_mul_9s_9s_18_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
y_add { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
y_sqrt { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
x_0 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
x_1 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
x_2 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
x_3 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
x_4 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
x_5 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
x_6 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
x_7 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
x_8 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
x_9 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
x_10 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
x_11 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
x_12 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
x_13 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
x_14 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
x_15 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
x_16 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
x_17 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
x_18 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
x_19 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
x_20 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
x_21 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 216
	offset_end 223
}
x_22 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
x_23 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
x_24 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
x_25 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 248
	offset_end 255
}
x_26 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 256
	offset_end 263
}
x_27 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 264
	offset_end 271
}
x_28 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 272
	offset_end 279
}
x_29 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 280
	offset_end 287
}
x_30 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 288
	offset_end 295
}
x_31 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 296
	offset_end 303
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
			id 25 \
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


