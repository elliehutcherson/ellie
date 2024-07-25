# pragma once

#include <string>
#include <filesystem>

#include "absl/strings/str_cat.h"
#include "absl/log/log.h"

struct Config {
  std::string path_executable;
  std::string ptemplates = "templates";
  std::string pstatic = "static";
  std::string path_templates() {
    return absl::StrCat(path_executable, "/", ptemplates);
  }
  std::string path_static() {
    return absl::StrCat(path_executable, "/", pstatic);
  }
  static Config* get() {
    static Config instance;
    return &instance;
  }
 private:
  Config() {
    path_executable = std::filesystem::canonical("/proc/self/exe").string();
    path_executable = path_executable.substr(0, path_executable.find_last_of("/"));
    LOG(INFO) << "Executable path: " << path_executable;
    LOG(INFO) << "Templates path: " << path_templates();
    LOG(INFO) << "Static path: " << path_static();
  }
};