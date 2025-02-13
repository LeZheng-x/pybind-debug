cmake_minimum_required(VERSION 3.0)
project(python_cpp_debug VERSION 0.1.0)
include(cmake/pybind11.cmake)
set(CMAKE_BUILD_TYPE Debug)

file(GLOB_RECURSE PYBIND_DEBUG_SOURCES
	add.cpp
)
pybind11_add_module(${PROJECT_NAME} MODULE ${PYBIND_DEBUG_SOURCES})
target_include_directories(${PROJECT_NAME} PRIVATE ${PYBIND11_INCLUDE_DIR})
