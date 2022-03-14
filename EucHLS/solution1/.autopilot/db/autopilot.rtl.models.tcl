set SynModuleInfo {
  {SRCNAME {sqrt_fixed<32, 32>} MODELNAME sqrt_fixed_32_32_s RTLNAME eucDistHW_sqrt_fixed_32_32_s}
  {SRCNAME eucDistHW MODELNAME eucDistHW RTLNAME eucDistHW IS_TOP 1
    SUBMODULES {
      {MODELNAME eucDistHW_mul_32s_32s_32_2_1 RTLNAME eucDistHW_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
}
