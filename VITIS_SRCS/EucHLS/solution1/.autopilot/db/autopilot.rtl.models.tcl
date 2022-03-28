set SynModuleInfo {
  {SRCNAME {sqrt_fixed<32, 32>} MODELNAME sqrt_fixed_32_32_s RTLNAME eucHW_sqrt_fixed_32_32_s}
  {SRCNAME eucHW MODELNAME eucHW RTLNAME eucHW IS_TOP 1
    SUBMODULES {
      {MODELNAME eucHW_mul_9s_9s_18_1_1 RTLNAME eucHW_mul_9s_9s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_mac_muladd_9s_9s_18s_18_4_1 RTLNAME eucHW_mac_muladd_9s_9s_18s_18_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_control_s_axi RTLNAME eucHW_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
