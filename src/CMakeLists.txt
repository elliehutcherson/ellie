add_executable(ellie main.cc)
target_link_libraries(ellie PUBLIC absl::log)
target_link_libraries(ellie PUBLIC Crow::Crow)