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

u32 XEuchw_Get_C(XEuchw *InstancePtr);
u32 XEuchw_Get_C_vld(XEuchw *InstancePtr);
u32 XEuchw_Get_A_0_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_0_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_0_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_0_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_0_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_1_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_1_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_1_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_1_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_1_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_2_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_2_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_2_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_2_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_2_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_3_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_3_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_3_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_3_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_3_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_4_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_4_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_4_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_4_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_4_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_5_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_5_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_5_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_5_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_5_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_6_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_6_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_6_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_6_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_6_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_A_7_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_7_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_A_7_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_A_7_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_A_7_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_A_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_A_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_A_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_A_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_0_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_0_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_0_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_0_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_0_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_1_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_1_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_1_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_1_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_1_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_2_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_2_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_2_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_2_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_2_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_3_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_3_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_3_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_3_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_3_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_4_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_4_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_4_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_4_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_4_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_5_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_5_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_5_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_5_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_5_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_6_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_6_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_6_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_6_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_6_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Get_B_7_BaseAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_7_HighAddress(XEuchw *InstancePtr);
u32 XEuchw_Get_B_7_TotalBytes(XEuchw *InstancePtr);
u32 XEuchw_Get_B_7_BitWidth(XEuchw *InstancePtr);
u32 XEuchw_Get_B_7_Depth(XEuchw *InstancePtr);
u32 XEuchw_Write_B_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Read_B_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length);
u32 XEuchw_Write_B_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);
u32 XEuchw_Read_B_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length);

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
