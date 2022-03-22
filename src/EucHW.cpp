#include "EucHW.h"

void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
	//#pragma HLS INTERFACE mode=axis

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
