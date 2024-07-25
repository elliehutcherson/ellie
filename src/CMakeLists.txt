add_library(config config.h)
target_link_libraries(config PUBLIC absl::strings)
target_link_libraries(config PUBLIC absl::log)

add_executable(ellie main.cc)
target_link_libraries(ellie PUBLIC absl::log)
target_link_libraries(ellie PUBLIC Crow::Crow)
target_link_libraries(ellie PUBLIC config)