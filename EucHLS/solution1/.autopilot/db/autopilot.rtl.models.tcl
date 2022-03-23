set SynModuleInfo {
  {SRCNAME eucHW MODELNAME eucHW RTLNAME eucHW IS_TOP 1
    SUBMODULES {
      {MODELNAME eucHW_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME eucHW_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_sitofp_32s_32_6_no_dsp_1 RTLNAME eucHW_sitofp_32s_32_6_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1 RTLNAME eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_mul_9s_9s_18_1_1 RTLNAME eucHW_mul_9s_9s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_control_s_axi RTLNAME eucHW_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
