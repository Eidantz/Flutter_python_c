/*
 * File: _coder_doit_mex.h
 *
 * MATLAB Coder version            : 5.2
 * C/C++ source code generated on  : 09-Aug-2021 14:38:40
 */

#ifndef _CODER_DOIT_MEX_H
#define _CODER_DOIT_MEX_H

/* Include Files */
#include "emlrt.h"
#include "mex.h"
#include "tmwtypes.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Function Declarations */
MEXFUNCTION_LINKAGE void mexFunction(int32_T nlhs, mxArray *plhs[],
                                     int32_T nrhs, const mxArray *prhs[]);

emlrtCTX mexFunctionCreateRootTLS(void);

void unsafe_doit_mexFunction(int32_T nlhs, mxArray *plhs[1], int32_T nrhs,
                             const mxArray *prhs[1]);

#ifdef __cplusplus
}
#endif

#endif
/*
 * File trailer for _coder_doit_mex.h
 *
 * [EOF]
 */
