set(Boost_NO_WARN_NEW_VERSIONS 1)

set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)

set(BOOST_ROOT "${THIRDPARTY_DIR}/boost")
find_package(Boost REQUIRED COMPONENTS program_options)

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    # target_link_libraries(progname ${Boost_LIBRARIES})
else()
    message(FATAL_ERROR "Unable to find boost")
endif()
