cmake_minimum_required(VERSION 3.13)  # CMake version check
project(ellie)                        # Create project "ellie"
set(CMAKE_CXX_STANDARD 20)            # Enable c++20 standard
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


### Require out-of-source builds
file(TO_CMAKE_PATH ${PROJECT_BINARY_DIR}/CMakeLists.txt LOC_PATH)
if(EXISTS ${LOC_PATH})
    message(FATAL_ERROR "You cannot build in a source directory.")
endif()

### Copy assets to build directory
file(COPY ${CMAKE_CURRENT_LIST_DIR}/src/static DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/src)
file(COPY ${CMAKE_CURRENT_LIST_DIR}/src/templates DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/src)
add_custom_target(copy_assets 
  COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_LIST_DIR}/src/static ${CMAKE_CURRENT_BINARY_DIR}/src
  COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_LIST_DIR}/src/tempaltes ${CMAKE_CURRENT_BINARY_DIR}/src
)
add_dependencies(copy_assets ${PROJECT_NAME})

add_subdirectory(src)
add_subdirectory(include)
add_subdirectory(testing)

# https://stackoverflow.com/questions/13703647/how-to-properly-add-include-directories-with-cmake