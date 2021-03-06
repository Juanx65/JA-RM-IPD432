#include <stdio.h>
#include <xparameters.h>
#include <xscugic.h>
#include <xil_exception.h>
#include "xeuchw.h"
//#include <xil_printf.h>


#define INTC_DEVICE_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define XHLS_DEVICE_ID			XPAR_EUCHW_0_DEVICE_ID
#define INTC_ADDT_INT_ID		XPAR_FABRIC_EUCHW_0_INTERRUPT_INTR
#define xil_printf 				printf

#define N_VECTORS				100
#define VECTOR_SIZE				16 // 2*16
#define BUFFER_SIZE				1
#define BRAMS					16

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

void (*XHLSWriteFunc_A[])() = { XEuchw_Set_A_0,
			XEuchw_Set_A_1, XEuchw_Set_A_2, XEuchw_Set_A_3,
			XEuchw_Set_A_4, XEuchw_Set_A_5, XEuchw_Set_A_6,
			XEuchw_Set_A_7, XEuchw_Set_A_8, XEuchw_Set_A_9,
			XEuchw_Set_A_10, XEuchw_Set_A_11, XEuchw_Set_A_12,
			XEuchw_Set_A_13, XEuchw_Set_A_14, XEuchw_Set_A_15,
			XEuchw_Set_A_15};

void (*XHLSWriteFunc_B[])() = { XEuchw_Set_B_0,
			XEuchw_Set_B_1, XEuchw_Set_B_2, XEuchw_Set_B_3,
			XEuchw_Set_B_4, XEuchw_Set_B_5, XEuchw_Set_B_6,
			XEuchw_Set_B_7, XEuchw_Set_B_8, XEuchw_Set_B_9,
			XEuchw_Set_B_10, XEuchw_Set_B_11, XEuchw_Set_B_12,
			XEuchw_Set_B_13, XEuchw_Set_B_14, XEuchw_Set_B_15,
			XEuchw_Set_B_15};


u32 RxData[1];

int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE], int BRAM_ID)
{
	int status = XST_SUCCESS;
	if(BRAM_ID == 0)
	{
		for (int br = 0; br < BRAMS; br++)
		{
			XHLSWriteFunc_A[br](InstancePtr, data[br]);
		}
	}
	else if(BRAM_ID == 1)
	{
		for (int br = 0; br < BRAMS; br++)
		{
			XHLSWriteFunc_B[br](InstancePtr, data[br]);
		}
	}
	else
		status = XST_FAILURE;

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
