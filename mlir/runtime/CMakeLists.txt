# Copyright 2020 ETH Zurich and University of Bologna.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
cmake_minimum_required(VERSION 3.13)

if (CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../cmake)
    set(CMAKE_TOOLCHAIN_FILE toolchain-gcc CACHE STRING "Toolchain to use")

    project(snMLIR LANGUAGES C ASM CXX)
    include(SnitchUtilities)

    add_compile_options(-O3 -g -ffunction-sections)

    # Build the runtime.
    add_subdirectory(../snRuntime snRuntime)
endif()

add_snitch_library(snMLIR
    src/snmlir.cpp)

target_include_directories(snMLIR PUBLIC
    include
    ${SNRUNTIME_INCLUDE_DIRS})

target_compile_definitions(snMLIR PUBLIC
    NDEBUG)

# Tests
enable_testing()
set(SNITCH_TEST_PREFIX snMLIR-)
link_libraries(snMLIR)

add_snitch_test(print tests/print.cpp)
add_snitch_test(memref_to_llvm tests/memref_to_llvm.cpp)
add_snitch_test(allocators tests/allocators.cpp)
add_snitch_test(memref_copy tests/memref_copy.cpp) # FIXME
