set SynModuleInfo {
  {SRCNAME eucHW MODELNAME eucHW RTLNAME eucHW IS_TOP 1
    SUBMODULES {
      {MODELNAME eucHW_sub_8192ns_8192ns_8192_2_1 RTLNAME eucHW_sub_8192ns_8192ns_8192_2_1 BINDTYPE op TYPE sub IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_mul_9s_9s_18_1_1 RTLNAME eucHW_mul_9s_9s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_mac_muladd_9s_9s_18s_18_4_1 RTLNAME eucHW_mac_muladd_9s_9s_18s_18_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME eucHW_flow_control_loop_pipe RTLNAME eucHW_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME eucHW_flow_control_loop_pipe_U}
    }
  }
}
