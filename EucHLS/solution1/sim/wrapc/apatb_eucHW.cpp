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
#define AUTOTB_TVIN_A "../tv/cdatafile/c.eucHW.autotvin_A.dat"
#define AUTOTB_TVOUT_A "../tv/cdatafile/c.eucHW.autotvout_A.dat"
// wrapc file define:
#define AUTOTB_TVIN_B "../tv/cdatafile/c.eucHW.autotvin_B.dat"
#define AUTOTB_TVOUT_B "../tv/cdatafile/c.eucHW.autotvout_B.dat"
// wrapc file define:
#define AUTOTB_TVIN_C "../tv/cdatafile/c.eucHW.autotvin_C.dat"
#define AUTOTB_TVOUT_C "../tv/cdatafile/c.eucHW.autotvout_C.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A "../tv/rtldatafile/rtl.eucHW.autotvout_A.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B "../tv/rtldatafile/rtl.eucHW.autotvout_B.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C "../tv/rtldatafile/rtl.eucHW.autotvout_C.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  A_depth = 0;
  B_depth = 0;
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
  total_list << "{A " << A_depth << "}\n";
  total_list << "{B " << B_depth << "}\n";
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
    int A_depth;
    int B_depth;
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
struct __cosim_s200__ { char data[512]; };
extern "C" void eucHW_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_eucHW_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C) {
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
//A
aesl_fh.touch(AUTOTB_TVIN_A);
aesl_fh.touch(AUTOTB_TVOUT_A);
//B
aesl_fh.touch(AUTOTB_TVIN_B);
aesl_fh.touch(AUTOTB_TVOUT_B);
//C
aesl_fh.touch(AUTOTB_TVIN_C);
aesl_fh.touch(AUTOTB_TVOUT_C);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_A = 0;
// print A Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A = 0*512;
  if (__xlx_apatb_param_A) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<4096> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A)[j*64+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A)[j*64+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_A)[j*64+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_A)[j*64+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_A)[j*64+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_A)[j*64+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_A)[j*64+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_A)[j*64+7];
__xlx_tmp_lv.range(575,512) = ((long long*)__xlx_apatb_param_A)[j*64+8];
__xlx_tmp_lv.range(639,576) = ((long long*)__xlx_apatb_param_A)[j*64+9];
__xlx_tmp_lv.range(703,640) = ((long long*)__xlx_apatb_param_A)[j*64+10];
__xlx_tmp_lv.range(767,704) = ((long long*)__xlx_apatb_param_A)[j*64+11];
__xlx_tmp_lv.range(831,768) = ((long long*)__xlx_apatb_param_A)[j*64+12];
__xlx_tmp_lv.range(895,832) = ((long long*)__xlx_apatb_param_A)[j*64+13];
__xlx_tmp_lv.range(959,896) = ((long long*)__xlx_apatb_param_A)[j*64+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)__xlx_apatb_param_A)[j*64+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)__xlx_apatb_param_A)[j*64+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)__xlx_apatb_param_A)[j*64+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)__xlx_apatb_param_A)[j*64+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)__xlx_apatb_param_A)[j*64+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)__xlx_apatb_param_A)[j*64+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)__xlx_apatb_param_A)[j*64+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)__xlx_apatb_param_A)[j*64+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)__xlx_apatb_param_A)[j*64+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)__xlx_apatb_param_A)[j*64+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)__xlx_apatb_param_A)[j*64+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)__xlx_apatb_param_A)[j*64+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)__xlx_apatb_param_A)[j*64+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)__xlx_apatb_param_A)[j*64+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)__xlx_apatb_param_A)[j*64+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)__xlx_apatb_param_A)[j*64+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)__xlx_apatb_param_A)[j*64+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)__xlx_apatb_param_A)[j*64+32];
__xlx_tmp_lv.range(2175,2112) = ((long long*)__xlx_apatb_param_A)[j*64+33];
__xlx_tmp_lv.range(2239,2176) = ((long long*)__xlx_apatb_param_A)[j*64+34];
__xlx_tmp_lv.range(2303,2240) = ((long long*)__xlx_apatb_param_A)[j*64+35];
__xlx_tmp_lv.range(2367,2304) = ((long long*)__xlx_apatb_param_A)[j*64+36];
__xlx_tmp_lv.range(2431,2368) = ((long long*)__xlx_apatb_param_A)[j*64+37];
__xlx_tmp_lv.range(2495,2432) = ((long long*)__xlx_apatb_param_A)[j*64+38];
__xlx_tmp_lv.range(2559,2496) = ((long long*)__xlx_apatb_param_A)[j*64+39];
__xlx_tmp_lv.range(2623,2560) = ((long long*)__xlx_apatb_param_A)[j*64+40];
__xlx_tmp_lv.range(2687,2624) = ((long long*)__xlx_apatb_param_A)[j*64+41];
__xlx_tmp_lv.range(2751,2688) = ((long long*)__xlx_apatb_param_A)[j*64+42];
__xlx_tmp_lv.range(2815,2752) = ((long long*)__xlx_apatb_param_A)[j*64+43];
__xlx_tmp_lv.range(2879,2816) = ((long long*)__xlx_apatb_param_A)[j*64+44];
__xlx_tmp_lv.range(2943,2880) = ((long long*)__xlx_apatb_param_A)[j*64+45];
__xlx_tmp_lv.range(3007,2944) = ((long long*)__xlx_apatb_param_A)[j*64+46];
__xlx_tmp_lv.range(3071,3008) = ((long long*)__xlx_apatb_param_A)[j*64+47];
__xlx_tmp_lv.range(3135,3072) = ((long long*)__xlx_apatb_param_A)[j*64+48];
__xlx_tmp_lv.range(3199,3136) = ((long long*)__xlx_apatb_param_A)[j*64+49];
__xlx_tmp_lv.range(3263,3200) = ((long long*)__xlx_apatb_param_A)[j*64+50];
__xlx_tmp_lv.range(3327,3264) = ((long long*)__xlx_apatb_param_A)[j*64+51];
__xlx_tmp_lv.range(3391,3328) = ((long long*)__xlx_apatb_param_A)[j*64+52];
__xlx_tmp_lv.range(3455,3392) = ((long long*)__xlx_apatb_param_A)[j*64+53];
__xlx_tmp_lv.range(3519,3456) = ((long long*)__xlx_apatb_param_A)[j*64+54];
__xlx_tmp_lv.range(3583,3520) = ((long long*)__xlx_apatb_param_A)[j*64+55];
__xlx_tmp_lv.range(3647,3584) = ((long long*)__xlx_apatb_param_A)[j*64+56];
__xlx_tmp_lv.range(3711,3648) = ((long long*)__xlx_apatb_param_A)[j*64+57];
__xlx_tmp_lv.range(3775,3712) = ((long long*)__xlx_apatb_param_A)[j*64+58];
__xlx_tmp_lv.range(3839,3776) = ((long long*)__xlx_apatb_param_A)[j*64+59];
__xlx_tmp_lv.range(3903,3840) = ((long long*)__xlx_apatb_param_A)[j*64+60];
__xlx_tmp_lv.range(3967,3904) = ((long long*)__xlx_apatb_param_A)[j*64+61];
__xlx_tmp_lv.range(4031,3968) = ((long long*)__xlx_apatb_param_A)[j*64+62];
__xlx_tmp_lv.range(4095,4032) = ((long long*)__xlx_apatb_param_A)[j*64+63];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.A_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B = 0;
// print B Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B = 0*512;
  if (__xlx_apatb_param_B) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<4096> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B)[j*64+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B)[j*64+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_B)[j*64+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_B)[j*64+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_B)[j*64+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_B)[j*64+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_B)[j*64+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_B)[j*64+7];
__xlx_tmp_lv.range(575,512) = ((long long*)__xlx_apatb_param_B)[j*64+8];
__xlx_tmp_lv.range(639,576) = ((long long*)__xlx_apatb_param_B)[j*64+9];
__xlx_tmp_lv.range(703,640) = ((long long*)__xlx_apatb_param_B)[j*64+10];
__xlx_tmp_lv.range(767,704) = ((long long*)__xlx_apatb_param_B)[j*64+11];
__xlx_tmp_lv.range(831,768) = ((long long*)__xlx_apatb_param_B)[j*64+12];
__xlx_tmp_lv.range(895,832) = ((long long*)__xlx_apatb_param_B)[j*64+13];
__xlx_tmp_lv.range(959,896) = ((long long*)__xlx_apatb_param_B)[j*64+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)__xlx_apatb_param_B)[j*64+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)__xlx_apatb_param_B)[j*64+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)__xlx_apatb_param_B)[j*64+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)__xlx_apatb_param_B)[j*64+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)__xlx_apatb_param_B)[j*64+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)__xlx_apatb_param_B)[j*64+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)__xlx_apatb_param_B)[j*64+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)__xlx_apatb_param_B)[j*64+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)__xlx_apatb_param_B)[j*64+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)__xlx_apatb_param_B)[j*64+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)__xlx_apatb_param_B)[j*64+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)__xlx_apatb_param_B)[j*64+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)__xlx_apatb_param_B)[j*64+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)__xlx_apatb_param_B)[j*64+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)__xlx_apatb_param_B)[j*64+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)__xlx_apatb_param_B)[j*64+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)__xlx_apatb_param_B)[j*64+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)__xlx_apatb_param_B)[j*64+32];
__xlx_tmp_lv.range(2175,2112) = ((long long*)__xlx_apatb_param_B)[j*64+33];
__xlx_tmp_lv.range(2239,2176) = ((long long*)__xlx_apatb_param_B)[j*64+34];
__xlx_tmp_lv.range(2303,2240) = ((long long*)__xlx_apatb_param_B)[j*64+35];
__xlx_tmp_lv.range(2367,2304) = ((long long*)__xlx_apatb_param_B)[j*64+36];
__xlx_tmp_lv.range(2431,2368) = ((long long*)__xlx_apatb_param_B)[j*64+37];
__xlx_tmp_lv.range(2495,2432) = ((long long*)__xlx_apatb_param_B)[j*64+38];
__xlx_tmp_lv.range(2559,2496) = ((long long*)__xlx_apatb_param_B)[j*64+39];
__xlx_tmp_lv.range(2623,2560) = ((long long*)__xlx_apatb_param_B)[j*64+40];
__xlx_tmp_lv.range(2687,2624) = ((long long*)__xlx_apatb_param_B)[j*64+41];
__xlx_tmp_lv.range(2751,2688) = ((long long*)__xlx_apatb_param_B)[j*64+42];
__xlx_tmp_lv.range(2815,2752) = ((long long*)__xlx_apatb_param_B)[j*64+43];
__xlx_tmp_lv.range(2879,2816) = ((long long*)__xlx_apatb_param_B)[j*64+44];
__xlx_tmp_lv.range(2943,2880) = ((long long*)__xlx_apatb_param_B)[j*64+45];
__xlx_tmp_lv.range(3007,2944) = ((long long*)__xlx_apatb_param_B)[j*64+46];
__xlx_tmp_lv.range(3071,3008) = ((long long*)__xlx_apatb_param_B)[j*64+47];
__xlx_tmp_lv.range(3135,3072) = ((long long*)__xlx_apatb_param_B)[j*64+48];
__xlx_tmp_lv.range(3199,3136) = ((long long*)__xlx_apatb_param_B)[j*64+49];
__xlx_tmp_lv.range(3263,3200) = ((long long*)__xlx_apatb_param_B)[j*64+50];
__xlx_tmp_lv.range(3327,3264) = ((long long*)__xlx_apatb_param_B)[j*64+51];
__xlx_tmp_lv.range(3391,3328) = ((long long*)__xlx_apatb_param_B)[j*64+52];
__xlx_tmp_lv.range(3455,3392) = ((long long*)__xlx_apatb_param_B)[j*64+53];
__xlx_tmp_lv.range(3519,3456) = ((long long*)__xlx_apatb_param_B)[j*64+54];
__xlx_tmp_lv.range(3583,3520) = ((long long*)__xlx_apatb_param_B)[j*64+55];
__xlx_tmp_lv.range(3647,3584) = ((long long*)__xlx_apatb_param_B)[j*64+56];
__xlx_tmp_lv.range(3711,3648) = ((long long*)__xlx_apatb_param_B)[j*64+57];
__xlx_tmp_lv.range(3775,3712) = ((long long*)__xlx_apatb_param_B)[j*64+58];
__xlx_tmp_lv.range(3839,3776) = ((long long*)__xlx_apatb_param_B)[j*64+59];
__xlx_tmp_lv.range(3903,3840) = ((long long*)__xlx_apatb_param_B)[j*64+60];
__xlx_tmp_lv.range(3967,3904) = ((long long*)__xlx_apatb_param_B)[j*64+61];
__xlx_tmp_lv.range(4031,3968) = ((long long*)__xlx_apatb_param_B)[j*64+62];
__xlx_tmp_lv.range(4095,4032) = ((long long*)__xlx_apatb_param_B)[j*64+63];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.B_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
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
eucHW_hw_stub_wrapper(__xlx_apatb_param_A, __xlx_apatb_param_B, __xlx_apatb_param_C);
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
