add_library(submodule1 submodule1.cpp)
target_include_directories(submodule1 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(submodule1 PUBLIC ${CMAKE_SOURCE_DIR}/modular-software-submodule1-1/src)
target_link_libraries(submodule1 submodule1_1) 