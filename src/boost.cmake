set(Boost_NO_WARN_NEW_VERSIONS 1)

set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)

set(BOOST_ROOT "${THIRDPARTY_DIR}/boost")
set(Boost_LIBRARY_DIR "${THIRDPARTY_DIR}/boost/stage/lib")

find_package(Boost REQUIRED COMPONENTS program_options)

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    link_directories(${Boost_LIBRARY_DIR})
else()
    message(FATAL_ERROR "Unable to find boost")
endif()
