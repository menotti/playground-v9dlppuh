cmake_minimum_required (VERSION 3.0)
project (cpp-project)
add_subdirectory (src)

set(CMAKE_CXX_COMPILER "dpcpp")
set(CMAKE_CXX_STANDARD 14)


# Set default build type to RelWithDebInfo if not specified
if (NOT CMAKE_BUILD_TYPE)
    message (STATUS "Default CMAKE_BUILD_TYPE not set using Release with Debug Info")
    set (CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE
        STRING "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel"
        FORCE)
endif()

add_executable(
  ${SAMPLE_NAME}
  ${CMAKE_CURRENT_SOURCE_DIR}/src/Exercises/${SAMPLE_NAME}.cpp
)
add_sycl_to_target(
  ${SAMPLE_NAME}
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/src/Exercises/${SAMPLE_NAME}.cpp
)
