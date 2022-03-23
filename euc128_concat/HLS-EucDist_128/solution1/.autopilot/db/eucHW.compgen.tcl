# This script segment is generated automatically by AutoPilot

set name eucHW_mul_9s_9s_18_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 66
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
x_32 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 304
	offset_end 311
}
x_33 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 312
	offset_end 319
}
x_34 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 320
	offset_end 327
}
x_35 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 328
	offset_end 335
}
x_36 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 336
	offset_end 343
}
x_37 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 344
	offset_end 351
}
x_38 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 352
	offset_end 359
}
x_39 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 360
	offset_end 367
}
x_40 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 368
	offset_end 375
}
x_41 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 376
	offset_end 383
}
x_42 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 384
	offset_end 391
}
x_43 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 392
	offset_end 399
}
x_44 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 400
	offset_end 407
}
x_45 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 408
	offset_end 415
}
x_46 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 416
	offset_end 423
}
x_47 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 424
	offset_end 431
}
x_48 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 432
	offset_end 439
}
x_49 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 440
	offset_end 447
}
x_50 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 448
	offset_end 455
}
x_51 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 456
	offset_end 463
}
x_52 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 464
	offset_end 471
}
x_53 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 472
	offset_end 479
}
x_54 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 480
	offset_end 487
}
x_55 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 488
	offset_end 495
}
x_56 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 496
	offset_end 503
}
x_57 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 504
	offset_end 511
}
x_58 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 512
	offset_end 519
}
x_59 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 520
	offset_end 527
}
x_60 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 528
	offset_end 535
}
x_61 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 536
	offset_end 543
}
x_62 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 544
	offset_end 551
}
x_63 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 552
	offset_end 559
}
x_64 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 560
	offset_end 567
}
x_65 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 568
	offset_end 575
}
x_66 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 576
	offset_end 583
}
x_67 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 584
	offset_end 591
}
x_68 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 592
	offset_end 599
}
x_69 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 600
	offset_end 607
}
x_70 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 608
	offset_end 615
}
x_71 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 616
	offset_end 623
}
x_72 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 624
	offset_end 631
}
x_73 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 632
	offset_end 639
}
x_74 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 640
	offset_end 647
}
x_75 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 648
	offset_end 655
}
x_76 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 656
	offset_end 663
}
x_77 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 664
	offset_end 671
}
x_78 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 672
	offset_end 679
}
x_79 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 680
	offset_end 687
}
x_80 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 688
	offset_end 695
}
x_81 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 696
	offset_end 703
}
x_82 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 704
	offset_end 711
}
x_83 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 712
	offset_end 719
}
x_84 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 720
	offset_end 727
}
x_85 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 728
	offset_end 735
}
x_86 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 736
	offset_end 743
}
x_87 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 744
	offset_end 751
}
x_88 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 752
	offset_end 759
}
x_89 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 760
	offset_end 767
}
x_90 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 768
	offset_end 775
}
x_91 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 776
	offset_end 783
}
x_92 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 784
	offset_end 791
}
x_93 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 792
	offset_end 799
}
x_94 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 800
	offset_end 807
}
x_95 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 808
	offset_end 815
}
x_96 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 816
	offset_end 823
}
x_97 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 824
	offset_end 831
}
x_98 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 832
	offset_end 839
}
x_99 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 840
	offset_end 847
}
x_100 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 848
	offset_end 855
}
x_101 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 856
	offset_end 863
}
x_102 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 864
	offset_end 871
}
x_103 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 872
	offset_end 879
}
x_104 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 880
	offset_end 887
}
x_105 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 888
	offset_end 895
}
x_106 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 896
	offset_end 903
}
x_107 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 904
	offset_end 911
}
x_108 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 912
	offset_end 919
}
x_109 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 920
	offset_end 927
}
x_110 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 928
	offset_end 935
}
x_111 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 936
	offset_end 943
}
x_112 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 944
	offset_end 951
}
x_113 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 952
	offset_end 959
}
x_114 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 960
	offset_end 967
}
x_115 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 968
	offset_end 975
}
x_116 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 976
	offset_end 983
}
x_117 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 984
	offset_end 991
}
x_118 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 992
	offset_end 999
}
x_119 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1000
	offset_end 1007
}
x_120 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1008
	offset_end 1015
}
x_121 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1016
	offset_end 1023
}
x_122 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1024
	offset_end 1031
}
x_123 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1032
	offset_end 1039
}
x_124 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1040
	offset_end 1047
}
x_125 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1048
	offset_end 1055
}
x_126 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1056
	offset_end 1063
}
x_127 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1064
	offset_end 1071
}
x_128 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1072
	offset_end 1079
}
x_129 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1080
	offset_end 1087
}
x_130 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1088
	offset_end 1095
}
x_131 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1096
	offset_end 1103
}
x_132 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1104
	offset_end 1111
}
x_133 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1112
	offset_end 1119
}
x_134 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1120
	offset_end 1127
}
x_135 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1128
	offset_end 1135
}
x_136 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1136
	offset_end 1143
}
x_137 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1144
	offset_end 1151
}
x_138 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1152
	offset_end 1159
}
x_139 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1160
	offset_end 1167
}
x_140 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1168
	offset_end 1175
}
x_141 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1176
	offset_end 1183
}
x_142 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1184
	offset_end 1191
}
x_143 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1192
	offset_end 1199
}
x_144 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1200
	offset_end 1207
}
x_145 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1208
	offset_end 1215
}
x_146 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1216
	offset_end 1223
}
x_147 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1224
	offset_end 1231
}
x_148 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1232
	offset_end 1239
}
x_149 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1240
	offset_end 1247
}
x_150 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1248
	offset_end 1255
}
x_151 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1256
	offset_end 1263
}
x_152 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1264
	offset_end 1271
}
x_153 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1272
	offset_end 1279
}
x_154 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1280
	offset_end 1287
}
x_155 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1288
	offset_end 1295
}
x_156 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1296
	offset_end 1303
}
x_157 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1304
	offset_end 1311
}
x_158 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1312
	offset_end 1319
}
x_159 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1320
	offset_end 1327
}
x_160 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1328
	offset_end 1335
}
x_161 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1336
	offset_end 1343
}
x_162 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1344
	offset_end 1351
}
x_163 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1352
	offset_end 1359
}
x_164 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1360
	offset_end 1367
}
x_165 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1368
	offset_end 1375
}
x_166 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1376
	offset_end 1383
}
x_167 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1384
	offset_end 1391
}
x_168 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1392
	offset_end 1399
}
x_169 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1400
	offset_end 1407
}
x_170 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1408
	offset_end 1415
}
x_171 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1416
	offset_end 1423
}
x_172 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1424
	offset_end 1431
}
x_173 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1432
	offset_end 1439
}
x_174 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1440
	offset_end 1447
}
x_175 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1448
	offset_end 1455
}
x_176 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1456
	offset_end 1463
}
x_177 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1464
	offset_end 1471
}
x_178 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1472
	offset_end 1479
}
x_179 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1480
	offset_end 1487
}
x_180 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1488
	offset_end 1495
}
x_181 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1496
	offset_end 1503
}
x_182 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1504
	offset_end 1511
}
x_183 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1512
	offset_end 1519
}
x_184 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1520
	offset_end 1527
}
x_185 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1528
	offset_end 1535
}
x_186 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1536
	offset_end 1543
}
x_187 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1544
	offset_end 1551
}
x_188 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1552
	offset_end 1559
}
x_189 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1560
	offset_end 1567
}
x_190 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1568
	offset_end 1575
}
x_191 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1576
	offset_end 1583
}
x_192 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1584
	offset_end 1591
}
x_193 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1592
	offset_end 1599
}
x_194 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1600
	offset_end 1607
}
x_195 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1608
	offset_end 1615
}
x_196 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1616
	offset_end 1623
}
x_197 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1624
	offset_end 1631
}
x_198 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1632
	offset_end 1639
}
x_199 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1640
	offset_end 1647
}
x_200 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1648
	offset_end 1655
}
x_201 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1656
	offset_end 1663
}
x_202 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1664
	offset_end 1671
}
x_203 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1672
	offset_end 1679
}
x_204 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1680
	offset_end 1687
}
x_205 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1688
	offset_end 1695
}
x_206 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1696
	offset_end 1703
}
x_207 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1704
	offset_end 1711
}
x_208 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1712
	offset_end 1719
}
x_209 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1720
	offset_end 1727
}
x_210 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1728
	offset_end 1735
}
x_211 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1736
	offset_end 1743
}
x_212 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1744
	offset_end 1751
}
x_213 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1752
	offset_end 1759
}
x_214 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1760
	offset_end 1767
}
x_215 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1768
	offset_end 1775
}
x_216 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1776
	offset_end 1783
}
x_217 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1784
	offset_end 1791
}
x_218 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1792
	offset_end 1799
}
x_219 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1800
	offset_end 1807
}
x_220 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1808
	offset_end 1815
}
x_221 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1816
	offset_end 1823
}
x_222 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1824
	offset_end 1831
}
x_223 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1832
	offset_end 1839
}
x_224 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1840
	offset_end 1847
}
x_225 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1848
	offset_end 1855
}
x_226 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1856
	offset_end 1863
}
x_227 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1864
	offset_end 1871
}
x_228 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1872
	offset_end 1879
}
x_229 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1880
	offset_end 1887
}
x_230 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1888
	offset_end 1895
}
x_231 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1896
	offset_end 1903
}
x_232 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1904
	offset_end 1911
}
x_233 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1912
	offset_end 1919
}
x_234 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1920
	offset_end 1927
}
x_235 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1928
	offset_end 1935
}
x_236 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1936
	offset_end 1943
}
x_237 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1944
	offset_end 1951
}
x_238 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1952
	offset_end 1959
}
x_239 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1960
	offset_end 1967
}
x_240 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1968
	offset_end 1975
}
x_241 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1976
	offset_end 1983
}
x_242 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1984
	offset_end 1991
}
x_243 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 1992
	offset_end 1999
}
x_244 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2000
	offset_end 2007
}
x_245 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2008
	offset_end 2015
}
x_246 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2016
	offset_end 2023
}
x_247 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2024
	offset_end 2031
}
x_248 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2032
	offset_end 2039
}
x_249 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2040
	offset_end 2047
}
x_250 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2048
	offset_end 2055
}
x_251 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2056
	offset_end 2063
}
x_252 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2064
	offset_end 2071
}
x_253 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2072
	offset_end 2079
}
x_254 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2080
	offset_end 2087
}
x_255 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 2088
	offset_end 2095
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
			id 132 \
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


