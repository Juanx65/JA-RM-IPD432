#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void eucDistHW(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int*);
extern "C" void apatb_eucDistHW_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_B_8, volatile void * __xlx_apatb_param_B_9, volatile void * __xlx_apatb_param_B_10, volatile void * __xlx_apatb_param_B_11, volatile void * __xlx_apatb_param_B_12, volatile void * __xlx_apatb_param_B_13, volatile void * __xlx_apatb_param_B_14, volatile void * __xlx_apatb_param_B_15, volatile void * __xlx_apatb_param_C) {
  // Collect __xlx_C__tmp_vec
  vector<sc_bv<32> >__xlx_C__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_C)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_C)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_C)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_C)[j*4+3];
    __xlx_C__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_C = 1;
  int __xlx_offset_param_C = 0;
  int __xlx_offset_byte_param_C = 0*4;
  int* __xlx_C__input_buffer= new int[__xlx_C__tmp_vec.size()];
  for (int i = 0; i < __xlx_C__tmp_vec.size(); ++i) {
    __xlx_C__input_buffer[i] = __xlx_C__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  eucDistHW(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_B_8, __xlx_apatb_param_B_9, __xlx_apatb_param_B_10, __xlx_apatb_param_B_11, __xlx_apatb_param_B_12, __xlx_apatb_param_B_13, __xlx_apatb_param_B_14, __xlx_apatb_param_B_15, __xlx_C__input_buffer);
// print __xlx_apatb_param_C
  sc_bv<32>*__xlx_C_output_buffer = new sc_bv<32>[__xlx_size_param_C];
  for (int i = 0; i < __xlx_size_param_C; ++i) {
    __xlx_C_output_buffer[i] = __xlx_C__input_buffer[i+__xlx_offset_param_C];
  }
  for (int i = 0; i < __xlx_size_param_C; ++i) {
    ((char*)__xlx_apatb_param_C)[i*4+0] = __xlx_C_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_C)[i*4+1] = __xlx_C_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_C)[i*4+2] = __xlx_C_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_C)[i*4+3] = __xlx_C_output_buffer[i].range(31, 24).to_uint();
  }
}
