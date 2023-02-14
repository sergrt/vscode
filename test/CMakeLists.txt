cmake_minimum_required(VERSION 3.10)

project(skeleton_tests)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(SOURCE
    tests.cpp
)

add_executable(${PROJECT_NAME} ${SOURCE})

if (WIN32)
    set(gtest_force_shared_crt ON CACHE BOOL "Always use msvcrt.dll" FORCE)
endif()

add_subdirectory("${THIRDPARTY_DIR}/gtest/googletest" "${CMAKE_CURRENT_BINARY_DIR}/gtest")
enable_testing()

include_directories(
    ${CMAKE_SOURCE_DIR}/src
    ${gtest_SOURCE_DIR}/include
    ${gtest_SOURCE_DIR}
)

link_directories(
    ${CMAKE_BINARY_DIR}/src/${CMAKE_BUILD_TYPE}
    ${CMAKE_BINARY_DIR}/lib/${CMAKE_BUILD_TYPE}
)

target_link_libraries(${PROJECT_NAME} gtest)
