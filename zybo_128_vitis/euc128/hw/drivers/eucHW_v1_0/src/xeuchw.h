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

void XEuchw_Set_A_0(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_0(XEuchw *InstancePtr);
void XEuchw_Set_A_1(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_1(XEuchw *InstancePtr);
void XEuchw_Set_A_2(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_2(XEuchw *InstancePtr);
void XEuchw_Set_A_3(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_3(XEuchw *InstancePtr);
void XEuchw_Set_A_4(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_4(XEuchw *InstancePtr);
void XEuchw_Set_A_5(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_5(XEuchw *InstancePtr);
void XEuchw_Set_A_6(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_6(XEuchw *InstancePtr);
void XEuchw_Set_A_7(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_7(XEuchw *InstancePtr);
void XEuchw_Set_A_8(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_8(XEuchw *InstancePtr);
void XEuchw_Set_A_9(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_9(XEuchw *InstancePtr);
void XEuchw_Set_A_10(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_10(XEuchw *InstancePtr);
void XEuchw_Set_A_11(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_11(XEuchw *InstancePtr);
void XEuchw_Set_A_12(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_12(XEuchw *InstancePtr);
void XEuchw_Set_A_13(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_13(XEuchw *InstancePtr);
void XEuchw_Set_A_14(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_14(XEuchw *InstancePtr);
void XEuchw_Set_A_15(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_15(XEuchw *InstancePtr);
void XEuchw_Set_A_16(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_16(XEuchw *InstancePtr);
void XEuchw_Set_A_17(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_17(XEuchw *InstancePtr);
void XEuchw_Set_A_18(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_18(XEuchw *InstancePtr);
void XEuchw_Set_A_19(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_19(XEuchw *InstancePtr);
void XEuchw_Set_A_20(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_20(XEuchw *InstancePtr);
void XEuchw_Set_A_21(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_21(XEuchw *InstancePtr);
void XEuchw_Set_A_22(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_22(XEuchw *InstancePtr);
void XEuchw_Set_A_23(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_23(XEuchw *InstancePtr);
void XEuchw_Set_A_24(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_24(XEuchw *InstancePtr);
void XEuchw_Set_A_25(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_25(XEuchw *InstancePtr);
void XEuchw_Set_A_26(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_26(XEuchw *InstancePtr);
void XEuchw_Set_A_27(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_27(XEuchw *InstancePtr);
void XEuchw_Set_A_28(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_28(XEuchw *InstancePtr);
void XEuchw_Set_A_29(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_29(XEuchw *InstancePtr);
void XEuchw_Set_A_30(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_30(XEuchw *InstancePtr);
void XEuchw_Set_A_31(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_31(XEuchw *InstancePtr);
void XEuchw_Set_A_32(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_32(XEuchw *InstancePtr);
void XEuchw_Set_A_33(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_33(XEuchw *InstancePtr);
void XEuchw_Set_A_34(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_34(XEuchw *InstancePtr);
void XEuchw_Set_A_35(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_35(XEuchw *InstancePtr);
void XEuchw_Set_A_36(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_36(XEuchw *InstancePtr);
void XEuchw_Set_A_37(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_37(XEuchw *InstancePtr);
void XEuchw_Set_A_38(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_38(XEuchw *InstancePtr);
void XEuchw_Set_A_39(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_39(XEuchw *InstancePtr);
void XEuchw_Set_A_40(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_40(XEuchw *InstancePtr);
void XEuchw_Set_A_41(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_41(XEuchw *InstancePtr);
void XEuchw_Set_A_42(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_42(XEuchw *InstancePtr);
void XEuchw_Set_A_43(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_43(XEuchw *InstancePtr);
void XEuchw_Set_A_44(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_44(XEuchw *InstancePtr);
void XEuchw_Set_A_45(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_45(XEuchw *InstancePtr);
void XEuchw_Set_A_46(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_46(XEuchw *InstancePtr);
void XEuchw_Set_A_47(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_47(XEuchw *InstancePtr);
void XEuchw_Set_A_48(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_48(XEuchw *InstancePtr);
void XEuchw_Set_A_49(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_49(XEuchw *InstancePtr);
void XEuchw_Set_A_50(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_50(XEuchw *InstancePtr);
void XEuchw_Set_A_51(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_51(XEuchw *InstancePtr);
void XEuchw_Set_A_52(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_52(XEuchw *InstancePtr);
void XEuchw_Set_A_53(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_53(XEuchw *InstancePtr);
void XEuchw_Set_A_54(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_54(XEuchw *InstancePtr);
void XEuchw_Set_A_55(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_55(XEuchw *InstancePtr);
void XEuchw_Set_A_56(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_56(XEuchw *InstancePtr);
void XEuchw_Set_A_57(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_57(XEuchw *InstancePtr);
void XEuchw_Set_A_58(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_58(XEuchw *InstancePtr);
void XEuchw_Set_A_59(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_59(XEuchw *InstancePtr);
void XEuchw_Set_A_60(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_60(XEuchw *InstancePtr);
void XEuchw_Set_A_61(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_61(XEuchw *InstancePtr);
void XEuchw_Set_A_62(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_62(XEuchw *InstancePtr);
void XEuchw_Set_A_63(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_63(XEuchw *InstancePtr);
void XEuchw_Set_A_64(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_64(XEuchw *InstancePtr);
void XEuchw_Set_A_65(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_65(XEuchw *InstancePtr);
void XEuchw_Set_A_66(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_66(XEuchw *InstancePtr);
void XEuchw_Set_A_67(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_67(XEuchw *InstancePtr);
void XEuchw_Set_A_68(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_68(XEuchw *InstancePtr);
void XEuchw_Set_A_69(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_69(XEuchw *InstancePtr);
void XEuchw_Set_A_70(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_70(XEuchw *InstancePtr);
void XEuchw_Set_A_71(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_71(XEuchw *InstancePtr);
void XEuchw_Set_A_72(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_72(XEuchw *InstancePtr);
void XEuchw_Set_A_73(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_73(XEuchw *InstancePtr);
void XEuchw_Set_A_74(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_74(XEuchw *InstancePtr);
void XEuchw_Set_A_75(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_75(XEuchw *InstancePtr);
void XEuchw_Set_A_76(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_76(XEuchw *InstancePtr);
void XEuchw_Set_A_77(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_77(XEuchw *InstancePtr);
void XEuchw_Set_A_78(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_78(XEuchw *InstancePtr);
void XEuchw_Set_A_79(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_79(XEuchw *InstancePtr);
void XEuchw_Set_A_80(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_80(XEuchw *InstancePtr);
void XEuchw_Set_A_81(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_81(XEuchw *InstancePtr);
void XEuchw_Set_A_82(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_82(XEuchw *InstancePtr);
void XEuchw_Set_A_83(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_83(XEuchw *InstancePtr);
void XEuchw_Set_A_84(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_84(XEuchw *InstancePtr);
void XEuchw_Set_A_85(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_85(XEuchw *InstancePtr);
void XEuchw_Set_A_86(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_86(XEuchw *InstancePtr);
void XEuchw_Set_A_87(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_87(XEuchw *InstancePtr);
void XEuchw_Set_A_88(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_88(XEuchw *InstancePtr);
void XEuchw_Set_A_89(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_89(XEuchw *InstancePtr);
void XEuchw_Set_A_90(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_90(XEuchw *InstancePtr);
void XEuchw_Set_A_91(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_91(XEuchw *InstancePtr);
void XEuchw_Set_A_92(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_92(XEuchw *InstancePtr);
void XEuchw_Set_A_93(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_93(XEuchw *InstancePtr);
void XEuchw_Set_A_94(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_94(XEuchw *InstancePtr);
void XEuchw_Set_A_95(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_95(XEuchw *InstancePtr);
void XEuchw_Set_A_96(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_96(XEuchw *InstancePtr);
void XEuchw_Set_A_97(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_97(XEuchw *InstancePtr);
void XEuchw_Set_A_98(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_98(XEuchw *InstancePtr);
void XEuchw_Set_A_99(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_99(XEuchw *InstancePtr);
void XEuchw_Set_A_100(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_100(XEuchw *InstancePtr);
void XEuchw_Set_A_101(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_101(XEuchw *InstancePtr);
void XEuchw_Set_A_102(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_102(XEuchw *InstancePtr);
void XEuchw_Set_A_103(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_103(XEuchw *InstancePtr);
void XEuchw_Set_A_104(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_104(XEuchw *InstancePtr);
void XEuchw_Set_A_105(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_105(XEuchw *InstancePtr);
void XEuchw_Set_A_106(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_106(XEuchw *InstancePtr);
void XEuchw_Set_A_107(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_107(XEuchw *InstancePtr);
void XEuchw_Set_A_108(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_108(XEuchw *InstancePtr);
void XEuchw_Set_A_109(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_109(XEuchw *InstancePtr);
void XEuchw_Set_A_110(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_110(XEuchw *InstancePtr);
void XEuchw_Set_A_111(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_111(XEuchw *InstancePtr);
void XEuchw_Set_A_112(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_112(XEuchw *InstancePtr);
void XEuchw_Set_A_113(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_113(XEuchw *InstancePtr);
void XEuchw_Set_A_114(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_114(XEuchw *InstancePtr);
void XEuchw_Set_A_115(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_115(XEuchw *InstancePtr);
void XEuchw_Set_A_116(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_116(XEuchw *InstancePtr);
void XEuchw_Set_A_117(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_117(XEuchw *InstancePtr);
void XEuchw_Set_A_118(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_118(XEuchw *InstancePtr);
void XEuchw_Set_A_119(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_119(XEuchw *InstancePtr);
void XEuchw_Set_A_120(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_120(XEuchw *InstancePtr);
void XEuchw_Set_A_121(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_121(XEuchw *InstancePtr);
void XEuchw_Set_A_122(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_122(XEuchw *InstancePtr);
void XEuchw_Set_A_123(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_123(XEuchw *InstancePtr);
void XEuchw_Set_A_124(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_124(XEuchw *InstancePtr);
void XEuchw_Set_A_125(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_125(XEuchw *InstancePtr);
void XEuchw_Set_A_126(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_126(XEuchw *InstancePtr);
void XEuchw_Set_A_127(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_A_127(XEuchw *InstancePtr);
void XEuchw_Set_B_0(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_0(XEuchw *InstancePtr);
void XEuchw_Set_B_1(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_1(XEuchw *InstancePtr);
void XEuchw_Set_B_2(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_2(XEuchw *InstancePtr);
void XEuchw_Set_B_3(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_3(XEuchw *InstancePtr);
void XEuchw_Set_B_4(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_4(XEuchw *InstancePtr);
void XEuchw_Set_B_5(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_5(XEuchw *InstancePtr);
void XEuchw_Set_B_6(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_6(XEuchw *InstancePtr);
void XEuchw_Set_B_7(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_7(XEuchw *InstancePtr);
void XEuchw_Set_B_8(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_8(XEuchw *InstancePtr);
void XEuchw_Set_B_9(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_9(XEuchw *InstancePtr);
void XEuchw_Set_B_10(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_10(XEuchw *InstancePtr);
void XEuchw_Set_B_11(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_11(XEuchw *InstancePtr);
void XEuchw_Set_B_12(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_12(XEuchw *InstancePtr);
void XEuchw_Set_B_13(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_13(XEuchw *InstancePtr);
void XEuchw_Set_B_14(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_14(XEuchw *InstancePtr);
void XEuchw_Set_B_15(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_15(XEuchw *InstancePtr);
void XEuchw_Set_B_16(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_16(XEuchw *InstancePtr);
void XEuchw_Set_B_17(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_17(XEuchw *InstancePtr);
void XEuchw_Set_B_18(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_18(XEuchw *InstancePtr);
void XEuchw_Set_B_19(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_19(XEuchw *InstancePtr);
void XEuchw_Set_B_20(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_20(XEuchw *InstancePtr);
void XEuchw_Set_B_21(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_21(XEuchw *InstancePtr);
void XEuchw_Set_B_22(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_22(XEuchw *InstancePtr);
void XEuchw_Set_B_23(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_23(XEuchw *InstancePtr);
void XEuchw_Set_B_24(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_24(XEuchw *InstancePtr);
void XEuchw_Set_B_25(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_25(XEuchw *InstancePtr);
void XEuchw_Set_B_26(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_26(XEuchw *InstancePtr);
void XEuchw_Set_B_27(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_27(XEuchw *InstancePtr);
void XEuchw_Set_B_28(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_28(XEuchw *InstancePtr);
void XEuchw_Set_B_29(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_29(XEuchw *InstancePtr);
void XEuchw_Set_B_30(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_30(XEuchw *InstancePtr);
void XEuchw_Set_B_31(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_31(XEuchw *InstancePtr);
void XEuchw_Set_B_32(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_32(XEuchw *InstancePtr);
void XEuchw_Set_B_33(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_33(XEuchw *InstancePtr);
void XEuchw_Set_B_34(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_34(XEuchw *InstancePtr);
void XEuchw_Set_B_35(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_35(XEuchw *InstancePtr);
void XEuchw_Set_B_36(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_36(XEuchw *InstancePtr);
void XEuchw_Set_B_37(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_37(XEuchw *InstancePtr);
void XEuchw_Set_B_38(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_38(XEuchw *InstancePtr);
void XEuchw_Set_B_39(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_39(XEuchw *InstancePtr);
void XEuchw_Set_B_40(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_40(XEuchw *InstancePtr);
void XEuchw_Set_B_41(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_41(XEuchw *InstancePtr);
void XEuchw_Set_B_42(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_42(XEuchw *InstancePtr);
void XEuchw_Set_B_43(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_43(XEuchw *InstancePtr);
void XEuchw_Set_B_44(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_44(XEuchw *InstancePtr);
void XEuchw_Set_B_45(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_45(XEuchw *InstancePtr);
void XEuchw_Set_B_46(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_46(XEuchw *InstancePtr);
void XEuchw_Set_B_47(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_47(XEuchw *InstancePtr);
void XEuchw_Set_B_48(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_48(XEuchw *InstancePtr);
void XEuchw_Set_B_49(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_49(XEuchw *InstancePtr);
void XEuchw_Set_B_50(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_50(XEuchw *InstancePtr);
void XEuchw_Set_B_51(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_51(XEuchw *InstancePtr);
void XEuchw_Set_B_52(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_52(XEuchw *InstancePtr);
void XEuchw_Set_B_53(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_53(XEuchw *InstancePtr);
void XEuchw_Set_B_54(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_54(XEuchw *InstancePtr);
void XEuchw_Set_B_55(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_55(XEuchw *InstancePtr);
void XEuchw_Set_B_56(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_56(XEuchw *InstancePtr);
void XEuchw_Set_B_57(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_57(XEuchw *InstancePtr);
void XEuchw_Set_B_58(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_58(XEuchw *InstancePtr);
void XEuchw_Set_B_59(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_59(XEuchw *InstancePtr);
void XEuchw_Set_B_60(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_60(XEuchw *InstancePtr);
void XEuchw_Set_B_61(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_61(XEuchw *InstancePtr);
void XEuchw_Set_B_62(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_62(XEuchw *InstancePtr);
void XEuchw_Set_B_63(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_63(XEuchw *InstancePtr);
void XEuchw_Set_B_64(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_64(XEuchw *InstancePtr);
void XEuchw_Set_B_65(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_65(XEuchw *InstancePtr);
void XEuchw_Set_B_66(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_66(XEuchw *InstancePtr);
void XEuchw_Set_B_67(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_67(XEuchw *InstancePtr);
void XEuchw_Set_B_68(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_68(XEuchw *InstancePtr);
void XEuchw_Set_B_69(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_69(XEuchw *InstancePtr);
void XEuchw_Set_B_70(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_70(XEuchw *InstancePtr);
void XEuchw_Set_B_71(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_71(XEuchw *InstancePtr);
void XEuchw_Set_B_72(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_72(XEuchw *InstancePtr);
void XEuchw_Set_B_73(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_73(XEuchw *InstancePtr);
void XEuchw_Set_B_74(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_74(XEuchw *InstancePtr);
void XEuchw_Set_B_75(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_75(XEuchw *InstancePtr);
void XEuchw_Set_B_76(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_76(XEuchw *InstancePtr);
void XEuchw_Set_B_77(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_77(XEuchw *InstancePtr);
void XEuchw_Set_B_78(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_78(XEuchw *InstancePtr);
void XEuchw_Set_B_79(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_79(XEuchw *InstancePtr);
void XEuchw_Set_B_80(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_80(XEuchw *InstancePtr);
void XEuchw_Set_B_81(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_81(XEuchw *InstancePtr);
void XEuchw_Set_B_82(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_82(XEuchw *InstancePtr);
void XEuchw_Set_B_83(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_83(XEuchw *InstancePtr);
void XEuchw_Set_B_84(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_84(XEuchw *InstancePtr);
void XEuchw_Set_B_85(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_85(XEuchw *InstancePtr);
void XEuchw_Set_B_86(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_86(XEuchw *InstancePtr);
void XEuchw_Set_B_87(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_87(XEuchw *InstancePtr);
void XEuchw_Set_B_88(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_88(XEuchw *InstancePtr);
void XEuchw_Set_B_89(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_89(XEuchw *InstancePtr);
void XEuchw_Set_B_90(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_90(XEuchw *InstancePtr);
void XEuchw_Set_B_91(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_91(XEuchw *InstancePtr);
void XEuchw_Set_B_92(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_92(XEuchw *InstancePtr);
void XEuchw_Set_B_93(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_93(XEuchw *InstancePtr);
void XEuchw_Set_B_94(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_94(XEuchw *InstancePtr);
void XEuchw_Set_B_95(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_95(XEuchw *InstancePtr);
void XEuchw_Set_B_96(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_96(XEuchw *InstancePtr);
void XEuchw_Set_B_97(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_97(XEuchw *InstancePtr);
void XEuchw_Set_B_98(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_98(XEuchw *InstancePtr);
void XEuchw_Set_B_99(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_99(XEuchw *InstancePtr);
void XEuchw_Set_B_100(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_100(XEuchw *InstancePtr);
void XEuchw_Set_B_101(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_101(XEuchw *InstancePtr);
void XEuchw_Set_B_102(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_102(XEuchw *InstancePtr);
void XEuchw_Set_B_103(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_103(XEuchw *InstancePtr);
void XEuchw_Set_B_104(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_104(XEuchw *InstancePtr);
void XEuchw_Set_B_105(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_105(XEuchw *InstancePtr);
void XEuchw_Set_B_106(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_106(XEuchw *InstancePtr);
void XEuchw_Set_B_107(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_107(XEuchw *InstancePtr);
void XEuchw_Set_B_108(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_108(XEuchw *InstancePtr);
void XEuchw_Set_B_109(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_109(XEuchw *InstancePtr);
void XEuchw_Set_B_110(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_110(XEuchw *InstancePtr);
void XEuchw_Set_B_111(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_111(XEuchw *InstancePtr);
void XEuchw_Set_B_112(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_112(XEuchw *InstancePtr);
void XEuchw_Set_B_113(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_113(XEuchw *InstancePtr);
void XEuchw_Set_B_114(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_114(XEuchw *InstancePtr);
void XEuchw_Set_B_115(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_115(XEuchw *InstancePtr);
void XEuchw_Set_B_116(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_116(XEuchw *InstancePtr);
void XEuchw_Set_B_117(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_117(XEuchw *InstancePtr);
void XEuchw_Set_B_118(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_118(XEuchw *InstancePtr);
void XEuchw_Set_B_119(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_119(XEuchw *InstancePtr);
void XEuchw_Set_B_120(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_120(XEuchw *InstancePtr);
void XEuchw_Set_B_121(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_121(XEuchw *InstancePtr);
void XEuchw_Set_B_122(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_122(XEuchw *InstancePtr);
void XEuchw_Set_B_123(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_123(XEuchw *InstancePtr);
void XEuchw_Set_B_124(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_124(XEuchw *InstancePtr);
void XEuchw_Set_B_125(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_125(XEuchw *InstancePtr);
void XEuchw_Set_B_126(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_126(XEuchw *InstancePtr);
void XEuchw_Set_B_127(XEuchw *InstancePtr, u32 Data);
u32 XEuchw_Get_B_127(XEuchw *InstancePtr);
u32 XEuchw_Get_C(XEuchw *InstancePtr);
u32 XEuchw_Get_C_vld(XEuchw *InstancePtr);

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
