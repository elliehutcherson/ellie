add_library(asio INTERFACE)
set(ASIO_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/asio/asio/include CACHE INTERNAL "Path to include folder for Asio")
target_compile_options(asio INTERFACE ASIO_STANDALONE)
target_include_directories(asio INTERFACE ${ASIO_INCLUDE_DIR}) 
include_directories(${INCLUDE_DIRECTORIES} ${ASIO_INCLUDE_DIR})

add_subdirectory(Crow)

add_subdirectory(abseil-cpp)

add_subdirectory(Jinja2Cpp)