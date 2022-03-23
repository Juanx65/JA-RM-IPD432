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
extern "C" void eucHW(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_eucHW_hw(volatile void * __xlx_apatb_param_y_add, volatile void * __xlx_apatb_param_y_sqrt, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1, volatile void * __xlx_apatb_param_x_2, volatile void * __xlx_apatb_param_x_3, volatile void * __xlx_apatb_param_x_4, volatile void * __xlx_apatb_param_x_5, volatile void * __xlx_apatb_param_x_6, volatile void * __xlx_apatb_param_x_7, volatile void * __xlx_apatb_param_x_8, volatile void * __xlx_apatb_param_x_9, volatile void * __xlx_apatb_param_x_10, volatile void * __xlx_apatb_param_x_11, volatile void * __xlx_apatb_param_x_12, volatile void * __xlx_apatb_param_x_13, volatile void * __xlx_apatb_param_x_14, volatile void * __xlx_apatb_param_x_15, volatile void * __xlx_apatb_param_x_16, volatile void * __xlx_apatb_param_x_17, volatile void * __xlx_apatb_param_x_18, volatile void * __xlx_apatb_param_x_19, volatile void * __xlx_apatb_param_x_20, volatile void * __xlx_apatb_param_x_21, volatile void * __xlx_apatb_param_x_22, volatile void * __xlx_apatb_param_x_23, volatile void * __xlx_apatb_param_x_24, volatile void * __xlx_apatb_param_x_25, volatile void * __xlx_apatb_param_x_26, volatile void * __xlx_apatb_param_x_27, volatile void * __xlx_apatb_param_x_28, volatile void * __xlx_apatb_param_x_29, volatile void * __xlx_apatb_param_x_30, volatile void * __xlx_apatb_param_x_31) {
  // DUT call
  eucHW(__xlx_apatb_param_y_add, __xlx_apatb_param_y_sqrt, __xlx_apatb_param_x_0, __xlx_apatb_param_x_1, __xlx_apatb_param_x_2, __xlx_apatb_param_x_3, __xlx_apatb_param_x_4, __xlx_apatb_param_x_5, __xlx_apatb_param_x_6, __xlx_apatb_param_x_7, __xlx_apatb_param_x_8, __xlx_apatb_param_x_9, __xlx_apatb_param_x_10, __xlx_apatb_param_x_11, __xlx_apatb_param_x_12, __xlx_apatb_param_x_13, __xlx_apatb_param_x_14, __xlx_apatb_param_x_15, __xlx_apatb_param_x_16, __xlx_apatb_param_x_17, __xlx_apatb_param_x_18, __xlx_apatb_param_x_19, __xlx_apatb_param_x_20, __xlx_apatb_param_x_21, __xlx_apatb_param_x_22, __xlx_apatb_param_x_23, __xlx_apatb_param_x_24, __xlx_apatb_param_x_25, __xlx_apatb_param_x_26, __xlx_apatb_param_x_27, __xlx_apatb_param_x_28, __xlx_apatb_param_x_29, __xlx_apatb_param_x_30, __xlx_apatb_param_x_31);
}
