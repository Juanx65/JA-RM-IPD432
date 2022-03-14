# This script segment is generated automatically by AutoPilot

set name eucDistHW_mul_32s_32s_32_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name A_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_0 \
    op interface \
    ports { A_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name A_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_1 \
    op interface \
    ports { A_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name A_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_2 \
    op interface \
    ports { A_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name A_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_3 \
    op interface \
    ports { A_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name A_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_4 \
    op interface \
    ports { A_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name A_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_5 \
    op interface \
    ports { A_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name A_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_6 \
    op interface \
    ports { A_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name A_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_7 \
    op interface \
    ports { A_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name A_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_8 \
    op interface \
    ports { A_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name A_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_9 \
    op interface \
    ports { A_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name A_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_10 \
    op interface \
    ports { A_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name A_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_11 \
    op interface \
    ports { A_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name A_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_12 \
    op interface \
    ports { A_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name A_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_13 \
    op interface \
    ports { A_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name A_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_14 \
    op interface \
    ports { A_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name A_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_15 \
    op interface \
    ports { A_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name B_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0 \
    op interface \
    ports { B_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name B_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1 \
    op interface \
    ports { B_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name B_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2 \
    op interface \
    ports { B_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name B_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3 \
    op interface \
    ports { B_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name B_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4 \
    op interface \
    ports { B_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name B_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5 \
    op interface \
    ports { B_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name B_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6 \
    op interface \
    ports { B_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name B_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7 \
    op interface \
    ports { B_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name B_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_8 \
    op interface \
    ports { B_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name B_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_9 \
    op interface \
    ports { B_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name B_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_10 \
    op interface \
    ports { B_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name B_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_11 \
    op interface \
    ports { B_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name B_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_12 \
    op interface \
    ports { B_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name B_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_13 \
    op interface \
    ports { B_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name B_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_14 \
    op interface \
    ports { B_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name B_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_15 \
    op interface \
    ports { B_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name C \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_C \
    op interface \
    ports { C_i { I 32 vector } C_o { O 32 vector } C_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
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
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
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


