/*
 * File: doit.c
 *
 * MATLAB Coder version            : 5.2
 * C/C++ source code generated on  : 09-Aug-2021 14:38:40
 */

/* Include Files */
#include "doit.h"
#include <stdlib.h>
#include "srtuct.h"
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
/*double** alloc2DArray() {
double* ptr[2] = calloc(2*2, sizeof(double*)); 
return ptr;
}*/
void releasepointer(void* ptr) { 
free(ptr);
}
struct Place doit(double **p)
{
  struct Place place;
  //double* data[] (double *)malloc(2 * 2 * sizeof(double));*/
  /*double a[2][2];*/
  /*double *a = (double *)malloc(2 * 2 * sizeof(double));*/
  int numRows=2;
  int numCols=2;
  double (*a)[numCols] = malloc(sizeof(double[numRows][numCols]));
  double *res;
  res = allocArray();
  int i;
  int j;
  for (i = 0; i < 2; ++i) {
      for (j = 0; j < 2; ++j) {
        /**(a + (i*2) + j) = *(p + (i*2) + j);*/
        a[i][j] = p[i][j];
    }
  }
  
  /* 'doit:2' resa =a+a; */
  /* 'doit:3' resb=a; */
  /* 'doit:4' res = wrapp(resa,resb); */
  /* 'wrapp:2' res= a+b; */
  res[0] = p[0][0];
  res[1] = p[0][1];
  place.matrix = a;
  return place;
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
