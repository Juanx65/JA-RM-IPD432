#include "eucHW.h"

void eucHW(Tout *y_sqrt, T x[2*LENGTH])
{
	#pragma HLS INTERFACE mode=s_axilite port=x storage_impl=bram
	#pragma HLS INTERFACE mode=s_axilite port=y_sqrt
	#pragma HLS INTERFACE mode=s_axilite port=return
	#pragma HLS ARRAY_PARTITION variable=x type=cyclic factor=32

	Tout res = 0;

	MainLoop: for (int i = 0; i < LENGTH; ++i)
	{
		#pragma HLS UNROLL factor=32
		res += (x[i+ LENGTH] -x[i])*(x[i+ LENGTH] -x[i]);
	}
	*y_sqrt = hls::sqrt(res);
	return;
}


/*
void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
	#pragma HLS INTERFACE mode=s_axilite port=A storage_impl=bram
	#pragma HLS INTERFACE mode=s_axilite port=B storage_impl=bram
	#pragma HLS INTERFACE mode=s_axilite port=C
	#pragma HLS INTERFACE mode=s_axilite port=return
	#pragma HLS array_partition variable=A type=cyclic factor=8 dim=1
	#pragma HLS array_partition variable=B type=cyclic factor=8 dim=1

	Tout result = 0;
	sumLoop:for(int i=0;i<LENGTH;i++)
	{

		#pragma HLS UNROLL factor=8
		result += (A[i]-B[i])*(A[i]-B[i]);
	}
	C[0] =  hls::sqrt(result);
	return;
}
*/
/*
void eucHW (T A[LENGTH], T B[LENGTH], Tout C[1])
{
	#pragma HLS array_reshape variable=A type=complete dim=1
	#pragma HLS array_reshape variable=B type=complete dim=1

	Tout result = 0;
	sumLoop:for(int i=0;i<LENGTH;i++)
	{
		#pragma HLS UNROLL
		result += (A[i]-B[i])*(A[i]-B[i]);
	}
	C[0] =  hls::sqrt(result);
	return;
}
*/
/*
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
*/

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
