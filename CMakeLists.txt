cmake_minimum_required(VERSION 3.13)  # CMake version check
project(ellie)                        # Create project "ellie"
set(CMAKE_CXX_STANDARD 20)            # Enable c++20 standard
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(src)
add_subdirectory(include)
add_subdirectory(testing)

# https://stackoverflow.com/questions/13703647/how-to-properly-add-include-directories-with-cmake