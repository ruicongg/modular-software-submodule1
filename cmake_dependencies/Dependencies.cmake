# Central dependency management file
# Add new dependencies here to use them throughout the project

# Function to register a dependency
function(register_dependency TARGET DEP_NAME DEP_PATH)
  # Add the subdirectory if a path is provided
  if(DEP_PATH)
    add_subdirectory(${DEP_PATH})
  endif()
  
  # Link the dependency and include its headers
  target_link_libraries(${TARGET} ${DEP_NAME})
  target_include_directories(${TARGET} PUBLIC 
    $<TARGET_PROPERTY:${DEP_NAME},INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:${DEP_NAME},SOURCE_DIR>)
endfunction()

# List all dependencies here
set(SUBMODULE_DEPENDENCIES
  submodule1_1
)

# List dependency paths here
set(DEPENDENCY_PATHS
  modular-software-submodule1-1
) 