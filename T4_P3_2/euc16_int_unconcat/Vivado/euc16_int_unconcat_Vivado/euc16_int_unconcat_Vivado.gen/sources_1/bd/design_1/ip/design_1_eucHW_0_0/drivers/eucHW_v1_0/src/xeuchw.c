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

void XEuchw_Set_A_0(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_0_DATA, Data);
}

u32 XEuchw_Get_A_0(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_0_DATA);
    return Data;
}

void XEuchw_Set_A_1(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_1_DATA, Data);
}

u32 XEuchw_Get_A_1(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_1_DATA);
    return Data;
}

void XEuchw_Set_A_2(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_2_DATA, Data);
}

u32 XEuchw_Get_A_2(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_2_DATA);
    return Data;
}

void XEuchw_Set_A_3(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_3_DATA, Data);
}

u32 XEuchw_Get_A_3(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_3_DATA);
    return Data;
}

void XEuchw_Set_A_4(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_4_DATA, Data);
}

u32 XEuchw_Get_A_4(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_4_DATA);
    return Data;
}

void XEuchw_Set_A_5(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_5_DATA, Data);
}

u32 XEuchw_Get_A_5(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_5_DATA);
    return Data;
}

void XEuchw_Set_A_6(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_6_DATA, Data);
}

u32 XEuchw_Get_A_6(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_6_DATA);
    return Data;
}

void XEuchw_Set_A_7(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_7_DATA, Data);
}

u32 XEuchw_Get_A_7(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_7_DATA);
    return Data;
}

void XEuchw_Set_A_8(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_8_DATA, Data);
}

u32 XEuchw_Get_A_8(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_8_DATA);
    return Data;
}

void XEuchw_Set_A_9(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_9_DATA, Data);
}

u32 XEuchw_Get_A_9(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_9_DATA);
    return Data;
}

void XEuchw_Set_A_10(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_10_DATA, Data);
}

u32 XEuchw_Get_A_10(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_10_DATA);
    return Data;
}

void XEuchw_Set_A_11(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_11_DATA, Data);
}

u32 XEuchw_Get_A_11(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_11_DATA);
    return Data;
}

void XEuchw_Set_A_12(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_12_DATA, Data);
}

u32 XEuchw_Get_A_12(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_12_DATA);
    return Data;
}

void XEuchw_Set_A_13(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_13_DATA, Data);
}

u32 XEuchw_Get_A_13(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_13_DATA);
    return Data;
}

void XEuchw_Set_A_14(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_14_DATA, Data);
}

u32 XEuchw_Get_A_14(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_14_DATA);
    return Data;
}

void XEuchw_Set_A_15(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_15_DATA, Data);
}

u32 XEuchw_Get_A_15(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_A_15_DATA);
    return Data;
}

void XEuchw_Set_B_0(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_0_DATA, Data);
}

u32 XEuchw_Get_B_0(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_0_DATA);
    return Data;
}

void XEuchw_Set_B_1(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_1_DATA, Data);
}

u32 XEuchw_Get_B_1(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_1_DATA);
    return Data;
}

void XEuchw_Set_B_2(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_2_DATA, Data);
}

u32 XEuchw_Get_B_2(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_2_DATA);
    return Data;
}

void XEuchw_Set_B_3(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_3_DATA, Data);
}

u32 XEuchw_Get_B_3(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_3_DATA);
    return Data;
}

void XEuchw_Set_B_4(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_4_DATA, Data);
}

u32 XEuchw_Get_B_4(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_4_DATA);
    return Data;
}

void XEuchw_Set_B_5(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_5_DATA, Data);
}

u32 XEuchw_Get_B_5(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_5_DATA);
    return Data;
}

void XEuchw_Set_B_6(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_6_DATA, Data);
}

u32 XEuchw_Get_B_6(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_6_DATA);
    return Data;
}

void XEuchw_Set_B_7(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_7_DATA, Data);
}

u32 XEuchw_Get_B_7(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_7_DATA);
    return Data;
}

void XEuchw_Set_B_8(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_8_DATA, Data);
}

u32 XEuchw_Get_B_8(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_8_DATA);
    return Data;
}

void XEuchw_Set_B_9(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_9_DATA, Data);
}

u32 XEuchw_Get_B_9(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_9_DATA);
    return Data;
}

void XEuchw_Set_B_10(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_10_DATA, Data);
}

u32 XEuchw_Get_B_10(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_10_DATA);
    return Data;
}

void XEuchw_Set_B_11(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_11_DATA, Data);
}

u32 XEuchw_Get_B_11(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_11_DATA);
    return Data;
}

void XEuchw_Set_B_12(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_12_DATA, Data);
}

u32 XEuchw_Get_B_12(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_12_DATA);
    return Data;
}

void XEuchw_Set_B_13(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_13_DATA, Data);
}

u32 XEuchw_Get_B_13(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_13_DATA);
    return Data;
}

void XEuchw_Set_B_14(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_14_DATA, Data);
}

u32 XEuchw_Get_B_14(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_14_DATA);
    return Data;
}

void XEuchw_Set_B_15(XEuchw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEuchw_WriteReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_15_DATA, Data);
}

u32 XEuchw_Get_B_15(XEuchw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEuchw_ReadReg(InstancePtr->Control_BaseAddress, XEUCHW_CONTROL_ADDR_B_15_DATA);
    return Data;
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

