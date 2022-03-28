# This script segment is generated automatically by AutoPilot

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


