cmake_minimum_required(VERSION 3.10)

project(skeleton)

include(boost.cmake)
include(nlohmann-json.cmake)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(SOURCE
    main.cpp
)

#set(HEADER
#    header.h
#)

add_executable(${PROJECT_NAME} ${SOURCE} ${HEADER})
