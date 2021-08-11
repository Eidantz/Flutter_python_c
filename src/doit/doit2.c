/*
 * File: doit.c
 *
 * MATLAB Coder version            : 5.2
 * C/C++ source code generated on  : 09-Aug-2021 14:38:40
 */

/* Include Files */
#include "doit.h"
#include <stdlib.h> 
/* Function Definitions */
/*
 * function res = doit(a)
 *
 * Arguments    : const double a[2]
 *                double res[2]
 * Return Type  : void
 */
double* allocArray() {
    double* arr = calloc(2, sizeof(double));

    return arr;
}
double *doit(double *p))
{
  double a[2][2];
  double res[2];
  int i;
  int j;
  for (i = 0; i < 4; ++i) {
      for (j = 0; j < 180; ++j) {
        a[i][j] = p[(i*4)+j];
    }
  }
  /* 'doit:2' resa =a+a; */
  /* 'doit:3' resb=a; */
  /* 'doit:4' res = wrapp(resa,resb); */
  /* 'wrapp:2' res= a+b; */
  res[0] = a[0][0]+ a[0][0];
  res[1] = a[1][0]+ a[1][0];
  free(p);
  free(a);
  return res;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void doit_initialize(void)
{
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void doit_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for doit.c
 *
 * [EOF]
 */
