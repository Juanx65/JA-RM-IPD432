set SynModuleInfo {
  {SRCNAME eucHW MODELNAME eucHW RTLNAME eucHW IS_TOP 1
    SUBMODULES {
      {MODELNAME eucHW_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME eucHW_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_sitofp_32s_32_6_no_dsp_1 RTLNAME eucHW_sitofp_32s_32_6_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1 RTLNAME eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_sub_8192ns_8192ns_8192_2_1 RTLNAME eucHW_sub_8192ns_8192ns_8192_2_1 BINDTYPE op TYPE sub IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_mul_9s_9s_18_1_1 RTLNAME eucHW_mul_9s_9s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
