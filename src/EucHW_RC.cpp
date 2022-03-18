#include "eucHW.h"
/*
void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
#pragma HLS array_reshape variable=A type=cyclic  factor=512 dim=1
#pragma HLS array_reshape variable=B type=cyclic  factor=512 dim=1
	Tout tem1 = 0;
	Tout tem2 = 0;
	Tout tem3 = 0;
	sumLoop:for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS UNROLL factor=512
		tem2 = (A[i]-B[i]);
		tem1 += tem2*tem2;
	}
	#pragma HLS RESOURCE variable=tem3 core=DRSqrt
	tem3 =  hls::sqrt(tem1);
	C[0] = tem3;
	return;
}
*/

void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
#pragma HLS array_reshape variable=A type=complete dim=1
	Tout tem1 = 0;
	Tout tem2 = 0;
	Tout tem3 = 0;
	sumLoop:for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS UNROLL
		tem2 = (A[i]-B[i]);
		tem1 += tem2*tem2;
	}
	#pragma HLS RESOURCE variable=tem3 core=DRSqrt
	tem3 =  hls::sqrt(tem1);
	C[0] = tem3;
	return;
}
