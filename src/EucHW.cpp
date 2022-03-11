#include "eucHW.h"

void eucDistHW (T A[LENGTH], T B[LENGTH],T C[LENGTH])
{

	#pragma HLS array_partition variable=A complete dim=1
	#pragma HLS array_partition variable=B complete dim=1
	#pragma HLS array_partition variable=C complete dim=1

	loopManDist:for (int i = 0; i < LENGTH; i++)
	{

		#pragma HLS UNROLL
		//#pragma HLS pipeline
		C[0] = C[0] + abs(A[i]-B[i]);
	}
	return;
}
