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

#define N_VECTORS				10
#define VECTOR_SIZE				32 // 2*16
#define BUFFER_SIZE				1
#define BRAMS					32
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
int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE]);
void AdderTreeReceiveHandler(void *InstPtr);

XScuGic intc;
XEuchw hls_ip;
volatile int ip_status;

void (*XHLSWriteFunc[])() = {XEuchw_Set_x_0,
		XEuchw_Set_x_1, XEuchw_Set_x_2, XEuchw_Set_x_3,
		XEuchw_Set_x_4, XEuchw_Set_x_5, XEuchw_Set_x_6,
		XEuchw_Set_x_7, XEuchw_Set_x_8, XEuchw_Set_x_9,
		XEuchw_Set_x_10, XEuchw_Set_x_11, XEuchw_Set_x_12,
		XEuchw_Set_x_13, XEuchw_Set_x_14, XEuchw_Set_x_15,
		XEuchw_Set_x_16, XEuchw_Set_x_17, XEuchw_Set_x_18,
		XEuchw_Set_x_19, XEuchw_Set_x_20, XEuchw_Set_x_21,
		XEuchw_Set_x_22, XEuchw_Set_x_23, XEuchw_Set_x_24,
		XEuchw_Set_x_25, XEuchw_Set_x_26, XEuchw_Set_x_27,
		XEuchw_Set_x_28, XEuchw_Set_x_29, XEuchw_Set_x_30,
		XEuchw_Set_x_31};
u32 TxData[BUFFER_SIZE];
u32 RxData[2];

int TxDataSend(XEuchw *InstancePtr, int data[VECTOR_SIZE])
{
	int status = XST_SUCCESS;
	for (int br = 0; br < BRAMS; br++)
	{
		XHLSWriteFunc[br](InstancePtr, data[br]);
	}
	return status;
}

void AdderTreeReceiveHandler(void *InstPtr)
{
	data_T results[2];
	XEuchw_InterruptDisable(&hls_ip,1);

	RxData[0] = XEuchw_Get_y_add(&hls_ip);
	RxData[1] = XEuchw_Get_y_sqrt(&hls_ip);
	results[0] = *((data_T*) &(RxData[0]));
	results[1] = *((data_T*) &(RxData[1]));

	xil_printf("Resultados: %f \n",results[1]);
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

	int txbuffer[VECTOR_SIZE];
	for (int trial = 0; trial < N_VECTORS; trial++ )
	{
		while (ip_status == IP_Busy) {};
		getVector(txbuffer);
		TxDataSend(&hls_ip, txbuffer);
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
