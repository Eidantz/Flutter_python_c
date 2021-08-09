# from distutils.core import setup
# from distutils.extension import Extension
# from Cython.Build import cythonize
#
# ext_modules = [Extension(r'mul',[r'mul.pyx'],language='c')]
#
# setup(
#     name='mul',
#     ext_modules=cythonize(ext_modules),
# )
from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
import numpy
ext_modules = [
    Extension(
        r'native_add2',
        [r'native_add2.pyx'],language='c',include_dirs=[numpy.get_include()]
    ),
]

setup(
    name='native_add2',
    ext_modules=cythonize(ext_modules,compiler_directives={"language_level": "3"},annotate=True),
)
