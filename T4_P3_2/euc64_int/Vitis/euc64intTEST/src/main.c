#include <stdio.h>
#include <xparameters.h>
#include <xscugic.h>
//#include <xgpio.h>
#include <xil_exception.h>
#include "xeuchw.h"
//#include <xil_printf.h>

#define INTC_DEVICE_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define XHLS_DEVICE_ID			XPAR_EUCHW_0_DEVICE_ID
#define INTC_ADDT_INT_ID		XPAR_FABRIC_EUCHW_0_INTERRUPT_INTR
#define xil_printf 				printf

#define N_VECTORS				10
#define VECTOR_SIZE				64 // 2*16
#define BUFFER_SIZE				8
#define BRAMS					8
typedef float data_T;

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
void BTN_InterruptHandler(void *InsPtr);
int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE],int BRAM_ID);
void AdderTreeReceiveHandler(void *InstPtr);

XScuGic intc;
XEuchw hls_ip;
volatile int ip_status;

void (*XHLSWriteFunc_A[])() = { XEuchw_Write_A_0_Words,
			XEuchw_Write_A_1_Words, XEuchw_Write_A_2_Words, XEuchw_Write_A_3_Words,
			XEuchw_Write_A_4_Words, XEuchw_Write_A_5_Words, XEuchw_Write_A_6_Words,
			XEuchw_Write_A_7_Words};

void (*XHLSWriteFunc_B[])() = { XEuchw_Write_B_0_Words,
			XEuchw_Write_B_1_Words, XEuchw_Write_B_2_Words, XEuchw_Write_B_3_Words,
			XEuchw_Write_B_4_Words, XEuchw_Write_B_5_Words, XEuchw_Write_B_6_Words,
			XEuchw_Write_B_7_Words};

u32 TxData[BUFFER_SIZE];
u32 RxData[2]; // resultado

int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE], int BRAM_ID)
{
	int status = XST_SUCCESS;
	if(BRAM_ID == 0) // BRAM A
	{
		for (int br = 0; br < BRAMS; br++)
		{
			for (int i = 0; i < BUFFER_SIZE; i++)
			{
				TxData[i] = *((u32*) &data[(i*BRAMS) + br]);
			}
			XHLSWriteFunc_A[br](InstancePtr, 0, TxData, BUFFER_SIZE);
		}
	}else if(BRAM_ID == 1 ) // BRAM B
	{
		for (int br = 0; br < BRAMS; br++)
		{
			for (int i = 0; i < BUFFER_SIZE; i++)
			{
				TxData[i] =  *((u32*) &data[(i*BRAMS) + br]);
			}
			XHLSWriteFunc_B[br](InstancePtr, 0, TxData, BUFFER_SIZE);
		}
	}else{
		return errorHandler(ERR_DEFAULT);
	}
	return status;
}

void AdderTreeReceiveHandler(void *InstPtr)
{
	int results[2];
	XEuchw_InterruptDisable(&hls_ip,1);

	RxData[1] = XEuchw_Get_C_vld(&hls_ip);
	results[1] = *((int*) &(RxData[1]));

	if(results[1] == 1)
	{
		RxData[0] = XEuchw_Get_C(&hls_ip);
		results[0] = *((data_T*) &(RxData[0]));

		xil_printf("Resultados: %f\n", results[0]);
		ip_status = IP_Ready;
	}
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
void getMem(int mem[1])
{
	scanf("%d", &mem[0]);
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
	int mem[1];
	for (int trial = 0; trial < N_VECTORS; trial++ )
	{
		while (ip_status == IP_Busy) {};

		getMem(mem);
		getVector(txbuffer);
		TxDataSend(&hls_ip, txbuffer, mem[0]);

		getMem(mem);
		getVector(txbuffer);
		TxDataSend(&hls_ip, txbuffer, mem[0]);

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
