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
