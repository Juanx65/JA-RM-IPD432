#include "eucHW.h"

void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{

	#pragma HLS ARRAY_RESHAPE variable=A complete dim=1
	#pragma HLS ARRAY_RESHAPE variable=B complete dim=1

	/*
	#pragma HLS array_partition variable=A complete dim=1
	#pragma HLS array_partition variable=B complete dim=1
	*/
	Tout result = 0;
	loopManDist:for (int i = 0; i < LENGTH; i++)
	{
		#pragma HLS UNROLL factor=2
		#pragma HLS PIPELINE
		result += (A[i]-B[i])*(A[i]-B[i]);
	}

	C[0] = hls::sqrt(result);
	return;
}


