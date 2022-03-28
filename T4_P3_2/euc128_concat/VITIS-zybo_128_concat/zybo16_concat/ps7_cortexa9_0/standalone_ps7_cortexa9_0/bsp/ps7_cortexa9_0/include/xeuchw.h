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
