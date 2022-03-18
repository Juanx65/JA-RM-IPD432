set SynModuleInfo {
  {SRCNAME eucHW MODELNAME eucHW RTLNAME eucHW IS_TOP 1
    SUBMODULES {
      {MODELNAME eucHW_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME eucHW_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME eucHW_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_sitofp_32s_32_6_no_dsp_1 RTLNAME eucHW_sitofp_32s_32_6_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1 RTLNAME eucHW_fsqrt_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
    }
  }
}
