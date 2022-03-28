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
extern "C" void eucHW(volatile void *, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*);
extern "C" void apatb_eucHW_hw(volatile void * __xlx_apatb_param_y_sqrt, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1, volatile void * __xlx_apatb_param_x_2, volatile void * __xlx_apatb_param_x_3, volatile void * __xlx_apatb_param_x_4, volatile void * __xlx_apatb_param_x_5, volatile void * __xlx_apatb_param_x_6, volatile void * __xlx_apatb_param_x_7, volatile void * __xlx_apatb_param_x_8, volatile void * __xlx_apatb_param_x_9, volatile void * __xlx_apatb_param_x_10, volatile void * __xlx_apatb_param_x_11, volatile void * __xlx_apatb_param_x_12, volatile void * __xlx_apatb_param_x_13, volatile void * __xlx_apatb_param_x_14, volatile void * __xlx_apatb_param_x_15, volatile void * __xlx_apatb_param_x_16, volatile void * __xlx_apatb_param_x_17, volatile void * __xlx_apatb_param_x_18, volatile void * __xlx_apatb_param_x_19, volatile void * __xlx_apatb_param_x_20, volatile void * __xlx_apatb_param_x_21, volatile void * __xlx_apatb_param_x_22, volatile void * __xlx_apatb_param_x_23, volatile void * __xlx_apatb_param_x_24, volatile void * __xlx_apatb_param_x_25, volatile void * __xlx_apatb_param_x_26, volatile void * __xlx_apatb_param_x_27, volatile void * __xlx_apatb_param_x_28, volatile void * __xlx_apatb_param_x_29, volatile void * __xlx_apatb_param_x_30, volatile void * __xlx_apatb_param_x_31) {
  // Collect __xlx_x_0__tmp_vec
  vector<sc_bv<8> >__xlx_x_0__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_0__tmp_vec.push_back(((char*)__xlx_apatb_param_x_0)[j]);
  }
  int __xlx_size_param_x_0 = 64;
  int __xlx_offset_param_x_0 = 0;
  int __xlx_offset_byte_param_x_0 = 0*1;
  char* __xlx_x_0__input_buffer= new char[__xlx_x_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_0__tmp_vec.size(); ++i) {
    __xlx_x_0__input_buffer[i] = __xlx_x_0__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_1__tmp_vec
  vector<sc_bv<8> >__xlx_x_1__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_1__tmp_vec.push_back(((char*)__xlx_apatb_param_x_1)[j]);
  }
  int __xlx_size_param_x_1 = 64;
  int __xlx_offset_param_x_1 = 0;
  int __xlx_offset_byte_param_x_1 = 0*1;
  char* __xlx_x_1__input_buffer= new char[__xlx_x_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_1__tmp_vec.size(); ++i) {
    __xlx_x_1__input_buffer[i] = __xlx_x_1__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_2__tmp_vec
  vector<sc_bv<8> >__xlx_x_2__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_2__tmp_vec.push_back(((char*)__xlx_apatb_param_x_2)[j]);
  }
  int __xlx_size_param_x_2 = 64;
  int __xlx_offset_param_x_2 = 0;
  int __xlx_offset_byte_param_x_2 = 0*1;
  char* __xlx_x_2__input_buffer= new char[__xlx_x_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_2__tmp_vec.size(); ++i) {
    __xlx_x_2__input_buffer[i] = __xlx_x_2__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_3__tmp_vec
  vector<sc_bv<8> >__xlx_x_3__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_3__tmp_vec.push_back(((char*)__xlx_apatb_param_x_3)[j]);
  }
  int __xlx_size_param_x_3 = 64;
  int __xlx_offset_param_x_3 = 0;
  int __xlx_offset_byte_param_x_3 = 0*1;
  char* __xlx_x_3__input_buffer= new char[__xlx_x_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_3__tmp_vec.size(); ++i) {
    __xlx_x_3__input_buffer[i] = __xlx_x_3__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_4__tmp_vec
  vector<sc_bv<8> >__xlx_x_4__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_4__tmp_vec.push_back(((char*)__xlx_apatb_param_x_4)[j]);
  }
  int __xlx_size_param_x_4 = 64;
  int __xlx_offset_param_x_4 = 0;
  int __xlx_offset_byte_param_x_4 = 0*1;
  char* __xlx_x_4__input_buffer= new char[__xlx_x_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_4__tmp_vec.size(); ++i) {
    __xlx_x_4__input_buffer[i] = __xlx_x_4__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_5__tmp_vec
  vector<sc_bv<8> >__xlx_x_5__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_5__tmp_vec.push_back(((char*)__xlx_apatb_param_x_5)[j]);
  }
  int __xlx_size_param_x_5 = 64;
  int __xlx_offset_param_x_5 = 0;
  int __xlx_offset_byte_param_x_5 = 0*1;
  char* __xlx_x_5__input_buffer= new char[__xlx_x_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_5__tmp_vec.size(); ++i) {
    __xlx_x_5__input_buffer[i] = __xlx_x_5__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_6__tmp_vec
  vector<sc_bv<8> >__xlx_x_6__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_6__tmp_vec.push_back(((char*)__xlx_apatb_param_x_6)[j]);
  }
  int __xlx_size_param_x_6 = 64;
  int __xlx_offset_param_x_6 = 0;
  int __xlx_offset_byte_param_x_6 = 0*1;
  char* __xlx_x_6__input_buffer= new char[__xlx_x_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_6__tmp_vec.size(); ++i) {
    __xlx_x_6__input_buffer[i] = __xlx_x_6__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_7__tmp_vec
  vector<sc_bv<8> >__xlx_x_7__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_7__tmp_vec.push_back(((char*)__xlx_apatb_param_x_7)[j]);
  }
  int __xlx_size_param_x_7 = 64;
  int __xlx_offset_param_x_7 = 0;
  int __xlx_offset_byte_param_x_7 = 0*1;
  char* __xlx_x_7__input_buffer= new char[__xlx_x_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_7__tmp_vec.size(); ++i) {
    __xlx_x_7__input_buffer[i] = __xlx_x_7__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_8__tmp_vec
  vector<sc_bv<8> >__xlx_x_8__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_8__tmp_vec.push_back(((char*)__xlx_apatb_param_x_8)[j]);
  }
  int __xlx_size_param_x_8 = 64;
  int __xlx_offset_param_x_8 = 0;
  int __xlx_offset_byte_param_x_8 = 0*1;
  char* __xlx_x_8__input_buffer= new char[__xlx_x_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_8__tmp_vec.size(); ++i) {
    __xlx_x_8__input_buffer[i] = __xlx_x_8__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_9__tmp_vec
  vector<sc_bv<8> >__xlx_x_9__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_9__tmp_vec.push_back(((char*)__xlx_apatb_param_x_9)[j]);
  }
  int __xlx_size_param_x_9 = 64;
  int __xlx_offset_param_x_9 = 0;
  int __xlx_offset_byte_param_x_9 = 0*1;
  char* __xlx_x_9__input_buffer= new char[__xlx_x_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_9__tmp_vec.size(); ++i) {
    __xlx_x_9__input_buffer[i] = __xlx_x_9__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_10__tmp_vec
  vector<sc_bv<8> >__xlx_x_10__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_10__tmp_vec.push_back(((char*)__xlx_apatb_param_x_10)[j]);
  }
  int __xlx_size_param_x_10 = 64;
  int __xlx_offset_param_x_10 = 0;
  int __xlx_offset_byte_param_x_10 = 0*1;
  char* __xlx_x_10__input_buffer= new char[__xlx_x_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_10__tmp_vec.size(); ++i) {
    __xlx_x_10__input_buffer[i] = __xlx_x_10__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_11__tmp_vec
  vector<sc_bv<8> >__xlx_x_11__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_11__tmp_vec.push_back(((char*)__xlx_apatb_param_x_11)[j]);
  }
  int __xlx_size_param_x_11 = 64;
  int __xlx_offset_param_x_11 = 0;
  int __xlx_offset_byte_param_x_11 = 0*1;
  char* __xlx_x_11__input_buffer= new char[__xlx_x_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_11__tmp_vec.size(); ++i) {
    __xlx_x_11__input_buffer[i] = __xlx_x_11__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_12__tmp_vec
  vector<sc_bv<8> >__xlx_x_12__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_12__tmp_vec.push_back(((char*)__xlx_apatb_param_x_12)[j]);
  }
  int __xlx_size_param_x_12 = 64;
  int __xlx_offset_param_x_12 = 0;
  int __xlx_offset_byte_param_x_12 = 0*1;
  char* __xlx_x_12__input_buffer= new char[__xlx_x_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_12__tmp_vec.size(); ++i) {
    __xlx_x_12__input_buffer[i] = __xlx_x_12__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_13__tmp_vec
  vector<sc_bv<8> >__xlx_x_13__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_13__tmp_vec.push_back(((char*)__xlx_apatb_param_x_13)[j]);
  }
  int __xlx_size_param_x_13 = 64;
  int __xlx_offset_param_x_13 = 0;
  int __xlx_offset_byte_param_x_13 = 0*1;
  char* __xlx_x_13__input_buffer= new char[__xlx_x_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_13__tmp_vec.size(); ++i) {
    __xlx_x_13__input_buffer[i] = __xlx_x_13__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_14__tmp_vec
  vector<sc_bv<8> >__xlx_x_14__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_14__tmp_vec.push_back(((char*)__xlx_apatb_param_x_14)[j]);
  }
  int __xlx_size_param_x_14 = 64;
  int __xlx_offset_param_x_14 = 0;
  int __xlx_offset_byte_param_x_14 = 0*1;
  char* __xlx_x_14__input_buffer= new char[__xlx_x_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_14__tmp_vec.size(); ++i) {
    __xlx_x_14__input_buffer[i] = __xlx_x_14__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_15__tmp_vec
  vector<sc_bv<8> >__xlx_x_15__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_15__tmp_vec.push_back(((char*)__xlx_apatb_param_x_15)[j]);
  }
  int __xlx_size_param_x_15 = 64;
  int __xlx_offset_param_x_15 = 0;
  int __xlx_offset_byte_param_x_15 = 0*1;
  char* __xlx_x_15__input_buffer= new char[__xlx_x_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_15__tmp_vec.size(); ++i) {
    __xlx_x_15__input_buffer[i] = __xlx_x_15__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_16__tmp_vec
  vector<sc_bv<8> >__xlx_x_16__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_16__tmp_vec.push_back(((char*)__xlx_apatb_param_x_16)[j]);
  }
  int __xlx_size_param_x_16 = 64;
  int __xlx_offset_param_x_16 = 0;
  int __xlx_offset_byte_param_x_16 = 0*1;
  char* __xlx_x_16__input_buffer= new char[__xlx_x_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_16__tmp_vec.size(); ++i) {
    __xlx_x_16__input_buffer[i] = __xlx_x_16__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_17__tmp_vec
  vector<sc_bv<8> >__xlx_x_17__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_17__tmp_vec.push_back(((char*)__xlx_apatb_param_x_17)[j]);
  }
  int __xlx_size_param_x_17 = 64;
  int __xlx_offset_param_x_17 = 0;
  int __xlx_offset_byte_param_x_17 = 0*1;
  char* __xlx_x_17__input_buffer= new char[__xlx_x_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_17__tmp_vec.size(); ++i) {
    __xlx_x_17__input_buffer[i] = __xlx_x_17__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_18__tmp_vec
  vector<sc_bv<8> >__xlx_x_18__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_18__tmp_vec.push_back(((char*)__xlx_apatb_param_x_18)[j]);
  }
  int __xlx_size_param_x_18 = 64;
  int __xlx_offset_param_x_18 = 0;
  int __xlx_offset_byte_param_x_18 = 0*1;
  char* __xlx_x_18__input_buffer= new char[__xlx_x_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_18__tmp_vec.size(); ++i) {
    __xlx_x_18__input_buffer[i] = __xlx_x_18__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_19__tmp_vec
  vector<sc_bv<8> >__xlx_x_19__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_19__tmp_vec.push_back(((char*)__xlx_apatb_param_x_19)[j]);
  }
  int __xlx_size_param_x_19 = 64;
  int __xlx_offset_param_x_19 = 0;
  int __xlx_offset_byte_param_x_19 = 0*1;
  char* __xlx_x_19__input_buffer= new char[__xlx_x_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_19__tmp_vec.size(); ++i) {
    __xlx_x_19__input_buffer[i] = __xlx_x_19__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_20__tmp_vec
  vector<sc_bv<8> >__xlx_x_20__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_20__tmp_vec.push_back(((char*)__xlx_apatb_param_x_20)[j]);
  }
  int __xlx_size_param_x_20 = 64;
  int __xlx_offset_param_x_20 = 0;
  int __xlx_offset_byte_param_x_20 = 0*1;
  char* __xlx_x_20__input_buffer= new char[__xlx_x_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_20__tmp_vec.size(); ++i) {
    __xlx_x_20__input_buffer[i] = __xlx_x_20__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_21__tmp_vec
  vector<sc_bv<8> >__xlx_x_21__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_21__tmp_vec.push_back(((char*)__xlx_apatb_param_x_21)[j]);
  }
  int __xlx_size_param_x_21 = 64;
  int __xlx_offset_param_x_21 = 0;
  int __xlx_offset_byte_param_x_21 = 0*1;
  char* __xlx_x_21__input_buffer= new char[__xlx_x_21__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_21__tmp_vec.size(); ++i) {
    __xlx_x_21__input_buffer[i] = __xlx_x_21__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_22__tmp_vec
  vector<sc_bv<8> >__xlx_x_22__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_22__tmp_vec.push_back(((char*)__xlx_apatb_param_x_22)[j]);
  }
  int __xlx_size_param_x_22 = 64;
  int __xlx_offset_param_x_22 = 0;
  int __xlx_offset_byte_param_x_22 = 0*1;
  char* __xlx_x_22__input_buffer= new char[__xlx_x_22__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_22__tmp_vec.size(); ++i) {
    __xlx_x_22__input_buffer[i] = __xlx_x_22__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_23__tmp_vec
  vector<sc_bv<8> >__xlx_x_23__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_23__tmp_vec.push_back(((char*)__xlx_apatb_param_x_23)[j]);
  }
  int __xlx_size_param_x_23 = 64;
  int __xlx_offset_param_x_23 = 0;
  int __xlx_offset_byte_param_x_23 = 0*1;
  char* __xlx_x_23__input_buffer= new char[__xlx_x_23__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_23__tmp_vec.size(); ++i) {
    __xlx_x_23__input_buffer[i] = __xlx_x_23__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_24__tmp_vec
  vector<sc_bv<8> >__xlx_x_24__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_24__tmp_vec.push_back(((char*)__xlx_apatb_param_x_24)[j]);
  }
  int __xlx_size_param_x_24 = 64;
  int __xlx_offset_param_x_24 = 0;
  int __xlx_offset_byte_param_x_24 = 0*1;
  char* __xlx_x_24__input_buffer= new char[__xlx_x_24__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_24__tmp_vec.size(); ++i) {
    __xlx_x_24__input_buffer[i] = __xlx_x_24__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_25__tmp_vec
  vector<sc_bv<8> >__xlx_x_25__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_25__tmp_vec.push_back(((char*)__xlx_apatb_param_x_25)[j]);
  }
  int __xlx_size_param_x_25 = 64;
  int __xlx_offset_param_x_25 = 0;
  int __xlx_offset_byte_param_x_25 = 0*1;
  char* __xlx_x_25__input_buffer= new char[__xlx_x_25__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_25__tmp_vec.size(); ++i) {
    __xlx_x_25__input_buffer[i] = __xlx_x_25__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_26__tmp_vec
  vector<sc_bv<8> >__xlx_x_26__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_26__tmp_vec.push_back(((char*)__xlx_apatb_param_x_26)[j]);
  }
  int __xlx_size_param_x_26 = 64;
  int __xlx_offset_param_x_26 = 0;
  int __xlx_offset_byte_param_x_26 = 0*1;
  char* __xlx_x_26__input_buffer= new char[__xlx_x_26__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_26__tmp_vec.size(); ++i) {
    __xlx_x_26__input_buffer[i] = __xlx_x_26__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_27__tmp_vec
  vector<sc_bv<8> >__xlx_x_27__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_27__tmp_vec.push_back(((char*)__xlx_apatb_param_x_27)[j]);
  }
  int __xlx_size_param_x_27 = 64;
  int __xlx_offset_param_x_27 = 0;
  int __xlx_offset_byte_param_x_27 = 0*1;
  char* __xlx_x_27__input_buffer= new char[__xlx_x_27__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_27__tmp_vec.size(); ++i) {
    __xlx_x_27__input_buffer[i] = __xlx_x_27__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_28__tmp_vec
  vector<sc_bv<8> >__xlx_x_28__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_28__tmp_vec.push_back(((char*)__xlx_apatb_param_x_28)[j]);
  }
  int __xlx_size_param_x_28 = 64;
  int __xlx_offset_param_x_28 = 0;
  int __xlx_offset_byte_param_x_28 = 0*1;
  char* __xlx_x_28__input_buffer= new char[__xlx_x_28__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_28__tmp_vec.size(); ++i) {
    __xlx_x_28__input_buffer[i] = __xlx_x_28__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_29__tmp_vec
  vector<sc_bv<8> >__xlx_x_29__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_29__tmp_vec.push_back(((char*)__xlx_apatb_param_x_29)[j]);
  }
  int __xlx_size_param_x_29 = 64;
  int __xlx_offset_param_x_29 = 0;
  int __xlx_offset_byte_param_x_29 = 0*1;
  char* __xlx_x_29__input_buffer= new char[__xlx_x_29__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_29__tmp_vec.size(); ++i) {
    __xlx_x_29__input_buffer[i] = __xlx_x_29__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_30__tmp_vec
  vector<sc_bv<8> >__xlx_x_30__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_30__tmp_vec.push_back(((char*)__xlx_apatb_param_x_30)[j]);
  }
  int __xlx_size_param_x_30 = 64;
  int __xlx_offset_param_x_30 = 0;
  int __xlx_offset_byte_param_x_30 = 0*1;
  char* __xlx_x_30__input_buffer= new char[__xlx_x_30__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_30__tmp_vec.size(); ++i) {
    __xlx_x_30__input_buffer[i] = __xlx_x_30__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_x_31__tmp_vec
  vector<sc_bv<8> >__xlx_x_31__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_x_31__tmp_vec.push_back(((char*)__xlx_apatb_param_x_31)[j]);
  }
  int __xlx_size_param_x_31 = 64;
  int __xlx_offset_param_x_31 = 0;
  int __xlx_offset_byte_param_x_31 = 0*1;
  char* __xlx_x_31__input_buffer= new char[__xlx_x_31__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_31__tmp_vec.size(); ++i) {
    __xlx_x_31__input_buffer[i] = __xlx_x_31__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  eucHW(__xlx_apatb_param_y_sqrt, __xlx_x_0__input_buffer, __xlx_x_1__input_buffer, __xlx_x_2__input_buffer, __xlx_x_3__input_buffer, __xlx_x_4__input_buffer, __xlx_x_5__input_buffer, __xlx_x_6__input_buffer, __xlx_x_7__input_buffer, __xlx_x_8__input_buffer, __xlx_x_9__input_buffer, __xlx_x_10__input_buffer, __xlx_x_11__input_buffer, __xlx_x_12__input_buffer, __xlx_x_13__input_buffer, __xlx_x_14__input_buffer, __xlx_x_15__input_buffer, __xlx_x_16__input_buffer, __xlx_x_17__input_buffer, __xlx_x_18__input_buffer, __xlx_x_19__input_buffer, __xlx_x_20__input_buffer, __xlx_x_21__input_buffer, __xlx_x_22__input_buffer, __xlx_x_23__input_buffer, __xlx_x_24__input_buffer, __xlx_x_25__input_buffer, __xlx_x_26__input_buffer, __xlx_x_27__input_buffer, __xlx_x_28__input_buffer, __xlx_x_29__input_buffer, __xlx_x_30__input_buffer, __xlx_x_31__input_buffer);
// print __xlx_apatb_param_x_0
  sc_bv<8>*__xlx_x_0_output_buffer = new sc_bv<8>[__xlx_size_param_x_0];
  for (int i = 0; i < __xlx_size_param_x_0; ++i) {
    __xlx_x_0_output_buffer[i] = __xlx_x_0__input_buffer[i+__xlx_offset_param_x_0];
  }
  for (int i = 0; i < __xlx_size_param_x_0; ++i) {
    ((char*)__xlx_apatb_param_x_0)[i] = __xlx_x_0_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_1
  sc_bv<8>*__xlx_x_1_output_buffer = new sc_bv<8>[__xlx_size_param_x_1];
  for (int i = 0; i < __xlx_size_param_x_1; ++i) {
    __xlx_x_1_output_buffer[i] = __xlx_x_1__input_buffer[i+__xlx_offset_param_x_1];
  }
  for (int i = 0; i < __xlx_size_param_x_1; ++i) {
    ((char*)__xlx_apatb_param_x_1)[i] = __xlx_x_1_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_2
  sc_bv<8>*__xlx_x_2_output_buffer = new sc_bv<8>[__xlx_size_param_x_2];
  for (int i = 0; i < __xlx_size_param_x_2; ++i) {
    __xlx_x_2_output_buffer[i] = __xlx_x_2__input_buffer[i+__xlx_offset_param_x_2];
  }
  for (int i = 0; i < __xlx_size_param_x_2; ++i) {
    ((char*)__xlx_apatb_param_x_2)[i] = __xlx_x_2_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_3
  sc_bv<8>*__xlx_x_3_output_buffer = new sc_bv<8>[__xlx_size_param_x_3];
  for (int i = 0; i < __xlx_size_param_x_3; ++i) {
    __xlx_x_3_output_buffer[i] = __xlx_x_3__input_buffer[i+__xlx_offset_param_x_3];
  }
  for (int i = 0; i < __xlx_size_param_x_3; ++i) {
    ((char*)__xlx_apatb_param_x_3)[i] = __xlx_x_3_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_4
  sc_bv<8>*__xlx_x_4_output_buffer = new sc_bv<8>[__xlx_size_param_x_4];
  for (int i = 0; i < __xlx_size_param_x_4; ++i) {
    __xlx_x_4_output_buffer[i] = __xlx_x_4__input_buffer[i+__xlx_offset_param_x_4];
  }
  for (int i = 0; i < __xlx_size_param_x_4; ++i) {
    ((char*)__xlx_apatb_param_x_4)[i] = __xlx_x_4_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_5
  sc_bv<8>*__xlx_x_5_output_buffer = new sc_bv<8>[__xlx_size_param_x_5];
  for (int i = 0; i < __xlx_size_param_x_5; ++i) {
    __xlx_x_5_output_buffer[i] = __xlx_x_5__input_buffer[i+__xlx_offset_param_x_5];
  }
  for (int i = 0; i < __xlx_size_param_x_5; ++i) {
    ((char*)__xlx_apatb_param_x_5)[i] = __xlx_x_5_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_6
  sc_bv<8>*__xlx_x_6_output_buffer = new sc_bv<8>[__xlx_size_param_x_6];
  for (int i = 0; i < __xlx_size_param_x_6; ++i) {
    __xlx_x_6_output_buffer[i] = __xlx_x_6__input_buffer[i+__xlx_offset_param_x_6];
  }
  for (int i = 0; i < __xlx_size_param_x_6; ++i) {
    ((char*)__xlx_apatb_param_x_6)[i] = __xlx_x_6_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_7
  sc_bv<8>*__xlx_x_7_output_buffer = new sc_bv<8>[__xlx_size_param_x_7];
  for (int i = 0; i < __xlx_size_param_x_7; ++i) {
    __xlx_x_7_output_buffer[i] = __xlx_x_7__input_buffer[i+__xlx_offset_param_x_7];
  }
  for (int i = 0; i < __xlx_size_param_x_7; ++i) {
    ((char*)__xlx_apatb_param_x_7)[i] = __xlx_x_7_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_8
  sc_bv<8>*__xlx_x_8_output_buffer = new sc_bv<8>[__xlx_size_param_x_8];
  for (int i = 0; i < __xlx_size_param_x_8; ++i) {
    __xlx_x_8_output_buffer[i] = __xlx_x_8__input_buffer[i+__xlx_offset_param_x_8];
  }
  for (int i = 0; i < __xlx_size_param_x_8; ++i) {
    ((char*)__xlx_apatb_param_x_8)[i] = __xlx_x_8_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_9
  sc_bv<8>*__xlx_x_9_output_buffer = new sc_bv<8>[__xlx_size_param_x_9];
  for (int i = 0; i < __xlx_size_param_x_9; ++i) {
    __xlx_x_9_output_buffer[i] = __xlx_x_9__input_buffer[i+__xlx_offset_param_x_9];
  }
  for (int i = 0; i < __xlx_size_param_x_9; ++i) {
    ((char*)__xlx_apatb_param_x_9)[i] = __xlx_x_9_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_10
  sc_bv<8>*__xlx_x_10_output_buffer = new sc_bv<8>[__xlx_size_param_x_10];
  for (int i = 0; i < __xlx_size_param_x_10; ++i) {
    __xlx_x_10_output_buffer[i] = __xlx_x_10__input_buffer[i+__xlx_offset_param_x_10];
  }
  for (int i = 0; i < __xlx_size_param_x_10; ++i) {
    ((char*)__xlx_apatb_param_x_10)[i] = __xlx_x_10_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_11
  sc_bv<8>*__xlx_x_11_output_buffer = new sc_bv<8>[__xlx_size_param_x_11];
  for (int i = 0; i < __xlx_size_param_x_11; ++i) {
    __xlx_x_11_output_buffer[i] = __xlx_x_11__input_buffer[i+__xlx_offset_param_x_11];
  }
  for (int i = 0; i < __xlx_size_param_x_11; ++i) {
    ((char*)__xlx_apatb_param_x_11)[i] = __xlx_x_11_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_12
  sc_bv<8>*__xlx_x_12_output_buffer = new sc_bv<8>[__xlx_size_param_x_12];
  for (int i = 0; i < __xlx_size_param_x_12; ++i) {
    __xlx_x_12_output_buffer[i] = __xlx_x_12__input_buffer[i+__xlx_offset_param_x_12];
  }
  for (int i = 0; i < __xlx_size_param_x_12; ++i) {
    ((char*)__xlx_apatb_param_x_12)[i] = __xlx_x_12_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_13
  sc_bv<8>*__xlx_x_13_output_buffer = new sc_bv<8>[__xlx_size_param_x_13];
  for (int i = 0; i < __xlx_size_param_x_13; ++i) {
    __xlx_x_13_output_buffer[i] = __xlx_x_13__input_buffer[i+__xlx_offset_param_x_13];
  }
  for (int i = 0; i < __xlx_size_param_x_13; ++i) {
    ((char*)__xlx_apatb_param_x_13)[i] = __xlx_x_13_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_14
  sc_bv<8>*__xlx_x_14_output_buffer = new sc_bv<8>[__xlx_size_param_x_14];
  for (int i = 0; i < __xlx_size_param_x_14; ++i) {
    __xlx_x_14_output_buffer[i] = __xlx_x_14__input_buffer[i+__xlx_offset_param_x_14];
  }
  for (int i = 0; i < __xlx_size_param_x_14; ++i) {
    ((char*)__xlx_apatb_param_x_14)[i] = __xlx_x_14_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_15
  sc_bv<8>*__xlx_x_15_output_buffer = new sc_bv<8>[__xlx_size_param_x_15];
  for (int i = 0; i < __xlx_size_param_x_15; ++i) {
    __xlx_x_15_output_buffer[i] = __xlx_x_15__input_buffer[i+__xlx_offset_param_x_15];
  }
  for (int i = 0; i < __xlx_size_param_x_15; ++i) {
    ((char*)__xlx_apatb_param_x_15)[i] = __xlx_x_15_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_16
  sc_bv<8>*__xlx_x_16_output_buffer = new sc_bv<8>[__xlx_size_param_x_16];
  for (int i = 0; i < __xlx_size_param_x_16; ++i) {
    __xlx_x_16_output_buffer[i] = __xlx_x_16__input_buffer[i+__xlx_offset_param_x_16];
  }
  for (int i = 0; i < __xlx_size_param_x_16; ++i) {
    ((char*)__xlx_apatb_param_x_16)[i] = __xlx_x_16_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_17
  sc_bv<8>*__xlx_x_17_output_buffer = new sc_bv<8>[__xlx_size_param_x_17];
  for (int i = 0; i < __xlx_size_param_x_17; ++i) {
    __xlx_x_17_output_buffer[i] = __xlx_x_17__input_buffer[i+__xlx_offset_param_x_17];
  }
  for (int i = 0; i < __xlx_size_param_x_17; ++i) {
    ((char*)__xlx_apatb_param_x_17)[i] = __xlx_x_17_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_18
  sc_bv<8>*__xlx_x_18_output_buffer = new sc_bv<8>[__xlx_size_param_x_18];
  for (int i = 0; i < __xlx_size_param_x_18; ++i) {
    __xlx_x_18_output_buffer[i] = __xlx_x_18__input_buffer[i+__xlx_offset_param_x_18];
  }
  for (int i = 0; i < __xlx_size_param_x_18; ++i) {
    ((char*)__xlx_apatb_param_x_18)[i] = __xlx_x_18_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_19
  sc_bv<8>*__xlx_x_19_output_buffer = new sc_bv<8>[__xlx_size_param_x_19];
  for (int i = 0; i < __xlx_size_param_x_19; ++i) {
    __xlx_x_19_output_buffer[i] = __xlx_x_19__input_buffer[i+__xlx_offset_param_x_19];
  }
  for (int i = 0; i < __xlx_size_param_x_19; ++i) {
    ((char*)__xlx_apatb_param_x_19)[i] = __xlx_x_19_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_20
  sc_bv<8>*__xlx_x_20_output_buffer = new sc_bv<8>[__xlx_size_param_x_20];
  for (int i = 0; i < __xlx_size_param_x_20; ++i) {
    __xlx_x_20_output_buffer[i] = __xlx_x_20__input_buffer[i+__xlx_offset_param_x_20];
  }
  for (int i = 0; i < __xlx_size_param_x_20; ++i) {
    ((char*)__xlx_apatb_param_x_20)[i] = __xlx_x_20_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_21
  sc_bv<8>*__xlx_x_21_output_buffer = new sc_bv<8>[__xlx_size_param_x_21];
  for (int i = 0; i < __xlx_size_param_x_21; ++i) {
    __xlx_x_21_output_buffer[i] = __xlx_x_21__input_buffer[i+__xlx_offset_param_x_21];
  }
  for (int i = 0; i < __xlx_size_param_x_21; ++i) {
    ((char*)__xlx_apatb_param_x_21)[i] = __xlx_x_21_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_22
  sc_bv<8>*__xlx_x_22_output_buffer = new sc_bv<8>[__xlx_size_param_x_22];
  for (int i = 0; i < __xlx_size_param_x_22; ++i) {
    __xlx_x_22_output_buffer[i] = __xlx_x_22__input_buffer[i+__xlx_offset_param_x_22];
  }
  for (int i = 0; i < __xlx_size_param_x_22; ++i) {
    ((char*)__xlx_apatb_param_x_22)[i] = __xlx_x_22_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_23
  sc_bv<8>*__xlx_x_23_output_buffer = new sc_bv<8>[__xlx_size_param_x_23];
  for (int i = 0; i < __xlx_size_param_x_23; ++i) {
    __xlx_x_23_output_buffer[i] = __xlx_x_23__input_buffer[i+__xlx_offset_param_x_23];
  }
  for (int i = 0; i < __xlx_size_param_x_23; ++i) {
    ((char*)__xlx_apatb_param_x_23)[i] = __xlx_x_23_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_24
  sc_bv<8>*__xlx_x_24_output_buffer = new sc_bv<8>[__xlx_size_param_x_24];
  for (int i = 0; i < __xlx_size_param_x_24; ++i) {
    __xlx_x_24_output_buffer[i] = __xlx_x_24__input_buffer[i+__xlx_offset_param_x_24];
  }
  for (int i = 0; i < __xlx_size_param_x_24; ++i) {
    ((char*)__xlx_apatb_param_x_24)[i] = __xlx_x_24_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_25
  sc_bv<8>*__xlx_x_25_output_buffer = new sc_bv<8>[__xlx_size_param_x_25];
  for (int i = 0; i < __xlx_size_param_x_25; ++i) {
    __xlx_x_25_output_buffer[i] = __xlx_x_25__input_buffer[i+__xlx_offset_param_x_25];
  }
  for (int i = 0; i < __xlx_size_param_x_25; ++i) {
    ((char*)__xlx_apatb_param_x_25)[i] = __xlx_x_25_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_26
  sc_bv<8>*__xlx_x_26_output_buffer = new sc_bv<8>[__xlx_size_param_x_26];
  for (int i = 0; i < __xlx_size_param_x_26; ++i) {
    __xlx_x_26_output_buffer[i] = __xlx_x_26__input_buffer[i+__xlx_offset_param_x_26];
  }
  for (int i = 0; i < __xlx_size_param_x_26; ++i) {
    ((char*)__xlx_apatb_param_x_26)[i] = __xlx_x_26_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_27
  sc_bv<8>*__xlx_x_27_output_buffer = new sc_bv<8>[__xlx_size_param_x_27];
  for (int i = 0; i < __xlx_size_param_x_27; ++i) {
    __xlx_x_27_output_buffer[i] = __xlx_x_27__input_buffer[i+__xlx_offset_param_x_27];
  }
  for (int i = 0; i < __xlx_size_param_x_27; ++i) {
    ((char*)__xlx_apatb_param_x_27)[i] = __xlx_x_27_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_28
  sc_bv<8>*__xlx_x_28_output_buffer = new sc_bv<8>[__xlx_size_param_x_28];
  for (int i = 0; i < __xlx_size_param_x_28; ++i) {
    __xlx_x_28_output_buffer[i] = __xlx_x_28__input_buffer[i+__xlx_offset_param_x_28];
  }
  for (int i = 0; i < __xlx_size_param_x_28; ++i) {
    ((char*)__xlx_apatb_param_x_28)[i] = __xlx_x_28_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_29
  sc_bv<8>*__xlx_x_29_output_buffer = new sc_bv<8>[__xlx_size_param_x_29];
  for (int i = 0; i < __xlx_size_param_x_29; ++i) {
    __xlx_x_29_output_buffer[i] = __xlx_x_29__input_buffer[i+__xlx_offset_param_x_29];
  }
  for (int i = 0; i < __xlx_size_param_x_29; ++i) {
    ((char*)__xlx_apatb_param_x_29)[i] = __xlx_x_29_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_30
  sc_bv<8>*__xlx_x_30_output_buffer = new sc_bv<8>[__xlx_size_param_x_30];
  for (int i = 0; i < __xlx_size_param_x_30; ++i) {
    __xlx_x_30_output_buffer[i] = __xlx_x_30__input_buffer[i+__xlx_offset_param_x_30];
  }
  for (int i = 0; i < __xlx_size_param_x_30; ++i) {
    ((char*)__xlx_apatb_param_x_30)[i] = __xlx_x_30_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_x_31
  sc_bv<8>*__xlx_x_31_output_buffer = new sc_bv<8>[__xlx_size_param_x_31];
  for (int i = 0; i < __xlx_size_param_x_31; ++i) {
    __xlx_x_31_output_buffer[i] = __xlx_x_31__input_buffer[i+__xlx_offset_param_x_31];
  }
  for (int i = 0; i < __xlx_size_param_x_31; ++i) {
    ((char*)__xlx_apatb_param_x_31)[i] = __xlx_x_31_output_buffer[i].to_uint();
  }
}
