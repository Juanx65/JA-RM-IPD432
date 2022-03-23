// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module eucDistHW_sqrt_fixed_32_32_s (
        ap_clk,
        ap_rst,
        x,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [31:0] x;
output  [15:0] ap_return;

reg   [31:0] x_read_reg_1485;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] x_read_reg_1485_pp0_iter1_reg;
reg   [31:0] x_read_reg_1485_pp0_iter2_reg;
reg   [31:0] x_read_reg_1485_pp0_iter3_reg;
reg   [31:0] x_read_reg_1485_pp0_iter4_reg;
reg   [31:0] x_read_reg_1485_pp0_iter5_reg;
reg   [31:0] x_read_reg_1485_pp0_iter6_reg;
reg   [31:0] x_read_reg_1485_pp0_iter7_reg;
wire   [34:0] x_l_I_V_32_fu_346_p3;
reg   [34:0] x_l_I_V_32_reg_1490;
wire   [15:0] res_I_V_33_fu_354_p3;
reg   [15:0] res_I_V_33_reg_1496;
wire   [0:0] icmp_ln443_2_fu_394_p2;
reg   [0:0] icmp_ln443_2_reg_1502;
wire   [4:0] sub_ln212_1_fu_400_p2;
reg   [4:0] sub_ln212_1_reg_1508;
wire   [34:0] x_l_I_V_34_fu_503_p3;
reg   [34:0] x_l_I_V_34_reg_1513;
wire   [15:0] res_I_V_35_fu_511_p3;
reg   [15:0] res_I_V_35_reg_1519;
wire   [0:0] icmp_ln443_4_fu_551_p2;
reg   [0:0] icmp_ln443_4_reg_1525;
wire   [6:0] sub_ln212_3_fu_557_p2;
reg   [6:0] sub_ln212_3_reg_1531;
wire   [34:0] x_l_I_V_36_fu_660_p3;
reg   [34:0] x_l_I_V_36_reg_1536;
wire   [15:0] res_I_V_37_fu_668_p3;
reg   [15:0] res_I_V_37_reg_1542;
wire   [0:0] icmp_ln443_6_fu_708_p2;
reg   [0:0] icmp_ln443_6_reg_1548;
wire   [8:0] sub_ln212_5_fu_714_p2;
reg   [8:0] sub_ln212_5_reg_1554;
wire   [34:0] x_l_I_V_37_fu_817_p3;
reg   [34:0] x_l_I_V_37_reg_1559;
wire   [15:0] res_I_V_fu_825_p3;
reg   [15:0] res_I_V_reg_1565;
wire   [0:0] icmp_ln443_8_fu_865_p2;
reg   [0:0] icmp_ln443_8_reg_1571;
wire   [10:0] sub_ln212_7_fu_871_p2;
reg   [10:0] sub_ln212_7_reg_1577;
wire   [34:0] x_l_I_V_39_fu_974_p3;
reg   [34:0] x_l_I_V_39_reg_1582;
wire   [15:0] res_I_V_40_fu_982_p3;
reg   [15:0] res_I_V_40_reg_1588;
wire   [0:0] icmp_ln443_10_fu_1022_p2;
reg   [0:0] icmp_ln443_10_reg_1594;
wire   [12:0] sub_ln212_9_fu_1028_p2;
reg   [12:0] sub_ln212_9_reg_1600;
wire   [34:0] x_l_I_V_41_fu_1131_p3;
reg   [34:0] x_l_I_V_41_reg_1605;
wire   [15:0] res_I_V_42_fu_1139_p3;
reg   [15:0] res_I_V_42_reg_1611;
wire   [0:0] icmp_ln443_12_fu_1179_p2;
reg   [0:0] icmp_ln443_12_reg_1617;
wire   [14:0] sub_ln212_11_fu_1185_p2;
reg   [14:0] sub_ln212_11_reg_1623;
wire   [34:0] x_l_I_V_42_fu_1210_p3;
reg   [34:0] x_l_I_V_42_reg_1628;
wire   [0:0] icmp_ln443_13_fu_1254_p2;
reg   [0:0] icmp_ln443_13_reg_1634;
wire   [15:0] sub_ln212_12_fu_1260_p2;
reg   [15:0] sub_ln212_12_reg_1639;
wire   [15:0] res_I_V_44_fu_1276_p3;
reg   [15:0] res_I_V_44_reg_1644;
reg   [14:0] p_Result_40_reg_1650;
wire   [34:0] x_l_I_V_44_fu_1364_p3;
reg   [34:0] x_l_I_V_44_reg_1655;
wire   [15:0] res_I_V_45_fu_1372_p3;
reg   [15:0] res_I_V_45_reg_1661;
wire   [0:0] icmp_ln443_15_fu_1395_p2;
reg   [0:0] icmp_ln443_15_reg_1667;
wire   [17:0] sub_ln212_14_fu_1401_p2;
reg   [17:0] sub_ln212_14_reg_1673;
wire    ap_block_pp0_stage0;
wire   [1:0] tmp_fu_226_p4;
wire   [2:0] zext_ln212_fu_242_p1;
wire   [34:0] zext_ln666_fu_222_p1;
wire   [2:0] add_ln212_fu_246_p2;
wire   [0:0] icmp_ln443_fu_236_p2;
wire   [34:0] p_Result_50_fu_252_p5;
wire   [15:0] res_I_V_32_fu_272_p3;
wire   [1:0] p_Result_s_101_fu_280_p4;
wire   [34:0] x_l_I_V_31_fu_264_p3;
wire   [2:0] tmp_1_fu_290_p3;
wire   [3:0] p_Result_51_fu_298_p4;
wire   [3:0] zext_ln443_fu_308_p1;
wire   [3:0] sub_ln212_fu_318_p2;
wire   [0:0] icmp_ln443_1_fu_312_p2;
wire   [34:0] p_Result_52_fu_324_p5;
wire   [15:0] p_Result_53_fu_336_p4;
wire   [2:0] p_Result_4_fu_362_p4;
wire   [3:0] tmp_2_fu_372_p3;
wire   [4:0] p_Result_54_fu_380_p4;
wire   [4:0] zext_ln443_1_fu_390_p1;
wire   [34:0] p_Result_55_fu_406_p5;
wire   [15:0] p_Result_56_fu_416_p4;
wire   [15:0] res_I_V_34_fu_431_p3;
wire   [3:0] p_Result_8_fu_437_p4;
wire   [34:0] x_l_I_V_33_fu_425_p3;
wire   [4:0] tmp_3_fu_447_p3;
wire   [5:0] p_Result_57_fu_455_p4;
wire   [5:0] zext_ln443_2_fu_465_p1;
wire   [5:0] sub_ln212_2_fu_475_p2;
wire   [0:0] icmp_ln443_3_fu_469_p2;
wire   [34:0] p_Result_58_fu_481_p5;
wire   [15:0] p_Result_59_fu_493_p4;
wire   [4:0] p_Result_10_fu_519_p4;
wire   [5:0] tmp_4_fu_529_p3;
wire   [6:0] p_Result_60_fu_537_p4;
wire   [6:0] zext_ln443_3_fu_547_p1;
wire   [34:0] p_Result_61_fu_563_p5;
wire   [15:0] p_Result_62_fu_573_p4;
wire   [15:0] res_I_V_36_fu_588_p3;
wire   [5:0] p_Result_13_fu_594_p4;
wire   [34:0] x_l_I_V_35_fu_582_p3;
wire   [6:0] tmp_5_fu_604_p3;
wire   [7:0] p_Result_63_fu_612_p4;
wire   [7:0] zext_ln443_4_fu_622_p1;
wire   [7:0] sub_ln212_4_fu_632_p2;
wire   [0:0] icmp_ln443_5_fu_626_p2;
wire   [34:0] p_Result_64_fu_638_p5;
wire   [15:0] p_Result_65_fu_650_p4;
wire   [6:0] p_Result_16_fu_676_p4;
wire   [7:0] tmp_6_fu_686_p3;
wire   [8:0] p_Result_66_fu_694_p4;
wire   [8:0] zext_ln443_5_fu_704_p1;
wire   [34:0] p_Result_67_fu_720_p5;
wire   [15:0] p_Result_68_fu_730_p4;
wire   [15:0] res_I_V_38_fu_745_p3;
wire   [7:0] p_Result_19_fu_751_p4;
wire   [34:0] x_l_I_V_fu_739_p3;
wire   [8:0] tmp_7_fu_761_p3;
wire   [9:0] p_Result_69_fu_769_p4;
wire   [9:0] zext_ln443_6_fu_779_p1;
wire   [9:0] sub_ln212_6_fu_789_p2;
wire   [0:0] icmp_ln443_7_fu_783_p2;
wire   [34:0] p_Result_70_fu_795_p5;
wire   [15:0] p_Result_71_fu_807_p4;
wire   [8:0] p_Result_22_fu_833_p4;
wire   [9:0] tmp_8_fu_843_p3;
wire   [10:0] p_Result_72_fu_851_p4;
wire   [10:0] zext_ln443_7_fu_861_p1;
wire   [34:0] p_Result_73_fu_877_p5;
wire   [15:0] p_Result_74_fu_887_p4;
wire   [15:0] res_I_V_39_fu_902_p3;
wire   [9:0] p_Result_25_fu_908_p4;
wire   [34:0] x_l_I_V_38_fu_896_p3;
wire   [10:0] tmp_9_fu_918_p3;
wire   [11:0] p_Result_75_fu_926_p4;
wire   [11:0] zext_ln443_8_fu_936_p1;
wire   [11:0] sub_ln212_8_fu_946_p2;
wire   [0:0] icmp_ln443_9_fu_940_p2;
wire   [34:0] p_Result_76_fu_952_p5;
wire   [15:0] p_Result_77_fu_964_p4;
wire   [10:0] p_Result_28_fu_990_p4;
wire   [11:0] tmp_s_fu_1000_p3;
wire   [12:0] p_Result_78_fu_1008_p4;
wire   [12:0] zext_ln443_9_fu_1018_p1;
wire   [34:0] p_Result_79_fu_1034_p5;
wire   [15:0] p_Result_80_fu_1044_p4;
wire   [15:0] res_I_V_41_fu_1059_p3;
wire   [11:0] p_Result_31_fu_1065_p4;
wire   [34:0] x_l_I_V_40_fu_1053_p3;
wire   [12:0] tmp_10_fu_1075_p3;
wire   [13:0] p_Result_81_fu_1083_p4;
wire   [13:0] zext_ln443_10_fu_1093_p1;
wire   [13:0] sub_ln212_10_fu_1103_p2;
wire   [0:0] icmp_ln443_11_fu_1097_p2;
wire   [34:0] p_Result_82_fu_1109_p5;
wire   [15:0] p_Result_83_fu_1121_p4;
wire   [12:0] p_Result_34_fu_1147_p4;
wire   [13:0] tmp_11_fu_1157_p3;
wire   [14:0] p_Result_84_fu_1165_p4;
wire   [14:0] zext_ln443_11_fu_1175_p1;
wire   [34:0] p_Result_85_fu_1191_p5;
wire   [15:0] p_Result_86_fu_1201_p4;
wire   [15:0] res_I_V_43_fu_1216_p3;
wire   [13:0] p_Result_37_fu_1222_p4;
wire   [14:0] tmp_12_fu_1232_p3;
wire   [15:0] p_Result_87_fu_1240_p4;
wire   [15:0] zext_ln443_12_fu_1250_p1;
wire   [15:0] p_Result_89_fu_1266_p4;
wire   [34:0] p_Result_88_fu_1294_p5;
wire   [34:0] x_l_I_V_43_fu_1304_p3;
wire   [15:0] tmp_13_fu_1310_p3;
wire   [16:0] p_Result_90_fu_1317_p4;
wire   [16:0] zext_ln443_13_fu_1327_p1;
wire   [16:0] sub_ln212_13_fu_1337_p2;
wire   [0:0] icmp_ln443_14_fu_1331_p2;
wire   [34:0] p_Result_91_fu_1343_p5;
wire   [15:0] p_Result_92_fu_1355_p4;
wire   [16:0] tmp_14_fu_1379_p3;
wire   [17:0] p_Result_93_fu_1387_p1;
wire   [17:0] zext_ln443_14_fu_1391_p1;
wire   [34:0] p_Result_94_fu_1414_p5;
wire   [15:0] p_Result_95_fu_1424_p4;
wire   [15:0] res_I_V_46_fu_1439_p3;
wire   [32:0] mul_I_V_fu_1445_p3;
wire   [34:0] x_l_I_V_45_fu_1433_p3;
wire   [34:0] zext_ln671_fu_1453_p1;
wire   [0:0] p_Result_48_fu_1457_p2;
wire   [15:0] res_I_V_30_fu_1463_p2;
wire   [0:0] p_Result_s_fu_1407_p3;
wire   [15:0] res_I_V_47_fu_1469_p3;
reg   [31:0] x_int_reg;
wire    ap_ce_reg;

always @ (posedge ap_clk) begin
    x_int_reg <= x;
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln443_10_reg_1594 <= icmp_ln443_10_fu_1022_p2;
        icmp_ln443_12_reg_1617 <= icmp_ln443_12_fu_1179_p2;
        icmp_ln443_13_reg_1634 <= icmp_ln443_13_fu_1254_p2;
        icmp_ln443_15_reg_1667 <= icmp_ln443_15_fu_1395_p2;
        icmp_ln443_2_reg_1502 <= icmp_ln443_2_fu_394_p2;
        icmp_ln443_4_reg_1525 <= icmp_ln443_4_fu_551_p2;
        icmp_ln443_6_reg_1548 <= icmp_ln443_6_fu_708_p2;
        icmp_ln443_8_reg_1571 <= icmp_ln443_8_fu_865_p2;
        p_Result_40_reg_1650 <= {{res_I_V_44_fu_1276_p3[15:1]}};
        res_I_V_33_reg_1496 <= res_I_V_33_fu_354_p3;
        res_I_V_35_reg_1519 <= res_I_V_35_fu_511_p3;
        res_I_V_37_reg_1542 <= res_I_V_37_fu_668_p3;
        res_I_V_40_reg_1588 <= res_I_V_40_fu_982_p3;
        res_I_V_42_reg_1611 <= res_I_V_42_fu_1139_p3;
        res_I_V_44_reg_1644 <= res_I_V_44_fu_1276_p3;
        res_I_V_45_reg_1661 <= res_I_V_45_fu_1372_p3;
        res_I_V_reg_1565 <= res_I_V_fu_825_p3;
        sub_ln212_11_reg_1623 <= sub_ln212_11_fu_1185_p2;
        sub_ln212_12_reg_1639 <= sub_ln212_12_fu_1260_p2;
        sub_ln212_14_reg_1673 <= sub_ln212_14_fu_1401_p2;
        sub_ln212_1_reg_1508 <= sub_ln212_1_fu_400_p2;
        sub_ln212_3_reg_1531 <= sub_ln212_3_fu_557_p2;
        sub_ln212_5_reg_1554 <= sub_ln212_5_fu_714_p2;
        sub_ln212_7_reg_1577 <= sub_ln212_7_fu_871_p2;
        sub_ln212_9_reg_1600 <= sub_ln212_9_fu_1028_p2;
        x_l_I_V_32_reg_1490 <= x_l_I_V_32_fu_346_p3;
        x_l_I_V_34_reg_1513 <= x_l_I_V_34_fu_503_p3;
        x_l_I_V_36_reg_1536 <= x_l_I_V_36_fu_660_p3;
        x_l_I_V_37_reg_1559 <= x_l_I_V_37_fu_817_p3;
        x_l_I_V_39_reg_1582 <= x_l_I_V_39_fu_974_p3;
        x_l_I_V_41_reg_1605 <= x_l_I_V_41_fu_1131_p3;
        x_l_I_V_42_reg_1628 <= x_l_I_V_42_fu_1210_p3;
        x_l_I_V_44_reg_1655 <= x_l_I_V_44_fu_1364_p3;
        x_read_reg_1485 <= x_int_reg;
        x_read_reg_1485_pp0_iter1_reg <= x_read_reg_1485;
        x_read_reg_1485_pp0_iter2_reg <= x_read_reg_1485_pp0_iter1_reg;
        x_read_reg_1485_pp0_iter3_reg <= x_read_reg_1485_pp0_iter2_reg;
        x_read_reg_1485_pp0_iter4_reg <= x_read_reg_1485_pp0_iter3_reg;
        x_read_reg_1485_pp0_iter5_reg <= x_read_reg_1485_pp0_iter4_reg;
        x_read_reg_1485_pp0_iter6_reg <= x_read_reg_1485_pp0_iter5_reg;
        x_read_reg_1485_pp0_iter7_reg <= x_read_reg_1485_pp0_iter6_reg;
    end
end

assign add_ln212_fu_246_p2 = ($signed(zext_ln212_fu_242_p1) + $signed(3'd7));

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

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_return = ((p_Result_s_fu_1407_p3[0:0] == 1'b1) ? 16'd0 : res_I_V_47_fu_1469_p3);

assign icmp_ln443_10_fu_1022_p2 = ((p_Result_78_fu_1008_p4 < zext_ln443_9_fu_1018_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_11_fu_1097_p2 = ((p_Result_81_fu_1083_p4 < zext_ln443_10_fu_1093_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_12_fu_1179_p2 = ((p_Result_84_fu_1165_p4 < zext_ln443_11_fu_1175_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_13_fu_1254_p2 = ((p_Result_87_fu_1240_p4 < zext_ln443_12_fu_1250_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_14_fu_1331_p2 = ((p_Result_90_fu_1317_p4 < zext_ln443_13_fu_1327_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_15_fu_1395_p2 = ((p_Result_93_fu_1387_p1 < zext_ln443_14_fu_1391_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_1_fu_312_p2 = ((p_Result_51_fu_298_p4 < zext_ln443_fu_308_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_2_fu_394_p2 = ((p_Result_54_fu_380_p4 < zext_ln443_1_fu_390_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_3_fu_469_p2 = ((p_Result_57_fu_455_p4 < zext_ln443_2_fu_465_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_4_fu_551_p2 = ((p_Result_60_fu_537_p4 < zext_ln443_3_fu_547_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_5_fu_626_p2 = ((p_Result_63_fu_612_p4 < zext_ln443_4_fu_622_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_6_fu_708_p2 = ((p_Result_66_fu_694_p4 < zext_ln443_5_fu_704_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_7_fu_783_p2 = ((p_Result_69_fu_769_p4 < zext_ln443_6_fu_779_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_8_fu_865_p2 = ((p_Result_72_fu_851_p4 < zext_ln443_7_fu_861_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_9_fu_940_p2 = ((p_Result_75_fu_926_p4 < zext_ln443_8_fu_936_p1) ? 1'b1 : 1'b0);

assign icmp_ln443_fu_236_p2 = ((tmp_fu_226_p4 == 2'd0) ? 1'b1 : 1'b0);

assign mul_I_V_fu_1445_p3 = {{17'd0}, {res_I_V_46_fu_1439_p3}};

assign p_Result_10_fu_519_p4 = {{res_I_V_35_fu_511_p3[15:11]}};

assign p_Result_13_fu_594_p4 = {{res_I_V_36_fu_588_p3[15:10]}};

assign p_Result_16_fu_676_p4 = {{res_I_V_37_fu_668_p3[15:9]}};

assign p_Result_19_fu_751_p4 = {{res_I_V_38_fu_745_p3[15:8]}};

assign p_Result_22_fu_833_p4 = {{res_I_V_fu_825_p3[15:7]}};

assign p_Result_25_fu_908_p4 = {{res_I_V_39_fu_902_p3[15:6]}};

assign p_Result_28_fu_990_p4 = {{res_I_V_40_fu_982_p3[15:5]}};

assign p_Result_31_fu_1065_p4 = {{res_I_V_41_fu_1059_p3[15:4]}};

assign p_Result_34_fu_1147_p4 = {{res_I_V_42_fu_1139_p3[15:3]}};

assign p_Result_37_fu_1222_p4 = {{res_I_V_43_fu_1216_p3[15:2]}};

assign p_Result_48_fu_1457_p2 = ((x_l_I_V_45_fu_1433_p3 > zext_ln671_fu_1453_p1) ? 1'b1 : 1'b0);

assign p_Result_4_fu_362_p4 = {{res_I_V_33_fu_354_p3[15:13]}};

assign p_Result_50_fu_252_p5 = {{zext_ln666_fu_222_p1[34:33]}, {add_ln212_fu_246_p2}, {zext_ln666_fu_222_p1[29:0]}};

assign p_Result_51_fu_298_p4 = {{x_l_I_V_31_fu_264_p3[31:28]}};

assign p_Result_52_fu_324_p5 = {{x_l_I_V_31_fu_264_p3[34:32]}, {sub_ln212_fu_318_p2}, {x_l_I_V_31_fu_264_p3[27:0]}};

assign p_Result_53_fu_336_p4 = {res_I_V_32_fu_272_p3[16 - 1:15], |(1'd1), res_I_V_32_fu_272_p3[13:0]};

assign p_Result_54_fu_380_p4 = {{x_l_I_V_32_fu_346_p3[30:26]}};

assign p_Result_55_fu_406_p5 = {{x_l_I_V_32_reg_1490[34:31]}, {sub_ln212_1_reg_1508}, {x_l_I_V_32_reg_1490[25:0]}};

assign p_Result_56_fu_416_p4 = {res_I_V_33_reg_1496[16 - 1:14], |(1'd1), res_I_V_33_reg_1496[12:0]};

assign p_Result_57_fu_455_p4 = {{x_l_I_V_33_fu_425_p3[29:24]}};

assign p_Result_58_fu_481_p5 = {{x_l_I_V_33_fu_425_p3[34:30]}, {sub_ln212_2_fu_475_p2}, {x_l_I_V_33_fu_425_p3[23:0]}};

assign p_Result_59_fu_493_p4 = {res_I_V_34_fu_431_p3[16 - 1:13], |(1'd1), res_I_V_34_fu_431_p3[11:0]};

assign p_Result_60_fu_537_p4 = {{x_l_I_V_34_fu_503_p3[28:22]}};

assign p_Result_61_fu_563_p5 = {{x_l_I_V_34_reg_1513[34:29]}, {sub_ln212_3_reg_1531}, {x_l_I_V_34_reg_1513[21:0]}};

assign p_Result_62_fu_573_p4 = {res_I_V_35_reg_1519[16 - 1:12], |(1'd1), res_I_V_35_reg_1519[10:0]};

assign p_Result_63_fu_612_p4 = {{x_l_I_V_35_fu_582_p3[27:20]}};

assign p_Result_64_fu_638_p5 = {{x_l_I_V_35_fu_582_p3[34:28]}, {sub_ln212_4_fu_632_p2}, {x_l_I_V_35_fu_582_p3[19:0]}};

assign p_Result_65_fu_650_p4 = {res_I_V_36_fu_588_p3[16 - 1:11], |(1'd1), res_I_V_36_fu_588_p3[9:0]};

assign p_Result_66_fu_694_p4 = {{x_l_I_V_36_fu_660_p3[26:18]}};

assign p_Result_67_fu_720_p5 = {{x_l_I_V_36_reg_1536[34:27]}, {sub_ln212_5_reg_1554}, {x_l_I_V_36_reg_1536[17:0]}};

assign p_Result_68_fu_730_p4 = {res_I_V_37_reg_1542[16 - 1:10], |(1'd1), res_I_V_37_reg_1542[8:0]};

assign p_Result_69_fu_769_p4 = {{x_l_I_V_fu_739_p3[25:16]}};

assign p_Result_70_fu_795_p5 = {{x_l_I_V_fu_739_p3[34:26]}, {sub_ln212_6_fu_789_p2}, {x_l_I_V_fu_739_p3[15:0]}};

assign p_Result_71_fu_807_p4 = {res_I_V_38_fu_745_p3[16 - 1:9], |(1'd1), res_I_V_38_fu_745_p3[7:0]};

assign p_Result_72_fu_851_p4 = {{x_l_I_V_37_fu_817_p3[24:14]}};

assign p_Result_73_fu_877_p5 = {{x_l_I_V_37_reg_1559[34:25]}, {sub_ln212_7_reg_1577}, {x_l_I_V_37_reg_1559[13:0]}};

assign p_Result_74_fu_887_p4 = {res_I_V_reg_1565[16 - 1:8], |(1'd1), res_I_V_reg_1565[6:0]};

assign p_Result_75_fu_926_p4 = {{x_l_I_V_38_fu_896_p3[23:12]}};

assign p_Result_76_fu_952_p5 = {{x_l_I_V_38_fu_896_p3[34:24]}, {sub_ln212_8_fu_946_p2}, {x_l_I_V_38_fu_896_p3[11:0]}};

assign p_Result_77_fu_964_p4 = {res_I_V_39_fu_902_p3[16 - 1:7], |(1'd1), res_I_V_39_fu_902_p3[5:0]};

assign p_Result_78_fu_1008_p4 = {{x_l_I_V_39_fu_974_p3[22:10]}};

assign p_Result_79_fu_1034_p5 = {{x_l_I_V_39_reg_1582[34:23]}, {sub_ln212_9_reg_1600}, {x_l_I_V_39_reg_1582[9:0]}};

assign p_Result_80_fu_1044_p4 = {res_I_V_40_reg_1588[16 - 1:6], |(1'd1), res_I_V_40_reg_1588[4:0]};

assign p_Result_81_fu_1083_p4 = {{x_l_I_V_40_fu_1053_p3[21:8]}};

assign p_Result_82_fu_1109_p5 = {{x_l_I_V_40_fu_1053_p3[34:22]}, {sub_ln212_10_fu_1103_p2}, {x_l_I_V_40_fu_1053_p3[7:0]}};

assign p_Result_83_fu_1121_p4 = {res_I_V_41_fu_1059_p3[16 - 1:5], |(1'd1), res_I_V_41_fu_1059_p3[3:0]};

assign p_Result_84_fu_1165_p4 = {{x_l_I_V_41_fu_1131_p3[20:6]}};

assign p_Result_85_fu_1191_p5 = {{x_l_I_V_41_reg_1605[34:21]}, {sub_ln212_11_reg_1623}, {x_l_I_V_41_reg_1605[5:0]}};

assign p_Result_86_fu_1201_p4 = {res_I_V_42_reg_1611[16 - 1:4], |(1'd1), res_I_V_42_reg_1611[2:0]};

assign p_Result_87_fu_1240_p4 = {{x_l_I_V_42_fu_1210_p3[19:4]}};

assign p_Result_88_fu_1294_p5 = {{x_l_I_V_42_reg_1628[34:20]}, {sub_ln212_12_reg_1639}, {x_l_I_V_42_reg_1628[3:0]}};

assign p_Result_89_fu_1266_p4 = {res_I_V_43_fu_1216_p3[16 - 1:3], |(1'd1), res_I_V_43_fu_1216_p3[1:0]};

assign p_Result_8_fu_437_p4 = {{res_I_V_34_fu_431_p3[15:12]}};

assign p_Result_90_fu_1317_p4 = {{x_l_I_V_43_fu_1304_p3[18:2]}};

assign p_Result_91_fu_1343_p5 = {{x_l_I_V_43_fu_1304_p3[34:19]}, {sub_ln212_13_fu_1337_p2}, {x_l_I_V_43_fu_1304_p3[1:0]}};

assign p_Result_92_fu_1355_p4 = {res_I_V_44_reg_1644[16 - 1:2], |(1'd1), res_I_V_44_reg_1644[0:0]};

assign p_Result_93_fu_1387_p1 = x_l_I_V_44_fu_1364_p3[17:0];

assign p_Result_94_fu_1414_p5 = {{x_l_I_V_44_reg_1655[34:18]}, {sub_ln212_14_reg_1673}};

assign p_Result_95_fu_1424_p4 = {res_I_V_45_reg_1661[16-1:1], |(1'd1)};

assign p_Result_s_101_fu_280_p4 = {{res_I_V_32_fu_272_p3[15:14]}};

assign p_Result_s_fu_1407_p3 = x_read_reg_1485_pp0_iter7_reg[32'd31];

assign res_I_V_30_fu_1463_p2 = (res_I_V_46_fu_1439_p3 + 16'd1);

assign res_I_V_32_fu_272_p3 = ((icmp_ln443_fu_236_p2[0:0] == 1'b1) ? 16'd0 : 16'd32768);

assign res_I_V_33_fu_354_p3 = ((icmp_ln443_1_fu_312_p2[0:0] == 1'b1) ? res_I_V_32_fu_272_p3 : p_Result_53_fu_336_p4);

assign res_I_V_34_fu_431_p3 = ((icmp_ln443_2_reg_1502[0:0] == 1'b1) ? res_I_V_33_reg_1496 : p_Result_56_fu_416_p4);

assign res_I_V_35_fu_511_p3 = ((icmp_ln443_3_fu_469_p2[0:0] == 1'b1) ? res_I_V_34_fu_431_p3 : p_Result_59_fu_493_p4);

assign res_I_V_36_fu_588_p3 = ((icmp_ln443_4_reg_1525[0:0] == 1'b1) ? res_I_V_35_reg_1519 : p_Result_62_fu_573_p4);

assign res_I_V_37_fu_668_p3 = ((icmp_ln443_5_fu_626_p2[0:0] == 1'b1) ? res_I_V_36_fu_588_p3 : p_Result_65_fu_650_p4);

assign res_I_V_38_fu_745_p3 = ((icmp_ln443_6_reg_1548[0:0] == 1'b1) ? res_I_V_37_reg_1542 : p_Result_68_fu_730_p4);

assign res_I_V_39_fu_902_p3 = ((icmp_ln443_8_reg_1571[0:0] == 1'b1) ? res_I_V_reg_1565 : p_Result_74_fu_887_p4);

assign res_I_V_40_fu_982_p3 = ((icmp_ln443_9_fu_940_p2[0:0] == 1'b1) ? res_I_V_39_fu_902_p3 : p_Result_77_fu_964_p4);

assign res_I_V_41_fu_1059_p3 = ((icmp_ln443_10_reg_1594[0:0] == 1'b1) ? res_I_V_40_reg_1588 : p_Result_80_fu_1044_p4);

assign res_I_V_42_fu_1139_p3 = ((icmp_ln443_11_fu_1097_p2[0:0] == 1'b1) ? res_I_V_41_fu_1059_p3 : p_Result_83_fu_1121_p4);

assign res_I_V_43_fu_1216_p3 = ((icmp_ln443_12_reg_1617[0:0] == 1'b1) ? res_I_V_42_reg_1611 : p_Result_86_fu_1201_p4);

assign res_I_V_44_fu_1276_p3 = ((icmp_ln443_13_fu_1254_p2[0:0] == 1'b1) ? res_I_V_43_fu_1216_p3 : p_Result_89_fu_1266_p4);

assign res_I_V_45_fu_1372_p3 = ((icmp_ln443_14_fu_1331_p2[0:0] == 1'b1) ? res_I_V_44_reg_1644 : p_Result_92_fu_1355_p4);

assign res_I_V_46_fu_1439_p3 = ((icmp_ln443_15_reg_1667[0:0] == 1'b1) ? res_I_V_45_reg_1661 : p_Result_95_fu_1424_p4);

assign res_I_V_47_fu_1469_p3 = ((p_Result_48_fu_1457_p2[0:0] == 1'b1) ? res_I_V_30_fu_1463_p2 : res_I_V_46_fu_1439_p3);

assign res_I_V_fu_825_p3 = ((icmp_ln443_7_fu_783_p2[0:0] == 1'b1) ? res_I_V_38_fu_745_p3 : p_Result_71_fu_807_p4);

assign sub_ln212_10_fu_1103_p2 = (p_Result_81_fu_1083_p4 - zext_ln443_10_fu_1093_p1);

assign sub_ln212_11_fu_1185_p2 = (p_Result_84_fu_1165_p4 - zext_ln443_11_fu_1175_p1);

assign sub_ln212_12_fu_1260_p2 = (p_Result_87_fu_1240_p4 - zext_ln443_12_fu_1250_p1);

assign sub_ln212_13_fu_1337_p2 = (p_Result_90_fu_1317_p4 - zext_ln443_13_fu_1327_p1);

assign sub_ln212_14_fu_1401_p2 = (p_Result_93_fu_1387_p1 - zext_ln443_14_fu_1391_p1);

assign sub_ln212_1_fu_400_p2 = (p_Result_54_fu_380_p4 - zext_ln443_1_fu_390_p1);

assign sub_ln212_2_fu_475_p2 = (p_Result_57_fu_455_p4 - zext_ln443_2_fu_465_p1);

assign sub_ln212_3_fu_557_p2 = (p_Result_60_fu_537_p4 - zext_ln443_3_fu_547_p1);

assign sub_ln212_4_fu_632_p2 = (p_Result_63_fu_612_p4 - zext_ln443_4_fu_622_p1);

assign sub_ln212_5_fu_714_p2 = (p_Result_66_fu_694_p4 - zext_ln443_5_fu_704_p1);

assign sub_ln212_6_fu_789_p2 = (p_Result_69_fu_769_p4 - zext_ln443_6_fu_779_p1);

assign sub_ln212_7_fu_871_p2 = (p_Result_72_fu_851_p4 - zext_ln443_7_fu_861_p1);

assign sub_ln212_8_fu_946_p2 = (p_Result_75_fu_926_p4 - zext_ln443_8_fu_936_p1);

assign sub_ln212_9_fu_1028_p2 = (p_Result_78_fu_1008_p4 - zext_ln443_9_fu_1018_p1);

assign sub_ln212_fu_318_p2 = (p_Result_51_fu_298_p4 - zext_ln443_fu_308_p1);

assign tmp_10_fu_1075_p3 = {{p_Result_31_fu_1065_p4}, {1'd1}};

assign tmp_11_fu_1157_p3 = {{p_Result_34_fu_1147_p4}, {1'd1}};

assign tmp_12_fu_1232_p3 = {{p_Result_37_fu_1222_p4}, {1'd1}};

assign tmp_13_fu_1310_p3 = {{p_Result_40_reg_1650}, {1'd1}};

assign tmp_14_fu_1379_p3 = {{res_I_V_45_fu_1372_p3}, {1'd1}};

assign tmp_1_fu_290_p3 = {{p_Result_s_101_fu_280_p4}, {1'd1}};

assign tmp_2_fu_372_p3 = {{p_Result_4_fu_362_p4}, {1'd1}};

assign tmp_3_fu_447_p3 = {{p_Result_8_fu_437_p4}, {1'd1}};

assign tmp_4_fu_529_p3 = {{p_Result_10_fu_519_p4}, {1'd1}};

assign tmp_5_fu_604_p3 = {{p_Result_13_fu_594_p4}, {1'd1}};

assign tmp_6_fu_686_p3 = {{p_Result_16_fu_676_p4}, {1'd1}};

assign tmp_7_fu_761_p3 = {{p_Result_19_fu_751_p4}, {1'd1}};

assign tmp_8_fu_843_p3 = {{p_Result_22_fu_833_p4}, {1'd1}};

assign tmp_9_fu_918_p3 = {{p_Result_25_fu_908_p4}, {1'd1}};

assign tmp_fu_226_p4 = {{x_int_reg[31:30]}};

assign tmp_s_fu_1000_p3 = {{p_Result_28_fu_990_p4}, {1'd1}};

assign x_l_I_V_31_fu_264_p3 = ((icmp_ln443_fu_236_p2[0:0] == 1'b1) ? zext_ln666_fu_222_p1 : p_Result_50_fu_252_p5);

assign x_l_I_V_32_fu_346_p3 = ((icmp_ln443_1_fu_312_p2[0:0] == 1'b1) ? x_l_I_V_31_fu_264_p3 : p_Result_52_fu_324_p5);

assign x_l_I_V_33_fu_425_p3 = ((icmp_ln443_2_reg_1502[0:0] == 1'b1) ? x_l_I_V_32_reg_1490 : p_Result_55_fu_406_p5);

assign x_l_I_V_34_fu_503_p3 = ((icmp_ln443_3_fu_469_p2[0:0] == 1'b1) ? x_l_I_V_33_fu_425_p3 : p_Result_58_fu_481_p5);

assign x_l_I_V_35_fu_582_p3 = ((icmp_ln443_4_reg_1525[0:0] == 1'b1) ? x_l_I_V_34_reg_1513 : p_Result_61_fu_563_p5);

assign x_l_I_V_36_fu_660_p3 = ((icmp_ln443_5_fu_626_p2[0:0] == 1'b1) ? x_l_I_V_35_fu_582_p3 : p_Result_64_fu_638_p5);

assign x_l_I_V_37_fu_817_p3 = ((icmp_ln443_7_fu_783_p2[0:0] == 1'b1) ? x_l_I_V_fu_739_p3 : p_Result_70_fu_795_p5);

assign x_l_I_V_38_fu_896_p3 = ((icmp_ln443_8_reg_1571[0:0] == 1'b1) ? x_l_I_V_37_reg_1559 : p_Result_73_fu_877_p5);

assign x_l_I_V_39_fu_974_p3 = ((icmp_ln443_9_fu_940_p2[0:0] == 1'b1) ? x_l_I_V_38_fu_896_p3 : p_Result_76_fu_952_p5);

assign x_l_I_V_40_fu_1053_p3 = ((icmp_ln443_10_reg_1594[0:0] == 1'b1) ? x_l_I_V_39_reg_1582 : p_Result_79_fu_1034_p5);

assign x_l_I_V_41_fu_1131_p3 = ((icmp_ln443_11_fu_1097_p2[0:0] == 1'b1) ? x_l_I_V_40_fu_1053_p3 : p_Result_82_fu_1109_p5);

assign x_l_I_V_42_fu_1210_p3 = ((icmp_ln443_12_reg_1617[0:0] == 1'b1) ? x_l_I_V_41_reg_1605 : p_Result_85_fu_1191_p5);

assign x_l_I_V_43_fu_1304_p3 = ((icmp_ln443_13_reg_1634[0:0] == 1'b1) ? x_l_I_V_42_reg_1628 : p_Result_88_fu_1294_p5);

assign x_l_I_V_44_fu_1364_p3 = ((icmp_ln443_14_fu_1331_p2[0:0] == 1'b1) ? x_l_I_V_43_fu_1304_p3 : p_Result_91_fu_1343_p5);

assign x_l_I_V_45_fu_1433_p3 = ((icmp_ln443_15_reg_1667[0:0] == 1'b1) ? x_l_I_V_44_reg_1655 : p_Result_94_fu_1414_p5);

assign x_l_I_V_fu_739_p3 = ((icmp_ln443_6_reg_1548[0:0] == 1'b1) ? x_l_I_V_36_reg_1536 : p_Result_67_fu_720_p5);

assign zext_ln212_fu_242_p1 = tmp_fu_226_p4;

assign zext_ln443_10_fu_1093_p1 = tmp_10_fu_1075_p3;

assign zext_ln443_11_fu_1175_p1 = tmp_11_fu_1157_p3;

assign zext_ln443_12_fu_1250_p1 = tmp_12_fu_1232_p3;

assign zext_ln443_13_fu_1327_p1 = tmp_13_fu_1310_p3;

assign zext_ln443_14_fu_1391_p1 = tmp_14_fu_1379_p3;

assign zext_ln443_1_fu_390_p1 = tmp_2_fu_372_p3;

assign zext_ln443_2_fu_465_p1 = tmp_3_fu_447_p3;

assign zext_ln443_3_fu_547_p1 = tmp_4_fu_529_p3;

assign zext_ln443_4_fu_622_p1 = tmp_5_fu_604_p3;

assign zext_ln443_5_fu_704_p1 = tmp_6_fu_686_p3;

assign zext_ln443_6_fu_779_p1 = tmp_7_fu_761_p3;

assign zext_ln443_7_fu_861_p1 = tmp_8_fu_843_p3;

assign zext_ln443_8_fu_936_p1 = tmp_9_fu_918_p3;

assign zext_ln443_9_fu_1018_p1 = tmp_s_fu_1000_p3;

assign zext_ln443_fu_308_p1 = tmp_1_fu_290_p3;

assign zext_ln666_fu_222_p1 = x_int_reg;

assign zext_ln671_fu_1453_p1 = mul_I_V_fu_1445_p3;

endmodule //eucDistHW_sqrt_fixed_32_32_s
