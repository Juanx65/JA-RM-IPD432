#include "eucHW.h"

void eucDistHW (T A[LENGTH], T B[LENGTH],T C[1])
{

	#pragma HLS array_partition variable=A complete dim=1
	#pragma HLS array_partition variable=B complete dim=1
	#pragma HLS array_partition variable=C complete dim=1

	loopManDist:for (int i = 0; i < LENGTH; i++)
	{
		#pragma HLS UNROLL
		//#pragma HLS pipeline
		C[0] = C[0] + (A[i]-B[i])*(A[i]-B[i]);
	}
	C[0] = hls::sqrt(C[0]);
	return;
}
