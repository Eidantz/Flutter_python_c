/*
 * File: doit.c
 *
 * MATLAB Coder version            : 5.2
 * C/C++ source code generated on  : 09-Aug-2021 14:38:40
 */

/* Include Files */
#include "doit.h"
/* Function Definitions */
/*
 * function res = doit(a)
 *
 * Arguments    : const double a[2]
 *                double res[2]
 * Return Type  : void
 */
double *doit(double *p)
{
  double a[2];
  double res[2];
  double *buff;

  a[0] = p[0];
  a[1] = p[1];
  /* 'doit:2' resa =a+a; */
  /* 'doit:3' resb=a; */
  /* 'doit:4' res = wrapp(resa,resb); */
  /* 'wrapp:2' res= a+b; */
  res[0] = a[0]+ a[0];
  res[1] = a[1]+ a[1];
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
