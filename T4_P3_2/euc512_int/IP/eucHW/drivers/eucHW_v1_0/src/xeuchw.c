// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xeuchw.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEuchw_CfgInitialize(XEuchw *InstancePtr, XEuchw_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEuchw_Start(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL) & 0x80;
    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEuchw_IsDone(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEuchw_IsIdle(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEuchw_IsReady(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEuchw_EnableAutoRestart(XEuchw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XEuchw_DisableAutoRestart(XEuchw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XEuchw_Get_C(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_C_DATA);
    return Data;
}

u32 XEuchw_Get_C_vld(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_C_CTRL);
    return Data & 0x1;
}

u32 XEuchw_Get_A_0_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_0_BASE);
}

u32 XEuchw_Get_A_0_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_0_HIGH);
}

u32 XEuchw_Get_A_0_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_0_HIGH - XEUCHW_CONTROL_ADDR_A_0_BASE + 1);
}

u32 XEuchw_Get_A_0_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_0;
}

u32 XEuchw_Get_A_0_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_0;
}

u32 XEuchw_Write_A_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_0_HIGH - XEUCHW_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_0_HIGH - XEUCHW_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_0_HIGH - XEUCHW_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_0_HIGH - XEUCHW_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_0_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_1_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_1_BASE);
}

u32 XEuchw_Get_A_1_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_1_HIGH);
}

u32 XEuchw_Get_A_1_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_1_HIGH - XEUCHW_CONTROL_ADDR_A_1_BASE + 1);
}

u32 XEuchw_Get_A_1_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_1;
}

u32 XEuchw_Get_A_1_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_1;
}

u32 XEuchw_Write_A_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_1_HIGH - XEUCHW_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_1_HIGH - XEUCHW_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_1_HIGH - XEUCHW_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_1_HIGH - XEUCHW_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_1_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_2_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_2_BASE);
}

u32 XEuchw_Get_A_2_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_2_HIGH);
}

u32 XEuchw_Get_A_2_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_2_HIGH - XEUCHW_CONTROL_ADDR_A_2_BASE + 1);
}

u32 XEuchw_Get_A_2_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_2;
}

u32 XEuchw_Get_A_2_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_2;
}

u32 XEuchw_Write_A_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_2_HIGH - XEUCHW_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_2_HIGH - XEUCHW_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_2_HIGH - XEUCHW_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_2_HIGH - XEUCHW_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_2_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_3_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_3_BASE);
}

u32 XEuchw_Get_A_3_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_3_HIGH);
}

u32 XEuchw_Get_A_3_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_3_HIGH - XEUCHW_CONTROL_ADDR_A_3_BASE + 1);
}

u32 XEuchw_Get_A_3_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_3;
}

u32 XEuchw_Get_A_3_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_3;
}

u32 XEuchw_Write_A_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_3_HIGH - XEUCHW_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_3_HIGH - XEUCHW_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_3_HIGH - XEUCHW_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_3_HIGH - XEUCHW_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_3_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_4_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_4_BASE);
}

u32 XEuchw_Get_A_4_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_4_HIGH);
}

u32 XEuchw_Get_A_4_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_4_HIGH - XEUCHW_CONTROL_ADDR_A_4_BASE + 1);
}

u32 XEuchw_Get_A_4_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_4;
}

u32 XEuchw_Get_A_4_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_4;
}

u32 XEuchw_Write_A_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_4_HIGH - XEUCHW_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_4_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_4_HIGH - XEUCHW_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_4_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_4_HIGH - XEUCHW_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_4_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_4_HIGH - XEUCHW_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_4_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_5_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_5_BASE);
}

u32 XEuchw_Get_A_5_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_5_HIGH);
}

u32 XEuchw_Get_A_5_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_5_HIGH - XEUCHW_CONTROL_ADDR_A_5_BASE + 1);
}

u32 XEuchw_Get_A_5_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_5;
}

u32 XEuchw_Get_A_5_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_5;
}

u32 XEuchw_Write_A_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_5_HIGH - XEUCHW_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_5_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_5_HIGH - XEUCHW_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_5_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_5_HIGH - XEUCHW_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_5_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_5_HIGH - XEUCHW_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_5_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_6_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_6_BASE);
}

u32 XEuchw_Get_A_6_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_6_HIGH);
}

u32 XEuchw_Get_A_6_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_6_HIGH - XEUCHW_CONTROL_ADDR_A_6_BASE + 1);
}

u32 XEuchw_Get_A_6_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_6;
}

u32 XEuchw_Get_A_6_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_6;
}

u32 XEuchw_Write_A_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_6_HIGH - XEUCHW_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_6_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_6_HIGH - XEUCHW_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_6_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_6_HIGH - XEUCHW_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_6_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_6_HIGH - XEUCHW_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_6_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_7_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_7_BASE);
}

u32 XEuchw_Get_A_7_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_7_HIGH);
}

u32 XEuchw_Get_A_7_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_7_HIGH - XEUCHW_CONTROL_ADDR_A_7_BASE + 1);
}

u32 XEuchw_Get_A_7_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_7;
}

u32 XEuchw_Get_A_7_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_7;
}

u32 XEuchw_Write_A_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_7_HIGH - XEUCHW_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_7_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_7_HIGH - XEUCHW_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_7_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_7_HIGH - XEUCHW_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_7_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_7_HIGH - XEUCHW_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_7_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_8_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_8_BASE);
}

u32 XEuchw_Get_A_8_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_8_HIGH);
}

u32 XEuchw_Get_A_8_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_8_HIGH - XEUCHW_CONTROL_ADDR_A_8_BASE + 1);
}

u32 XEuchw_Get_A_8_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_8;
}

u32 XEuchw_Get_A_8_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_8;
}

u32 XEuchw_Write_A_8_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_8_HIGH - XEUCHW_CONTROL_ADDR_A_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_8_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_8_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_8_HIGH - XEUCHW_CONTROL_ADDR_A_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_8_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_8_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_8_HIGH - XEUCHW_CONTROL_ADDR_A_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_8_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_8_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_8_HIGH - XEUCHW_CONTROL_ADDR_A_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_8_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_9_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_9_BASE);
}

u32 XEuchw_Get_A_9_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_9_HIGH);
}

u32 XEuchw_Get_A_9_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_9_HIGH - XEUCHW_CONTROL_ADDR_A_9_BASE + 1);
}

u32 XEuchw_Get_A_9_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_9;
}

u32 XEuchw_Get_A_9_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_9;
}

u32 XEuchw_Write_A_9_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_9_HIGH - XEUCHW_CONTROL_ADDR_A_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_9_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_9_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_9_HIGH - XEUCHW_CONTROL_ADDR_A_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_9_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_9_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_9_HIGH - XEUCHW_CONTROL_ADDR_A_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_9_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_9_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_9_HIGH - XEUCHW_CONTROL_ADDR_A_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_9_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_10_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_10_BASE);
}

u32 XEuchw_Get_A_10_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_10_HIGH);
}

u32 XEuchw_Get_A_10_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_10_HIGH - XEUCHW_CONTROL_ADDR_A_10_BASE + 1);
}

u32 XEuchw_Get_A_10_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_10;
}

u32 XEuchw_Get_A_10_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_10;
}

u32 XEuchw_Write_A_10_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_10_HIGH - XEUCHW_CONTROL_ADDR_A_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_10_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_10_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_10_HIGH - XEUCHW_CONTROL_ADDR_A_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_10_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_10_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_10_HIGH - XEUCHW_CONTROL_ADDR_A_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_10_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_10_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_10_HIGH - XEUCHW_CONTROL_ADDR_A_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_10_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_11_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_11_BASE);
}

u32 XEuchw_Get_A_11_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_11_HIGH);
}

u32 XEuchw_Get_A_11_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_11_HIGH - XEUCHW_CONTROL_ADDR_A_11_BASE + 1);
}

u32 XEuchw_Get_A_11_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_11;
}

u32 XEuchw_Get_A_11_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_11;
}

u32 XEuchw_Write_A_11_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_11_HIGH - XEUCHW_CONTROL_ADDR_A_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_11_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_11_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_11_HIGH - XEUCHW_CONTROL_ADDR_A_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_11_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_11_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_11_HIGH - XEUCHW_CONTROL_ADDR_A_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_11_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_11_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_11_HIGH - XEUCHW_CONTROL_ADDR_A_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_11_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_12_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_12_BASE);
}

u32 XEuchw_Get_A_12_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_12_HIGH);
}

u32 XEuchw_Get_A_12_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_12_HIGH - XEUCHW_CONTROL_ADDR_A_12_BASE + 1);
}

u32 XEuchw_Get_A_12_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_12;
}

u32 XEuchw_Get_A_12_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_12;
}

u32 XEuchw_Write_A_12_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_12_HIGH - XEUCHW_CONTROL_ADDR_A_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_12_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_12_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_12_HIGH - XEUCHW_CONTROL_ADDR_A_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_12_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_12_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_12_HIGH - XEUCHW_CONTROL_ADDR_A_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_12_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_12_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_12_HIGH - XEUCHW_CONTROL_ADDR_A_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_12_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_13_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_13_BASE);
}

u32 XEuchw_Get_A_13_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_13_HIGH);
}

u32 XEuchw_Get_A_13_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_13_HIGH - XEUCHW_CONTROL_ADDR_A_13_BASE + 1);
}

u32 XEuchw_Get_A_13_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_13;
}

u32 XEuchw_Get_A_13_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_13;
}

u32 XEuchw_Write_A_13_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_13_HIGH - XEUCHW_CONTROL_ADDR_A_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_13_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_13_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_13_HIGH - XEUCHW_CONTROL_ADDR_A_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_13_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_13_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_13_HIGH - XEUCHW_CONTROL_ADDR_A_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_13_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_13_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_13_HIGH - XEUCHW_CONTROL_ADDR_A_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_13_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_14_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_14_BASE);
}

u32 XEuchw_Get_A_14_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_14_HIGH);
}

u32 XEuchw_Get_A_14_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_14_HIGH - XEUCHW_CONTROL_ADDR_A_14_BASE + 1);
}

u32 XEuchw_Get_A_14_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_14;
}

u32 XEuchw_Get_A_14_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_14;
}

u32 XEuchw_Write_A_14_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_14_HIGH - XEUCHW_CONTROL_ADDR_A_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_14_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_14_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_14_HIGH - XEUCHW_CONTROL_ADDR_A_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_14_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_14_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_14_HIGH - XEUCHW_CONTROL_ADDR_A_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_14_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_14_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_14_HIGH - XEUCHW_CONTROL_ADDR_A_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_14_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_15_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_15_BASE);
}

u32 XEuchw_Get_A_15_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_15_HIGH);
}

u32 XEuchw_Get_A_15_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_15_HIGH - XEUCHW_CONTROL_ADDR_A_15_BASE + 1);
}

u32 XEuchw_Get_A_15_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_15;
}

u32 XEuchw_Get_A_15_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_15;
}

u32 XEuchw_Write_A_15_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_15_HIGH - XEUCHW_CONTROL_ADDR_A_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_15_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_15_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_15_HIGH - XEUCHW_CONTROL_ADDR_A_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_15_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_15_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_15_HIGH - XEUCHW_CONTROL_ADDR_A_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_15_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_15_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_15_HIGH - XEUCHW_CONTROL_ADDR_A_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_15_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_16_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_16_BASE);
}

u32 XEuchw_Get_A_16_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_16_HIGH);
}

u32 XEuchw_Get_A_16_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_16_HIGH - XEUCHW_CONTROL_ADDR_A_16_BASE + 1);
}

u32 XEuchw_Get_A_16_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_16;
}

u32 XEuchw_Get_A_16_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_16;
}

u32 XEuchw_Write_A_16_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_16_HIGH - XEUCHW_CONTROL_ADDR_A_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_16_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_16_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_16_HIGH - XEUCHW_CONTROL_ADDR_A_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_16_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_16_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_16_HIGH - XEUCHW_CONTROL_ADDR_A_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_16_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_16_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_16_HIGH - XEUCHW_CONTROL_ADDR_A_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_16_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_17_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_17_BASE);
}

u32 XEuchw_Get_A_17_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_17_HIGH);
}

u32 XEuchw_Get_A_17_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_17_HIGH - XEUCHW_CONTROL_ADDR_A_17_BASE + 1);
}

u32 XEuchw_Get_A_17_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_17;
}

u32 XEuchw_Get_A_17_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_17;
}

u32 XEuchw_Write_A_17_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_17_HIGH - XEUCHW_CONTROL_ADDR_A_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_17_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_17_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_17_HIGH - XEUCHW_CONTROL_ADDR_A_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_17_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_17_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_17_HIGH - XEUCHW_CONTROL_ADDR_A_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_17_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_17_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_17_HIGH - XEUCHW_CONTROL_ADDR_A_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_17_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_18_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_18_BASE);
}

u32 XEuchw_Get_A_18_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_18_HIGH);
}

u32 XEuchw_Get_A_18_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_18_HIGH - XEUCHW_CONTROL_ADDR_A_18_BASE + 1);
}

u32 XEuchw_Get_A_18_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_18;
}

u32 XEuchw_Get_A_18_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_18;
}

u32 XEuchw_Write_A_18_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_18_HIGH - XEUCHW_CONTROL_ADDR_A_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_18_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_18_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_18_HIGH - XEUCHW_CONTROL_ADDR_A_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_18_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_18_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_18_HIGH - XEUCHW_CONTROL_ADDR_A_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_18_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_18_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_18_HIGH - XEUCHW_CONTROL_ADDR_A_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_18_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_19_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_19_BASE);
}

u32 XEuchw_Get_A_19_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_19_HIGH);
}

u32 XEuchw_Get_A_19_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_19_HIGH - XEUCHW_CONTROL_ADDR_A_19_BASE + 1);
}

u32 XEuchw_Get_A_19_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_19;
}

u32 XEuchw_Get_A_19_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_19;
}

u32 XEuchw_Write_A_19_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_19_HIGH - XEUCHW_CONTROL_ADDR_A_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_19_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_19_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_19_HIGH - XEUCHW_CONTROL_ADDR_A_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_19_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_19_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_19_HIGH - XEUCHW_CONTROL_ADDR_A_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_19_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_19_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_19_HIGH - XEUCHW_CONTROL_ADDR_A_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_19_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_20_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_20_BASE);
}

u32 XEuchw_Get_A_20_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_20_HIGH);
}

u32 XEuchw_Get_A_20_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_20_HIGH - XEUCHW_CONTROL_ADDR_A_20_BASE + 1);
}

u32 XEuchw_Get_A_20_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_20;
}

u32 XEuchw_Get_A_20_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_20;
}

u32 XEuchw_Write_A_20_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_20_HIGH - XEUCHW_CONTROL_ADDR_A_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_20_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_20_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_20_HIGH - XEUCHW_CONTROL_ADDR_A_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_20_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_20_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_20_HIGH - XEUCHW_CONTROL_ADDR_A_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_20_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_20_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_20_HIGH - XEUCHW_CONTROL_ADDR_A_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_20_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_21_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_21_BASE);
}

u32 XEuchw_Get_A_21_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_21_HIGH);
}

u32 XEuchw_Get_A_21_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_21_HIGH - XEUCHW_CONTROL_ADDR_A_21_BASE + 1);
}

u32 XEuchw_Get_A_21_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_21;
}

u32 XEuchw_Get_A_21_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_21;
}

u32 XEuchw_Write_A_21_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_21_HIGH - XEUCHW_CONTROL_ADDR_A_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_21_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_21_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_21_HIGH - XEUCHW_CONTROL_ADDR_A_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_21_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_21_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_21_HIGH - XEUCHW_CONTROL_ADDR_A_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_21_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_21_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_21_HIGH - XEUCHW_CONTROL_ADDR_A_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_21_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_22_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_22_BASE);
}

u32 XEuchw_Get_A_22_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_22_HIGH);
}

u32 XEuchw_Get_A_22_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_22_HIGH - XEUCHW_CONTROL_ADDR_A_22_BASE + 1);
}

u32 XEuchw_Get_A_22_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_22;
}

u32 XEuchw_Get_A_22_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_22;
}

u32 XEuchw_Write_A_22_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_22_HIGH - XEUCHW_CONTROL_ADDR_A_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_22_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_22_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_22_HIGH - XEUCHW_CONTROL_ADDR_A_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_22_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_22_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_22_HIGH - XEUCHW_CONTROL_ADDR_A_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_22_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_22_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_22_HIGH - XEUCHW_CONTROL_ADDR_A_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_22_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_23_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_23_BASE);
}

u32 XEuchw_Get_A_23_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_23_HIGH);
}

u32 XEuchw_Get_A_23_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_23_HIGH - XEUCHW_CONTROL_ADDR_A_23_BASE + 1);
}

u32 XEuchw_Get_A_23_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_23;
}

u32 XEuchw_Get_A_23_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_23;
}

u32 XEuchw_Write_A_23_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_23_HIGH - XEUCHW_CONTROL_ADDR_A_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_23_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_23_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_23_HIGH - XEUCHW_CONTROL_ADDR_A_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_23_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_23_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_23_HIGH - XEUCHW_CONTROL_ADDR_A_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_23_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_23_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_23_HIGH - XEUCHW_CONTROL_ADDR_A_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_23_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_24_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_24_BASE);
}

u32 XEuchw_Get_A_24_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_24_HIGH);
}

u32 XEuchw_Get_A_24_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_24_HIGH - XEUCHW_CONTROL_ADDR_A_24_BASE + 1);
}

u32 XEuchw_Get_A_24_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_24;
}

u32 XEuchw_Get_A_24_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_24;
}

u32 XEuchw_Write_A_24_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_24_HIGH - XEUCHW_CONTROL_ADDR_A_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_24_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_24_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_24_HIGH - XEUCHW_CONTROL_ADDR_A_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_24_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_24_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_24_HIGH - XEUCHW_CONTROL_ADDR_A_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_24_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_24_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_24_HIGH - XEUCHW_CONTROL_ADDR_A_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_24_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_25_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_25_BASE);
}

u32 XEuchw_Get_A_25_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_25_HIGH);
}

u32 XEuchw_Get_A_25_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_25_HIGH - XEUCHW_CONTROL_ADDR_A_25_BASE + 1);
}

u32 XEuchw_Get_A_25_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_25;
}

u32 XEuchw_Get_A_25_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_25;
}

u32 XEuchw_Write_A_25_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_25_HIGH - XEUCHW_CONTROL_ADDR_A_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_25_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_25_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_25_HIGH - XEUCHW_CONTROL_ADDR_A_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_25_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_25_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_25_HIGH - XEUCHW_CONTROL_ADDR_A_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_25_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_25_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_25_HIGH - XEUCHW_CONTROL_ADDR_A_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_25_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_26_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_26_BASE);
}

u32 XEuchw_Get_A_26_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_26_HIGH);
}

u32 XEuchw_Get_A_26_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_26_HIGH - XEUCHW_CONTROL_ADDR_A_26_BASE + 1);
}

u32 XEuchw_Get_A_26_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_26;
}

u32 XEuchw_Get_A_26_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_26;
}

u32 XEuchw_Write_A_26_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_26_HIGH - XEUCHW_CONTROL_ADDR_A_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_26_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_26_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_26_HIGH - XEUCHW_CONTROL_ADDR_A_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_26_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_26_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_26_HIGH - XEUCHW_CONTROL_ADDR_A_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_26_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_26_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_26_HIGH - XEUCHW_CONTROL_ADDR_A_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_26_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_27_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_27_BASE);
}

u32 XEuchw_Get_A_27_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_27_HIGH);
}

u32 XEuchw_Get_A_27_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_27_HIGH - XEUCHW_CONTROL_ADDR_A_27_BASE + 1);
}

u32 XEuchw_Get_A_27_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_27;
}

u32 XEuchw_Get_A_27_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_27;
}

u32 XEuchw_Write_A_27_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_27_HIGH - XEUCHW_CONTROL_ADDR_A_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_27_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_27_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_27_HIGH - XEUCHW_CONTROL_ADDR_A_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_27_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_27_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_27_HIGH - XEUCHW_CONTROL_ADDR_A_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_27_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_27_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_27_HIGH - XEUCHW_CONTROL_ADDR_A_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_27_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_28_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_28_BASE);
}

u32 XEuchw_Get_A_28_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_28_HIGH);
}

u32 XEuchw_Get_A_28_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_28_HIGH - XEUCHW_CONTROL_ADDR_A_28_BASE + 1);
}

u32 XEuchw_Get_A_28_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_28;
}

u32 XEuchw_Get_A_28_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_28;
}

u32 XEuchw_Write_A_28_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_28_HIGH - XEUCHW_CONTROL_ADDR_A_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_28_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_28_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_28_HIGH - XEUCHW_CONTROL_ADDR_A_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_28_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_28_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_28_HIGH - XEUCHW_CONTROL_ADDR_A_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_28_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_28_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_28_HIGH - XEUCHW_CONTROL_ADDR_A_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_28_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_29_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_29_BASE);
}

u32 XEuchw_Get_A_29_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_29_HIGH);
}

u32 XEuchw_Get_A_29_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_29_HIGH - XEUCHW_CONTROL_ADDR_A_29_BASE + 1);
}

u32 XEuchw_Get_A_29_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_29;
}

u32 XEuchw_Get_A_29_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_29;
}

u32 XEuchw_Write_A_29_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_29_HIGH - XEUCHW_CONTROL_ADDR_A_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_29_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_29_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_29_HIGH - XEUCHW_CONTROL_ADDR_A_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_29_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_29_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_29_HIGH - XEUCHW_CONTROL_ADDR_A_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_29_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_29_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_29_HIGH - XEUCHW_CONTROL_ADDR_A_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_29_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_30_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_30_BASE);
}

u32 XEuchw_Get_A_30_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_30_HIGH);
}

u32 XEuchw_Get_A_30_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_30_HIGH - XEUCHW_CONTROL_ADDR_A_30_BASE + 1);
}

u32 XEuchw_Get_A_30_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_30;
}

u32 XEuchw_Get_A_30_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_30;
}

u32 XEuchw_Write_A_30_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_30_HIGH - XEUCHW_CONTROL_ADDR_A_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_30_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_30_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_30_HIGH - XEUCHW_CONTROL_ADDR_A_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_30_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_30_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_30_HIGH - XEUCHW_CONTROL_ADDR_A_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_30_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_30_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_30_HIGH - XEUCHW_CONTROL_ADDR_A_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_30_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_31_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_31_BASE);
}

u32 XEuchw_Get_A_31_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_31_HIGH);
}

u32 XEuchw_Get_A_31_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_31_HIGH - XEUCHW_CONTROL_ADDR_A_31_BASE + 1);
}

u32 XEuchw_Get_A_31_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_31;
}

u32 XEuchw_Get_A_31_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_31;
}

u32 XEuchw_Write_A_31_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_31_HIGH - XEUCHW_CONTROL_ADDR_A_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_31_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_31_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_31_HIGH - XEUCHW_CONTROL_ADDR_A_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_31_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_31_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_31_HIGH - XEUCHW_CONTROL_ADDR_A_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_31_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_31_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_31_HIGH - XEUCHW_CONTROL_ADDR_A_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_31_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_32_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_32_BASE);
}

u32 XEuchw_Get_A_32_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_32_HIGH);
}

u32 XEuchw_Get_A_32_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_32_HIGH - XEUCHW_CONTROL_ADDR_A_32_BASE + 1);
}

u32 XEuchw_Get_A_32_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_32;
}

u32 XEuchw_Get_A_32_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_32;
}

u32 XEuchw_Write_A_32_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_32_HIGH - XEUCHW_CONTROL_ADDR_A_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_32_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_32_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_32_HIGH - XEUCHW_CONTROL_ADDR_A_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_32_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_32_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_32_HIGH - XEUCHW_CONTROL_ADDR_A_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_32_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_32_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_32_HIGH - XEUCHW_CONTROL_ADDR_A_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_32_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_33_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_33_BASE);
}

u32 XEuchw_Get_A_33_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_33_HIGH);
}

u32 XEuchw_Get_A_33_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_33_HIGH - XEUCHW_CONTROL_ADDR_A_33_BASE + 1);
}

u32 XEuchw_Get_A_33_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_33;
}

u32 XEuchw_Get_A_33_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_33;
}

u32 XEuchw_Write_A_33_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_33_HIGH - XEUCHW_CONTROL_ADDR_A_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_33_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_33_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_33_HIGH - XEUCHW_CONTROL_ADDR_A_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_33_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_33_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_33_HIGH - XEUCHW_CONTROL_ADDR_A_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_33_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_33_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_33_HIGH - XEUCHW_CONTROL_ADDR_A_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_33_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_34_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_34_BASE);
}

u32 XEuchw_Get_A_34_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_34_HIGH);
}

u32 XEuchw_Get_A_34_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_34_HIGH - XEUCHW_CONTROL_ADDR_A_34_BASE + 1);
}

u32 XEuchw_Get_A_34_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_34;
}

u32 XEuchw_Get_A_34_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_34;
}

u32 XEuchw_Write_A_34_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_34_HIGH - XEUCHW_CONTROL_ADDR_A_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_34_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_34_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_34_HIGH - XEUCHW_CONTROL_ADDR_A_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_34_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_34_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_34_HIGH - XEUCHW_CONTROL_ADDR_A_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_34_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_34_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_34_HIGH - XEUCHW_CONTROL_ADDR_A_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_34_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_35_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_35_BASE);
}

u32 XEuchw_Get_A_35_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_35_HIGH);
}

u32 XEuchw_Get_A_35_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_35_HIGH - XEUCHW_CONTROL_ADDR_A_35_BASE + 1);
}

u32 XEuchw_Get_A_35_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_35;
}

u32 XEuchw_Get_A_35_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_35;
}

u32 XEuchw_Write_A_35_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_35_HIGH - XEUCHW_CONTROL_ADDR_A_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_35_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_35_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_35_HIGH - XEUCHW_CONTROL_ADDR_A_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_35_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_35_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_35_HIGH - XEUCHW_CONTROL_ADDR_A_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_35_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_35_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_35_HIGH - XEUCHW_CONTROL_ADDR_A_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_35_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_36_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_36_BASE);
}

u32 XEuchw_Get_A_36_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_36_HIGH);
}

u32 XEuchw_Get_A_36_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_36_HIGH - XEUCHW_CONTROL_ADDR_A_36_BASE + 1);
}

u32 XEuchw_Get_A_36_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_36;
}

u32 XEuchw_Get_A_36_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_36;
}

u32 XEuchw_Write_A_36_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_36_HIGH - XEUCHW_CONTROL_ADDR_A_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_36_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_36_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_36_HIGH - XEUCHW_CONTROL_ADDR_A_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_36_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_36_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_36_HIGH - XEUCHW_CONTROL_ADDR_A_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_36_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_36_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_36_HIGH - XEUCHW_CONTROL_ADDR_A_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_36_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_37_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_37_BASE);
}

u32 XEuchw_Get_A_37_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_37_HIGH);
}

u32 XEuchw_Get_A_37_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_37_HIGH - XEUCHW_CONTROL_ADDR_A_37_BASE + 1);
}

u32 XEuchw_Get_A_37_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_37;
}

u32 XEuchw_Get_A_37_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_37;
}

u32 XEuchw_Write_A_37_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_37_HIGH - XEUCHW_CONTROL_ADDR_A_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_37_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_37_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_37_HIGH - XEUCHW_CONTROL_ADDR_A_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_37_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_37_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_37_HIGH - XEUCHW_CONTROL_ADDR_A_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_37_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_37_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_37_HIGH - XEUCHW_CONTROL_ADDR_A_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_37_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_38_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_38_BASE);
}

u32 XEuchw_Get_A_38_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_38_HIGH);
}

u32 XEuchw_Get_A_38_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_38_HIGH - XEUCHW_CONTROL_ADDR_A_38_BASE + 1);
}

u32 XEuchw_Get_A_38_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_38;
}

u32 XEuchw_Get_A_38_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_38;
}

u32 XEuchw_Write_A_38_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_38_HIGH - XEUCHW_CONTROL_ADDR_A_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_38_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_38_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_38_HIGH - XEUCHW_CONTROL_ADDR_A_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_38_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_38_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_38_HIGH - XEUCHW_CONTROL_ADDR_A_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_38_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_38_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_38_HIGH - XEUCHW_CONTROL_ADDR_A_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_38_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_39_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_39_BASE);
}

u32 XEuchw_Get_A_39_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_39_HIGH);
}

u32 XEuchw_Get_A_39_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_39_HIGH - XEUCHW_CONTROL_ADDR_A_39_BASE + 1);
}

u32 XEuchw_Get_A_39_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_39;
}

u32 XEuchw_Get_A_39_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_39;
}

u32 XEuchw_Write_A_39_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_39_HIGH - XEUCHW_CONTROL_ADDR_A_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_39_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_39_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_39_HIGH - XEUCHW_CONTROL_ADDR_A_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_39_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_39_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_39_HIGH - XEUCHW_CONTROL_ADDR_A_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_39_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_39_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_39_HIGH - XEUCHW_CONTROL_ADDR_A_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_39_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_40_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_40_BASE);
}

u32 XEuchw_Get_A_40_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_40_HIGH);
}

u32 XEuchw_Get_A_40_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_40_HIGH - XEUCHW_CONTROL_ADDR_A_40_BASE + 1);
}

u32 XEuchw_Get_A_40_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_40;
}

u32 XEuchw_Get_A_40_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_40;
}

u32 XEuchw_Write_A_40_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_40_HIGH - XEUCHW_CONTROL_ADDR_A_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_40_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_40_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_40_HIGH - XEUCHW_CONTROL_ADDR_A_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_40_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_40_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_40_HIGH - XEUCHW_CONTROL_ADDR_A_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_40_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_40_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_40_HIGH - XEUCHW_CONTROL_ADDR_A_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_40_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_41_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_41_BASE);
}

u32 XEuchw_Get_A_41_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_41_HIGH);
}

u32 XEuchw_Get_A_41_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_41_HIGH - XEUCHW_CONTROL_ADDR_A_41_BASE + 1);
}

u32 XEuchw_Get_A_41_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_41;
}

u32 XEuchw_Get_A_41_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_41;
}

u32 XEuchw_Write_A_41_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_41_HIGH - XEUCHW_CONTROL_ADDR_A_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_41_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_41_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_41_HIGH - XEUCHW_CONTROL_ADDR_A_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_41_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_41_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_41_HIGH - XEUCHW_CONTROL_ADDR_A_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_41_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_41_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_41_HIGH - XEUCHW_CONTROL_ADDR_A_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_41_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_42_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_42_BASE);
}

u32 XEuchw_Get_A_42_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_42_HIGH);
}

u32 XEuchw_Get_A_42_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_42_HIGH - XEUCHW_CONTROL_ADDR_A_42_BASE + 1);
}

u32 XEuchw_Get_A_42_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_42;
}

u32 XEuchw_Get_A_42_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_42;
}

u32 XEuchw_Write_A_42_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_42_HIGH - XEUCHW_CONTROL_ADDR_A_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_42_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_42_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_42_HIGH - XEUCHW_CONTROL_ADDR_A_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_42_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_42_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_42_HIGH - XEUCHW_CONTROL_ADDR_A_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_42_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_42_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_42_HIGH - XEUCHW_CONTROL_ADDR_A_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_42_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_43_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_43_BASE);
}

u32 XEuchw_Get_A_43_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_43_HIGH);
}

u32 XEuchw_Get_A_43_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_43_HIGH - XEUCHW_CONTROL_ADDR_A_43_BASE + 1);
}

u32 XEuchw_Get_A_43_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_43;
}

u32 XEuchw_Get_A_43_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_43;
}

u32 XEuchw_Write_A_43_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_43_HIGH - XEUCHW_CONTROL_ADDR_A_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_43_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_43_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_43_HIGH - XEUCHW_CONTROL_ADDR_A_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_43_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_43_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_43_HIGH - XEUCHW_CONTROL_ADDR_A_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_43_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_43_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_43_HIGH - XEUCHW_CONTROL_ADDR_A_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_43_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_44_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_44_BASE);
}

u32 XEuchw_Get_A_44_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_44_HIGH);
}

u32 XEuchw_Get_A_44_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_44_HIGH - XEUCHW_CONTROL_ADDR_A_44_BASE + 1);
}

u32 XEuchw_Get_A_44_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_44;
}

u32 XEuchw_Get_A_44_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_44;
}

u32 XEuchw_Write_A_44_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_44_HIGH - XEUCHW_CONTROL_ADDR_A_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_44_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_44_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_44_HIGH - XEUCHW_CONTROL_ADDR_A_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_44_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_44_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_44_HIGH - XEUCHW_CONTROL_ADDR_A_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_44_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_44_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_44_HIGH - XEUCHW_CONTROL_ADDR_A_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_44_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_45_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_45_BASE);
}

u32 XEuchw_Get_A_45_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_45_HIGH);
}

u32 XEuchw_Get_A_45_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_45_HIGH - XEUCHW_CONTROL_ADDR_A_45_BASE + 1);
}

u32 XEuchw_Get_A_45_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_45;
}

u32 XEuchw_Get_A_45_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_45;
}

u32 XEuchw_Write_A_45_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_45_HIGH - XEUCHW_CONTROL_ADDR_A_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_45_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_45_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_45_HIGH - XEUCHW_CONTROL_ADDR_A_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_45_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_45_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_45_HIGH - XEUCHW_CONTROL_ADDR_A_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_45_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_45_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_45_HIGH - XEUCHW_CONTROL_ADDR_A_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_45_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_46_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_46_BASE);
}

u32 XEuchw_Get_A_46_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_46_HIGH);
}

u32 XEuchw_Get_A_46_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_46_HIGH - XEUCHW_CONTROL_ADDR_A_46_BASE + 1);
}

u32 XEuchw_Get_A_46_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_46;
}

u32 XEuchw_Get_A_46_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_46;
}

u32 XEuchw_Write_A_46_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_46_HIGH - XEUCHW_CONTROL_ADDR_A_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_46_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_46_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_46_HIGH - XEUCHW_CONTROL_ADDR_A_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_46_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_46_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_46_HIGH - XEUCHW_CONTROL_ADDR_A_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_46_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_46_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_46_HIGH - XEUCHW_CONTROL_ADDR_A_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_46_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_47_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_47_BASE);
}

u32 XEuchw_Get_A_47_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_47_HIGH);
}

u32 XEuchw_Get_A_47_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_47_HIGH - XEUCHW_CONTROL_ADDR_A_47_BASE + 1);
}

u32 XEuchw_Get_A_47_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_47;
}

u32 XEuchw_Get_A_47_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_47;
}

u32 XEuchw_Write_A_47_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_47_HIGH - XEUCHW_CONTROL_ADDR_A_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_47_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_47_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_47_HIGH - XEUCHW_CONTROL_ADDR_A_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_47_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_47_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_47_HIGH - XEUCHW_CONTROL_ADDR_A_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_47_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_47_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_47_HIGH - XEUCHW_CONTROL_ADDR_A_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_47_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_48_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_48_BASE);
}

u32 XEuchw_Get_A_48_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_48_HIGH);
}

u32 XEuchw_Get_A_48_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_48_HIGH - XEUCHW_CONTROL_ADDR_A_48_BASE + 1);
}

u32 XEuchw_Get_A_48_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_48;
}

u32 XEuchw_Get_A_48_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_48;
}

u32 XEuchw_Write_A_48_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_48_HIGH - XEUCHW_CONTROL_ADDR_A_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_48_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_48_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_48_HIGH - XEUCHW_CONTROL_ADDR_A_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_48_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_48_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_48_HIGH - XEUCHW_CONTROL_ADDR_A_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_48_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_48_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_48_HIGH - XEUCHW_CONTROL_ADDR_A_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_48_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_49_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_49_BASE);
}

u32 XEuchw_Get_A_49_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_49_HIGH);
}

u32 XEuchw_Get_A_49_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_49_HIGH - XEUCHW_CONTROL_ADDR_A_49_BASE + 1);
}

u32 XEuchw_Get_A_49_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_49;
}

u32 XEuchw_Get_A_49_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_49;
}

u32 XEuchw_Write_A_49_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_49_HIGH - XEUCHW_CONTROL_ADDR_A_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_49_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_49_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_49_HIGH - XEUCHW_CONTROL_ADDR_A_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_49_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_49_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_49_HIGH - XEUCHW_CONTROL_ADDR_A_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_49_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_49_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_49_HIGH - XEUCHW_CONTROL_ADDR_A_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_49_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_50_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_50_BASE);
}

u32 XEuchw_Get_A_50_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_50_HIGH);
}

u32 XEuchw_Get_A_50_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_50_HIGH - XEUCHW_CONTROL_ADDR_A_50_BASE + 1);
}

u32 XEuchw_Get_A_50_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_50;
}

u32 XEuchw_Get_A_50_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_50;
}

u32 XEuchw_Write_A_50_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_50_HIGH - XEUCHW_CONTROL_ADDR_A_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_50_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_50_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_50_HIGH - XEUCHW_CONTROL_ADDR_A_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_50_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_50_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_50_HIGH - XEUCHW_CONTROL_ADDR_A_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_50_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_50_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_50_HIGH - XEUCHW_CONTROL_ADDR_A_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_50_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_51_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_51_BASE);
}

u32 XEuchw_Get_A_51_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_51_HIGH);
}

u32 XEuchw_Get_A_51_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_51_HIGH - XEUCHW_CONTROL_ADDR_A_51_BASE + 1);
}

u32 XEuchw_Get_A_51_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_51;
}

u32 XEuchw_Get_A_51_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_51;
}

u32 XEuchw_Write_A_51_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_51_HIGH - XEUCHW_CONTROL_ADDR_A_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_51_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_51_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_51_HIGH - XEUCHW_CONTROL_ADDR_A_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_51_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_51_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_51_HIGH - XEUCHW_CONTROL_ADDR_A_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_51_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_51_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_51_HIGH - XEUCHW_CONTROL_ADDR_A_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_51_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_52_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_52_BASE);
}

u32 XEuchw_Get_A_52_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_52_HIGH);
}

u32 XEuchw_Get_A_52_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_52_HIGH - XEUCHW_CONTROL_ADDR_A_52_BASE + 1);
}

u32 XEuchw_Get_A_52_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_52;
}

u32 XEuchw_Get_A_52_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_52;
}

u32 XEuchw_Write_A_52_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_52_HIGH - XEUCHW_CONTROL_ADDR_A_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_52_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_52_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_52_HIGH - XEUCHW_CONTROL_ADDR_A_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_52_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_52_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_52_HIGH - XEUCHW_CONTROL_ADDR_A_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_52_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_52_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_52_HIGH - XEUCHW_CONTROL_ADDR_A_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_52_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_53_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_53_BASE);
}

u32 XEuchw_Get_A_53_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_53_HIGH);
}

u32 XEuchw_Get_A_53_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_53_HIGH - XEUCHW_CONTROL_ADDR_A_53_BASE + 1);
}

u32 XEuchw_Get_A_53_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_53;
}

u32 XEuchw_Get_A_53_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_53;
}

u32 XEuchw_Write_A_53_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_53_HIGH - XEUCHW_CONTROL_ADDR_A_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_53_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_53_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_53_HIGH - XEUCHW_CONTROL_ADDR_A_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_53_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_53_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_53_HIGH - XEUCHW_CONTROL_ADDR_A_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_53_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_53_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_53_HIGH - XEUCHW_CONTROL_ADDR_A_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_53_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_54_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_54_BASE);
}

u32 XEuchw_Get_A_54_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_54_HIGH);
}

u32 XEuchw_Get_A_54_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_54_HIGH - XEUCHW_CONTROL_ADDR_A_54_BASE + 1);
}

u32 XEuchw_Get_A_54_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_54;
}

u32 XEuchw_Get_A_54_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_54;
}

u32 XEuchw_Write_A_54_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_54_HIGH - XEUCHW_CONTROL_ADDR_A_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_54_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_54_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_54_HIGH - XEUCHW_CONTROL_ADDR_A_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_54_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_54_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_54_HIGH - XEUCHW_CONTROL_ADDR_A_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_54_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_54_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_54_HIGH - XEUCHW_CONTROL_ADDR_A_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_54_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_55_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_55_BASE);
}

u32 XEuchw_Get_A_55_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_55_HIGH);
}

u32 XEuchw_Get_A_55_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_55_HIGH - XEUCHW_CONTROL_ADDR_A_55_BASE + 1);
}

u32 XEuchw_Get_A_55_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_55;
}

u32 XEuchw_Get_A_55_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_55;
}

u32 XEuchw_Write_A_55_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_55_HIGH - XEUCHW_CONTROL_ADDR_A_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_55_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_55_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_55_HIGH - XEUCHW_CONTROL_ADDR_A_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_55_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_55_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_55_HIGH - XEUCHW_CONTROL_ADDR_A_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_55_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_55_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_55_HIGH - XEUCHW_CONTROL_ADDR_A_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_55_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_56_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_56_BASE);
}

u32 XEuchw_Get_A_56_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_56_HIGH);
}

u32 XEuchw_Get_A_56_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_56_HIGH - XEUCHW_CONTROL_ADDR_A_56_BASE + 1);
}

u32 XEuchw_Get_A_56_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_56;
}

u32 XEuchw_Get_A_56_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_56;
}

u32 XEuchw_Write_A_56_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_56_HIGH - XEUCHW_CONTROL_ADDR_A_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_56_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_56_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_56_HIGH - XEUCHW_CONTROL_ADDR_A_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_56_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_56_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_56_HIGH - XEUCHW_CONTROL_ADDR_A_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_56_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_56_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_56_HIGH - XEUCHW_CONTROL_ADDR_A_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_56_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_57_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_57_BASE);
}

u32 XEuchw_Get_A_57_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_57_HIGH);
}

u32 XEuchw_Get_A_57_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_57_HIGH - XEUCHW_CONTROL_ADDR_A_57_BASE + 1);
}

u32 XEuchw_Get_A_57_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_57;
}

u32 XEuchw_Get_A_57_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_57;
}

u32 XEuchw_Write_A_57_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_57_HIGH - XEUCHW_CONTROL_ADDR_A_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_57_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_57_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_57_HIGH - XEUCHW_CONTROL_ADDR_A_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_57_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_57_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_57_HIGH - XEUCHW_CONTROL_ADDR_A_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_57_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_57_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_57_HIGH - XEUCHW_CONTROL_ADDR_A_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_57_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_58_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_58_BASE);
}

u32 XEuchw_Get_A_58_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_58_HIGH);
}

u32 XEuchw_Get_A_58_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_58_HIGH - XEUCHW_CONTROL_ADDR_A_58_BASE + 1);
}

u32 XEuchw_Get_A_58_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_58;
}

u32 XEuchw_Get_A_58_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_58;
}

u32 XEuchw_Write_A_58_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_58_HIGH - XEUCHW_CONTROL_ADDR_A_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_58_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_58_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_58_HIGH - XEUCHW_CONTROL_ADDR_A_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_58_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_58_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_58_HIGH - XEUCHW_CONTROL_ADDR_A_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_58_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_58_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_58_HIGH - XEUCHW_CONTROL_ADDR_A_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_58_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_59_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_59_BASE);
}

u32 XEuchw_Get_A_59_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_59_HIGH);
}

u32 XEuchw_Get_A_59_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_59_HIGH - XEUCHW_CONTROL_ADDR_A_59_BASE + 1);
}

u32 XEuchw_Get_A_59_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_59;
}

u32 XEuchw_Get_A_59_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_59;
}

u32 XEuchw_Write_A_59_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_59_HIGH - XEUCHW_CONTROL_ADDR_A_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_59_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_59_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_59_HIGH - XEUCHW_CONTROL_ADDR_A_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_59_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_59_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_59_HIGH - XEUCHW_CONTROL_ADDR_A_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_59_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_59_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_59_HIGH - XEUCHW_CONTROL_ADDR_A_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_59_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_60_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_60_BASE);
}

u32 XEuchw_Get_A_60_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_60_HIGH);
}

u32 XEuchw_Get_A_60_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_60_HIGH - XEUCHW_CONTROL_ADDR_A_60_BASE + 1);
}

u32 XEuchw_Get_A_60_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_60;
}

u32 XEuchw_Get_A_60_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_60;
}

u32 XEuchw_Write_A_60_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_60_HIGH - XEUCHW_CONTROL_ADDR_A_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_60_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_60_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_60_HIGH - XEUCHW_CONTROL_ADDR_A_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_60_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_60_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_60_HIGH - XEUCHW_CONTROL_ADDR_A_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_60_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_60_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_60_HIGH - XEUCHW_CONTROL_ADDR_A_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_60_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_61_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_61_BASE);
}

u32 XEuchw_Get_A_61_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_61_HIGH);
}

u32 XEuchw_Get_A_61_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_61_HIGH - XEUCHW_CONTROL_ADDR_A_61_BASE + 1);
}

u32 XEuchw_Get_A_61_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_61;
}

u32 XEuchw_Get_A_61_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_61;
}

u32 XEuchw_Write_A_61_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_61_HIGH - XEUCHW_CONTROL_ADDR_A_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_61_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_61_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_61_HIGH - XEUCHW_CONTROL_ADDR_A_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_61_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_61_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_61_HIGH - XEUCHW_CONTROL_ADDR_A_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_61_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_61_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_61_HIGH - XEUCHW_CONTROL_ADDR_A_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_61_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_62_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_62_BASE);
}

u32 XEuchw_Get_A_62_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_62_HIGH);
}

u32 XEuchw_Get_A_62_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_62_HIGH - XEUCHW_CONTROL_ADDR_A_62_BASE + 1);
}

u32 XEuchw_Get_A_62_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_62;
}

u32 XEuchw_Get_A_62_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_62;
}

u32 XEuchw_Write_A_62_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_62_HIGH - XEUCHW_CONTROL_ADDR_A_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_62_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_62_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_62_HIGH - XEUCHW_CONTROL_ADDR_A_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_62_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_62_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_62_HIGH - XEUCHW_CONTROL_ADDR_A_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_62_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_62_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_62_HIGH - XEUCHW_CONTROL_ADDR_A_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_62_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_A_63_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_63_BASE);
}

u32 XEuchw_Get_A_63_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_63_HIGH);
}

u32 XEuchw_Get_A_63_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_A_63_HIGH - XEUCHW_CONTROL_ADDR_A_63_BASE + 1);
}

u32 XEuchw_Get_A_63_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_A_63;
}

u32 XEuchw_Get_A_63_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_A_63;
}

u32 XEuchw_Write_A_63_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_63_HIGH - XEUCHW_CONTROL_ADDR_A_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_63_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_63_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_A_63_HIGH - XEUCHW_CONTROL_ADDR_A_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_63_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_A_63_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_63_HIGH - XEUCHW_CONTROL_ADDR_A_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_63_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_A_63_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_A_63_HIGH - XEUCHW_CONTROL_ADDR_A_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_A_63_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_0_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_0_BASE);
}

u32 XEuchw_Get_B_0_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_0_HIGH);
}

u32 XEuchw_Get_B_0_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_0_HIGH - XEUCHW_CONTROL_ADDR_B_0_BASE + 1);
}

u32 XEuchw_Get_B_0_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_0;
}

u32 XEuchw_Get_B_0_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_0;
}

u32 XEuchw_Write_B_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_0_HIGH - XEUCHW_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_0_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_0_HIGH - XEUCHW_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_0_HIGH - XEUCHW_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_0_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_0_HIGH - XEUCHW_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_0_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_1_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_1_BASE);
}

u32 XEuchw_Get_B_1_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_1_HIGH);
}

u32 XEuchw_Get_B_1_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_1_HIGH - XEUCHW_CONTROL_ADDR_B_1_BASE + 1);
}

u32 XEuchw_Get_B_1_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_1;
}

u32 XEuchw_Get_B_1_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_1;
}

u32 XEuchw_Write_B_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_1_HIGH - XEUCHW_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_1_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_1_HIGH - XEUCHW_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_1_HIGH - XEUCHW_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_1_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_1_HIGH - XEUCHW_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_1_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_2_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_2_BASE);
}

u32 XEuchw_Get_B_2_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_2_HIGH);
}

u32 XEuchw_Get_B_2_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_2_HIGH - XEUCHW_CONTROL_ADDR_B_2_BASE + 1);
}

u32 XEuchw_Get_B_2_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_2;
}

u32 XEuchw_Get_B_2_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_2;
}

u32 XEuchw_Write_B_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_2_HIGH - XEUCHW_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_2_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_2_HIGH - XEUCHW_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_2_HIGH - XEUCHW_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_2_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_2_HIGH - XEUCHW_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_2_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_3_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_3_BASE);
}

u32 XEuchw_Get_B_3_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_3_HIGH);
}

u32 XEuchw_Get_B_3_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_3_HIGH - XEUCHW_CONTROL_ADDR_B_3_BASE + 1);
}

u32 XEuchw_Get_B_3_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_3;
}

u32 XEuchw_Get_B_3_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_3;
}

u32 XEuchw_Write_B_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_3_HIGH - XEUCHW_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_3_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_3_HIGH - XEUCHW_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_3_HIGH - XEUCHW_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_3_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_3_HIGH - XEUCHW_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_3_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_4_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_4_BASE);
}

u32 XEuchw_Get_B_4_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_4_HIGH);
}

u32 XEuchw_Get_B_4_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_4_HIGH - XEUCHW_CONTROL_ADDR_B_4_BASE + 1);
}

u32 XEuchw_Get_B_4_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_4;
}

u32 XEuchw_Get_B_4_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_4;
}

u32 XEuchw_Write_B_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_4_HIGH - XEUCHW_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_4_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_4_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_4_HIGH - XEUCHW_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_4_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_4_HIGH - XEUCHW_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_4_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_4_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_4_HIGH - XEUCHW_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_4_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_5_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_5_BASE);
}

u32 XEuchw_Get_B_5_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_5_HIGH);
}

u32 XEuchw_Get_B_5_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_5_HIGH - XEUCHW_CONTROL_ADDR_B_5_BASE + 1);
}

u32 XEuchw_Get_B_5_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_5;
}

u32 XEuchw_Get_B_5_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_5;
}

u32 XEuchw_Write_B_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_5_HIGH - XEUCHW_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_5_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_5_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_5_HIGH - XEUCHW_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_5_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_5_HIGH - XEUCHW_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_5_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_5_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_5_HIGH - XEUCHW_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_5_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_6_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_6_BASE);
}

u32 XEuchw_Get_B_6_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_6_HIGH);
}

u32 XEuchw_Get_B_6_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_6_HIGH - XEUCHW_CONTROL_ADDR_B_6_BASE + 1);
}

u32 XEuchw_Get_B_6_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_6;
}

u32 XEuchw_Get_B_6_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_6;
}

u32 XEuchw_Write_B_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_6_HIGH - XEUCHW_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_6_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_6_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_6_HIGH - XEUCHW_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_6_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_6_HIGH - XEUCHW_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_6_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_6_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_6_HIGH - XEUCHW_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_6_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_7_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_7_BASE);
}

u32 XEuchw_Get_B_7_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_7_HIGH);
}

u32 XEuchw_Get_B_7_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_7_HIGH - XEUCHW_CONTROL_ADDR_B_7_BASE + 1);
}

u32 XEuchw_Get_B_7_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_7;
}

u32 XEuchw_Get_B_7_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_7;
}

u32 XEuchw_Write_B_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_7_HIGH - XEUCHW_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_7_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_7_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_7_HIGH - XEUCHW_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_7_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_7_HIGH - XEUCHW_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_7_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_7_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_7_HIGH - XEUCHW_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_7_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_8_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_8_BASE);
}

u32 XEuchw_Get_B_8_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_8_HIGH);
}

u32 XEuchw_Get_B_8_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_8_HIGH - XEUCHW_CONTROL_ADDR_B_8_BASE + 1);
}

u32 XEuchw_Get_B_8_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_8;
}

u32 XEuchw_Get_B_8_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_8;
}

u32 XEuchw_Write_B_8_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_8_HIGH - XEUCHW_CONTROL_ADDR_B_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_8_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_8_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_8_HIGH - XEUCHW_CONTROL_ADDR_B_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_8_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_8_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_8_HIGH - XEUCHW_CONTROL_ADDR_B_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_8_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_8_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_8_HIGH - XEUCHW_CONTROL_ADDR_B_8_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_8_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_9_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_9_BASE);
}

u32 XEuchw_Get_B_9_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_9_HIGH);
}

u32 XEuchw_Get_B_9_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_9_HIGH - XEUCHW_CONTROL_ADDR_B_9_BASE + 1);
}

u32 XEuchw_Get_B_9_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_9;
}

u32 XEuchw_Get_B_9_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_9;
}

u32 XEuchw_Write_B_9_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_9_HIGH - XEUCHW_CONTROL_ADDR_B_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_9_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_9_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_9_HIGH - XEUCHW_CONTROL_ADDR_B_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_9_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_9_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_9_HIGH - XEUCHW_CONTROL_ADDR_B_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_9_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_9_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_9_HIGH - XEUCHW_CONTROL_ADDR_B_9_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_9_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_10_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_10_BASE);
}

u32 XEuchw_Get_B_10_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_10_HIGH);
}

u32 XEuchw_Get_B_10_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_10_HIGH - XEUCHW_CONTROL_ADDR_B_10_BASE + 1);
}

u32 XEuchw_Get_B_10_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_10;
}

u32 XEuchw_Get_B_10_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_10;
}

u32 XEuchw_Write_B_10_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_10_HIGH - XEUCHW_CONTROL_ADDR_B_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_10_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_10_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_10_HIGH - XEUCHW_CONTROL_ADDR_B_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_10_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_10_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_10_HIGH - XEUCHW_CONTROL_ADDR_B_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_10_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_10_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_10_HIGH - XEUCHW_CONTROL_ADDR_B_10_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_10_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_11_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_11_BASE);
}

u32 XEuchw_Get_B_11_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_11_HIGH);
}

u32 XEuchw_Get_B_11_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_11_HIGH - XEUCHW_CONTROL_ADDR_B_11_BASE + 1);
}

u32 XEuchw_Get_B_11_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_11;
}

u32 XEuchw_Get_B_11_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_11;
}

u32 XEuchw_Write_B_11_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_11_HIGH - XEUCHW_CONTROL_ADDR_B_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_11_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_11_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_11_HIGH - XEUCHW_CONTROL_ADDR_B_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_11_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_11_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_11_HIGH - XEUCHW_CONTROL_ADDR_B_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_11_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_11_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_11_HIGH - XEUCHW_CONTROL_ADDR_B_11_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_11_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_12_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_12_BASE);
}

u32 XEuchw_Get_B_12_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_12_HIGH);
}

u32 XEuchw_Get_B_12_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_12_HIGH - XEUCHW_CONTROL_ADDR_B_12_BASE + 1);
}

u32 XEuchw_Get_B_12_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_12;
}

u32 XEuchw_Get_B_12_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_12;
}

u32 XEuchw_Write_B_12_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_12_HIGH - XEUCHW_CONTROL_ADDR_B_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_12_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_12_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_12_HIGH - XEUCHW_CONTROL_ADDR_B_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_12_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_12_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_12_HIGH - XEUCHW_CONTROL_ADDR_B_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_12_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_12_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_12_HIGH - XEUCHW_CONTROL_ADDR_B_12_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_12_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_13_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_13_BASE);
}

u32 XEuchw_Get_B_13_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_13_HIGH);
}

u32 XEuchw_Get_B_13_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_13_HIGH - XEUCHW_CONTROL_ADDR_B_13_BASE + 1);
}

u32 XEuchw_Get_B_13_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_13;
}

u32 XEuchw_Get_B_13_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_13;
}

u32 XEuchw_Write_B_13_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_13_HIGH - XEUCHW_CONTROL_ADDR_B_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_13_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_13_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_13_HIGH - XEUCHW_CONTROL_ADDR_B_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_13_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_13_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_13_HIGH - XEUCHW_CONTROL_ADDR_B_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_13_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_13_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_13_HIGH - XEUCHW_CONTROL_ADDR_B_13_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_13_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_14_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_14_BASE);
}

u32 XEuchw_Get_B_14_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_14_HIGH);
}

u32 XEuchw_Get_B_14_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_14_HIGH - XEUCHW_CONTROL_ADDR_B_14_BASE + 1);
}

u32 XEuchw_Get_B_14_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_14;
}

u32 XEuchw_Get_B_14_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_14;
}

u32 XEuchw_Write_B_14_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_14_HIGH - XEUCHW_CONTROL_ADDR_B_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_14_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_14_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_14_HIGH - XEUCHW_CONTROL_ADDR_B_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_14_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_14_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_14_HIGH - XEUCHW_CONTROL_ADDR_B_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_14_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_14_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_14_HIGH - XEUCHW_CONTROL_ADDR_B_14_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_14_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_15_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_15_BASE);
}

u32 XEuchw_Get_B_15_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_15_HIGH);
}

u32 XEuchw_Get_B_15_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_15_HIGH - XEUCHW_CONTROL_ADDR_B_15_BASE + 1);
}

u32 XEuchw_Get_B_15_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_15;
}

u32 XEuchw_Get_B_15_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_15;
}

u32 XEuchw_Write_B_15_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_15_HIGH - XEUCHW_CONTROL_ADDR_B_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_15_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_15_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_15_HIGH - XEUCHW_CONTROL_ADDR_B_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_15_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_15_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_15_HIGH - XEUCHW_CONTROL_ADDR_B_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_15_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_15_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_15_HIGH - XEUCHW_CONTROL_ADDR_B_15_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_15_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_16_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_16_BASE);
}

u32 XEuchw_Get_B_16_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_16_HIGH);
}

u32 XEuchw_Get_B_16_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_16_HIGH - XEUCHW_CONTROL_ADDR_B_16_BASE + 1);
}

u32 XEuchw_Get_B_16_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_16;
}

u32 XEuchw_Get_B_16_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_16;
}

u32 XEuchw_Write_B_16_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_16_HIGH - XEUCHW_CONTROL_ADDR_B_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_16_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_16_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_16_HIGH - XEUCHW_CONTROL_ADDR_B_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_16_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_16_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_16_HIGH - XEUCHW_CONTROL_ADDR_B_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_16_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_16_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_16_HIGH - XEUCHW_CONTROL_ADDR_B_16_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_16_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_17_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_17_BASE);
}

u32 XEuchw_Get_B_17_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_17_HIGH);
}

u32 XEuchw_Get_B_17_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_17_HIGH - XEUCHW_CONTROL_ADDR_B_17_BASE + 1);
}

u32 XEuchw_Get_B_17_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_17;
}

u32 XEuchw_Get_B_17_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_17;
}

u32 XEuchw_Write_B_17_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_17_HIGH - XEUCHW_CONTROL_ADDR_B_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_17_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_17_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_17_HIGH - XEUCHW_CONTROL_ADDR_B_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_17_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_17_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_17_HIGH - XEUCHW_CONTROL_ADDR_B_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_17_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_17_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_17_HIGH - XEUCHW_CONTROL_ADDR_B_17_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_17_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_18_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_18_BASE);
}

u32 XEuchw_Get_B_18_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_18_HIGH);
}

u32 XEuchw_Get_B_18_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_18_HIGH - XEUCHW_CONTROL_ADDR_B_18_BASE + 1);
}

u32 XEuchw_Get_B_18_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_18;
}

u32 XEuchw_Get_B_18_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_18;
}

u32 XEuchw_Write_B_18_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_18_HIGH - XEUCHW_CONTROL_ADDR_B_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_18_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_18_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_18_HIGH - XEUCHW_CONTROL_ADDR_B_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_18_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_18_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_18_HIGH - XEUCHW_CONTROL_ADDR_B_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_18_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_18_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_18_HIGH - XEUCHW_CONTROL_ADDR_B_18_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_18_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_19_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_19_BASE);
}

u32 XEuchw_Get_B_19_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_19_HIGH);
}

u32 XEuchw_Get_B_19_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_19_HIGH - XEUCHW_CONTROL_ADDR_B_19_BASE + 1);
}

u32 XEuchw_Get_B_19_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_19;
}

u32 XEuchw_Get_B_19_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_19;
}

u32 XEuchw_Write_B_19_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_19_HIGH - XEUCHW_CONTROL_ADDR_B_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_19_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_19_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_19_HIGH - XEUCHW_CONTROL_ADDR_B_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_19_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_19_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_19_HIGH - XEUCHW_CONTROL_ADDR_B_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_19_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_19_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_19_HIGH - XEUCHW_CONTROL_ADDR_B_19_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_19_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_20_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_20_BASE);
}

u32 XEuchw_Get_B_20_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_20_HIGH);
}

u32 XEuchw_Get_B_20_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_20_HIGH - XEUCHW_CONTROL_ADDR_B_20_BASE + 1);
}

u32 XEuchw_Get_B_20_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_20;
}

u32 XEuchw_Get_B_20_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_20;
}

u32 XEuchw_Write_B_20_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_20_HIGH - XEUCHW_CONTROL_ADDR_B_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_20_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_20_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_20_HIGH - XEUCHW_CONTROL_ADDR_B_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_20_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_20_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_20_HIGH - XEUCHW_CONTROL_ADDR_B_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_20_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_20_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_20_HIGH - XEUCHW_CONTROL_ADDR_B_20_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_20_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_21_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_21_BASE);
}

u32 XEuchw_Get_B_21_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_21_HIGH);
}

u32 XEuchw_Get_B_21_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_21_HIGH - XEUCHW_CONTROL_ADDR_B_21_BASE + 1);
}

u32 XEuchw_Get_B_21_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_21;
}

u32 XEuchw_Get_B_21_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_21;
}

u32 XEuchw_Write_B_21_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_21_HIGH - XEUCHW_CONTROL_ADDR_B_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_21_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_21_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_21_HIGH - XEUCHW_CONTROL_ADDR_B_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_21_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_21_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_21_HIGH - XEUCHW_CONTROL_ADDR_B_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_21_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_21_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_21_HIGH - XEUCHW_CONTROL_ADDR_B_21_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_21_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_22_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_22_BASE);
}

u32 XEuchw_Get_B_22_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_22_HIGH);
}

u32 XEuchw_Get_B_22_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_22_HIGH - XEUCHW_CONTROL_ADDR_B_22_BASE + 1);
}

u32 XEuchw_Get_B_22_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_22;
}

u32 XEuchw_Get_B_22_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_22;
}

u32 XEuchw_Write_B_22_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_22_HIGH - XEUCHW_CONTROL_ADDR_B_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_22_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_22_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_22_HIGH - XEUCHW_CONTROL_ADDR_B_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_22_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_22_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_22_HIGH - XEUCHW_CONTROL_ADDR_B_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_22_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_22_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_22_HIGH - XEUCHW_CONTROL_ADDR_B_22_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_22_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_23_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_23_BASE);
}

u32 XEuchw_Get_B_23_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_23_HIGH);
}

u32 XEuchw_Get_B_23_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_23_HIGH - XEUCHW_CONTROL_ADDR_B_23_BASE + 1);
}

u32 XEuchw_Get_B_23_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_23;
}

u32 XEuchw_Get_B_23_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_23;
}

u32 XEuchw_Write_B_23_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_23_HIGH - XEUCHW_CONTROL_ADDR_B_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_23_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_23_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_23_HIGH - XEUCHW_CONTROL_ADDR_B_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_23_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_23_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_23_HIGH - XEUCHW_CONTROL_ADDR_B_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_23_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_23_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_23_HIGH - XEUCHW_CONTROL_ADDR_B_23_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_23_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_24_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_24_BASE);
}

u32 XEuchw_Get_B_24_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_24_HIGH);
}

u32 XEuchw_Get_B_24_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_24_HIGH - XEUCHW_CONTROL_ADDR_B_24_BASE + 1);
}

u32 XEuchw_Get_B_24_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_24;
}

u32 XEuchw_Get_B_24_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_24;
}

u32 XEuchw_Write_B_24_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_24_HIGH - XEUCHW_CONTROL_ADDR_B_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_24_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_24_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_24_HIGH - XEUCHW_CONTROL_ADDR_B_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_24_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_24_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_24_HIGH - XEUCHW_CONTROL_ADDR_B_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_24_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_24_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_24_HIGH - XEUCHW_CONTROL_ADDR_B_24_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_24_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_25_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_25_BASE);
}

u32 XEuchw_Get_B_25_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_25_HIGH);
}

u32 XEuchw_Get_B_25_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_25_HIGH - XEUCHW_CONTROL_ADDR_B_25_BASE + 1);
}

u32 XEuchw_Get_B_25_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_25;
}

u32 XEuchw_Get_B_25_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_25;
}

u32 XEuchw_Write_B_25_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_25_HIGH - XEUCHW_CONTROL_ADDR_B_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_25_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_25_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_25_HIGH - XEUCHW_CONTROL_ADDR_B_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_25_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_25_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_25_HIGH - XEUCHW_CONTROL_ADDR_B_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_25_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_25_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_25_HIGH - XEUCHW_CONTROL_ADDR_B_25_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_25_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_26_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_26_BASE);
}

u32 XEuchw_Get_B_26_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_26_HIGH);
}

u32 XEuchw_Get_B_26_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_26_HIGH - XEUCHW_CONTROL_ADDR_B_26_BASE + 1);
}

u32 XEuchw_Get_B_26_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_26;
}

u32 XEuchw_Get_B_26_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_26;
}

u32 XEuchw_Write_B_26_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_26_HIGH - XEUCHW_CONTROL_ADDR_B_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_26_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_26_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_26_HIGH - XEUCHW_CONTROL_ADDR_B_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_26_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_26_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_26_HIGH - XEUCHW_CONTROL_ADDR_B_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_26_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_26_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_26_HIGH - XEUCHW_CONTROL_ADDR_B_26_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_26_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_27_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_27_BASE);
}

u32 XEuchw_Get_B_27_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_27_HIGH);
}

u32 XEuchw_Get_B_27_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_27_HIGH - XEUCHW_CONTROL_ADDR_B_27_BASE + 1);
}

u32 XEuchw_Get_B_27_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_27;
}

u32 XEuchw_Get_B_27_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_27;
}

u32 XEuchw_Write_B_27_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_27_HIGH - XEUCHW_CONTROL_ADDR_B_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_27_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_27_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_27_HIGH - XEUCHW_CONTROL_ADDR_B_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_27_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_27_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_27_HIGH - XEUCHW_CONTROL_ADDR_B_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_27_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_27_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_27_HIGH - XEUCHW_CONTROL_ADDR_B_27_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_27_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_28_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_28_BASE);
}

u32 XEuchw_Get_B_28_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_28_HIGH);
}

u32 XEuchw_Get_B_28_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_28_HIGH - XEUCHW_CONTROL_ADDR_B_28_BASE + 1);
}

u32 XEuchw_Get_B_28_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_28;
}

u32 XEuchw_Get_B_28_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_28;
}

u32 XEuchw_Write_B_28_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_28_HIGH - XEUCHW_CONTROL_ADDR_B_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_28_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_28_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_28_HIGH - XEUCHW_CONTROL_ADDR_B_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_28_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_28_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_28_HIGH - XEUCHW_CONTROL_ADDR_B_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_28_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_28_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_28_HIGH - XEUCHW_CONTROL_ADDR_B_28_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_28_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_29_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_29_BASE);
}

u32 XEuchw_Get_B_29_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_29_HIGH);
}

u32 XEuchw_Get_B_29_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_29_HIGH - XEUCHW_CONTROL_ADDR_B_29_BASE + 1);
}

u32 XEuchw_Get_B_29_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_29;
}

u32 XEuchw_Get_B_29_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_29;
}

u32 XEuchw_Write_B_29_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_29_HIGH - XEUCHW_CONTROL_ADDR_B_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_29_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_29_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_29_HIGH - XEUCHW_CONTROL_ADDR_B_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_29_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_29_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_29_HIGH - XEUCHW_CONTROL_ADDR_B_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_29_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_29_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_29_HIGH - XEUCHW_CONTROL_ADDR_B_29_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_29_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_30_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_30_BASE);
}

u32 XEuchw_Get_B_30_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_30_HIGH);
}

u32 XEuchw_Get_B_30_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_30_HIGH - XEUCHW_CONTROL_ADDR_B_30_BASE + 1);
}

u32 XEuchw_Get_B_30_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_30;
}

u32 XEuchw_Get_B_30_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_30;
}

u32 XEuchw_Write_B_30_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_30_HIGH - XEUCHW_CONTROL_ADDR_B_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_30_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_30_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_30_HIGH - XEUCHW_CONTROL_ADDR_B_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_30_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_30_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_30_HIGH - XEUCHW_CONTROL_ADDR_B_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_30_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_30_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_30_HIGH - XEUCHW_CONTROL_ADDR_B_30_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_30_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_31_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_31_BASE);
}

u32 XEuchw_Get_B_31_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_31_HIGH);
}

u32 XEuchw_Get_B_31_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_31_HIGH - XEUCHW_CONTROL_ADDR_B_31_BASE + 1);
}

u32 XEuchw_Get_B_31_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_31;
}

u32 XEuchw_Get_B_31_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_31;
}

u32 XEuchw_Write_B_31_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_31_HIGH - XEUCHW_CONTROL_ADDR_B_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_31_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_31_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_31_HIGH - XEUCHW_CONTROL_ADDR_B_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_31_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_31_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_31_HIGH - XEUCHW_CONTROL_ADDR_B_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_31_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_31_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_31_HIGH - XEUCHW_CONTROL_ADDR_B_31_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_31_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_32_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_32_BASE);
}

u32 XEuchw_Get_B_32_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_32_HIGH);
}

u32 XEuchw_Get_B_32_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_32_HIGH - XEUCHW_CONTROL_ADDR_B_32_BASE + 1);
}

u32 XEuchw_Get_B_32_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_32;
}

u32 XEuchw_Get_B_32_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_32;
}

u32 XEuchw_Write_B_32_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_32_HIGH - XEUCHW_CONTROL_ADDR_B_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_32_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_32_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_32_HIGH - XEUCHW_CONTROL_ADDR_B_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_32_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_32_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_32_HIGH - XEUCHW_CONTROL_ADDR_B_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_32_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_32_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_32_HIGH - XEUCHW_CONTROL_ADDR_B_32_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_32_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_33_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_33_BASE);
}

u32 XEuchw_Get_B_33_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_33_HIGH);
}

u32 XEuchw_Get_B_33_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_33_HIGH - XEUCHW_CONTROL_ADDR_B_33_BASE + 1);
}

u32 XEuchw_Get_B_33_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_33;
}

u32 XEuchw_Get_B_33_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_33;
}

u32 XEuchw_Write_B_33_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_33_HIGH - XEUCHW_CONTROL_ADDR_B_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_33_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_33_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_33_HIGH - XEUCHW_CONTROL_ADDR_B_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_33_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_33_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_33_HIGH - XEUCHW_CONTROL_ADDR_B_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_33_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_33_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_33_HIGH - XEUCHW_CONTROL_ADDR_B_33_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_33_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_34_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_34_BASE);
}

u32 XEuchw_Get_B_34_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_34_HIGH);
}

u32 XEuchw_Get_B_34_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_34_HIGH - XEUCHW_CONTROL_ADDR_B_34_BASE + 1);
}

u32 XEuchw_Get_B_34_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_34;
}

u32 XEuchw_Get_B_34_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_34;
}

u32 XEuchw_Write_B_34_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_34_HIGH - XEUCHW_CONTROL_ADDR_B_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_34_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_34_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_34_HIGH - XEUCHW_CONTROL_ADDR_B_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_34_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_34_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_34_HIGH - XEUCHW_CONTROL_ADDR_B_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_34_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_34_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_34_HIGH - XEUCHW_CONTROL_ADDR_B_34_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_34_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_35_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_35_BASE);
}

u32 XEuchw_Get_B_35_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_35_HIGH);
}

u32 XEuchw_Get_B_35_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_35_HIGH - XEUCHW_CONTROL_ADDR_B_35_BASE + 1);
}

u32 XEuchw_Get_B_35_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_35;
}

u32 XEuchw_Get_B_35_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_35;
}

u32 XEuchw_Write_B_35_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_35_HIGH - XEUCHW_CONTROL_ADDR_B_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_35_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_35_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_35_HIGH - XEUCHW_CONTROL_ADDR_B_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_35_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_35_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_35_HIGH - XEUCHW_CONTROL_ADDR_B_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_35_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_35_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_35_HIGH - XEUCHW_CONTROL_ADDR_B_35_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_35_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_36_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_36_BASE);
}

u32 XEuchw_Get_B_36_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_36_HIGH);
}

u32 XEuchw_Get_B_36_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_36_HIGH - XEUCHW_CONTROL_ADDR_B_36_BASE + 1);
}

u32 XEuchw_Get_B_36_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_36;
}

u32 XEuchw_Get_B_36_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_36;
}

u32 XEuchw_Write_B_36_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_36_HIGH - XEUCHW_CONTROL_ADDR_B_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_36_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_36_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_36_HIGH - XEUCHW_CONTROL_ADDR_B_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_36_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_36_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_36_HIGH - XEUCHW_CONTROL_ADDR_B_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_36_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_36_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_36_HIGH - XEUCHW_CONTROL_ADDR_B_36_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_36_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_37_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_37_BASE);
}

u32 XEuchw_Get_B_37_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_37_HIGH);
}

u32 XEuchw_Get_B_37_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_37_HIGH - XEUCHW_CONTROL_ADDR_B_37_BASE + 1);
}

u32 XEuchw_Get_B_37_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_37;
}

u32 XEuchw_Get_B_37_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_37;
}

u32 XEuchw_Write_B_37_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_37_HIGH - XEUCHW_CONTROL_ADDR_B_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_37_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_37_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_37_HIGH - XEUCHW_CONTROL_ADDR_B_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_37_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_37_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_37_HIGH - XEUCHW_CONTROL_ADDR_B_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_37_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_37_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_37_HIGH - XEUCHW_CONTROL_ADDR_B_37_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_37_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_38_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_38_BASE);
}

u32 XEuchw_Get_B_38_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_38_HIGH);
}

u32 XEuchw_Get_B_38_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_38_HIGH - XEUCHW_CONTROL_ADDR_B_38_BASE + 1);
}

u32 XEuchw_Get_B_38_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_38;
}

u32 XEuchw_Get_B_38_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_38;
}

u32 XEuchw_Write_B_38_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_38_HIGH - XEUCHW_CONTROL_ADDR_B_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_38_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_38_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_38_HIGH - XEUCHW_CONTROL_ADDR_B_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_38_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_38_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_38_HIGH - XEUCHW_CONTROL_ADDR_B_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_38_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_38_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_38_HIGH - XEUCHW_CONTROL_ADDR_B_38_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_38_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_39_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_39_BASE);
}

u32 XEuchw_Get_B_39_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_39_HIGH);
}

u32 XEuchw_Get_B_39_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_39_HIGH - XEUCHW_CONTROL_ADDR_B_39_BASE + 1);
}

u32 XEuchw_Get_B_39_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_39;
}

u32 XEuchw_Get_B_39_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_39;
}

u32 XEuchw_Write_B_39_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_39_HIGH - XEUCHW_CONTROL_ADDR_B_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_39_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_39_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_39_HIGH - XEUCHW_CONTROL_ADDR_B_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_39_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_39_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_39_HIGH - XEUCHW_CONTROL_ADDR_B_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_39_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_39_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_39_HIGH - XEUCHW_CONTROL_ADDR_B_39_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_39_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_40_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_40_BASE);
}

u32 XEuchw_Get_B_40_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_40_HIGH);
}

u32 XEuchw_Get_B_40_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_40_HIGH - XEUCHW_CONTROL_ADDR_B_40_BASE + 1);
}

u32 XEuchw_Get_B_40_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_40;
}

u32 XEuchw_Get_B_40_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_40;
}

u32 XEuchw_Write_B_40_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_40_HIGH - XEUCHW_CONTROL_ADDR_B_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_40_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_40_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_40_HIGH - XEUCHW_CONTROL_ADDR_B_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_40_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_40_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_40_HIGH - XEUCHW_CONTROL_ADDR_B_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_40_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_40_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_40_HIGH - XEUCHW_CONTROL_ADDR_B_40_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_40_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_41_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_41_BASE);
}

u32 XEuchw_Get_B_41_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_41_HIGH);
}

u32 XEuchw_Get_B_41_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_41_HIGH - XEUCHW_CONTROL_ADDR_B_41_BASE + 1);
}

u32 XEuchw_Get_B_41_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_41;
}

u32 XEuchw_Get_B_41_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_41;
}

u32 XEuchw_Write_B_41_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_41_HIGH - XEUCHW_CONTROL_ADDR_B_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_41_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_41_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_41_HIGH - XEUCHW_CONTROL_ADDR_B_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_41_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_41_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_41_HIGH - XEUCHW_CONTROL_ADDR_B_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_41_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_41_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_41_HIGH - XEUCHW_CONTROL_ADDR_B_41_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_41_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_42_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_42_BASE);
}

u32 XEuchw_Get_B_42_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_42_HIGH);
}

u32 XEuchw_Get_B_42_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_42_HIGH - XEUCHW_CONTROL_ADDR_B_42_BASE + 1);
}

u32 XEuchw_Get_B_42_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_42;
}

u32 XEuchw_Get_B_42_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_42;
}

u32 XEuchw_Write_B_42_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_42_HIGH - XEUCHW_CONTROL_ADDR_B_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_42_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_42_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_42_HIGH - XEUCHW_CONTROL_ADDR_B_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_42_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_42_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_42_HIGH - XEUCHW_CONTROL_ADDR_B_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_42_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_42_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_42_HIGH - XEUCHW_CONTROL_ADDR_B_42_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_42_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_43_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_43_BASE);
}

u32 XEuchw_Get_B_43_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_43_HIGH);
}

u32 XEuchw_Get_B_43_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_43_HIGH - XEUCHW_CONTROL_ADDR_B_43_BASE + 1);
}

u32 XEuchw_Get_B_43_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_43;
}

u32 XEuchw_Get_B_43_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_43;
}

u32 XEuchw_Write_B_43_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_43_HIGH - XEUCHW_CONTROL_ADDR_B_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_43_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_43_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_43_HIGH - XEUCHW_CONTROL_ADDR_B_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_43_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_43_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_43_HIGH - XEUCHW_CONTROL_ADDR_B_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_43_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_43_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_43_HIGH - XEUCHW_CONTROL_ADDR_B_43_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_43_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_44_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_44_BASE);
}

u32 XEuchw_Get_B_44_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_44_HIGH);
}

u32 XEuchw_Get_B_44_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_44_HIGH - XEUCHW_CONTROL_ADDR_B_44_BASE + 1);
}

u32 XEuchw_Get_B_44_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_44;
}

u32 XEuchw_Get_B_44_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_44;
}

u32 XEuchw_Write_B_44_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_44_HIGH - XEUCHW_CONTROL_ADDR_B_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_44_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_44_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_44_HIGH - XEUCHW_CONTROL_ADDR_B_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_44_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_44_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_44_HIGH - XEUCHW_CONTROL_ADDR_B_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_44_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_44_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_44_HIGH - XEUCHW_CONTROL_ADDR_B_44_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_44_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_45_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_45_BASE);
}

u32 XEuchw_Get_B_45_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_45_HIGH);
}

u32 XEuchw_Get_B_45_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_45_HIGH - XEUCHW_CONTROL_ADDR_B_45_BASE + 1);
}

u32 XEuchw_Get_B_45_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_45;
}

u32 XEuchw_Get_B_45_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_45;
}

u32 XEuchw_Write_B_45_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_45_HIGH - XEUCHW_CONTROL_ADDR_B_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_45_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_45_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_45_HIGH - XEUCHW_CONTROL_ADDR_B_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_45_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_45_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_45_HIGH - XEUCHW_CONTROL_ADDR_B_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_45_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_45_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_45_HIGH - XEUCHW_CONTROL_ADDR_B_45_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_45_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_46_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_46_BASE);
}

u32 XEuchw_Get_B_46_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_46_HIGH);
}

u32 XEuchw_Get_B_46_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_46_HIGH - XEUCHW_CONTROL_ADDR_B_46_BASE + 1);
}

u32 XEuchw_Get_B_46_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_46;
}

u32 XEuchw_Get_B_46_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_46;
}

u32 XEuchw_Write_B_46_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_46_HIGH - XEUCHW_CONTROL_ADDR_B_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_46_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_46_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_46_HIGH - XEUCHW_CONTROL_ADDR_B_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_46_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_46_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_46_HIGH - XEUCHW_CONTROL_ADDR_B_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_46_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_46_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_46_HIGH - XEUCHW_CONTROL_ADDR_B_46_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_46_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_47_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_47_BASE);
}

u32 XEuchw_Get_B_47_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_47_HIGH);
}

u32 XEuchw_Get_B_47_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_47_HIGH - XEUCHW_CONTROL_ADDR_B_47_BASE + 1);
}

u32 XEuchw_Get_B_47_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_47;
}

u32 XEuchw_Get_B_47_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_47;
}

u32 XEuchw_Write_B_47_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_47_HIGH - XEUCHW_CONTROL_ADDR_B_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_47_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_47_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_47_HIGH - XEUCHW_CONTROL_ADDR_B_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_47_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_47_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_47_HIGH - XEUCHW_CONTROL_ADDR_B_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_47_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_47_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_47_HIGH - XEUCHW_CONTROL_ADDR_B_47_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_47_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_48_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_48_BASE);
}

u32 XEuchw_Get_B_48_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_48_HIGH);
}

u32 XEuchw_Get_B_48_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_48_HIGH - XEUCHW_CONTROL_ADDR_B_48_BASE + 1);
}

u32 XEuchw_Get_B_48_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_48;
}

u32 XEuchw_Get_B_48_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_48;
}

u32 XEuchw_Write_B_48_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_48_HIGH - XEUCHW_CONTROL_ADDR_B_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_48_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_48_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_48_HIGH - XEUCHW_CONTROL_ADDR_B_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_48_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_48_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_48_HIGH - XEUCHW_CONTROL_ADDR_B_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_48_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_48_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_48_HIGH - XEUCHW_CONTROL_ADDR_B_48_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_48_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_49_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_49_BASE);
}

u32 XEuchw_Get_B_49_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_49_HIGH);
}

u32 XEuchw_Get_B_49_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_49_HIGH - XEUCHW_CONTROL_ADDR_B_49_BASE + 1);
}

u32 XEuchw_Get_B_49_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_49;
}

u32 XEuchw_Get_B_49_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_49;
}

u32 XEuchw_Write_B_49_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_49_HIGH - XEUCHW_CONTROL_ADDR_B_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_49_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_49_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_49_HIGH - XEUCHW_CONTROL_ADDR_B_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_49_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_49_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_49_HIGH - XEUCHW_CONTROL_ADDR_B_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_49_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_49_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_49_HIGH - XEUCHW_CONTROL_ADDR_B_49_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_49_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_50_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_50_BASE);
}

u32 XEuchw_Get_B_50_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_50_HIGH);
}

u32 XEuchw_Get_B_50_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_50_HIGH - XEUCHW_CONTROL_ADDR_B_50_BASE + 1);
}

u32 XEuchw_Get_B_50_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_50;
}

u32 XEuchw_Get_B_50_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_50;
}

u32 XEuchw_Write_B_50_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_50_HIGH - XEUCHW_CONTROL_ADDR_B_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_50_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_50_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_50_HIGH - XEUCHW_CONTROL_ADDR_B_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_50_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_50_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_50_HIGH - XEUCHW_CONTROL_ADDR_B_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_50_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_50_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_50_HIGH - XEUCHW_CONTROL_ADDR_B_50_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_50_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_51_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_51_BASE);
}

u32 XEuchw_Get_B_51_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_51_HIGH);
}

u32 XEuchw_Get_B_51_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_51_HIGH - XEUCHW_CONTROL_ADDR_B_51_BASE + 1);
}

u32 XEuchw_Get_B_51_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_51;
}

u32 XEuchw_Get_B_51_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_51;
}

u32 XEuchw_Write_B_51_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_51_HIGH - XEUCHW_CONTROL_ADDR_B_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_51_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_51_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_51_HIGH - XEUCHW_CONTROL_ADDR_B_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_51_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_51_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_51_HIGH - XEUCHW_CONTROL_ADDR_B_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_51_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_51_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_51_HIGH - XEUCHW_CONTROL_ADDR_B_51_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_51_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_52_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_52_BASE);
}

u32 XEuchw_Get_B_52_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_52_HIGH);
}

u32 XEuchw_Get_B_52_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_52_HIGH - XEUCHW_CONTROL_ADDR_B_52_BASE + 1);
}

u32 XEuchw_Get_B_52_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_52;
}

u32 XEuchw_Get_B_52_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_52;
}

u32 XEuchw_Write_B_52_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_52_HIGH - XEUCHW_CONTROL_ADDR_B_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_52_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_52_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_52_HIGH - XEUCHW_CONTROL_ADDR_B_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_52_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_52_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_52_HIGH - XEUCHW_CONTROL_ADDR_B_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_52_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_52_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_52_HIGH - XEUCHW_CONTROL_ADDR_B_52_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_52_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_53_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_53_BASE);
}

u32 XEuchw_Get_B_53_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_53_HIGH);
}

u32 XEuchw_Get_B_53_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_53_HIGH - XEUCHW_CONTROL_ADDR_B_53_BASE + 1);
}

u32 XEuchw_Get_B_53_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_53;
}

u32 XEuchw_Get_B_53_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_53;
}

u32 XEuchw_Write_B_53_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_53_HIGH - XEUCHW_CONTROL_ADDR_B_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_53_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_53_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_53_HIGH - XEUCHW_CONTROL_ADDR_B_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_53_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_53_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_53_HIGH - XEUCHW_CONTROL_ADDR_B_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_53_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_53_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_53_HIGH - XEUCHW_CONTROL_ADDR_B_53_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_53_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_54_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_54_BASE);
}

u32 XEuchw_Get_B_54_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_54_HIGH);
}

u32 XEuchw_Get_B_54_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_54_HIGH - XEUCHW_CONTROL_ADDR_B_54_BASE + 1);
}

u32 XEuchw_Get_B_54_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_54;
}

u32 XEuchw_Get_B_54_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_54;
}

u32 XEuchw_Write_B_54_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_54_HIGH - XEUCHW_CONTROL_ADDR_B_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_54_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_54_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_54_HIGH - XEUCHW_CONTROL_ADDR_B_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_54_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_54_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_54_HIGH - XEUCHW_CONTROL_ADDR_B_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_54_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_54_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_54_HIGH - XEUCHW_CONTROL_ADDR_B_54_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_54_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_55_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_55_BASE);
}

u32 XEuchw_Get_B_55_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_55_HIGH);
}

u32 XEuchw_Get_B_55_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_55_HIGH - XEUCHW_CONTROL_ADDR_B_55_BASE + 1);
}

u32 XEuchw_Get_B_55_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_55;
}

u32 XEuchw_Get_B_55_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_55;
}

u32 XEuchw_Write_B_55_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_55_HIGH - XEUCHW_CONTROL_ADDR_B_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_55_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_55_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_55_HIGH - XEUCHW_CONTROL_ADDR_B_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_55_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_55_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_55_HIGH - XEUCHW_CONTROL_ADDR_B_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_55_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_55_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_55_HIGH - XEUCHW_CONTROL_ADDR_B_55_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_55_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_56_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_56_BASE);
}

u32 XEuchw_Get_B_56_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_56_HIGH);
}

u32 XEuchw_Get_B_56_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_56_HIGH - XEUCHW_CONTROL_ADDR_B_56_BASE + 1);
}

u32 XEuchw_Get_B_56_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_56;
}

u32 XEuchw_Get_B_56_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_56;
}

u32 XEuchw_Write_B_56_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_56_HIGH - XEUCHW_CONTROL_ADDR_B_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_56_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_56_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_56_HIGH - XEUCHW_CONTROL_ADDR_B_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_56_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_56_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_56_HIGH - XEUCHW_CONTROL_ADDR_B_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_56_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_56_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_56_HIGH - XEUCHW_CONTROL_ADDR_B_56_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_56_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_57_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_57_BASE);
}

u32 XEuchw_Get_B_57_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_57_HIGH);
}

u32 XEuchw_Get_B_57_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_57_HIGH - XEUCHW_CONTROL_ADDR_B_57_BASE + 1);
}

u32 XEuchw_Get_B_57_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_57;
}

u32 XEuchw_Get_B_57_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_57;
}

u32 XEuchw_Write_B_57_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_57_HIGH - XEUCHW_CONTROL_ADDR_B_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_57_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_57_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_57_HIGH - XEUCHW_CONTROL_ADDR_B_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_57_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_57_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_57_HIGH - XEUCHW_CONTROL_ADDR_B_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_57_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_57_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_57_HIGH - XEUCHW_CONTROL_ADDR_B_57_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_57_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_58_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_58_BASE);
}

u32 XEuchw_Get_B_58_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_58_HIGH);
}

u32 XEuchw_Get_B_58_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_58_HIGH - XEUCHW_CONTROL_ADDR_B_58_BASE + 1);
}

u32 XEuchw_Get_B_58_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_58;
}

u32 XEuchw_Get_B_58_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_58;
}

u32 XEuchw_Write_B_58_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_58_HIGH - XEUCHW_CONTROL_ADDR_B_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_58_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_58_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_58_HIGH - XEUCHW_CONTROL_ADDR_B_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_58_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_58_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_58_HIGH - XEUCHW_CONTROL_ADDR_B_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_58_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_58_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_58_HIGH - XEUCHW_CONTROL_ADDR_B_58_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_58_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_59_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_59_BASE);
}

u32 XEuchw_Get_B_59_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_59_HIGH);
}

u32 XEuchw_Get_B_59_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_59_HIGH - XEUCHW_CONTROL_ADDR_B_59_BASE + 1);
}

u32 XEuchw_Get_B_59_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_59;
}

u32 XEuchw_Get_B_59_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_59;
}

u32 XEuchw_Write_B_59_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_59_HIGH - XEUCHW_CONTROL_ADDR_B_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_59_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_59_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_59_HIGH - XEUCHW_CONTROL_ADDR_B_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_59_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_59_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_59_HIGH - XEUCHW_CONTROL_ADDR_B_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_59_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_59_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_59_HIGH - XEUCHW_CONTROL_ADDR_B_59_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_59_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_60_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_60_BASE);
}

u32 XEuchw_Get_B_60_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_60_HIGH);
}

u32 XEuchw_Get_B_60_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_60_HIGH - XEUCHW_CONTROL_ADDR_B_60_BASE + 1);
}

u32 XEuchw_Get_B_60_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_60;
}

u32 XEuchw_Get_B_60_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_60;
}

u32 XEuchw_Write_B_60_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_60_HIGH - XEUCHW_CONTROL_ADDR_B_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_60_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_60_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_60_HIGH - XEUCHW_CONTROL_ADDR_B_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_60_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_60_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_60_HIGH - XEUCHW_CONTROL_ADDR_B_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_60_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_60_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_60_HIGH - XEUCHW_CONTROL_ADDR_B_60_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_60_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_61_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_61_BASE);
}

u32 XEuchw_Get_B_61_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_61_HIGH);
}

u32 XEuchw_Get_B_61_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_61_HIGH - XEUCHW_CONTROL_ADDR_B_61_BASE + 1);
}

u32 XEuchw_Get_B_61_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_61;
}

u32 XEuchw_Get_B_61_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_61;
}

u32 XEuchw_Write_B_61_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_61_HIGH - XEUCHW_CONTROL_ADDR_B_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_61_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_61_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_61_HIGH - XEUCHW_CONTROL_ADDR_B_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_61_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_61_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_61_HIGH - XEUCHW_CONTROL_ADDR_B_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_61_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_61_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_61_HIGH - XEUCHW_CONTROL_ADDR_B_61_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_61_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_62_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_62_BASE);
}

u32 XEuchw_Get_B_62_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_62_HIGH);
}

u32 XEuchw_Get_B_62_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_62_HIGH - XEUCHW_CONTROL_ADDR_B_62_BASE + 1);
}

u32 XEuchw_Get_B_62_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_62;
}

u32 XEuchw_Get_B_62_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_62;
}

u32 XEuchw_Write_B_62_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_62_HIGH - XEUCHW_CONTROL_ADDR_B_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_62_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_62_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_62_HIGH - XEUCHW_CONTROL_ADDR_B_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_62_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_62_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_62_HIGH - XEUCHW_CONTROL_ADDR_B_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_62_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_62_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_62_HIGH - XEUCHW_CONTROL_ADDR_B_62_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_62_BASE + offset + i);
    }
    return length;
}

u32 XEuchw_Get_B_63_BaseAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_63_BASE);
}

u32 XEuchw_Get_B_63_HighAddress(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_63_HIGH);
}

u32 XEuchw_Get_B_63_TotalBytes(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCHW_CONTROL_ADDR_B_63_HIGH - XEUCHW_CONTROL_ADDR_B_63_BASE + 1);
}

u32 XEuchw_Get_B_63_BitWidth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_WIDTH_B_63;
}

u32 XEuchw_Get_B_63_Depth(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCHW_CONTROL_DEPTH_B_63;
}

u32 XEuchw_Write_B_63_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_63_HIGH - XEUCHW_CONTROL_ADDR_B_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_63_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_63_Words(XEuchw *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCHW_CONTROL_ADDR_B_63_HIGH - XEUCHW_CONTROL_ADDR_B_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_63_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEuchw_Write_B_63_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_63_HIGH - XEUCHW_CONTROL_ADDR_B_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_63_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEuchw_Read_B_63_Bytes(XEuchw *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCHW_CONTROL_ADDR_B_63_HIGH - XEUCHW_CONTROL_ADDR_B_63_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCHW_CONTROL_ADDR_B_63_BASE + offset + i);
    }
    return length;
}

void XEuchw_InterruptGlobalEnable(XEuchw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_GIE, 1);
}

void XEuchw_InterruptGlobalDisable(XEuchw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_GIE, 0);
}

void XEuchw_InterruptEnable(XEuchw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_IER);
    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_IER, Register | Mask);
}

void XEuchw_InterruptDisable(XEuchw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_IER);
    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_IER, Register & (~Mask));
}

void XEuchw_InterruptClear(XEuchw *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_ISR, Mask);
}

u32 XEuchw_InterruptGetEnabled(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_IER);
}

u32 XEuchw_InterruptGetStatus(XEuchw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_ISR);
}

