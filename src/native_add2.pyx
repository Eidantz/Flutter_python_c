cimport numpy as np
import numpy as np
from libc.stdint cimport intptr_t

cdef extern int* native_add2(int[2] arr6):

    # cdef int[2] y=arr6
    # cdef int[:] pd_view
    # cdef np.ndarray[DTYPE_t, ndim=1, mode='c'] z=np.zeros(2,dtype="int32")
    # cdef int[:] result = np.empty(2, dtype=np.int32)
    #cdef np.int32_t[:] a = np.arange(10, dtype=np.int32)
    cdef np.ndarray[np.int32_t, ndim=1, mode = 'c'] np_buff
    # np_buff = np.asarray(<np.int32_t[:2]> arr6)
    # cdef array a = array('i', [1, 2, 3])
    # cdef int[:] ca = a
    cdef int i=2
    a = <intptr_t> arr6
    #for j in range(2):
    #    pd_view[i]=arr6[i]
    # np_buff = np_buff+np_buff
    # print(z)
    # cdef int* im_buff = <int*> np_buff.data
    return arr6
