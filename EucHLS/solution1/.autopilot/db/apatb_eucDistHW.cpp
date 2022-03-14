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
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.eucDistHW.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.eucDistHW.autotvout_A_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.eucDistHW.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.eucDistHW.autotvout_A_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_2 "../tv/cdatafile/c.eucDistHW.autotvin_A_2.dat"
#define AUTOTB_TVOUT_A_2 "../tv/cdatafile/c.eucDistHW.autotvout_A_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_3 "../tv/cdatafile/c.eucDistHW.autotvin_A_3.dat"
#define AUTOTB_TVOUT_A_3 "../tv/cdatafile/c.eucDistHW.autotvout_A_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_4 "../tv/cdatafile/c.eucDistHW.autotvin_A_4.dat"
#define AUTOTB_TVOUT_A_4 "../tv/cdatafile/c.eucDistHW.autotvout_A_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_5 "../tv/cdatafile/c.eucDistHW.autotvin_A_5.dat"
#define AUTOTB_TVOUT_A_5 "../tv/cdatafile/c.eucDistHW.autotvout_A_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_6 "../tv/cdatafile/c.eucDistHW.autotvin_A_6.dat"
#define AUTOTB_TVOUT_A_6 "../tv/cdatafile/c.eucDistHW.autotvout_A_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_7 "../tv/cdatafile/c.eucDistHW.autotvin_A_7.dat"
#define AUTOTB_TVOUT_A_7 "../tv/cdatafile/c.eucDistHW.autotvout_A_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_8 "../tv/cdatafile/c.eucDistHW.autotvin_A_8.dat"
#define AUTOTB_TVOUT_A_8 "../tv/cdatafile/c.eucDistHW.autotvout_A_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_9 "../tv/cdatafile/c.eucDistHW.autotvin_A_9.dat"
#define AUTOTB_TVOUT_A_9 "../tv/cdatafile/c.eucDistHW.autotvout_A_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_10 "../tv/cdatafile/c.eucDistHW.autotvin_A_10.dat"
#define AUTOTB_TVOUT_A_10 "../tv/cdatafile/c.eucDistHW.autotvout_A_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_11 "../tv/cdatafile/c.eucDistHW.autotvin_A_11.dat"
#define AUTOTB_TVOUT_A_11 "../tv/cdatafile/c.eucDistHW.autotvout_A_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_12 "../tv/cdatafile/c.eucDistHW.autotvin_A_12.dat"
#define AUTOTB_TVOUT_A_12 "../tv/cdatafile/c.eucDistHW.autotvout_A_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_13 "../tv/cdatafile/c.eucDistHW.autotvin_A_13.dat"
#define AUTOTB_TVOUT_A_13 "../tv/cdatafile/c.eucDistHW.autotvout_A_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_14 "../tv/cdatafile/c.eucDistHW.autotvin_A_14.dat"
#define AUTOTB_TVOUT_A_14 "../tv/cdatafile/c.eucDistHW.autotvout_A_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_15 "../tv/cdatafile/c.eucDistHW.autotvin_A_15.dat"
#define AUTOTB_TVOUT_A_15 "../tv/cdatafile/c.eucDistHW.autotvout_A_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_0 "../tv/cdatafile/c.eucDistHW.autotvin_B_0.dat"
#define AUTOTB_TVOUT_B_0 "../tv/cdatafile/c.eucDistHW.autotvout_B_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_1 "../tv/cdatafile/c.eucDistHW.autotvin_B_1.dat"
#define AUTOTB_TVOUT_B_1 "../tv/cdatafile/c.eucDistHW.autotvout_B_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_2 "../tv/cdatafile/c.eucDistHW.autotvin_B_2.dat"
#define AUTOTB_TVOUT_B_2 "../tv/cdatafile/c.eucDistHW.autotvout_B_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_3 "../tv/cdatafile/c.eucDistHW.autotvin_B_3.dat"
#define AUTOTB_TVOUT_B_3 "../tv/cdatafile/c.eucDistHW.autotvout_B_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_4 "../tv/cdatafile/c.eucDistHW.autotvin_B_4.dat"
#define AUTOTB_TVOUT_B_4 "../tv/cdatafile/c.eucDistHW.autotvout_B_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_5 "../tv/cdatafile/c.eucDistHW.autotvin_B_5.dat"
#define AUTOTB_TVOUT_B_5 "../tv/cdatafile/c.eucDistHW.autotvout_B_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_6 "../tv/cdatafile/c.eucDistHW.autotvin_B_6.dat"
#define AUTOTB_TVOUT_B_6 "../tv/cdatafile/c.eucDistHW.autotvout_B_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_7 "../tv/cdatafile/c.eucDistHW.autotvin_B_7.dat"
#define AUTOTB_TVOUT_B_7 "../tv/cdatafile/c.eucDistHW.autotvout_B_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_8 "../tv/cdatafile/c.eucDistHW.autotvin_B_8.dat"
#define AUTOTB_TVOUT_B_8 "../tv/cdatafile/c.eucDistHW.autotvout_B_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_9 "../tv/cdatafile/c.eucDistHW.autotvin_B_9.dat"
#define AUTOTB_TVOUT_B_9 "../tv/cdatafile/c.eucDistHW.autotvout_B_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_10 "../tv/cdatafile/c.eucDistHW.autotvin_B_10.dat"
#define AUTOTB_TVOUT_B_10 "../tv/cdatafile/c.eucDistHW.autotvout_B_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_11 "../tv/cdatafile/c.eucDistHW.autotvin_B_11.dat"
#define AUTOTB_TVOUT_B_11 "../tv/cdatafile/c.eucDistHW.autotvout_B_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_12 "../tv/cdatafile/c.eucDistHW.autotvin_B_12.dat"
#define AUTOTB_TVOUT_B_12 "../tv/cdatafile/c.eucDistHW.autotvout_B_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_13 "../tv/cdatafile/c.eucDistHW.autotvin_B_13.dat"
#define AUTOTB_TVOUT_B_13 "../tv/cdatafile/c.eucDistHW.autotvout_B_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_14 "../tv/cdatafile/c.eucDistHW.autotvin_B_14.dat"
#define AUTOTB_TVOUT_B_14 "../tv/cdatafile/c.eucDistHW.autotvout_B_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_15 "../tv/cdatafile/c.eucDistHW.autotvin_B_15.dat"
#define AUTOTB_TVOUT_B_15 "../tv/cdatafile/c.eucDistHW.autotvout_B_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_C "../tv/cdatafile/c.eucDistHW.autotvin_C.dat"
#define AUTOTB_TVOUT_C "../tv/cdatafile/c.eucDistHW.autotvout_C.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A_0 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_1 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_2 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_3 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_4 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_5 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_6 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_7 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_8 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_9 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_10 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_11 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_12 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_13 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_14 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_15 "../tv/rtldatafile/rtl.eucDistHW.autotvout_A_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_0 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_1 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_2 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_3 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_4 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_5 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_6 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_7 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_8 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_9 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_10 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_11 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_12 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_13 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_14 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_15 "../tv/rtldatafile/rtl.eucDistHW.autotvout_B_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C "../tv/rtldatafile/rtl.eucDistHW.autotvout_C.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  A_0_depth = 0;
  A_1_depth = 0;
  A_2_depth = 0;
  A_3_depth = 0;
  A_4_depth = 0;
  A_5_depth = 0;
  A_6_depth = 0;
  A_7_depth = 0;
  A_8_depth = 0;
  A_9_depth = 0;
  A_10_depth = 0;
  A_11_depth = 0;
  A_12_depth = 0;
  A_13_depth = 0;
  A_14_depth = 0;
  A_15_depth = 0;
  B_0_depth = 0;
  B_1_depth = 0;
  B_2_depth = 0;
  B_3_depth = 0;
  B_4_depth = 0;
  B_5_depth = 0;
  B_6_depth = 0;
  B_7_depth = 0;
  B_8_depth = 0;
  B_9_depth = 0;
  B_10_depth = 0;
  B_11_depth = 0;
  B_12_depth = 0;
  B_13_depth = 0;
  B_14_depth = 0;
  B_15_depth = 0;
  C_depth = 0;
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
  total_list << "{A_0 " << A_0_depth << "}\n";
  total_list << "{A_1 " << A_1_depth << "}\n";
  total_list << "{A_2 " << A_2_depth << "}\n";
  total_list << "{A_3 " << A_3_depth << "}\n";
  total_list << "{A_4 " << A_4_depth << "}\n";
  total_list << "{A_5 " << A_5_depth << "}\n";
  total_list << "{A_6 " << A_6_depth << "}\n";
  total_list << "{A_7 " << A_7_depth << "}\n";
  total_list << "{A_8 " << A_8_depth << "}\n";
  total_list << "{A_9 " << A_9_depth << "}\n";
  total_list << "{A_10 " << A_10_depth << "}\n";
  total_list << "{A_11 " << A_11_depth << "}\n";
  total_list << "{A_12 " << A_12_depth << "}\n";
  total_list << "{A_13 " << A_13_depth << "}\n";
  total_list << "{A_14 " << A_14_depth << "}\n";
  total_list << "{A_15 " << A_15_depth << "}\n";
  total_list << "{B_0 " << B_0_depth << "}\n";
  total_list << "{B_1 " << B_1_depth << "}\n";
  total_list << "{B_2 " << B_2_depth << "}\n";
  total_list << "{B_3 " << B_3_depth << "}\n";
  total_list << "{B_4 " << B_4_depth << "}\n";
  total_list << "{B_5 " << B_5_depth << "}\n";
  total_list << "{B_6 " << B_6_depth << "}\n";
  total_list << "{B_7 " << B_7_depth << "}\n";
  total_list << "{B_8 " << B_8_depth << "}\n";
  total_list << "{B_9 " << B_9_depth << "}\n";
  total_list << "{B_10 " << B_10_depth << "}\n";
  total_list << "{B_11 " << B_11_depth << "}\n";
  total_list << "{B_12 " << B_12_depth << "}\n";
  total_list << "{B_13 " << B_13_depth << "}\n";
  total_list << "{B_14 " << B_14_depth << "}\n";
  total_list << "{B_15 " << B_15_depth << "}\n";
  total_list << "{C " << C_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int A_0_depth;
    int A_1_depth;
    int A_2_depth;
    int A_3_depth;
    int A_4_depth;
    int A_5_depth;
    int A_6_depth;
    int A_7_depth;
    int A_8_depth;
    int A_9_depth;
    int A_10_depth;
    int A_11_depth;
    int A_12_depth;
    int A_13_depth;
    int A_14_depth;
    int A_15_depth;
    int B_0_depth;
    int B_1_depth;
    int B_2_depth;
    int B_3_depth;
    int B_4_depth;
    int B_5_depth;
    int B_6_depth;
    int B_7_depth;
    int B_8_depth;
    int B_9_depth;
    int B_10_depth;
    int B_11_depth;
    int B_12_depth;
    int B_13_depth;
    int B_14_depth;
    int B_15_depth;
    int C_depth;
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
extern "C" void eucDistHW_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_eucDistHW_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_B_8, volatile void * __xlx_apatb_param_B_9, volatile void * __xlx_apatb_param_B_10, volatile void * __xlx_apatb_param_B_11, volatile void * __xlx_apatb_param_B_12, volatile void * __xlx_apatb_param_B_13, volatile void * __xlx_apatb_param_B_14, volatile void * __xlx_apatb_param_B_15, volatile void * __xlx_apatb_param_C) {
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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_C);
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
          std::vector<sc_bv<32> > C_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "C");
  
            // push token into output port buffer
            if (AESL_token != "") {
              C_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_C)[j*4+0] = C_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_C)[j*4+1] = C_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_C)[j*4+2] = C_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_C)[j*4+3] = C_pc_buffer[i].range(31, 24).to_int64();
}}}
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
//A_0
aesl_fh.touch(AUTOTB_TVIN_A_0);
aesl_fh.touch(AUTOTB_TVOUT_A_0);
//A_1
aesl_fh.touch(AUTOTB_TVIN_A_1);
aesl_fh.touch(AUTOTB_TVOUT_A_1);
//A_2
aesl_fh.touch(AUTOTB_TVIN_A_2);
aesl_fh.touch(AUTOTB_TVOUT_A_2);
//A_3
aesl_fh.touch(AUTOTB_TVIN_A_3);
aesl_fh.touch(AUTOTB_TVOUT_A_3);
//A_4
aesl_fh.touch(AUTOTB_TVIN_A_4);
aesl_fh.touch(AUTOTB_TVOUT_A_4);
//A_5
aesl_fh.touch(AUTOTB_TVIN_A_5);
aesl_fh.touch(AUTOTB_TVOUT_A_5);
//A_6
aesl_fh.touch(AUTOTB_TVIN_A_6);
aesl_fh.touch(AUTOTB_TVOUT_A_6);
//A_7
aesl_fh.touch(AUTOTB_TVIN_A_7);
aesl_fh.touch(AUTOTB_TVOUT_A_7);
//A_8
aesl_fh.touch(AUTOTB_TVIN_A_8);
aesl_fh.touch(AUTOTB_TVOUT_A_8);
//A_9
aesl_fh.touch(AUTOTB_TVIN_A_9);
aesl_fh.touch(AUTOTB_TVOUT_A_9);
//A_10
aesl_fh.touch(AUTOTB_TVIN_A_10);
aesl_fh.touch(AUTOTB_TVOUT_A_10);
//A_11
aesl_fh.touch(AUTOTB_TVIN_A_11);
aesl_fh.touch(AUTOTB_TVOUT_A_11);
//A_12
aesl_fh.touch(AUTOTB_TVIN_A_12);
aesl_fh.touch(AUTOTB_TVOUT_A_12);
//A_13
aesl_fh.touch(AUTOTB_TVIN_A_13);
aesl_fh.touch(AUTOTB_TVOUT_A_13);
//A_14
aesl_fh.touch(AUTOTB_TVIN_A_14);
aesl_fh.touch(AUTOTB_TVOUT_A_14);
//A_15
aesl_fh.touch(AUTOTB_TVIN_A_15);
aesl_fh.touch(AUTOTB_TVOUT_A_15);
//B_0
aesl_fh.touch(AUTOTB_TVIN_B_0);
aesl_fh.touch(AUTOTB_TVOUT_B_0);
//B_1
aesl_fh.touch(AUTOTB_TVIN_B_1);
aesl_fh.touch(AUTOTB_TVOUT_B_1);
//B_2
aesl_fh.touch(AUTOTB_TVIN_B_2);
aesl_fh.touch(AUTOTB_TVOUT_B_2);
//B_3
aesl_fh.touch(AUTOTB_TVIN_B_3);
aesl_fh.touch(AUTOTB_TVOUT_B_3);
//B_4
aesl_fh.touch(AUTOTB_TVIN_B_4);
aesl_fh.touch(AUTOTB_TVOUT_B_4);
//B_5
aesl_fh.touch(AUTOTB_TVIN_B_5);
aesl_fh.touch(AUTOTB_TVOUT_B_5);
//B_6
aesl_fh.touch(AUTOTB_TVIN_B_6);
aesl_fh.touch(AUTOTB_TVOUT_B_6);
//B_7
aesl_fh.touch(AUTOTB_TVIN_B_7);
aesl_fh.touch(AUTOTB_TVOUT_B_7);
//B_8
aesl_fh.touch(AUTOTB_TVIN_B_8);
aesl_fh.touch(AUTOTB_TVOUT_B_8);
//B_9
aesl_fh.touch(AUTOTB_TVIN_B_9);
aesl_fh.touch(AUTOTB_TVOUT_B_9);
//B_10
aesl_fh.touch(AUTOTB_TVIN_B_10);
aesl_fh.touch(AUTOTB_TVOUT_B_10);
//B_11
aesl_fh.touch(AUTOTB_TVIN_B_11);
aesl_fh.touch(AUTOTB_TVOUT_B_11);
//B_12
aesl_fh.touch(AUTOTB_TVIN_B_12);
aesl_fh.touch(AUTOTB_TVOUT_B_12);
//B_13
aesl_fh.touch(AUTOTB_TVIN_B_13);
aesl_fh.touch(AUTOTB_TVOUT_B_13);
//B_14
aesl_fh.touch(AUTOTB_TVIN_B_14);
aesl_fh.touch(AUTOTB_TVOUT_B_14);
//B_15
aesl_fh.touch(AUTOTB_TVIN_B_15);
aesl_fh.touch(AUTOTB_TVOUT_B_15);
//C
aesl_fh.touch(AUTOTB_TVIN_C);
aesl_fh.touch(AUTOTB_TVOUT_C);
CodeState = DUMP_INPUTS;
// print A_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_0);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_0, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data());
}
// print A_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_1);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_1, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data());
}
// print A_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_2);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_2, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data());
}
// print A_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_3);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_3, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data());
}
// print A_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_4);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_4, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data());
}
// print A_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_5);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_5, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data());
}
// print A_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_6);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_6, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data());
}
// print A_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_7);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_7, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data());
}
// print A_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_8);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_8, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_8, __xlx_sprintf_buffer.data());
}
// print A_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_9);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_9, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_9, __xlx_sprintf_buffer.data());
}
// print A_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_10);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_10, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_10, __xlx_sprintf_buffer.data());
}
// print A_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_11);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_11, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_11, __xlx_sprintf_buffer.data());
}
// print A_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_12, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_12);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_12, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_12, __xlx_sprintf_buffer.data());
}
// print A_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_13, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_13);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_13, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_13, __xlx_sprintf_buffer.data());
}
// print A_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_14, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_14);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_14, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_14, __xlx_sprintf_buffer.data());
}
// print A_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_15, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A_15);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A_15, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_15, __xlx_sprintf_buffer.data());
}
// print B_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_0);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_0, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data());
}
// print B_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_1);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_1, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data());
}
// print B_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_2);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_2, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data());
}
// print B_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_3);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_3, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data());
}
// print B_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_4);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_4, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data());
}
// print B_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_5);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_5, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data());
}
// print B_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_6);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_6, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data());
}
// print B_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_7);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_7, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data());
}
// print B_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_8);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_8, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_8, __xlx_sprintf_buffer.data());
}
// print B_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_9);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_9, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_9, __xlx_sprintf_buffer.data());
}
// print B_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_10);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_10, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_10, __xlx_sprintf_buffer.data());
}
// print B_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_11);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_11, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_11, __xlx_sprintf_buffer.data());
}
// print B_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_12, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_12);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_12, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_12, __xlx_sprintf_buffer.data());
}
// print B_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_13, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_13);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_13, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_13, __xlx_sprintf_buffer.data());
}
// print B_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_14, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_14);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_14, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_14, __xlx_sprintf_buffer.data());
}
// print B_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_15, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B_15);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B_15, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_15, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_C = 0;
// print C Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_C = 0*4;
  if (__xlx_apatb_param_C) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_C)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_C, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.C_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
eucDistHW_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_B_8, __xlx_apatb_param_B_9, __xlx_apatb_param_B_10, __xlx_apatb_param_B_11, __xlx_apatb_param_B_12, __xlx_apatb_param_B_13, __xlx_apatb_param_B_14, __xlx_apatb_param_B_15, __xlx_apatb_param_C);
CodeState = DUMP_OUTPUTS;
// print C Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_C = 0*4;
  if (__xlx_apatb_param_C) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_C)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_C, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.C_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
