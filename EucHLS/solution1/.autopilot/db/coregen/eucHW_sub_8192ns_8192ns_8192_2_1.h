// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __eucHW_sub_8192ns_8192ns_8192_2_1__HH__
#define __eucHW_sub_8192ns_8192ns_8192_2_1__HH__
#include "eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(eucHW_sub_8192ns_8192ns_8192_2_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0 eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U;

    SC_CTOR(eucHW_sub_8192ns_8192ns_8192_2_1):  eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U ("eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U") {
        eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U.clk(clk);
        eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U.reset(reset);
        eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U.ce(ce);
        eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U.a(din0);
        eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U.b(din1);
        eucHW_sub_8192ns_8192ns_8192_2_1_Adder_0_U.s(dout);

    }

};

#endif //
