#ifndef EUCDISTHW_H
#define EUCDISTHW_H

#include "specs.h"
#include <math.h>
#include <hls_math.h>
void eucHW_RC (T A[LENGTH], T B[LENGTH], Tout C[1]);
//Tout tree_adder(T A[LENGTH], T B[LENGTH]);
Tout adder( Tout array[LENGTH] );
#endif
