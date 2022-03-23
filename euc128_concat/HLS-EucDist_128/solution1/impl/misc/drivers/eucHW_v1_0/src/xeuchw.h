// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XEUCHW_H
#define XEUCHW_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xeuchw_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XEuchw_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XEuchw;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEuchw_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEuchw_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEuchw_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEuchw_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XEuchw_Initialize(XEuchw *InstancePtr, u16 DeviceId);
XEuchw_Config* XEuchw_LookupConfig(u16 DeviceId);
int XEuchw_CfgInitialize(XEuchw *InstancePtr, XEuchw_Config *ConfigPtr);
#else
int XEuchw_Initialize(XEuchw *InstancePtr, const char* InstanceName);
int XEuchw_Release(XEuchw *InstancePtr);
#endif

void XEuchw_Start(XEuchw *InstancePtr);
u32 XEuchw_IsDone(XEuchw *InstancePtr);
u32 XEuchw_IsIdle(XEuchw *InstancePtr);
u32 XEuchw_IsReady(XEuchw *InstancePtr);
void XEuchw_EnableAutoRestart(XEuchw *InstancePtr);
void XEuchw_DisableAutoRestart(XEuchw *InstancePtr);

u32 XEuchw_Get_y_add(XEuchw *InstancePtr);
u32 XEuchw_Get_y_add_vld(XEuchw *InstancePtr);
u32 XEuchw_Get_y_sqrt(XEuchw *InstancePtr);
u32 XEuchw_Get_y_sqrt_vld(XEuchw *InstancePtr);
void XEuchw_Set_x_0(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_0(XEuchw *InstancePtr);
void XEuchw_Set_x_1(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_1(XEuchw *InstancePtr);
void XEuchw_Set_x_2(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_2(XEuchw *InstancePtr);
void XEuchw_Set_x_3(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_3(XEuchw *InstancePtr);
void XEuchw_Set_x_4(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_4(XEuchw *InstancePtr);
void XEuchw_Set_x_5(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_5(XEuchw *InstancePtr);
void XEuchw_Set_x_6(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_6(XEuchw *InstancePtr);
void XEuchw_Set_x_7(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_7(XEuchw *InstancePtr);
void XEuchw_Set_x_8(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_8(XEuchw *InstancePtr);
void XEuchw_Set_x_9(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_9(XEuchw *InstancePtr);
void XEuchw_Set_x_10(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_10(XEuchw *InstancePtr);
void XEuchw_Set_x_11(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_11(XEuchw *InstancePtr);
void XEuchw_Set_x_12(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_12(XEuchw *InstancePtr);
void XEuchw_Set_x_13(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_13(XEuchw *InstancePtr);
void XEuchw_Set_x_14(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_14(XEuchw *InstancePtr);
void XEuchw_Set_x_15(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_15(XEuchw *InstancePtr);
void XEuchw_Set_x_16(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_16(XEuchw *InstancePtr);
void XEuchw_Set_x_17(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_17(XEuchw *InstancePtr);
void XEuchw_Set_x_18(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_18(XEuchw *InstancePtr);
void XEuchw_Set_x_19(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_19(XEuchw *InstancePtr);
void XEuchw_Set_x_20(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_20(XEuchw *InstancePtr);
void XEuchw_Set_x_21(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_21(XEuchw *InstancePtr);
void XEuchw_Set_x_22(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_22(XEuchw *InstancePtr);
void XEuchw_Set_x_23(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_23(XEuchw *InstancePtr);
void XEuchw_Set_x_24(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_24(XEuchw *InstancePtr);
void XEuchw_Set_x_25(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_25(XEuchw *InstancePtr);
void XEuchw_Set_x_26(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_26(XEuchw *InstancePtr);
void XEuchw_Set_x_27(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_27(XEuchw *InstancePtr);
void XEuchw_Set_x_28(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_28(XEuchw *InstancePtr);
void XEuchw_Set_x_29(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_29(XEuchw *InstancePtr);
void XEuchw_Set_x_30(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_30(XEuchw *InstancePtr);
void XEuchw_Set_x_31(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_31(XEuchw *InstancePtr);
void XEuchw_Set_x_32(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_32(XEuchw *InstancePtr);
void XEuchw_Set_x_33(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_33(XEuchw *InstancePtr);
void XEuchw_Set_x_34(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_34(XEuchw *InstancePtr);
void XEuchw_Set_x_35(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_35(XEuchw *InstancePtr);
void XEuchw_Set_x_36(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_36(XEuchw *InstancePtr);
void XEuchw_Set_x_37(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_37(XEuchw *InstancePtr);
void XEuchw_Set_x_38(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_38(XEuchw *InstancePtr);
void XEuchw_Set_x_39(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_39(XEuchw *InstancePtr);
void XEuchw_Set_x_40(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_40(XEuchw *InstancePtr);
void XEuchw_Set_x_41(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_41(XEuchw *InstancePtr);
void XEuchw_Set_x_42(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_42(XEuchw *InstancePtr);
void XEuchw_Set_x_43(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_43(XEuchw *InstancePtr);
void XEuchw_Set_x_44(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_44(XEuchw *InstancePtr);
void XEuchw_Set_x_45(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_45(XEuchw *InstancePtr);
void XEuchw_Set_x_46(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_46(XEuchw *InstancePtr);
void XEuchw_Set_x_47(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_47(XEuchw *InstancePtr);
void XEuchw_Set_x_48(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_48(XEuchw *InstancePtr);
void XEuchw_Set_x_49(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_49(XEuchw *InstancePtr);
void XEuchw_Set_x_50(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_50(XEuchw *InstancePtr);
void XEuchw_Set_x_51(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_51(XEuchw *InstancePtr);
void XEuchw_Set_x_52(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_52(XEuchw *InstancePtr);
void XEuchw_Set_x_53(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_53(XEuchw *InstancePtr);
void XEuchw_Set_x_54(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_54(XEuchw *InstancePtr);
void XEuchw_Set_x_55(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_55(XEuchw *InstancePtr);
void XEuchw_Set_x_56(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_56(XEuchw *InstancePtr);
void XEuchw_Set_x_57(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_57(XEuchw *InstancePtr);
void XEuchw_Set_x_58(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_58(XEuchw *InstancePtr);
void XEuchw_Set_x_59(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_59(XEuchw *InstancePtr);
void XEuchw_Set_x_60(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_60(XEuchw *InstancePtr);
void XEuchw_Set_x_61(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_61(XEuchw *InstancePtr);
void XEuchw_Set_x_62(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_62(XEuchw *InstancePtr);
void XEuchw_Set_x_63(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_63(XEuchw *InstancePtr);
void XEuchw_Set_x_64(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_64(XEuchw *InstancePtr);
void XEuchw_Set_x_65(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_65(XEuchw *InstancePtr);
void XEuchw_Set_x_66(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_66(XEuchw *InstancePtr);
void XEuchw_Set_x_67(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_67(XEuchw *InstancePtr);
void XEuchw_Set_x_68(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_68(XEuchw *InstancePtr);
void XEuchw_Set_x_69(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_69(XEuchw *InstancePtr);
void XEuchw_Set_x_70(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_70(XEuchw *InstancePtr);
void XEuchw_Set_x_71(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_71(XEuchw *InstancePtr);
void XEuchw_Set_x_72(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_72(XEuchw *InstancePtr);
void XEuchw_Set_x_73(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_73(XEuchw *InstancePtr);
void XEuchw_Set_x_74(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_74(XEuchw *InstancePtr);
void XEuchw_Set_x_75(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_75(XEuchw *InstancePtr);
void XEuchw_Set_x_76(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_76(XEuchw *InstancePtr);
void XEuchw_Set_x_77(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_77(XEuchw *InstancePtr);
void XEuchw_Set_x_78(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_78(XEuchw *InstancePtr);
void XEuchw_Set_x_79(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_79(XEuchw *InstancePtr);
void XEuchw_Set_x_80(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_80(XEuchw *InstancePtr);
void XEuchw_Set_x_81(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_81(XEuchw *InstancePtr);
void XEuchw_Set_x_82(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_82(XEuchw *InstancePtr);
void XEuchw_Set_x_83(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_83(XEuchw *InstancePtr);
void XEuchw_Set_x_84(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_84(XEuchw *InstancePtr);
void XEuchw_Set_x_85(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_85(XEuchw *InstancePtr);
void XEuchw_Set_x_86(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_86(XEuchw *InstancePtr);
void XEuchw_Set_x_87(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_87(XEuchw *InstancePtr);
void XEuchw_Set_x_88(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_88(XEuchw *InstancePtr);
void XEuchw_Set_x_89(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_89(XEuchw *InstancePtr);
void XEuchw_Set_x_90(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_90(XEuchw *InstancePtr);
void XEuchw_Set_x_91(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_91(XEuchw *InstancePtr);
void XEuchw_Set_x_92(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_92(XEuchw *InstancePtr);
void XEuchw_Set_x_93(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_93(XEuchw *InstancePtr);
void XEuchw_Set_x_94(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_94(XEuchw *InstancePtr);
void XEuchw_Set_x_95(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_95(XEuchw *InstancePtr);
void XEuchw_Set_x_96(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_96(XEuchw *InstancePtr);
void XEuchw_Set_x_97(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_97(XEuchw *InstancePtr);
void XEuchw_Set_x_98(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_98(XEuchw *InstancePtr);
void XEuchw_Set_x_99(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_99(XEuchw *InstancePtr);
void XEuchw_Set_x_100(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_100(XEuchw *InstancePtr);
void XEuchw_Set_x_101(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_101(XEuchw *InstancePtr);
void XEuchw_Set_x_102(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_102(XEuchw *InstancePtr);
void XEuchw_Set_x_103(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_103(XEuchw *InstancePtr);
void XEuchw_Set_x_104(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_104(XEuchw *InstancePtr);
void XEuchw_Set_x_105(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_105(XEuchw *InstancePtr);
void XEuchw_Set_x_106(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_106(XEuchw *InstancePtr);
void XEuchw_Set_x_107(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_107(XEuchw *InstancePtr);
void XEuchw_Set_x_108(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_108(XEuchw *InstancePtr);
void XEuchw_Set_x_109(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_109(XEuchw *InstancePtr);
void XEuchw_Set_x_110(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_110(XEuchw *InstancePtr);
void XEuchw_Set_x_111(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_111(XEuchw *InstancePtr);
void XEuchw_Set_x_112(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_112(XEuchw *InstancePtr);
void XEuchw_Set_x_113(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_113(XEuchw *InstancePtr);
void XEuchw_Set_x_114(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_114(XEuchw *InstancePtr);
void XEuchw_Set_x_115(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_115(XEuchw *InstancePtr);
void XEuchw_Set_x_116(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_116(XEuchw *InstancePtr);
void XEuchw_Set_x_117(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_117(XEuchw *InstancePtr);
void XEuchw_Set_x_118(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_118(XEuchw *InstancePtr);
void XEuchw_Set_x_119(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_119(XEuchw *InstancePtr);
void XEuchw_Set_x_120(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_120(XEuchw *InstancePtr);
void XEuchw_Set_x_121(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_121(XEuchw *InstancePtr);
void XEuchw_Set_x_122(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_122(XEuchw *InstancePtr);
void XEuchw_Set_x_123(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_123(XEuchw *InstancePtr);
void XEuchw_Set_x_124(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_124(XEuchw *InstancePtr);
void XEuchw_Set_x_125(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_125(XEuchw *InstancePtr);
void XEuchw_Set_x_126(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_126(XEuchw *InstancePtr);
void XEuchw_Set_x_127(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_127(XEuchw *InstancePtr);
void XEuchw_Set_x_128(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_128(XEuchw *InstancePtr);
void XEuchw_Set_x_129(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_129(XEuchw *InstancePtr);
void XEuchw_Set_x_130(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_130(XEuchw *InstancePtr);
void XEuchw_Set_x_131(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_131(XEuchw *InstancePtr);
void XEuchw_Set_x_132(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_132(XEuchw *InstancePtr);
void XEuchw_Set_x_133(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_133(XEuchw *InstancePtr);
void XEuchw_Set_x_134(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_134(XEuchw *InstancePtr);
void XEuchw_Set_x_135(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_135(XEuchw *InstancePtr);
void XEuchw_Set_x_136(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_136(XEuchw *InstancePtr);
void XEuchw_Set_x_137(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_137(XEuchw *InstancePtr);
void XEuchw_Set_x_138(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_138(XEuchw *InstancePtr);
void XEuchw_Set_x_139(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_139(XEuchw *InstancePtr);
void XEuchw_Set_x_140(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_140(XEuchw *InstancePtr);
void XEuchw_Set_x_141(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_141(XEuchw *InstancePtr);
void XEuchw_Set_x_142(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_142(XEuchw *InstancePtr);
void XEuchw_Set_x_143(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_143(XEuchw *InstancePtr);
void XEuchw_Set_x_144(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_144(XEuchw *InstancePtr);
void XEuchw_Set_x_145(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_145(XEuchw *InstancePtr);
void XEuchw_Set_x_146(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_146(XEuchw *InstancePtr);
void XEuchw_Set_x_147(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_147(XEuchw *InstancePtr);
void XEuchw_Set_x_148(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_148(XEuchw *InstancePtr);
void XEuchw_Set_x_149(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_149(XEuchw *InstancePtr);
void XEuchw_Set_x_150(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_150(XEuchw *InstancePtr);
void XEuchw_Set_x_151(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_151(XEuchw *InstancePtr);
void XEuchw_Set_x_152(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_152(XEuchw *InstancePtr);
void XEuchw_Set_x_153(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_153(XEuchw *InstancePtr);
void XEuchw_Set_x_154(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_154(XEuchw *InstancePtr);
void XEuchw_Set_x_155(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_155(XEuchw *InstancePtr);
void XEuchw_Set_x_156(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_156(XEuchw *InstancePtr);
void XEuchw_Set_x_157(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_157(XEuchw *InstancePtr);
void XEuchw_Set_x_158(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_158(XEuchw *InstancePtr);
void XEuchw_Set_x_159(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_159(XEuchw *InstancePtr);
void XEuchw_Set_x_160(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_160(XEuchw *InstancePtr);
void XEuchw_Set_x_161(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_161(XEuchw *InstancePtr);
void XEuchw_Set_x_162(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_162(XEuchw *InstancePtr);
void XEuchw_Set_x_163(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_163(XEuchw *InstancePtr);
void XEuchw_Set_x_164(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_164(XEuchw *InstancePtr);
void XEuchw_Set_x_165(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_165(XEuchw *InstancePtr);
void XEuchw_Set_x_166(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_166(XEuchw *InstancePtr);
void XEuchw_Set_x_167(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_167(XEuchw *InstancePtr);
void XEuchw_Set_x_168(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_168(XEuchw *InstancePtr);
void XEuchw_Set_x_169(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_169(XEuchw *InstancePtr);
void XEuchw_Set_x_170(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_170(XEuchw *InstancePtr);
void XEuchw_Set_x_171(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_171(XEuchw *InstancePtr);
void XEuchw_Set_x_172(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_172(XEuchw *InstancePtr);
void XEuchw_Set_x_173(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_173(XEuchw *InstancePtr);
void XEuchw_Set_x_174(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_174(XEuchw *InstancePtr);
void XEuchw_Set_x_175(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_175(XEuchw *InstancePtr);
void XEuchw_Set_x_176(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_176(XEuchw *InstancePtr);
void XEuchw_Set_x_177(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_177(XEuchw *InstancePtr);
void XEuchw_Set_x_178(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_178(XEuchw *InstancePtr);
void XEuchw_Set_x_179(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_179(XEuchw *InstancePtr);
void XEuchw_Set_x_180(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_180(XEuchw *InstancePtr);
void XEuchw_Set_x_181(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_181(XEuchw *InstancePtr);
void XEuchw_Set_x_182(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_182(XEuchw *InstancePtr);
void XEuchw_Set_x_183(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_183(XEuchw *InstancePtr);
void XEuchw_Set_x_184(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_184(XEuchw *InstancePtr);
void XEuchw_Set_x_185(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_185(XEuchw *InstancePtr);
void XEuchw_Set_x_186(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_186(XEuchw *InstancePtr);
void XEuchw_Set_x_187(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_187(XEuchw *InstancePtr);
void XEuchw_Set_x_188(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_188(XEuchw *InstancePtr);
void XEuchw_Set_x_189(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_189(XEuchw *InstancePtr);
void XEuchw_Set_x_190(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_190(XEuchw *InstancePtr);
void XEuchw_Set_x_191(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_191(XEuchw *InstancePtr);
void XEuchw_Set_x_192(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_192(XEuchw *InstancePtr);
void XEuchw_Set_x_193(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_193(XEuchw *InstancePtr);
void XEuchw_Set_x_194(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_194(XEuchw *InstancePtr);
void XEuchw_Set_x_195(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_195(XEuchw *InstancePtr);
void XEuchw_Set_x_196(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_196(XEuchw *InstancePtr);
void XEuchw_Set_x_197(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_197(XEuchw *InstancePtr);
void XEuchw_Set_x_198(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_198(XEuchw *InstancePtr);
void XEuchw_Set_x_199(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_199(XEuchw *InstancePtr);
void XEuchw_Set_x_200(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_200(XEuchw *InstancePtr);
void XEuchw_Set_x_201(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_201(XEuchw *InstancePtr);
void XEuchw_Set_x_202(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_202(XEuchw *InstancePtr);
void XEuchw_Set_x_203(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_203(XEuchw *InstancePtr);
void XEuchw_Set_x_204(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_204(XEuchw *InstancePtr);
void XEuchw_Set_x_205(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_205(XEuchw *InstancePtr);
void XEuchw_Set_x_206(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_206(XEuchw *InstancePtr);
void XEuchw_Set_x_207(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_207(XEuchw *InstancePtr);
void XEuchw_Set_x_208(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_208(XEuchw *InstancePtr);
void XEuchw_Set_x_209(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_209(XEuchw *InstancePtr);
void XEuchw_Set_x_210(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_210(XEuchw *InstancePtr);
void XEuchw_Set_x_211(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_211(XEuchw *InstancePtr);
void XEuchw_Set_x_212(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_212(XEuchw *InstancePtr);
void XEuchw_Set_x_213(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_213(XEuchw *InstancePtr);
void XEuchw_Set_x_214(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_214(XEuchw *InstancePtr);
void XEuchw_Set_x_215(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_215(XEuchw *InstancePtr);
void XEuchw_Set_x_216(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_216(XEuchw *InstancePtr);
void XEuchw_Set_x_217(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_217(XEuchw *InstancePtr);
void XEuchw_Set_x_218(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_218(XEuchw *InstancePtr);
void XEuchw_Set_x_219(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_219(XEuchw *InstancePtr);
void XEuchw_Set_x_220(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_220(XEuchw *InstancePtr);
void XEuchw_Set_x_221(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_221(XEuchw *InstancePtr);
void XEuchw_Set_x_222(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_222(XEuchw *InstancePtr);
void XEuchw_Set_x_223(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_223(XEuchw *InstancePtr);
void XEuchw_Set_x_224(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_224(XEuchw *InstancePtr);
void XEuchw_Set_x_225(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_225(XEuchw *InstancePtr);
void XEuchw_Set_x_226(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_226(XEuchw *InstancePtr);
void XEuchw_Set_x_227(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_227(XEuchw *InstancePtr);
void XEuchw_Set_x_228(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_228(XEuchw *InstancePtr);
void XEuchw_Set_x_229(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_229(XEuchw *InstancePtr);
void XEuchw_Set_x_230(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_230(XEuchw *InstancePtr);
void XEuchw_Set_x_231(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_231(XEuchw *InstancePtr);
void XEuchw_Set_x_232(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_232(XEuchw *InstancePtr);
void XEuchw_Set_x_233(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_233(XEuchw *InstancePtr);
void XEuchw_Set_x_234(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_234(XEuchw *InstancePtr);
void XEuchw_Set_x_235(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_235(XEuchw *InstancePtr);
void XEuchw_Set_x_236(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_236(XEuchw *InstancePtr);
void XEuchw_Set_x_237(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_237(XEuchw *InstancePtr);
void XEuchw_Set_x_238(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_238(XEuchw *InstancePtr);
void XEuchw_Set_x_239(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_239(XEuchw *InstancePtr);
void XEuchw_Set_x_240(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_240(XEuchw *InstancePtr);
void XEuchw_Set_x_241(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_241(XEuchw *InstancePtr);
void XEuchw_Set_x_242(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_242(XEuchw *InstancePtr);
void XEuchw_Set_x_243(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_243(XEuchw *InstancePtr);
void XEuchw_Set_x_244(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_244(XEuchw *InstancePtr);
void XEuchw_Set_x_245(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_245(XEuchw *InstancePtr);
void XEuchw_Set_x_246(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_246(XEuchw *InstancePtr);
void XEuchw_Set_x_247(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_247(XEuchw *InstancePtr);
void XEuchw_Set_x_248(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_248(XEuchw *InstancePtr);
void XEuchw_Set_x_249(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_249(XEuchw *InstancePtr);
void XEuchw_Set_x_250(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_250(XEuchw *InstancePtr);
void XEuchw_Set_x_251(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_251(XEuchw *InstancePtr);
void XEuchw_Set_x_252(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_252(XEuchw *InstancePtr);
void XEuchw_Set_x_253(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_253(XEuchw *InstancePtr);
void XEuchw_Set_x_254(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_254(XEuchw *InstancePtr);
void XEuchw_Set_x_255(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_x_255(XEuchw *InstancePtr);

void XEuchw_InterruptGlobalEnable(XEuchw *InstancePtr);
void XEuchw_InterruptGlobalDisable(XEuchw *InstancePtr);
void XEuchw_InterruptEnable(XEuchw *InstancePtr, u32 Mask);
void XEuchw_InterruptDisable(XEuchw *InstancePtr, u32 Mask);
void XEuchw_InterruptClear(XEuchw *InstancePtr, u32 Mask);
u32 XEuchw_InterruptGetEnabled(XEuchw *InstancePtr);
u32 XEuchw_InterruptGetStatus(XEuchw *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
