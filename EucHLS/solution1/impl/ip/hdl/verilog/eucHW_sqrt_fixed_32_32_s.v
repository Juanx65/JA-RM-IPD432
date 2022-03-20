// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module eucHW_sqrt_fixed_32_32_s (
        ap_clk,
        ap_rst,
        x,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [23:0] x;
output  [15:0] ap_return;

reg  signed [23:0] x_read_reg_1484;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_pp0_stage0_11001;
reg  signed [23:0] x_read_reg_1484_pp0_iter1_reg;
reg  signed [23:0] x_read_reg_1484_pp0_iter2_reg;
reg  signed [23:0] x_read_reg_1484_pp0_iter3_reg;
reg  signed [23:0] x_read_reg_1484_pp0_iter4_reg;
reg  signed [23:0] x_read_reg_1484_pp0_iter5_reg;
reg  signed [23:0] x_read_reg_1484_pp0_iter6_reg;
wire   [34:0] x_l_I_V_32_fu_338_p3;
reg   [34:0] x_l_I_V_32_reg_1489;
wire   [15:0] res_I_V_33_fu_346_p3;
reg   [15:0] res_I_V_33_reg_1495;
wire   [0:0] icmp_ln443_1_fu_386_p2;
reg   [0:0] icmp_ln443_1_reg_1501;
wire   [4:0] sub_ln212_1_fu_392_p2;
reg   [4:0] sub_ln212_1_reg_1507;
wire   [34:0] x_l_I_V_34_fu_495_p3;
reg   [34:0] x_l_I_V_34_reg_1512;
wire   [15:0] res_I_V_35_fu_503_p3;
reg   [15:0] res_I_V_35_reg_1518;
wire   [0:0] icmp_ln443_3_fu_543_p2;
reg   [0:0] icmp_ln443_3_reg_1524;
wire   [6:0] sub_ln212_3_fu_549_p2;
reg   [6:0] sub_ln212_3_reg_1530;
wire   [34:0] x_l_I_V_36_fu_652_p3;
reg   [34:0] x_l_I_V_36_reg_1535;
wire   [15:0] res_I_V_37_fu_660_p3;
reg   [15:0] res_I_V_37_reg_1541;
wire   [0:0] icmp_ln443_5_fu_700_p2;
reg   [0:0] icmp_ln443_5_reg_1547;
wire   [8:0] sub_ln212_5_fu_706_p2;
reg   [8:0] sub_ln212_5_reg_1553;
wire   [34:0] x_l_I_V_37_fu_809_p3;
reg   [34:0] x_l_I_V_37_reg_1558;
wire   [15:0] res_I_V_fu_817_p3;
reg   [15:0] res_I_V_reg_1564;
wire   [0:0] icmp_ln443_7_fu_857_p2;
reg   [0:0] icmp_ln443_7_reg_1570;
wire   [10:0] sub_ln212_7_fu_863_p2;
reg   [10:0] sub_ln212_7_reg_1576;
wire   [34:0] x_l_I_V_40_fu_1048_p3;
reg   [34:0] x_l_I_V_40_reg_1581;
wire   [15:0] res_I_V_41_fu_1056_p3;
reg   [15:0] res_I_V_41_reg_1587;
reg   [11:0] p_Result_31_reg_1593;
reg   [13:0] p_Result_81_reg_1598;
wire   [34:0] x_l_I_V_42_fu_1205_p3;
reg   [34:0] x_l_I_V_42_reg_1604;
wire   [15:0] res_I_V_43_fu_1213_p3;
reg   [15:0] res_I_V_43_reg_1610;
reg   [13:0] p_Result_37_reg_1616;
reg   [15:0] p_Result_87_reg_1621;
wire   [34:0] x_l_I_V_44_fu_1362_p3;
reg   [34:0] x_l_I_V_44_reg_1627;
wire   [15:0] res_I_V_45_fu_1370_p3;
reg   [15:0] res_I_V_45_reg_1633;
wire   [17:0] p_Result_93_fu_1378_p1;
reg   [17:0] p_Result_93_reg_1640;
wire  signed [23:0] sext_ln666_fu_220_p0;
wire    ap_block_pp0_stage0;
wire  signed [31:0] sext_ln666_fu_220_p1;
wire  signed [23:0] tmp_fu_228_p1;
wire   [0:0] tmp_fu_228_p3;
wire   [34:0] zext_ln666_fu_224_p1;
wire   [2:0] select_ln212_fu_236_p3;
wire   [34:0] p_Result_50_fu_244_p5;
wire   [15:0] res_I_V_32_fu_264_p3;
wire   [1:0] p_Result_s_75_fu_272_p4;
wire   [34:0] x_l_I_V_31_fu_256_p3;
wire   [2:0] tmp_1_fu_282_p3;
wire   [3:0] p_Result_51_fu_290_p4;
wire   [3:0] zext_ln443_fu_300_p1;
wire   [3:0] sub_ln212_fu_310_p2;
wire   [0:0] icmp_ln443_fu_304_p2;
wire   [34:0] p_Result_52_fu_316_p5;
wire   [15:0] p_Result_53_fu_328_p4;
wire   [2:0] p_Result_4_fu_354_p4;
wire   [3:0] tmp_2_fu_364_p3;
wire   [4:0] p_Result_54_fu_372_p4;
wire   [4:0] zext_ln443_1_fu_382_p1;
wire   [34:0] p_Result_55_fu_398_p5;
wire   [15:0] p_Result_56_fu_408_p4;
wire   [15:0] res_I_V_34_fu_423_p3;
wire   [3:0] p_Result_8_fu_429_p4;
wire   [34:0] x_l_I_V_33_fu_417_p3;
wire   [4:0] tmp_3_fu_439_p3;
wire   [5:0] p_Result_57_fu_447_p4;
wire   [5:0] zext_ln443_2_fu_457_p1;
wire   [5:0] sub_ln212_2_fu_467_p2;
wire   [0:0] icmp_ln443_2_fu_461_p2;
wire   [34:0] p_Result_58_fu_473_p5;
wire   [15:0] p_Result_59_fu_485_p4;
wire   [4:0] p_Result_10_fu_511_p4;
wire   [5:0] tmp_4_fu_521_p3;
wire   [6:0] p_Result_60_fu_529_p4;
wire   [6:0] zext_ln443_3_fu_539_p1;
wire   [34:0] p_Result_61_fu_555_p5;
wire   [15:0] p_Result_62_fu_565_p4;
wire   [15:0] res_I_V_36_fu_580_p3;
wire   [5:0] p_Result_13_fu_586_p4;
wire   [34:0] x_l_I_V_35_fu_574_p3;
wire   [6:0] tmp_5_fu_596_p3;
wire   [7:0] p_Result_63_fu_604_p4;
wire   [7:0] zext_ln443_4_fu_614_p1;
wire   [7:0] sub_ln212_4_fu_624_p2;
wire   [0:0] icmp_ln443_4_fu_618_p2;
wire   [34:0] p_Result_64_fu_630_p5;
wire   [15:0] p_Result_65_fu_642_p4;
wire   [6:0] p_Result_16_fu_668_p4;
wire   [7:0] tmp_6_fu_678_p3;
wire   [8:0] p_Result_66_fu_686_p4;
wire   [8:0] zext_ln443_5_fu_696_p1;
wire   [34:0] p_Result_67_fu_712_p5;
wire   [15:0] p_Result_68_fu_722_p4;
wire   [15:0] res_I_V_38_fu_737_p3;
wire   [7:0] p_Result_19_fu_743_p4;
wire   [34:0] x_l_I_V_fu_731_p3;
wire   [8:0] tmp_7_fu_753_p3;
wire   [9:0] p_Result_69_fu_761_p4;
wire   [9:0] zext_ln443_6_fu_771_p1;
wire   [9:0] sub_ln212_6_fu_781_p2;
wire   [0:0] icmp_ln443_6_fu_775_p2;
wire   [34:0] p_Result_70_fu_787_p5;
wire   [15:0] p_Result_71_fu_799_p4;
wire   [8:0] p_Result_22_fu_825_p4;
wire   [9:0] tmp_8_fu_835_p3;
wire   [10:0] p_Result_72_fu_843_p4;
wire   [10:0] zext_ln443_7_fu_853_p1;
wire   [34:0] p_Result_73_fu_869_p5;
wire   [15:0] p_Result_74_fu_879_p4;
wire   [15:0] res_I_V_39_fu_894_p3;
wire   [9:0] p_Result_25_fu_900_p4;
wire   [34:0] x_l_I_V_38_fu_888_p3;
wire   [10:0] tmp_9_fu_910_p3;
wire   [11:0] p_Result_75_fu_918_p4;
wire   [11:0] zext_ln443_8_fu_928_p1;
wire   [11:0] sub_ln212_8_fu_938_p2;
wire   [0:0] icmp_ln443_8_fu_932_p2;
wire   [34:0] p_Result_76_fu_944_p5;
wire   [15:0] p_Result_77_fu_956_p4;
wire   [15:0] res_I_V_40_fu_974_p3;
wire   [10:0] p_Result_28_fu_982_p4;
wire   [34:0] x_l_I_V_39_fu_966_p3;
wire   [11:0] tmp_s_fu_992_p3;
wire   [12:0] p_Result_78_fu_1000_p4;
wire   [12:0] zext_ln443_9_fu_1010_p1;
wire   [12:0] sub_ln212_9_fu_1020_p2;
wire   [0:0] icmp_ln443_9_fu_1014_p2;
wire   [34:0] p_Result_79_fu_1026_p5;
wire   [15:0] p_Result_80_fu_1038_p4;
wire   [12:0] tmp_10_fu_1084_p3;
wire   [13:0] zext_ln443_10_fu_1091_p1;
wire   [13:0] sub_ln212_10_fu_1100_p2;
wire   [0:0] icmp_ln443_10_fu_1095_p2;
wire   [34:0] p_Result_82_fu_1105_p5;
wire   [15:0] p_Result_83_fu_1116_p4;
wire   [15:0] res_I_V_42_fu_1132_p3;
wire   [12:0] p_Result_34_fu_1139_p4;
wire   [34:0] x_l_I_V_41_fu_1125_p3;
wire   [13:0] tmp_11_fu_1149_p3;
wire   [14:0] p_Result_84_fu_1157_p4;
wire   [14:0] zext_ln443_11_fu_1167_p1;
wire   [14:0] sub_ln212_11_fu_1177_p2;
wire   [0:0] icmp_ln443_11_fu_1171_p2;
wire   [34:0] p_Result_85_fu_1183_p5;
wire   [15:0] p_Result_86_fu_1195_p4;
wire   [14:0] tmp_12_fu_1241_p3;
wire   [15:0] zext_ln443_12_fu_1248_p1;
wire   [15:0] sub_ln212_12_fu_1257_p2;
wire   [0:0] icmp_ln443_12_fu_1252_p2;
wire   [34:0] p_Result_88_fu_1262_p5;
wire   [15:0] p_Result_89_fu_1273_p4;
wire   [15:0] res_I_V_44_fu_1289_p3;
wire   [14:0] p_Result_40_fu_1296_p4;
wire   [34:0] x_l_I_V_43_fu_1282_p3;
wire   [15:0] tmp_13_fu_1306_p3;
wire   [16:0] p_Result_90_fu_1314_p4;
wire   [16:0] zext_ln443_13_fu_1324_p1;
wire   [16:0] sub_ln212_13_fu_1334_p2;
wire   [0:0] icmp_ln443_13_fu_1328_p2;
wire   [34:0] p_Result_91_fu_1340_p5;
wire   [15:0] p_Result_92_fu_1352_p4;
wire   [16:0] tmp_14_fu_1389_p3;
wire   [17:0] zext_ln443_14_fu_1396_p1;
wire   [17:0] sub_ln212_14_fu_1405_p2;
wire   [0:0] icmp_ln443_14_fu_1400_p2;
wire   [34:0] p_Result_94_fu_1410_p5;
wire   [15:0] p_Result_95_fu_1421_p4;
wire   [15:0] res_I_V_46_fu_1437_p3;
wire   [32:0] mul_I_V_fu_1444_p3;
wire   [34:0] x_l_I_V_45_fu_1430_p3;
wire   [34:0] zext_ln671_fu_1452_p1;
wire   [0:0] p_Result_48_fu_1456_p2;
wire   [15:0] res_I_V_30_fu_1462_p2;
wire   [0:0] p_Result_s_fu_1382_p3;
wire   [15:0] res_I_V_47_fu_1468_p3;
reg   [23:0] x_int_reg;
wire    ap_ce_reg;

always @ (posedge ap_clk) begin
    x_int_reg <= x;
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln443_1_reg_1501 <= icmp_ln443_1_fu_386_p2;
        icmp_ln443_3_reg_1524 <= icmp_ln443_3_fu_543_p2;
        icmp_ln443_5_reg_1547 <= icmp_ln443_5_fu_700_p2;
        icmp_ln443_7_reg_1570 <= icmp_ln443_7_fu_857_p2;
        p_Result_31_reg_1593 <= {{res_I_V_41_fu_1056_p3[15:4]}};
        p_Result_37_reg_1616 <= {{res_I_V_43_fu_1213_p3[15:2]}};
        p_Result_81_reg_1598 <= {{x_l_I_V_40_fu_1048_p3[21:8]}};
        p_Result_87_reg_1621 <= {{x_l_I_V_42_fu_1205_p3[19:4]}};
        p_Result_93_reg_1640 <= p_Result_93_fu_1378_p1;
        res_I_V_33_reg_1495 <= res_I_V_33_fu_346_p3;
        res_I_V_35_reg_1518 <= res_I_V_35_fu_503_p3;
        res_I_V_37_reg_1541 <= res_I_V_37_fu_660_p3;
        res_I_V_41_reg_1587 <= res_I_V_41_fu_1056_p3;
        res_I_V_43_reg_1610 <= res_I_V_43_fu_1213_p3;
        res_I_V_45_reg_1633 <= res_I_V_45_fu_1370_p3;
        res_I_V_reg_1564 <= res_I_V_fu_817_p3;
        sub_ln212_1_reg_1507 <= sub_ln212_1_fu_392_p2;
        sub_ln212_3_reg_1530 <= sub_ln212_3_fu_549_p2;
        sub_ln212_5_reg_1553 <= sub_ln212_5_fu_706_p2;
        sub_ln212_7_reg_1576 <= sub_ln212_7_fu_863_p2;
        x_l_I_V_32_reg_1489 <= x_l_I_V_32_fu_338_p3;
        x_l_I_V_34_reg_1512 <= x_l_I_V_34_fu_495_p3;
        x_l_I_V_36_reg_1535 <= x_l_I_V_36_fu_652_p3;
        x_l_I_V_37_reg_1558 <= x_l_I_V_37_fu_809_p3;
        x_l_I_V_40_reg_1581 <= x_l_I_V_40_fu_1048_p3;
        x_l_I_V_42_reg_1604 <= x_l_I_V_42_fu_1205_p3;
        x_l_I_V_44_reg_1627 <= x_l_I_V_44_fu_1362_p3;
        x_read_reg_1484 <= x_int_reg;
        x_read_reg_1484_pp0_iter1_reg <= x_read_reg_1484;
        x_read_reg_1484_pp0_iter2_reg <= x_read_reg_1484_pp0_iter1_reg;
        x_read_reg_1484_pp0_iter3_reg <= x_read_reg_1484_pp0_iter2_reg;
        x_read_reg_1484_pp0_iter4_reg <= x_read_reg_1484_pp0_iter3_reg;
        x_read_reg_1484_pp0_iter5_reg <= x_read_reg_1484_pp0_iter4_reg;
        x_read_reg_1484_pp0_iter6_reg <= x_read_reg_1484_pp0_iter5_reg;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_return = ((p_Result_s_fu_1382_p3[0:0] == 1'b1) ? 16'd0 : res_I_V_47_fu_1468_p3);

assign icmp_ln443_10_fu_1095_p2 = ((p_Result_81_reg_1598 < zext_ln443_10_fu_1091_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_11_fu_1171_p2 = ((p_Result_84_fu_1157_p4 < zext_ln443_11_fu_1167_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_12_fu_1252_p2 = ((p_Result_87_reg_1621 < zext_ln443_12_fu_1248_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_13_fu_1328_p2 = ((p_Result_90_fu_1314_p4 < zext_ln443_13_fu_1324_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_14_fu_1400_p2 = ((p_Result_93_reg_1640 < zext_ln443_14_fu_1396_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_1_fu_386_p2 = ((p_Result_54_fu_372_p4 < zext_ln443_1_fu_382_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_2_fu_461_p2 = ((p_Result_57_fu_447_p4 < zext_ln443_2_fu_457_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_3_fu_543_p2 = ((p_Result_60_fu_529_p4 < zext_ln443_3_fu_539_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_4_fu_618_p2 = ((p_Result_63_fu_604_p4 < zext_ln443_4_fu_614_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_5_fu_700_p2 = ((p_Result_66_fu_686_p4 < zext_ln443_5_fu_696_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_6_fu_775_p2 = ((p_Result_69_fu_761_p4 < zext_ln443_6_fu_771_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_7_fu_857_p2 = ((p_Result_72_fu_843_p4 < zext_ln443_7_fu_853_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_8_fu_932_p2 = ((p_Result_75_fu_918_p4 < zext_ln443_8_fu_928_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_9_fu_1014_p2 = ((p_Result_78_fu_1000_p4 < zext_ln443_9_fu_1010_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_fu_304_p2 = ((p_Result_51_fu_290_p4 < zext_ln443_fu_300_p1) ? 1'b1 : 1'b0);

assign mul_I_V_fu_1444_p3 = {{17'd0}, {res_I_V_46_fu_1437_p3}};

assign p_Result_10_fu_511_p4 = {{res_I_V_35_fu_503_p3[15:11]}};

assign p_Result_13_fu_586_p4 = {{res_I_V_36_fu_580_p3[15:10]}};

assign p_Result_16_fu_668_p4 = {{res_I_V_37_fu_660_p3[15:9]}};

assign p_Result_19_fu_743_p4 = {{res_I_V_38_fu_737_p3[15:8]}};

assign p_Result_22_fu_825_p4 = {{res_I_V_fu_817_p3[15:7]}};

assign p_Result_25_fu_900_p4 = {{res_I_V_39_fu_894_p3[15:6]}};

assign p_Result_28_fu_982_p4 = {{res_I_V_40_fu_974_p3[15:5]}};

assign p_Result_34_fu_1139_p4 = {{res_I_V_42_fu_1132_p3[15:3]}};

assign p_Result_40_fu_1296_p4 = {{res_I_V_44_fu_1289_p3[15:1]}};

assign p_Result_48_fu_1456_p2 = ((x_l_I_V_45_fu_1430_p3 > zext_ln671_fu_1452_p1) ? 1'b1 : 1'b0);

assign p_Result_4_fu_354_p4 = {{res_I_V_33_fu_346_p3[15:13]}};

assign p_Result_50_fu_244_p5 = {{zext_ln666_fu_224_p1[34:33]}, {select_ln212_fu_236_p3}, {zext_ln666_fu_224_p1[29:0]}};

assign p_Result_51_fu_290_p4 = {{x_l_I_V_31_fu_256_p3[31:28]}};

assign p_Result_52_fu_316_p5 = {{x_l_I_V_31_fu_256_p3[34:32]}, {sub_ln212_fu_310_p2}, {x_l_I_V_31_fu_256_p3[27:0]}};

assign p_Result_53_fu_328_p4 = {res_I_V_32_fu_264_p3[16 - 1:15], |(1'd1), res_I_V_32_fu_264_p3[13:0]};

assign p_Result_54_fu_372_p4 = {{x_l_I_V_32_fu_338_p3[30:26]}};

assign p_Result_55_fu_398_p5 = {{x_l_I_V_32_reg_1489[34:31]}, {sub_ln212_1_reg_1507}, {x_l_I_V_32_reg_1489[25:0]}};

assign p_Result_56_fu_408_p4 = {res_I_V_33_reg_1495[16 - 1:14], |(1'd1), res_I_V_33_reg_1495[12:0]};

assign p_Result_57_fu_447_p4 = {{x_l_I_V_33_fu_417_p3[29:24]}};

assign p_Result_58_fu_473_p5 = {{x_l_I_V_33_fu_417_p3[34:30]}, {sub_ln212_2_fu_467_p2}, {x_l_I_V_33_fu_417_p3[23:0]}};

assign p_Result_59_fu_485_p4 = {res_I_V_34_fu_423_p3[16 - 1:13], |(1'd1), res_I_V_34_fu_423_p3[11:0]};

assign p_Result_60_fu_529_p4 = {{x_l_I_V_34_fu_495_p3[28:22]}};

assign p_Result_61_fu_555_p5 = {{x_l_I_V_34_reg_1512[34:29]}, {sub_ln212_3_reg_1530}, {x_l_I_V_34_reg_1512[21:0]}};

assign p_Result_62_fu_565_p4 = {res_I_V_35_reg_1518[16 - 1:12], |(1'd1), res_I_V_35_reg_1518[10:0]};

assign p_Result_63_fu_604_p4 = {{x_l_I_V_35_fu_574_p3[27:20]}};

assign p_Result_64_fu_630_p5 = {{x_l_I_V_35_fu_574_p3[34:28]}, {sub_ln212_4_fu_624_p2}, {x_l_I_V_35_fu_574_p3[19:0]}};

assign p_Result_65_fu_642_p4 = {res_I_V_36_fu_580_p3[16 - 1:11], |(1'd1), res_I_V_36_fu_580_p3[9:0]};

assign p_Result_66_fu_686_p4 = {{x_l_I_V_36_fu_652_p3[26:18]}};

assign p_Result_67_fu_712_p5 = {{x_l_I_V_36_reg_1535[34:27]}, {sub_ln212_5_reg_1553}, {x_l_I_V_36_reg_1535[17:0]}};

assign p_Result_68_fu_722_p4 = {res_I_V_37_reg_1541[16 - 1:10], |(1'd1), res_I_V_37_reg_1541[8:0]};

assign p_Result_69_fu_761_p4 = {{x_l_I_V_fu_731_p3[25:16]}};

assign p_Result_70_fu_787_p5 = {{x_l_I_V_fu_731_p3[34:26]}, {sub_ln212_6_fu_781_p2}, {x_l_I_V_fu_731_p3[15:0]}};

assign p_Result_71_fu_799_p4 = {res_I_V_38_fu_737_p3[16 - 1:9], |(1'd1), res_I_V_38_fu_737_p3[7:0]};

assign p_Result_72_fu_843_p4 = {{x_l_I_V_37_fu_809_p3[24:14]}};

assign p_Result_73_fu_869_p5 = {{x_l_I_V_37_reg_1558[34:25]}, {sub_ln212_7_reg_1576}, {x_l_I_V_37_reg_1558[13:0]}};

assign p_Result_74_fu_879_p4 = {res_I_V_reg_1564[16 - 1:8], |(1'd1), res_I_V_reg_1564[6:0]};

assign p_Result_75_fu_918_p4 = {{x_l_I_V_38_fu_888_p3[23:12]}};

assign p_Result_76_fu_944_p5 = {{x_l_I_V_38_fu_888_p3[34:24]}, {sub_ln212_8_fu_938_p2}, {x_l_I_V_38_fu_888_p3[11:0]}};

assign p_Result_77_fu_956_p4 = {res_I_V_39_fu_894_p3[16 - 1:7], |(1'd1), res_I_V_39_fu_894_p3[5:0]};

assign p_Result_78_fu_1000_p4 = {{x_l_I_V_39_fu_966_p3[22:10]}};

assign p_Result_79_fu_1026_p5 = {{x_l_I_V_39_fu_966_p3[34:23]}, {sub_ln212_9_fu_1020_p2}, {x_l_I_V_39_fu_966_p3[9:0]}};

assign p_Result_80_fu_1038_p4 = {res_I_V_40_fu_974_p3[16 - 1:6], |(1'd1), res_I_V_40_fu_974_p3[4:0]};

assign p_Result_82_fu_1105_p5 = {{x_l_I_V_40_reg_1581[34:22]}, {sub_ln212_10_fu_1100_p2}, {x_l_I_V_40_reg_1581[7:0]}};

assign p_Result_83_fu_1116_p4 = {res_I_V_41_reg_1587[16 - 1:5], |(1'd1), res_I_V_41_reg_1587[3:0]};

assign p_Result_84_fu_1157_p4 = {{x_l_I_V_41_fu_1125_p3[20:6]}};

assign p_Result_85_fu_1183_p5 = {{x_l_I_V_41_fu_1125_p3[34:21]}, {sub_ln212_11_fu_1177_p2}, {x_l_I_V_41_fu_1125_p3[5:0]}};

assign p_Result_86_fu_1195_p4 = {res_I_V_42_fu_1132_p3[16 - 1:4], |(1'd1), res_I_V_42_fu_1132_p3[2:0]};

assign p_Result_88_fu_1262_p5 = {{x_l_I_V_42_reg_1604[34:20]}, {sub_ln212_12_fu_1257_p2}, {x_l_I_V_42_reg_1604[3:0]}};

assign p_Result_89_fu_1273_p4 = {res_I_V_43_reg_1610[16 - 1:3], |(1'd1), res_I_V_43_reg_1610[1:0]};

assign p_Result_8_fu_429_p4 = {{res_I_V_34_fu_423_p3[15:12]}};

assign p_Result_90_fu_1314_p4 = {{x_l_I_V_43_fu_1282_p3[18:2]}};

assign p_Result_91_fu_1340_p5 = {{x_l_I_V_43_fu_1282_p3[34:19]}, {sub_ln212_13_fu_1334_p2}, {x_l_I_V_43_fu_1282_p3[1:0]}};

assign p_Result_92_fu_1352_p4 = {res_I_V_44_fu_1289_p3[16 - 1:2], |(1'd1), res_I_V_44_fu_1289_p3[0:0]};

assign p_Result_93_fu_1378_p1 = x_l_I_V_44_fu_1362_p3[17:0];

assign p_Result_94_fu_1410_p5 = {{x_l_I_V_44_reg_1627[34:18]}, {sub_ln212_14_fu_1405_p2}};

assign p_Result_95_fu_1421_p4 = {res_I_V_45_reg_1633[16-1:1], |(1'd1)};

assign p_Result_s_75_fu_272_p4 = {{res_I_V_32_fu_264_p3[15:14]}};

assign p_Result_s_fu_1382_p3 = x_read_reg_1484_pp0_iter6_reg[32'd23];

assign res_I_V_30_fu_1462_p2 = (res_I_V_46_fu_1437_p3 + 16'd1);

assign res_I_V_32_fu_264_p3 = ((tmp_fu_228_p3[0:0] == 1'b1) ? 16'd32768 : 16'd0);

assign res_I_V_33_fu_346_p3 = ((icmp_ln443_fu_304_p2[0:0] == 1'b1) ? res_I_V_32_fu_264_p3 : p_Result_53_fu_328_p4);

assign res_I_V_34_fu_423_p3 = ((icmp_ln443_1_reg_1501[0:0] == 1'b1) ? res_I_V_33_reg_1495 : p_Result_56_fu_408_p4);

assign res_I_V_35_fu_503_p3 = ((icmp_ln443_2_fu_461_p2[0:0] == 1'b1) ? res_I_V_34_fu_423_p3 : p_Result_59_fu_485_p4);

assign res_I_V_36_fu_580_p3 = ((icmp_ln443_3_reg_1524[0:0] == 1'b1) ? res_I_V_35_reg_1518 : p_Result_62_fu_565_p4);

assign res_I_V_37_fu_660_p3 = ((icmp_ln443_4_fu_618_p2[0:0] == 1'b1) ? res_I_V_36_fu_580_p3 : p_Result_65_fu_642_p4);

assign res_I_V_38_fu_737_p3 = ((icmp_ln443_5_reg_1547[0:0] == 1'b1) ? res_I_V_37_reg_1541 : p_Result_68_fu_722_p4);

assign res_I_V_39_fu_894_p3 = ((icmp_ln443_7_reg_1570[0:0] == 1'b1) ? res_I_V_reg_1564 : p_Result_74_fu_879_p4);

assign res_I_V_40_fu_974_p3 = ((icmp_ln443_8_fu_932_p2[0:0] == 1'b1) ? res_I_V_39_fu_894_p3 : p_Result_77_fu_956_p4);

assign res_I_V_41_fu_1056_p3 = ((icmp_ln443_9_fu_1014_p2[0:0] == 1'b1) ? res_I_V_40_fu_974_p3 : p_Result_80_fu_1038_p4);

assign res_I_V_42_fu_1132_p3 = ((icmp_ln443_10_fu_1095_p2[0:0] == 1'b1) ? res_I_V_41_reg_1587 : p_Result_83_fu_1116_p4);

assign res_I_V_43_fu_1213_p3 = ((icmp_ln443_11_fu_1171_p2[0:0] == 1'b1) ? res_I_V_42_fu_1132_p3 : p_Result_86_fu_1195_p4);

assign res_I_V_44_fu_1289_p3 = ((icmp_ln443_12_fu_1252_p2[0:0] == 1'b1) ? res_I_V_43_reg_1610 : p_Result_89_fu_1273_p4);

assign res_I_V_45_fu_1370_p3 = ((icmp_ln443_13_fu_1328_p2[0:0] == 1'b1) ? res_I_V_44_fu_1289_p3 : p_Result_92_fu_1352_p4);

assign res_I_V_46_fu_1437_p3 = ((icmp_ln443_14_fu_1400_p2[0:0] == 1'b1) ? res_I_V_45_reg_1633 : p_Result_95_fu_1421_p4);

assign res_I_V_47_fu_1468_p3 = ((p_Result_48_fu_1456_p2[0:0] == 1'b1) ? res_I_V_30_fu_1462_p2 : res_I_V_46_fu_1437_p3);

assign res_I_V_fu_817_p3 = ((icmp_ln443_6_fu_775_p2[0:0] == 1'b1) ? res_I_V_38_fu_737_p3 : p_Result_71_fu_799_p4);

assign select_ln212_fu_236_p3 = ((tmp_fu_228_p3[0:0] == 1'b1) ? 3'd2 : 3'd7);

assign sext_ln666_fu_220_p0 = x_int_reg;

assign sext_ln666_fu_220_p1 = sext_ln666_fu_220_p0;

assign sub_ln212_10_fu_1100_p2 = (p_Result_81_reg_1598 - zext_ln443_10_fu_1091_p1);

assign sub_ln212_11_fu_1177_p2 = (p_Result_84_fu_1157_p4 - zext_ln443_11_fu_1167_p1);

assign sub_ln212_12_fu_1257_p2 = (p_Result_87_reg_1621 - zext_ln443_12_fu_1248_p1);

assign sub_ln212_13_fu_1334_p2 = (p_Result_90_fu_1314_p4 - zext_ln443_13_fu_1324_p1);

assign sub_ln212_14_fu_1405_p2 = (p_Result_93_reg_1640 - zext_ln443_14_fu_1396_p1);

assign sub_ln212_1_fu_392_p2 = (p_Result_54_fu_372_p4 - zext_ln443_1_fu_382_p1);

assign sub_ln212_2_fu_467_p2 = (p_Result_57_fu_447_p4 - zext_ln443_2_fu_457_p1);

assign sub_ln212_3_fu_549_p2 = (p_Result_60_fu_529_p4 - zext_ln443_3_fu_539_p1);

assign sub_ln212_4_fu_624_p2 = (p_Result_63_fu_604_p4 - zext_ln443_4_fu_614_p1);

assign sub_ln212_5_fu_706_p2 = (p_Result_66_fu_686_p4 - zext_ln443_5_fu_696_p1);

assign sub_ln212_6_fu_781_p2 = (p_Result_69_fu_761_p4 - zext_ln443_6_fu_771_p1);

assign sub_ln212_7_fu_863_p2 = (p_Result_72_fu_843_p4 - zext_ln443_7_fu_853_p1);

assign sub_ln212_8_fu_938_p2 = (p_Result_75_fu_918_p4 - zext_ln443_8_fu_928_p1);

assign sub_ln212_9_fu_1020_p2 = (p_Result_78_fu_1000_p4 - zext_ln443_9_fu_1010_p1);

assign sub_ln212_fu_310_p2 = (p_Result_51_fu_290_p4 - zext_ln443_fu_300_p1);

assign tmp_10_fu_1084_p3 = {{p_Result_31_reg_1593}, {1'd1}};

assign tmp_11_fu_1149_p3 = {{p_Result_34_fu_1139_p4}, {1'd1}};

assign tmp_12_fu_1241_p3 = {{p_Result_37_reg_1616}, {1'd1}};

assign tmp_13_fu_1306_p3 = {{p_Result_40_fu_1296_p4}, {1'd1}};

assign tmp_14_fu_1389_p3 = {{res_I_V_45_reg_1633}, {1'd1}};

assign tmp_1_fu_282_p3 = {{p_Result_s_75_fu_272_p4}, {1'd1}};

assign tmp_2_fu_364_p3 = {{p_Result_4_fu_354_p4}, {1'd1}};

assign tmp_3_fu_439_p3 = {{p_Result_8_fu_429_p4}, {1'd1}};

assign tmp_4_fu_521_p3 = {{p_Result_10_fu_511_p4}, {1'd1}};

assign tmp_5_fu_596_p3 = {{p_Result_13_fu_586_p4}, {1'd1}};

assign tmp_6_fu_678_p3 = {{p_Result_16_fu_668_p4}, {1'd1}};

assign tmp_7_fu_753_p3 = {{p_Result_19_fu_743_p4}, {1'd1}};

assign tmp_8_fu_835_p3 = {{p_Result_22_fu_825_p4}, {1'd1}};

assign tmp_9_fu_910_p3 = {{p_Result_25_fu_900_p4}, {1'd1}};

assign tmp_fu_228_p1 = x_int_reg;

assign tmp_fu_228_p3 = tmp_fu_228_p1[32'd23];

assign tmp_s_fu_992_p3 = {{p_Result_28_fu_982_p4}, {1'd1}};

assign x_l_I_V_31_fu_256_p3 = ((tmp_fu_228_p3[0:0] == 1'b1) ? p_Result_50_fu_244_p5 : zext_ln666_fu_224_p1);

assign x_l_I_V_32_fu_338_p3 = ((icmp_ln443_fu_304_p2[0:0] == 1'b1) ? x_l_I_V_31_fu_256_p3 : p_Result_52_fu_316_p5);

assign x_l_I_V_33_fu_417_p3 = ((icmp_ln443_1_reg_1501[0:0] == 1'b1) ? x_l_I_V_32_reg_1489 : p_Result_55_fu_398_p5);

assign x_l_I_V_34_fu_495_p3 = ((icmp_ln443_2_fu_461_p2[0:0] == 1'b1) ? x_l_I_V_33_fu_417_p3 : p_Result_58_fu_473_p5);

assign x_l_I_V_35_fu_574_p3 = ((icmp_ln443_3_reg_1524[0:0] == 1'b1) ? x_l_I_V_34_reg_1512 : p_Result_61_fu_555_p5);

assign x_l_I_V_36_fu_652_p3 = ((icmp_ln443_4_fu_618_p2[0:0] == 1'b1) ? x_l_I_V_35_fu_574_p3 : p_Result_64_fu_630_p5);

assign x_l_I_V_37_fu_809_p3 = ((icmp_ln443_6_fu_775_p2[0:0] == 1'b1) ? x_l_I_V_fu_731_p3 : p_Result_70_fu_787_p5);

assign x_l_I_V_38_fu_888_p3 = ((icmp_ln443_7_reg_1570[0:0] == 1'b1) ? x_l_I_V_37_reg_1558 : p_Result_73_fu_869_p5);

assign x_l_I_V_39_fu_966_p3 = ((icmp_ln443_8_fu_932_p2[0:0] == 1'b1) ? x_l_I_V_38_fu_888_p3 : p_Result_76_fu_944_p5);

assign x_l_I_V_40_fu_1048_p3 = ((icmp_ln443_9_fu_1014_p2[0:0] == 1'b1) ? x_l_I_V_39_fu_966_p3 : p_Result_79_fu_1026_p5);

assign x_l_I_V_41_fu_1125_p3 = ((icmp_ln443_10_fu_1095_p2[0:0] == 1'b1) ? x_l_I_V_40_reg_1581 : p_Result_82_fu_1105_p5);

assign x_l_I_V_42_fu_1205_p3 = ((icmp_ln443_11_fu_1171_p2[0:0] == 1'b1) ? x_l_I_V_41_fu_1125_p3 : p_Result_85_fu_1183_p5);

assign x_l_I_V_43_fu_1282_p3 = ((icmp_ln443_12_fu_1252_p2[0:0] == 1'b1) ? x_l_I_V_42_reg_1604 : p_Result_88_fu_1262_p5);

assign x_l_I_V_44_fu_1362_p3 = ((icmp_ln443_13_fu_1328_p2[0:0] == 1'b1) ? x_l_I_V_43_fu_1282_p3 : p_Result_91_fu_1340_p5);

assign x_l_I_V_45_fu_1430_p3 = ((icmp_ln443_14_fu_1400_p2[0:0] == 1'b1) ? x_l_I_V_44_reg_1627 : p_Result_94_fu_1410_p5);

assign x_l_I_V_fu_731_p3 = ((icmp_ln443_5_reg_1547[0:0] == 1'b1) ? x_l_I_V_36_reg_1535 : p_Result_67_fu_712_p5);

assign zext_ln443_10_fu_1091_p1 = tmp_10_fu_1084_p3;

assign zext_ln443_11_fu_1167_p1 = tmp_11_fu_1149_p3;

assign zext_ln443_12_fu_1248_p1 = tmp_12_fu_1241_p3;

assign zext_ln443_13_fu_1324_p1 = tmp_13_fu_1306_p3;

assign zext_ln443_14_fu_1396_p1 = tmp_14_fu_1389_p3;

assign zext_ln443_1_fu_382_p1 = tmp_2_fu_364_p3;

assign zext_ln443_2_fu_457_p1 = tmp_3_fu_439_p3;

assign zext_ln443_3_fu_539_p1 = tmp_4_fu_521_p3;

assign zext_ln443_4_fu_614_p1 = tmp_5_fu_596_p3;

assign zext_ln443_5_fu_696_p1 = tmp_6_fu_678_p3;

assign zext_ln443_6_fu_771_p1 = tmp_7_fu_753_p3;

assign zext_ln443_7_fu_853_p1 = tmp_8_fu_835_p3;

assign zext_ln443_8_fu_928_p1 = tmp_9_fu_910_p3;

assign zext_ln443_9_fu_1010_p1 = tmp_s_fu_992_p3;

assign zext_ln443_fu_300_p1 = tmp_1_fu_282_p3;

assign zext_ln666_fu_224_p1 = $unsigned(sext_ln666_fu_220_p1);

assign zext_ln671_fu_1452_p1 = mul_I_V_fu_1444_p3;

endmodule //eucHW_sqrt_fixed_32_32_s
