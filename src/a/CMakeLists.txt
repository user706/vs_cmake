cmake_minimum_required(VERSION 3.12)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/../../cmake)
include(add_dir)
include(scan_defs)

set_property(GLOBAL APPEND PROPERTY addSubdirProp "${CMAKE_CURRENT_SOURCE_DIR}|${CMAKE_CURRENT_BINARY_DIR}")

project(proj LANGUAGES C CXX ASM)

scan_defs()

