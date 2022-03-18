#include "eucHW.h"

void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
	#pragma HLS array_reshape variable=A type=cyclic  factor=512 dim=1
	#pragma HLS array_reshape variable=B type=cyclic  factor=512 dim=1

	Tout result = 0;
	sumLoop:for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS UNROLL factor=512
		result += (A[i]-B[i])*(A[i]-B[i]);
	}
	C[0] =  hls::sqrt(result);
	return;
}

/*//intento de mejorar Tout float

void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
#pragma HLS array_reshape variable=A type=complete dim=1
#pragma HLS array_reshape variable=B type=complete dim=1
	Tout tem1 = 0;
	Tout tem2 = 0;
	Tout tem3 = 0;
	sumLoop:for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS BIND_OP variable=tem1 op=fmul  impl=fulldsp
		#pragma HLS UNROLL
		tem2 = (A[i]-B[i]);
		tem1 += tem2*tem2;
	}
	#pragma HLS BIND_OP variable=tem3 op=fsqrt  impl=fabric
	tem3 =  hls::sqrt(tem1);
	C[0] = tem3;
	return;
}
*/
