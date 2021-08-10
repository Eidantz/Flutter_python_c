cmake_minimum_required(VERSION 3.18)  
project(py)

find_package(Python3 COMPONENTS Interpreter Development)

message("Python_FOUND:${Python_FOUND}")
message("Python_VERSION:${Python_VERSION}")
message("Python_Development_FOUND:${Python_Development_FOUND}")
message("Python_LIBRARIES:${Python_LIBRARIES}")
message("Python_LIBRARY_DIRS:${Python_LIBRARY_DIRS}")
message("Python_INCLUDE_DIRS:${Python_INCLUDE_DIRS}")
message("Python_LINK_OPTIONS:${Python_LINK_OPTIONS}")
message("Python_NumPy_FOUND:${Python_NumPy_FOUND}")
include_directories(/home/eidan/Downloads/android.python.3.8.3/python-3.8.3/arm64-v8a/include/python3.8/)
include_directories(/home/eidan/Android/Sdk/ndk/22.1.7171670/toolchains/llvm/prebuilt)
include_directories(/home/eidan/Downloads/final5/android/app)

# include_directories(/usr/include/x86_64-linux-gnu/python3.8 SYSTEM)
# include_directories(/home/eidan/Downloads/python-for-android-master/python-build/crypt)
set(CMAKE_C_FLAGS "-v")



#add_library( 
#  weather
#  SHARED
#  ../../src/weather.c
#)
#add_library( 
#  native_add
#  SHARED
#  ../../src/native_add.c
#)
#add_library( 
#  native_add2
#  SHARED
#  ../../src/native_add2.c
#)

add_library( 
  doit
  SHARED
  ../../src/doit/doit.c
)

#target_link_libraries(native_add -lpython3.8)