# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
A_0 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 16
	offset_end 31
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_1 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 32
	offset_end 47
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_2 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 48
	offset_end 63
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_3 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 64
	offset_end 79
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_4 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 80
	offset_end 95
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_5 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 96
	offset_end 111
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_6 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 112
	offset_end 127
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_7 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 128
	offset_end 143
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_0 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 144
	offset_end 159
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_1 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 160
	offset_end 175
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_2 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 176
	offset_end 191
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_3 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 192
	offset_end 207
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_4 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 208
	offset_end 223
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_5 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 224
	offset_end 239
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_6 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 240
	offset_end 255
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_7 { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 256
	offset_end 271
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
C { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 272
	offset_end 279
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


