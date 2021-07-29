cmake_minimum_required(VERSION 3.18)  
project(py)
find_package(Python COMPONENTS Interpreter Development)

message("Python_FOUND:${Python_FOUND}")
message("Python_VERSION:${Python_VERSION}")
message("Python_Development_FOUND:${Python_Development_FOUND}")
message("Python_LIBRARIES:${Python_LIBRARIES}")
message("Python_LIBRARY_DIRS:${Python_LIBRARY_DIRS}")
message("Python_INCLUDE_DIRS:${Python_INCLUDE_DIRS}")
message("Python_LINK_OPTIONS:${Python_LINK_OPTIONS}")
message("Python_NumPy_FOUND:${Python_NumPy_FOUND}")


add_library( 
  weather
  SHARED
  ../../src/weather.c
)
