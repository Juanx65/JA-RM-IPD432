#include <stdio.h>
#include <xparameters.h>
#include <xscugic.h>
#include <xil_exception.h>
#include "xeuchw.h"
//#include <xil_printf.h>


#define INTC_DEVICE_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define XHLS_DEVICE_ID			XPAR_EUCHW_DEVICE_ID
#define INTC_ADDT_INT_ID		XPAR_FABRIC_EUCHW_INTERRUPT_INTR
#define xil_printf 				printf

#define N_VECTORS				10
#define VECTOR_SIZE				512 // 2*16
#define BUFFER_SIZE				64
#define BRAMS					8

enum errTypes
{
	ERR_HLS_INIT,
	ERR_INTC_INIT,
	ERR_DEFAULT
};
enum IP_ready
{
	IP_Ready,
	IP_Busy
};

int IntcInitFunction(u16 DeviceId);
int errorHandler(enum errTypes err);
int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE], int BRAM_ID);
void AdderTreeReceiveHandler(void *InstPtr);

XScuGic intc;
XEuchw hls_ip;
volatile int ip_status;

void (*XHLSWriteFunc_A[])() = { XEuchw_Write_A_0_Words,
			XEuchw_Write_A_1_Words, XEuchw_Write_A_2_Words, XEuchw_Write_A_3_Words,
			XEuchw_Write_A_4_Words, XEuchw_Write_A_5_Words, XEuchw_Write_A_6_Words,
			XEuchw_Write_A_7_Words, XEuchw_Write_A_8_Words, XEuchw_Write_A_9_Words,
			XEuchw_Write_A_10_Words, XEuchw_Write_A_11_Words, XEuchw_Write_A_12_Words,
			XEuchw_Write_A_13_Words, XEuchw_Write_A_14_Words, XEuchw_Write_A_15_Words,
			XEuchw_Write_A_16_Words, XEuchw_Write_A_17_Words, XEuchw_Write_A_18_Words,
			XEuchw_Write_A_19_Words, XEuchw_Write_A_20_Words, XEuchw_Write_A_21_Words,
			XEuchw_Write_A_22_Words, XEuchw_Write_A_23_Words, XEuchw_Write_A_24_Words,
			XEuchw_Write_A_25_Words, XEuchw_Write_A_26_Words, XEuchw_Write_A_27_Words,
			XEuchw_Write_A_28_Words, XEuchw_Write_A_29_Words, XEuchw_Write_A_30_Words,
			XEuchw_Write_A_31_Words, XEuchw_Write_A_32_Words, XEuchw_Write_A_33_Words,
			XEuchw_Write_A_34_Words, XEuchw_Write_A_35_Words, XEuchw_Write_A_36_Words,
			XEuchw_Write_A_37_Words, XEuchw_Write_A_38_Words, XEuchw_Write_A_39_Words,
			XEuchw_Write_A_40_Words, XEuchw_Write_A_41_Words, XEuchw_Write_A_42_Words,
			XEuchw_Write_A_43_Words, XEuchw_Write_A_44_Words, XEuchw_Write_A_45_Words,
			XEuchw_Write_A_46_Words, XEuchw_Write_A_47_Words, XEuchw_Write_A_48_Words,
			XEuchw_Write_A_49_Words, XEuchw_Write_A_50_Words, XEuchw_Write_A_51_Words,
			XEuchw_Write_A_52_Words, XEuchw_Write_A_53_Words, XEuchw_Write_A_54_Words,
			XEuchw_Write_A_55_Words, XEuchw_Write_A_56_Words, XEuchw_Write_A_57_Words,
			XEuchw_Write_A_58_Words, XEuchw_Write_A_59_Words, XEuchw_Write_A_60_Words,
			XEuchw_Write_A_61_Words, XEuchw_Write_A_62_Words, XEuchw_Write_A_63_Words,
			XEuchw_Write_A_63_Words};

void (*XHLSWriteFunc_B[])() = { XEuchw_Write_B_0_Words,
			XEuchw_Write_B_1_Words, XEuchw_Write_B_2_Words, XEuchw_Write_B_3_Words,
			XEuchw_Write_B_4_Words, XEuchw_Write_B_5_Words, XEuchw_Write_B_6_Words,
			XEuchw_Write_B_7_Words, XEuchw_Write_B_8_Words, XEuchw_Write_B_9_Words,
			XEuchw_Write_B_10_Words, XEuchw_Write_B_11_Words, XEuchw_Write_B_12_Words,
			XEuchw_Write_B_13_Words, XEuchw_Write_B_14_Words, XEuchw_Write_B_15_Words,
			XEuchw_Write_B_16_Words, XEuchw_Write_B_17_Words, XEuchw_Write_B_18_Words,
			XEuchw_Write_B_19_Words, XEuchw_Write_B_20_Words, XEuchw_Write_B_21_Words,
			XEuchw_Write_B_22_Words, XEuchw_Write_B_23_Words, XEuchw_Write_B_24_Words,
			XEuchw_Write_B_25_Words, XEuchw_Write_B_26_Words, XEuchw_Write_B_27_Words,
			XEuchw_Write_B_28_Words, XEuchw_Write_B_29_Words, XEuchw_Write_B_30_Words,
			XEuchw_Write_B_31_Words, XEuchw_Write_B_32_Words, XEuchw_Write_B_33_Words,
			XEuchw_Write_B_34_Words, XEuchw_Write_B_35_Words, XEuchw_Write_B_36_Words,
			XEuchw_Write_B_37_Words, XEuchw_Write_B_38_Words, XEuchw_Write_B_39_Words,
			XEuchw_Write_B_40_Words, XEuchw_Write_B_41_Words, XEuchw_Write_B_42_Words,
			XEuchw_Write_B_43_Words, XEuchw_Write_B_44_Words, XEuchw_Write_B_45_Words,
			XEuchw_Write_B_46_Words, XEuchw_Write_B_47_Words, XEuchw_Write_B_48_Words,
			XEuchw_Write_B_49_Words, XEuchw_Write_B_50_Words, XEuchw_Write_B_51_Words,
			XEuchw_Write_B_52_Words, XEuchw_Write_B_53_Words, XEuchw_Write_B_54_Words,
			XEuchw_Write_B_55_Words, XEuchw_Write_B_56_Words, XEuchw_Write_B_57_Words,
			XEuchw_Write_B_58_Words, XEuchw_Write_B_59_Words, XEuchw_Write_B_60_Words,
			XEuchw_Write_B_61_Words, XEuchw_Write_B_62_Words, XEuchw_Write_B_63_Words,
			XEuchw_Write_B_63_Words};


u32 TxDataA[BUFFER_SIZE];
u32 TxDataB[BUFFER_SIZE];
u32 RxData[1];

int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE], int BRAM_ID)
{
	int status = XST_SUCCESS;
	if(BRAM_ID == 0)
	{
		for (int br = 0; br < BRAMS; br++)
		{
			for (int i = 0; i < BUFFER_SIZE; i++)
			{
				TxDataA[i] = (i*BRAMS +br)< VECTOR_SIZE ? *((u32*) &data[(i*BRAMS) + br]) : 0;
			}
			XHLSWriteFunc_A[br](InstancePtr, 0, TxDataA, BUFFER_SIZE);
		}
	}
	else if(BRAM_ID == 1)
	{
		for (int br = 0; br < BRAMS; br++)
		{
			for (int i = 0; i < BUFFER_SIZE; i++)
			{
				TxDataB[i] = (i*BRAMS +br)< VECTOR_SIZE ? *((u32*) &data[(i*BRAMS) + br]) : 0;
			}
			XHLSWriteFunc_B[br](InstancePtr, 0, TxDataB, BUFFER_SIZE);
		}
	}
	else
	{
		status = XST_FAILURE;
	}

	return status;
}

void AdderTreeReceiveHandler(void *InstPtr)
{
	int results[1];
	XEuchw_InterruptDisable(&hls_ip,1);

	RxData[0] = XEuchw_Get_C(&hls_ip);
	results[0] = *((int*) &(RxData[0]));

	xil_printf("Resultado: %d\n", results[0] );
	ip_status = IP_Ready;
	XEuchw_InterruptClear(&hls_ip,1);
	XEuchw_InterruptEnable(&hls_ip,1);
}

void getVector(int vec[VECTOR_SIZE])
{
	for (int i = 0; i < VECTOR_SIZE; i++)
	{
		scanf("%d", &vec[i]);
	}
}

void getMemID(int BRAM_ID[1])
{
	scanf("%d", &BRAM_ID[0]);
}

int main()
{

	int status = XST_SUCCESS;

	/* INIT */
	/* HLS IP init */
	status += XEuchw_Initialize(&hls_ip, XHLS_DEVICE_ID);
	if (status != XST_SUCCESS) return errorHandler(ERR_HLS_INIT);

	/* interrupt controller init*/
	status = IntcInitFunction(INTC_DEVICE_ID);
	if (status != XST_SUCCESS) return errorHandler(ERR_INTC_INIT);

	ip_status = IP_Ready;
	/*
	 * Expected : -14766, -115.359
	 */
	int txbuffer[VECTOR_SIZE];
	int bram_id[1];
	for (int trial = 0; trial < N_VECTORS; trial++ )
	{
		while (ip_status == IP_Busy) {};
		getMemID(bram_id);
		getVector(txbuffer);
		TxDataSend(&hls_ip, txbuffer, bram_id[0]);
		getMemID(bram_id);
		getVector(txbuffer);
		TxDataSend(&hls_ip, txbuffer, bram_id[0]);
		ip_status = IP_Busy;
		XEuchw_Start(&hls_ip);
	}

	while(1);

    return 0;
}

int errorHandler(enum errTypes err)
{
	switch(err)
	{
		case(ERR_HLS_INIT):
		{
			xil_printf("Error inicializando bloque HLS\n");
			break;
		}
		case(ERR_INTC_INIT):
		{
			xil_printf("Error inicializando INTC\n");
			break;
		}
		default:
		{
			xil_printf("Error en ejecucion\n");
		}
	}
	return XST_FAILURE;
}

int IntcInitFunction(u16 DeviceId)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&intc, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return status;


	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
								(Xil_ExceptionHandler) XScuGic_InterruptHandler,
								&intc);

	Xil_ExceptionEnable();

	status = XScuGic_Connect(&intc,
							 INTC_ADDT_INT_ID,
							 (Xil_ExceptionHandler)AdderTreeReceiveHandler,
							 (void *) (&hls_ip));

	// Enable GPIO interrupts interrupt
	XEuchw_InterruptEnable(&hls_ip, 1);
	XEuchw_InterruptGlobalEnable(&hls_ip);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&intc, INTC_ADDT_INT_ID);

	return XST_SUCCESS;
}
