cmake_minimum_required(VERSION 3.10)
project(submodule1)

# Create cmake_dependencies directory if it doesn't exist
file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/cmake_dependencies)

# Include dependency management
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake_dependencies/Dependencies.cmake)

# Process all dependencies
list(LENGTH DEPENDENCY_PATHS list_length)
math(EXPR list_length "${list_length}-1")
foreach(dep_idx RANGE 0 ${list_length})
  list(GET DEPENDENCY_PATHS ${dep_idx} dep_path)
  add_subdirectory(${dep_path})
endforeach()

# Add source directory
add_subdirectory(src)

# Add tests
enable_testing()
add_subdirectory(tests)