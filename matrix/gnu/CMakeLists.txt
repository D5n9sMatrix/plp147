cmake_minimum_required(VERSION 3.0.0)
project(plp147 VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(plp147 plp147.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
