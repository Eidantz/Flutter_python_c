/*
 * File: _coder_doit_api.h
 *
 * MATLAB Coder version            : 5.2
 * C/C++ source code generated on  : 09-Aug-2021 14:38:40
 */

#ifndef _CODER_DOIT_API_H
#define _CODER_DOIT_API_H

/* Include Files */
#include "emlrt.h"
#include "tmwtypes.h"
#include <string.h>

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

#ifdef __cplusplus
extern "C" {
#endif

/* Function Declarations */
void doit(real_T a[2], real_T res[2]);

void doit_api(const mxArray *prhs, const mxArray **plhs);

void doit_atexit(void);

void doit_initialize(void);

void doit_terminate(void);

void doit_xil_shutdown(void);

void doit_xil_terminate(void);

#ifdef __cplusplus
}
#endif

#endif
/*
 * File trailer for _coder_doit_api.h
 *
 * [EOF]
 */
