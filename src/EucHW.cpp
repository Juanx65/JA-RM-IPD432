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

	result = tree_adder(A, B);

	C[0] = hls::sqrt(result);
	return;
}

// tree adder
Tout tree_adder(T A[LENGTH], T B[LENGTH])
{

	Tout out_array[LENGTH];
	#pragma HLS array_partition variable=out_array complete dim=1
    #pragma HLS inline

	eucLoop:for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS UNROLL
		out_array[i] = (A[i]-B[i])*(A[i]-B[i]);
	}

    adderTreeLoop:for(int j=0;j<ceil(log2(LENGTH));j++)
    {
        #pragma HLS unroll factor=8
        //#pragma HLS dependence variable=out_array inter false
        if (j<ceil(log2(LENGTH))-1) {
            leafTreeLoop:for(int i = 0; i < T(LENGTH/(1<<(j+1))); i++)
            {
                #pragma HLS unroll
                //#pragma HLS dependence variable=out_array inter false
                Tout tmp1 = out_array[2*i];
                Tout tmp2 = out_array[2*i+1];
                Tout tmp3 = tmp1+tmp2;
                out_array[i] = tmp3;
            }
            if (LENGTH > int (LENGTH/(1<<(j+1)))*(1<<(j+1)) ) {
            	out_array[int (LENGTH/(1<<(j+1)))] = out_array[int (LENGTH/(1<<(j+1))-1)*2+2];
            }
        }
        if (j== ceil(log2(LENGTH))-1) {
            Tout tmp1 = out_array[0];
            Tout tmp2 = out_array[1];
            Tout tmp3 = tmp1+tmp2;
            out_array[0] = tmp3;
        }
    }
    return out_array[0];
}


