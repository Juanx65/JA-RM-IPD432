#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_y_sqrt "../tv/cdatafile/c.eucHW.autotvin_y_sqrt.dat"
#define AUTOTB_TVOUT_y_sqrt "../tv/cdatafile/c.eucHW.autotvout_y_sqrt.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_0 "../tv/cdatafile/c.eucHW.autotvin_x_0.dat"
#define AUTOTB_TVOUT_x_0 "../tv/cdatafile/c.eucHW.autotvout_x_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_1 "../tv/cdatafile/c.eucHW.autotvin_x_1.dat"
#define AUTOTB_TVOUT_x_1 "../tv/cdatafile/c.eucHW.autotvout_x_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_2 "../tv/cdatafile/c.eucHW.autotvin_x_2.dat"
#define AUTOTB_TVOUT_x_2 "../tv/cdatafile/c.eucHW.autotvout_x_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_3 "../tv/cdatafile/c.eucHW.autotvin_x_3.dat"
#define AUTOTB_TVOUT_x_3 "../tv/cdatafile/c.eucHW.autotvout_x_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_4 "../tv/cdatafile/c.eucHW.autotvin_x_4.dat"
#define AUTOTB_TVOUT_x_4 "../tv/cdatafile/c.eucHW.autotvout_x_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_5 "../tv/cdatafile/c.eucHW.autotvin_x_5.dat"
#define AUTOTB_TVOUT_x_5 "../tv/cdatafile/c.eucHW.autotvout_x_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_6 "../tv/cdatafile/c.eucHW.autotvin_x_6.dat"
#define AUTOTB_TVOUT_x_6 "../tv/cdatafile/c.eucHW.autotvout_x_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_7 "../tv/cdatafile/c.eucHW.autotvin_x_7.dat"
#define AUTOTB_TVOUT_x_7 "../tv/cdatafile/c.eucHW.autotvout_x_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_8 "../tv/cdatafile/c.eucHW.autotvin_x_8.dat"
#define AUTOTB_TVOUT_x_8 "../tv/cdatafile/c.eucHW.autotvout_x_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_9 "../tv/cdatafile/c.eucHW.autotvin_x_9.dat"
#define AUTOTB_TVOUT_x_9 "../tv/cdatafile/c.eucHW.autotvout_x_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_10 "../tv/cdatafile/c.eucHW.autotvin_x_10.dat"
#define AUTOTB_TVOUT_x_10 "../tv/cdatafile/c.eucHW.autotvout_x_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_11 "../tv/cdatafile/c.eucHW.autotvin_x_11.dat"
#define AUTOTB_TVOUT_x_11 "../tv/cdatafile/c.eucHW.autotvout_x_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_12 "../tv/cdatafile/c.eucHW.autotvin_x_12.dat"
#define AUTOTB_TVOUT_x_12 "../tv/cdatafile/c.eucHW.autotvout_x_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_13 "../tv/cdatafile/c.eucHW.autotvin_x_13.dat"
#define AUTOTB_TVOUT_x_13 "../tv/cdatafile/c.eucHW.autotvout_x_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_14 "../tv/cdatafile/c.eucHW.autotvin_x_14.dat"
#define AUTOTB_TVOUT_x_14 "../tv/cdatafile/c.eucHW.autotvout_x_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_15 "../tv/cdatafile/c.eucHW.autotvin_x_15.dat"
#define AUTOTB_TVOUT_x_15 "../tv/cdatafile/c.eucHW.autotvout_x_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_16 "../tv/cdatafile/c.eucHW.autotvin_x_16.dat"
#define AUTOTB_TVOUT_x_16 "../tv/cdatafile/c.eucHW.autotvout_x_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_17 "../tv/cdatafile/c.eucHW.autotvin_x_17.dat"
#define AUTOTB_TVOUT_x_17 "../tv/cdatafile/c.eucHW.autotvout_x_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_18 "../tv/cdatafile/c.eucHW.autotvin_x_18.dat"
#define AUTOTB_TVOUT_x_18 "../tv/cdatafile/c.eucHW.autotvout_x_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_19 "../tv/cdatafile/c.eucHW.autotvin_x_19.dat"
#define AUTOTB_TVOUT_x_19 "../tv/cdatafile/c.eucHW.autotvout_x_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_20 "../tv/cdatafile/c.eucHW.autotvin_x_20.dat"
#define AUTOTB_TVOUT_x_20 "../tv/cdatafile/c.eucHW.autotvout_x_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_21 "../tv/cdatafile/c.eucHW.autotvin_x_21.dat"
#define AUTOTB_TVOUT_x_21 "../tv/cdatafile/c.eucHW.autotvout_x_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_22 "../tv/cdatafile/c.eucHW.autotvin_x_22.dat"
#define AUTOTB_TVOUT_x_22 "../tv/cdatafile/c.eucHW.autotvout_x_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_23 "../tv/cdatafile/c.eucHW.autotvin_x_23.dat"
#define AUTOTB_TVOUT_x_23 "../tv/cdatafile/c.eucHW.autotvout_x_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_24 "../tv/cdatafile/c.eucHW.autotvin_x_24.dat"
#define AUTOTB_TVOUT_x_24 "../tv/cdatafile/c.eucHW.autotvout_x_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_25 "../tv/cdatafile/c.eucHW.autotvin_x_25.dat"
#define AUTOTB_TVOUT_x_25 "../tv/cdatafile/c.eucHW.autotvout_x_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_26 "../tv/cdatafile/c.eucHW.autotvin_x_26.dat"
#define AUTOTB_TVOUT_x_26 "../tv/cdatafile/c.eucHW.autotvout_x_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_27 "../tv/cdatafile/c.eucHW.autotvin_x_27.dat"
#define AUTOTB_TVOUT_x_27 "../tv/cdatafile/c.eucHW.autotvout_x_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_28 "../tv/cdatafile/c.eucHW.autotvin_x_28.dat"
#define AUTOTB_TVOUT_x_28 "../tv/cdatafile/c.eucHW.autotvout_x_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_29 "../tv/cdatafile/c.eucHW.autotvin_x_29.dat"
#define AUTOTB_TVOUT_x_29 "../tv/cdatafile/c.eucHW.autotvout_x_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_30 "../tv/cdatafile/c.eucHW.autotvin_x_30.dat"
#define AUTOTB_TVOUT_x_30 "../tv/cdatafile/c.eucHW.autotvout_x_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_31 "../tv/cdatafile/c.eucHW.autotvin_x_31.dat"
#define AUTOTB_TVOUT_x_31 "../tv/cdatafile/c.eucHW.autotvout_x_31.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_y_sqrt "../tv/rtldatafile/rtl.eucHW.autotvout_y_sqrt.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_0 "../tv/rtldatafile/rtl.eucHW.autotvout_x_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_1 "../tv/rtldatafile/rtl.eucHW.autotvout_x_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_2 "../tv/rtldatafile/rtl.eucHW.autotvout_x_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_3 "../tv/rtldatafile/rtl.eucHW.autotvout_x_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_4 "../tv/rtldatafile/rtl.eucHW.autotvout_x_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_5 "../tv/rtldatafile/rtl.eucHW.autotvout_x_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_6 "../tv/rtldatafile/rtl.eucHW.autotvout_x_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_7 "../tv/rtldatafile/rtl.eucHW.autotvout_x_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_8 "../tv/rtldatafile/rtl.eucHW.autotvout_x_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_9 "../tv/rtldatafile/rtl.eucHW.autotvout_x_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_10 "../tv/rtldatafile/rtl.eucHW.autotvout_x_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_11 "../tv/rtldatafile/rtl.eucHW.autotvout_x_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_12 "../tv/rtldatafile/rtl.eucHW.autotvout_x_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_13 "../tv/rtldatafile/rtl.eucHW.autotvout_x_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_14 "../tv/rtldatafile/rtl.eucHW.autotvout_x_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_15 "../tv/rtldatafile/rtl.eucHW.autotvout_x_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_16 "../tv/rtldatafile/rtl.eucHW.autotvout_x_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_17 "../tv/rtldatafile/rtl.eucHW.autotvout_x_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_18 "../tv/rtldatafile/rtl.eucHW.autotvout_x_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_19 "../tv/rtldatafile/rtl.eucHW.autotvout_x_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_20 "../tv/rtldatafile/rtl.eucHW.autotvout_x_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_21 "../tv/rtldatafile/rtl.eucHW.autotvout_x_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_22 "../tv/rtldatafile/rtl.eucHW.autotvout_x_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_23 "../tv/rtldatafile/rtl.eucHW.autotvout_x_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_24 "../tv/rtldatafile/rtl.eucHW.autotvout_x_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_25 "../tv/rtldatafile/rtl.eucHW.autotvout_x_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_26 "../tv/rtldatafile/rtl.eucHW.autotvout_x_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_27 "../tv/rtldatafile/rtl.eucHW.autotvout_x_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_28 "../tv/rtldatafile/rtl.eucHW.autotvout_x_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_29 "../tv/rtldatafile/rtl.eucHW.autotvout_x_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_30 "../tv/rtldatafile/rtl.eucHW.autotvout_x_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_31 "../tv/rtldatafile/rtl.eucHW.autotvout_x_31.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  y_sqrt_depth = 0;
  x_0_depth = 0;
  x_1_depth = 0;
  x_2_depth = 0;
  x_3_depth = 0;
  x_4_depth = 0;
  x_5_depth = 0;
  x_6_depth = 0;
  x_7_depth = 0;
  x_8_depth = 0;
  x_9_depth = 0;
  x_10_depth = 0;
  x_11_depth = 0;
  x_12_depth = 0;
  x_13_depth = 0;
  x_14_depth = 0;
  x_15_depth = 0;
  x_16_depth = 0;
  x_17_depth = 0;
  x_18_depth = 0;
  x_19_depth = 0;
  x_20_depth = 0;
  x_21_depth = 0;
  x_22_depth = 0;
  x_23_depth = 0;
  x_24_depth = 0;
  x_25_depth = 0;
  x_26_depth = 0;
  x_27_depth = 0;
  x_28_depth = 0;
  x_29_depth = 0;
  x_30_depth = 0;
  x_31_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{y_sqrt " << y_sqrt_depth << "}\n";
  total_list << "{x_0 " << x_0_depth << "}\n";
  total_list << "{x_1 " << x_1_depth << "}\n";
  total_list << "{x_2 " << x_2_depth << "}\n";
  total_list << "{x_3 " << x_3_depth << "}\n";
  total_list << "{x_4 " << x_4_depth << "}\n";
  total_list << "{x_5 " << x_5_depth << "}\n";
  total_list << "{x_6 " << x_6_depth << "}\n";
  total_list << "{x_7 " << x_7_depth << "}\n";
  total_list << "{x_8 " << x_8_depth << "}\n";
  total_list << "{x_9 " << x_9_depth << "}\n";
  total_list << "{x_10 " << x_10_depth << "}\n";
  total_list << "{x_11 " << x_11_depth << "}\n";
  total_list << "{x_12 " << x_12_depth << "}\n";
  total_list << "{x_13 " << x_13_depth << "}\n";
  total_list << "{x_14 " << x_14_depth << "}\n";
  total_list << "{x_15 " << x_15_depth << "}\n";
  total_list << "{x_16 " << x_16_depth << "}\n";
  total_list << "{x_17 " << x_17_depth << "}\n";
  total_list << "{x_18 " << x_18_depth << "}\n";
  total_list << "{x_19 " << x_19_depth << "}\n";
  total_list << "{x_20 " << x_20_depth << "}\n";
  total_list << "{x_21 " << x_21_depth << "}\n";
  total_list << "{x_22 " << x_22_depth << "}\n";
  total_list << "{x_23 " << x_23_depth << "}\n";
  total_list << "{x_24 " << x_24_depth << "}\n";
  total_list << "{x_25 " << x_25_depth << "}\n";
  total_list << "{x_26 " << x_26_depth << "}\n";
  total_list << "{x_27 " << x_27_depth << "}\n";
  total_list << "{x_28 " << x_28_depth << "}\n";
  total_list << "{x_29 " << x_29_depth << "}\n";
  total_list << "{x_30 " << x_30_depth << "}\n";
  total_list << "{x_31 " << x_31_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int y_sqrt_depth;
    int x_0_depth;
    int x_1_depth;
    int x_2_depth;
    int x_3_depth;
    int x_4_depth;
    int x_5_depth;
    int x_6_depth;
    int x_7_depth;
    int x_8_depth;
    int x_9_depth;
    int x_10_depth;
    int x_11_depth;
    int x_12_depth;
    int x_13_depth;
    int x_14_depth;
    int x_15_depth;
    int x_16_depth;
    int x_17_depth;
    int x_18_depth;
    int x_19_depth;
    int x_20_depth;
    int x_21_depth;
    int x_22_depth;
    int x_23_depth;
    int x_24_depth;
    int x_25_depth;
    int x_26_depth;
    int x_27_depth;
    int x_28_depth;
    int x_29_depth;
    int x_30_depth;
    int x_31_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void eucHW_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_eucHW_hw(volatile void * __xlx_apatb_param_y_sqrt, volatile void * __xlx_apatb_param_x_0, volatile void * __xlx_apatb_param_x_1, volatile void * __xlx_apatb_param_x_2, volatile void * __xlx_apatb_param_x_3, volatile void * __xlx_apatb_param_x_4, volatile void * __xlx_apatb_param_x_5, volatile void * __xlx_apatb_param_x_6, volatile void * __xlx_apatb_param_x_7, volatile void * __xlx_apatb_param_x_8, volatile void * __xlx_apatb_param_x_9, volatile void * __xlx_apatb_param_x_10, volatile void * __xlx_apatb_param_x_11, volatile void * __xlx_apatb_param_x_12, volatile void * __xlx_apatb_param_x_13, volatile void * __xlx_apatb_param_x_14, volatile void * __xlx_apatb_param_x_15, volatile void * __xlx_apatb_param_x_16, volatile void * __xlx_apatb_param_x_17, volatile void * __xlx_apatb_param_x_18, volatile void * __xlx_apatb_param_x_19, volatile void * __xlx_apatb_param_x_20, volatile void * __xlx_apatb_param_x_21, volatile void * __xlx_apatb_param_x_22, volatile void * __xlx_apatb_param_x_23, volatile void * __xlx_apatb_param_x_24, volatile void * __xlx_apatb_param_x_25, volatile void * __xlx_apatb_param_x_26, volatile void * __xlx_apatb_param_x_27, volatile void * __xlx_apatb_param_x_28, volatile void * __xlx_apatb_param_x_29, volatile void * __xlx_apatb_param_x_30, volatile void * __xlx_apatb_param_x_31) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_y_sqrt);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > y_sqrt_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "y_sqrt");
  
            // push token into output port buffer
            if (AESL_token != "") {
              y_sqrt_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {((char*)__xlx_apatb_param_y_sqrt)[0*4+0] = y_sqrt_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_y_sqrt)[0*4+1] = y_sqrt_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_y_sqrt)[0*4+2] = y_sqrt_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_y_sqrt)[0*4+3] = y_sqrt_pc_buffer[0].range(31, 24).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//y_sqrt
aesl_fh.touch(AUTOTB_TVIN_y_sqrt);
aesl_fh.touch(AUTOTB_TVOUT_y_sqrt);
//x_0
aesl_fh.touch(AUTOTB_TVIN_x_0);
aesl_fh.touch(AUTOTB_TVOUT_x_0);
//x_1
aesl_fh.touch(AUTOTB_TVIN_x_1);
aesl_fh.touch(AUTOTB_TVOUT_x_1);
//x_2
aesl_fh.touch(AUTOTB_TVIN_x_2);
aesl_fh.touch(AUTOTB_TVOUT_x_2);
//x_3
aesl_fh.touch(AUTOTB_TVIN_x_3);
aesl_fh.touch(AUTOTB_TVOUT_x_3);
//x_4
aesl_fh.touch(AUTOTB_TVIN_x_4);
aesl_fh.touch(AUTOTB_TVOUT_x_4);
//x_5
aesl_fh.touch(AUTOTB_TVIN_x_5);
aesl_fh.touch(AUTOTB_TVOUT_x_5);
//x_6
aesl_fh.touch(AUTOTB_TVIN_x_6);
aesl_fh.touch(AUTOTB_TVOUT_x_6);
//x_7
aesl_fh.touch(AUTOTB_TVIN_x_7);
aesl_fh.touch(AUTOTB_TVOUT_x_7);
//x_8
aesl_fh.touch(AUTOTB_TVIN_x_8);
aesl_fh.touch(AUTOTB_TVOUT_x_8);
//x_9
aesl_fh.touch(AUTOTB_TVIN_x_9);
aesl_fh.touch(AUTOTB_TVOUT_x_9);
//x_10
aesl_fh.touch(AUTOTB_TVIN_x_10);
aesl_fh.touch(AUTOTB_TVOUT_x_10);
//x_11
aesl_fh.touch(AUTOTB_TVIN_x_11);
aesl_fh.touch(AUTOTB_TVOUT_x_11);
//x_12
aesl_fh.touch(AUTOTB_TVIN_x_12);
aesl_fh.touch(AUTOTB_TVOUT_x_12);
//x_13
aesl_fh.touch(AUTOTB_TVIN_x_13);
aesl_fh.touch(AUTOTB_TVOUT_x_13);
//x_14
aesl_fh.touch(AUTOTB_TVIN_x_14);
aesl_fh.touch(AUTOTB_TVOUT_x_14);
//x_15
aesl_fh.touch(AUTOTB_TVIN_x_15);
aesl_fh.touch(AUTOTB_TVOUT_x_15);
//x_16
aesl_fh.touch(AUTOTB_TVIN_x_16);
aesl_fh.touch(AUTOTB_TVOUT_x_16);
//x_17
aesl_fh.touch(AUTOTB_TVIN_x_17);
aesl_fh.touch(AUTOTB_TVOUT_x_17);
//x_18
aesl_fh.touch(AUTOTB_TVIN_x_18);
aesl_fh.touch(AUTOTB_TVOUT_x_18);
//x_19
aesl_fh.touch(AUTOTB_TVIN_x_19);
aesl_fh.touch(AUTOTB_TVOUT_x_19);
//x_20
aesl_fh.touch(AUTOTB_TVIN_x_20);
aesl_fh.touch(AUTOTB_TVOUT_x_20);
//x_21
aesl_fh.touch(AUTOTB_TVIN_x_21);
aesl_fh.touch(AUTOTB_TVOUT_x_21);
//x_22
aesl_fh.touch(AUTOTB_TVIN_x_22);
aesl_fh.touch(AUTOTB_TVOUT_x_22);
//x_23
aesl_fh.touch(AUTOTB_TVIN_x_23);
aesl_fh.touch(AUTOTB_TVOUT_x_23);
//x_24
aesl_fh.touch(AUTOTB_TVIN_x_24);
aesl_fh.touch(AUTOTB_TVOUT_x_24);
//x_25
aesl_fh.touch(AUTOTB_TVIN_x_25);
aesl_fh.touch(AUTOTB_TVOUT_x_25);
//x_26
aesl_fh.touch(AUTOTB_TVIN_x_26);
aesl_fh.touch(AUTOTB_TVOUT_x_26);
//x_27
aesl_fh.touch(AUTOTB_TVIN_x_27);
aesl_fh.touch(AUTOTB_TVOUT_x_27);
//x_28
aesl_fh.touch(AUTOTB_TVIN_x_28);
aesl_fh.touch(AUTOTB_TVOUT_x_28);
//x_29
aesl_fh.touch(AUTOTB_TVIN_x_29);
aesl_fh.touch(AUTOTB_TVOUT_x_29);
//x_30
aesl_fh.touch(AUTOTB_TVIN_x_30);
aesl_fh.touch(AUTOTB_TVOUT_x_30);
//x_31
aesl_fh.touch(AUTOTB_TVIN_x_31);
aesl_fh.touch(AUTOTB_TVOUT_x_31);
CodeState = DUMP_INPUTS;
// print y_sqrt Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_y_sqrt, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_y_sqrt);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_y_sqrt, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.y_sqrt_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_y_sqrt, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_0 = 0;
// print x_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_0 = 0*1;
  if (__xlx_apatb_param_x_0) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_0)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_0, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_1 = 0;
// print x_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_1 = 0*1;
  if (__xlx_apatb_param_x_1) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_1)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_1, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_2 = 0;
// print x_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_2 = 0*1;
  if (__xlx_apatb_param_x_2) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_2)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_2, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_3 = 0;
// print x_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_3 = 0*1;
  if (__xlx_apatb_param_x_3) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_3)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_3, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_4 = 0;
// print x_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_4 = 0*1;
  if (__xlx_apatb_param_x_4) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_4)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_4, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_5 = 0;
// print x_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_5 = 0*1;
  if (__xlx_apatb_param_x_5) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_5)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_5, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_5, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_6 = 0;
// print x_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_6 = 0*1;
  if (__xlx_apatb_param_x_6) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_6)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_6, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_6, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_7 = 0;
// print x_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_7 = 0*1;
  if (__xlx_apatb_param_x_7) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_7)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_7, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_7, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_8 = 0;
// print x_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_8, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_8 = 0*1;
  if (__xlx_apatb_param_x_8) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_8)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_8, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_8, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_9 = 0;
// print x_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_9, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_9 = 0*1;
  if (__xlx_apatb_param_x_9) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_9)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_9, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_9, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_10 = 0;
// print x_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_10, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_10 = 0*1;
  if (__xlx_apatb_param_x_10) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_10)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_10, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_10, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_11 = 0;
// print x_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_11, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_11 = 0*1;
  if (__xlx_apatb_param_x_11) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_11)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_11, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_11, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_12 = 0;
// print x_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_12, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_12 = 0*1;
  if (__xlx_apatb_param_x_12) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_12)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_12, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_12, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_13 = 0;
// print x_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_13, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_13 = 0*1;
  if (__xlx_apatb_param_x_13) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_13)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_13, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_13, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_14 = 0;
// print x_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_14, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_14 = 0*1;
  if (__xlx_apatb_param_x_14) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_14)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_14, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_14, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_15 = 0;
// print x_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_15, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_15 = 0*1;
  if (__xlx_apatb_param_x_15) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_15)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_15, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_15, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_16 = 0;
// print x_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_16, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_16 = 0*1;
  if (__xlx_apatb_param_x_16) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_16)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_16, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_16, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_17 = 0;
// print x_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_17, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_17 = 0*1;
  if (__xlx_apatb_param_x_17) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_17)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_17, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_17, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_18 = 0;
// print x_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_18, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_18 = 0*1;
  if (__xlx_apatb_param_x_18) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_18)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_18, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_18, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_19 = 0;
// print x_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_19, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_19 = 0*1;
  if (__xlx_apatb_param_x_19) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_19)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_19, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_19, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_20 = 0;
// print x_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_20, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_20 = 0*1;
  if (__xlx_apatb_param_x_20) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_20)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_20, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_20, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_21 = 0;
// print x_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_21, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_21 = 0*1;
  if (__xlx_apatb_param_x_21) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_21)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_21, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_21, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_22 = 0;
// print x_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_22, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_22 = 0*1;
  if (__xlx_apatb_param_x_22) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_22)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_22, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_22, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_23 = 0;
// print x_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_23, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_23 = 0*1;
  if (__xlx_apatb_param_x_23) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_23)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_23, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_23, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_24 = 0;
// print x_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_24, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_24 = 0*1;
  if (__xlx_apatb_param_x_24) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_24)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_24, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_24, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_25 = 0;
// print x_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_25, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_25 = 0*1;
  if (__xlx_apatb_param_x_25) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_25)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_25, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_25, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_26 = 0;
// print x_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_26, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_26 = 0*1;
  if (__xlx_apatb_param_x_26) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_26)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_26, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_26, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_27 = 0;
// print x_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_27, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_27 = 0*1;
  if (__xlx_apatb_param_x_27) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_27)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_27, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_27, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_28 = 0;
// print x_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_28, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_28 = 0*1;
  if (__xlx_apatb_param_x_28) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_28)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_28, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_28, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_29 = 0;
// print x_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_29, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_29 = 0*1;
  if (__xlx_apatb_param_x_29) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_29)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_29, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_29, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_30 = 0;
// print x_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_30, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_30 = 0*1;
  if (__xlx_apatb_param_x_30) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_30)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_30, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_30, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_31 = 0;
// print x_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_31, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_31 = 0*1;
  if (__xlx_apatb_param_x_31) {
    for (int j = 0  - 0, e = 64 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_x_31)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_x_31, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(64, &tcl_file.x_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_31, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
eucHW_hw_stub_wrapper(__xlx_apatb_param_y_sqrt, __xlx_apatb_param_x_0, __xlx_apatb_param_x_1, __xlx_apatb_param_x_2, __xlx_apatb_param_x_3, __xlx_apatb_param_x_4, __xlx_apatb_param_x_5, __xlx_apatb_param_x_6, __xlx_apatb_param_x_7, __xlx_apatb_param_x_8, __xlx_apatb_param_x_9, __xlx_apatb_param_x_10, __xlx_apatb_param_x_11, __xlx_apatb_param_x_12, __xlx_apatb_param_x_13, __xlx_apatb_param_x_14, __xlx_apatb_param_x_15, __xlx_apatb_param_x_16, __xlx_apatb_param_x_17, __xlx_apatb_param_x_18, __xlx_apatb_param_x_19, __xlx_apatb_param_x_20, __xlx_apatb_param_x_21, __xlx_apatb_param_x_22, __xlx_apatb_param_x_23, __xlx_apatb_param_x_24, __xlx_apatb_param_x_25, __xlx_apatb_param_x_26, __xlx_apatb_param_x_27, __xlx_apatb_param_x_28, __xlx_apatb_param_x_29, __xlx_apatb_param_x_30, __xlx_apatb_param_x_31);
CodeState = DUMP_OUTPUTS;
// print y_sqrt Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_y_sqrt, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_y_sqrt);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_y_sqrt, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.y_sqrt_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_y_sqrt, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
