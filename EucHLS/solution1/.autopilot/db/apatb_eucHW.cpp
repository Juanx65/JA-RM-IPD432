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
struct __cosim_s400__ { char data[1024]; };
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
// print A Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
  {
    sc_bv<8192> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A)[0*128+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A)[0*128+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_A)[0*128+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_A)[0*128+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_A)[0*128+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_A)[0*128+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_A)[0*128+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_A)[0*128+7];
__xlx_tmp_lv.range(575,512) = ((long long*)__xlx_apatb_param_A)[0*128+8];
__xlx_tmp_lv.range(639,576) = ((long long*)__xlx_apatb_param_A)[0*128+9];
__xlx_tmp_lv.range(703,640) = ((long long*)__xlx_apatb_param_A)[0*128+10];
__xlx_tmp_lv.range(767,704) = ((long long*)__xlx_apatb_param_A)[0*128+11];
__xlx_tmp_lv.range(831,768) = ((long long*)__xlx_apatb_param_A)[0*128+12];
__xlx_tmp_lv.range(895,832) = ((long long*)__xlx_apatb_param_A)[0*128+13];
__xlx_tmp_lv.range(959,896) = ((long long*)__xlx_apatb_param_A)[0*128+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)__xlx_apatb_param_A)[0*128+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)__xlx_apatb_param_A)[0*128+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)__xlx_apatb_param_A)[0*128+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)__xlx_apatb_param_A)[0*128+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)__xlx_apatb_param_A)[0*128+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)__xlx_apatb_param_A)[0*128+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)__xlx_apatb_param_A)[0*128+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)__xlx_apatb_param_A)[0*128+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)__xlx_apatb_param_A)[0*128+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)__xlx_apatb_param_A)[0*128+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)__xlx_apatb_param_A)[0*128+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)__xlx_apatb_param_A)[0*128+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)__xlx_apatb_param_A)[0*128+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)__xlx_apatb_param_A)[0*128+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)__xlx_apatb_param_A)[0*128+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)__xlx_apatb_param_A)[0*128+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)__xlx_apatb_param_A)[0*128+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)__xlx_apatb_param_A)[0*128+32];
__xlx_tmp_lv.range(2175,2112) = ((long long*)__xlx_apatb_param_A)[0*128+33];
__xlx_tmp_lv.range(2239,2176) = ((long long*)__xlx_apatb_param_A)[0*128+34];
__xlx_tmp_lv.range(2303,2240) = ((long long*)__xlx_apatb_param_A)[0*128+35];
__xlx_tmp_lv.range(2367,2304) = ((long long*)__xlx_apatb_param_A)[0*128+36];
__xlx_tmp_lv.range(2431,2368) = ((long long*)__xlx_apatb_param_A)[0*128+37];
__xlx_tmp_lv.range(2495,2432) = ((long long*)__xlx_apatb_param_A)[0*128+38];
__xlx_tmp_lv.range(2559,2496) = ((long long*)__xlx_apatb_param_A)[0*128+39];
__xlx_tmp_lv.range(2623,2560) = ((long long*)__xlx_apatb_param_A)[0*128+40];
__xlx_tmp_lv.range(2687,2624) = ((long long*)__xlx_apatb_param_A)[0*128+41];
__xlx_tmp_lv.range(2751,2688) = ((long long*)__xlx_apatb_param_A)[0*128+42];
__xlx_tmp_lv.range(2815,2752) = ((long long*)__xlx_apatb_param_A)[0*128+43];
__xlx_tmp_lv.range(2879,2816) = ((long long*)__xlx_apatb_param_A)[0*128+44];
__xlx_tmp_lv.range(2943,2880) = ((long long*)__xlx_apatb_param_A)[0*128+45];
__xlx_tmp_lv.range(3007,2944) = ((long long*)__xlx_apatb_param_A)[0*128+46];
__xlx_tmp_lv.range(3071,3008) = ((long long*)__xlx_apatb_param_A)[0*128+47];
__xlx_tmp_lv.range(3135,3072) = ((long long*)__xlx_apatb_param_A)[0*128+48];
__xlx_tmp_lv.range(3199,3136) = ((long long*)__xlx_apatb_param_A)[0*128+49];
__xlx_tmp_lv.range(3263,3200) = ((long long*)__xlx_apatb_param_A)[0*128+50];
__xlx_tmp_lv.range(3327,3264) = ((long long*)__xlx_apatb_param_A)[0*128+51];
__xlx_tmp_lv.range(3391,3328) = ((long long*)__xlx_apatb_param_A)[0*128+52];
__xlx_tmp_lv.range(3455,3392) = ((long long*)__xlx_apatb_param_A)[0*128+53];
__xlx_tmp_lv.range(3519,3456) = ((long long*)__xlx_apatb_param_A)[0*128+54];
__xlx_tmp_lv.range(3583,3520) = ((long long*)__xlx_apatb_param_A)[0*128+55];
__xlx_tmp_lv.range(3647,3584) = ((long long*)__xlx_apatb_param_A)[0*128+56];
__xlx_tmp_lv.range(3711,3648) = ((long long*)__xlx_apatb_param_A)[0*128+57];
__xlx_tmp_lv.range(3775,3712) = ((long long*)__xlx_apatb_param_A)[0*128+58];
__xlx_tmp_lv.range(3839,3776) = ((long long*)__xlx_apatb_param_A)[0*128+59];
__xlx_tmp_lv.range(3903,3840) = ((long long*)__xlx_apatb_param_A)[0*128+60];
__xlx_tmp_lv.range(3967,3904) = ((long long*)__xlx_apatb_param_A)[0*128+61];
__xlx_tmp_lv.range(4031,3968) = ((long long*)__xlx_apatb_param_A)[0*128+62];
__xlx_tmp_lv.range(4095,4032) = ((long long*)__xlx_apatb_param_A)[0*128+63];
__xlx_tmp_lv.range(4159,4096) = ((long long*)__xlx_apatb_param_A)[0*128+64];
__xlx_tmp_lv.range(4223,4160) = ((long long*)__xlx_apatb_param_A)[0*128+65];
__xlx_tmp_lv.range(4287,4224) = ((long long*)__xlx_apatb_param_A)[0*128+66];
__xlx_tmp_lv.range(4351,4288) = ((long long*)__xlx_apatb_param_A)[0*128+67];
__xlx_tmp_lv.range(4415,4352) = ((long long*)__xlx_apatb_param_A)[0*128+68];
__xlx_tmp_lv.range(4479,4416) = ((long long*)__xlx_apatb_param_A)[0*128+69];
__xlx_tmp_lv.range(4543,4480) = ((long long*)__xlx_apatb_param_A)[0*128+70];
__xlx_tmp_lv.range(4607,4544) = ((long long*)__xlx_apatb_param_A)[0*128+71];
__xlx_tmp_lv.range(4671,4608) = ((long long*)__xlx_apatb_param_A)[0*128+72];
__xlx_tmp_lv.range(4735,4672) = ((long long*)__xlx_apatb_param_A)[0*128+73];
__xlx_tmp_lv.range(4799,4736) = ((long long*)__xlx_apatb_param_A)[0*128+74];
__xlx_tmp_lv.range(4863,4800) = ((long long*)__xlx_apatb_param_A)[0*128+75];
__xlx_tmp_lv.range(4927,4864) = ((long long*)__xlx_apatb_param_A)[0*128+76];
__xlx_tmp_lv.range(4991,4928) = ((long long*)__xlx_apatb_param_A)[0*128+77];
__xlx_tmp_lv.range(5055,4992) = ((long long*)__xlx_apatb_param_A)[0*128+78];
__xlx_tmp_lv.range(5119,5056) = ((long long*)__xlx_apatb_param_A)[0*128+79];
__xlx_tmp_lv.range(5183,5120) = ((long long*)__xlx_apatb_param_A)[0*128+80];
__xlx_tmp_lv.range(5247,5184) = ((long long*)__xlx_apatb_param_A)[0*128+81];
__xlx_tmp_lv.range(5311,5248) = ((long long*)__xlx_apatb_param_A)[0*128+82];
__xlx_tmp_lv.range(5375,5312) = ((long long*)__xlx_apatb_param_A)[0*128+83];
__xlx_tmp_lv.range(5439,5376) = ((long long*)__xlx_apatb_param_A)[0*128+84];
__xlx_tmp_lv.range(5503,5440) = ((long long*)__xlx_apatb_param_A)[0*128+85];
__xlx_tmp_lv.range(5567,5504) = ((long long*)__xlx_apatb_param_A)[0*128+86];
__xlx_tmp_lv.range(5631,5568) = ((long long*)__xlx_apatb_param_A)[0*128+87];
__xlx_tmp_lv.range(5695,5632) = ((long long*)__xlx_apatb_param_A)[0*128+88];
__xlx_tmp_lv.range(5759,5696) = ((long long*)__xlx_apatb_param_A)[0*128+89];
__xlx_tmp_lv.range(5823,5760) = ((long long*)__xlx_apatb_param_A)[0*128+90];
__xlx_tmp_lv.range(5887,5824) = ((long long*)__xlx_apatb_param_A)[0*128+91];
__xlx_tmp_lv.range(5951,5888) = ((long long*)__xlx_apatb_param_A)[0*128+92];
__xlx_tmp_lv.range(6015,5952) = ((long long*)__xlx_apatb_param_A)[0*128+93];
__xlx_tmp_lv.range(6079,6016) = ((long long*)__xlx_apatb_param_A)[0*128+94];
__xlx_tmp_lv.range(6143,6080) = ((long long*)__xlx_apatb_param_A)[0*128+95];
__xlx_tmp_lv.range(6207,6144) = ((long long*)__xlx_apatb_param_A)[0*128+96];
__xlx_tmp_lv.range(6271,6208) = ((long long*)__xlx_apatb_param_A)[0*128+97];
__xlx_tmp_lv.range(6335,6272) = ((long long*)__xlx_apatb_param_A)[0*128+98];
__xlx_tmp_lv.range(6399,6336) = ((long long*)__xlx_apatb_param_A)[0*128+99];
__xlx_tmp_lv.range(6463,6400) = ((long long*)__xlx_apatb_param_A)[0*128+100];
__xlx_tmp_lv.range(6527,6464) = ((long long*)__xlx_apatb_param_A)[0*128+101];
__xlx_tmp_lv.range(6591,6528) = ((long long*)__xlx_apatb_param_A)[0*128+102];
__xlx_tmp_lv.range(6655,6592) = ((long long*)__xlx_apatb_param_A)[0*128+103];
__xlx_tmp_lv.range(6719,6656) = ((long long*)__xlx_apatb_param_A)[0*128+104];
__xlx_tmp_lv.range(6783,6720) = ((long long*)__xlx_apatb_param_A)[0*128+105];
__xlx_tmp_lv.range(6847,6784) = ((long long*)__xlx_apatb_param_A)[0*128+106];
__xlx_tmp_lv.range(6911,6848) = ((long long*)__xlx_apatb_param_A)[0*128+107];
__xlx_tmp_lv.range(6975,6912) = ((long long*)__xlx_apatb_param_A)[0*128+108];
__xlx_tmp_lv.range(7039,6976) = ((long long*)__xlx_apatb_param_A)[0*128+109];
__xlx_tmp_lv.range(7103,7040) = ((long long*)__xlx_apatb_param_A)[0*128+110];
__xlx_tmp_lv.range(7167,7104) = ((long long*)__xlx_apatb_param_A)[0*128+111];
__xlx_tmp_lv.range(7231,7168) = ((long long*)__xlx_apatb_param_A)[0*128+112];
__xlx_tmp_lv.range(7295,7232) = ((long long*)__xlx_apatb_param_A)[0*128+113];
__xlx_tmp_lv.range(7359,7296) = ((long long*)__xlx_apatb_param_A)[0*128+114];
__xlx_tmp_lv.range(7423,7360) = ((long long*)__xlx_apatb_param_A)[0*128+115];
__xlx_tmp_lv.range(7487,7424) = ((long long*)__xlx_apatb_param_A)[0*128+116];
__xlx_tmp_lv.range(7551,7488) = ((long long*)__xlx_apatb_param_A)[0*128+117];
__xlx_tmp_lv.range(7615,7552) = ((long long*)__xlx_apatb_param_A)[0*128+118];
__xlx_tmp_lv.range(7679,7616) = ((long long*)__xlx_apatb_param_A)[0*128+119];
__xlx_tmp_lv.range(7743,7680) = ((long long*)__xlx_apatb_param_A)[0*128+120];
__xlx_tmp_lv.range(7807,7744) = ((long long*)__xlx_apatb_param_A)[0*128+121];
__xlx_tmp_lv.range(7871,7808) = ((long long*)__xlx_apatb_param_A)[0*128+122];
__xlx_tmp_lv.range(7935,7872) = ((long long*)__xlx_apatb_param_A)[0*128+123];
__xlx_tmp_lv.range(7999,7936) = ((long long*)__xlx_apatb_param_A)[0*128+124];
__xlx_tmp_lv.range(8063,8000) = ((long long*)__xlx_apatb_param_A)[0*128+125];
__xlx_tmp_lv.range(8127,8064) = ((long long*)__xlx_apatb_param_A)[0*128+126];
__xlx_tmp_lv.range(8191,8128) = ((long long*)__xlx_apatb_param_A)[0*128+127];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B = 0;
// print B Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B = 0*1;
  if (__xlx_apatb_param_B) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_B)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.B_depth);
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
