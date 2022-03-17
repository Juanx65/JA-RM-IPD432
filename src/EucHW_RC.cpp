#include "eucHW.h"

void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
	#pragma HLS ARRAY_RESHAPE variable=A complete dim=1
	#pragma HLS ARRAY_RESHAPE variable=B complete dim=1

	Tout out_array[LENGTH];

	#pragma HLS array_partition variable=out_array complete dim=1

	//#pragma HLS bind_op variable=out_array op=fmul

	for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS UNROLL
		out_array[i] = (A[i]-B[i])*(A[i]-B[i]);
	}

	//#pragma HLS bind_op variable=C[0] op=fsqrt
	C[0]=  hls::sqrt(adder(out_array));
	return;
}


Tout adder( Tout array[LENGTH] )
{
	#pragma HLS inline

    for(int idx = LENGTH/2; idx >= 2 ; idx = idx/2)
    {
    	#pragma HLS UNROLL
		//#pragma HLS dependence variable=array inter false
        for (int i = 0 ; i < idx ; i++)
        {
			#pragma HLS UNROLL
			//#pragma HLS dependence variable=array inter false
        	Tout tem1 = array[2*i];
        	Tout tem2 = array[2*i+1];
        	Tout tem3 = tem1 + tem2;
            array[i] = tem3;
        }
    }

    return array[0] + array[1];
}
