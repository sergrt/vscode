cmake_minimum_required(VERSION 3.10)

project(skeleton VERSION 0.0.1 DESCRIPTION "VS Code project skeleton")

set(THIRDPARTY_DIR "${CMAKE_SOURCE_DIR}/3rdparty")

add_subdirectory(src)
add_subdirectory(test)
