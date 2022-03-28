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

