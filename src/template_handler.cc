#include "template_handler.h"

#include <filesystem>
#include <fstream>

#include "absl/log/log.h"
#include "absl/status/status.h"

#include "jinja2cpp/filesystem_handler.h"
#include "jinja2cpp/template_env.h"

absl::StatusOr<std::unique_ptr<TemplateHandler>>
TemplateHandler::Create(std::string path_templates) {
  if (!std::filesystem::is_directory(path_templates)) {
    LOG(WARNING) << "Path does not exist: " << path_templates;
    return absl::InvalidArgumentError("Path does not exist!");
  }

  auto fs = std::make_shared<jinja2::MemoryFileSystem>();
  for (const auto &entry :
       std::filesystem::recursive_directory_iterator(path_templates)) {
    std::string path = entry.path();
    if (path.find(".html") == std::string::npos) {
      LOG(INFO) << "Found non-html file in templates folder: " << entry.path();
      continue;
    }
    std::string file_name = path.substr(path.find_last_of("/") + 1);
    std::ifstream file(path);
    if (!file.is_open()) {
      LOG(ERROR) << "Could not open file: " << path;
      return absl::InternalError("Could not open file!");
    }
    std::string content((std::istreambuf_iterator<char>(file)),
                        std::istreambuf_iterator<char>());

    LOG(INFO) << "Adding file: " << file_name;
    fs->AddFile(/*fileName=*/file_name, /*fileContent=*/content);
  }

  auto template_environment = std::make_unique<jinja2::TemplateEnv>();
  template_environment->AddFilesystemHandler(
      /*prefix=*/"", /*handler=*/fs);

  std::unique_ptr<TemplateHandler> handler =
      std::unique_ptr<TemplateHandler>(new TemplateHandler(
          path_templates, std::move(fs), std::move(template_environment)));
  return handler;
}

TemplateHandler::TemplateHandler(
    std::string path_templates,
    std::shared_ptr<jinja2::MemoryFileSystem> file_system,
    std::unique_ptr<jinja2::TemplateEnv> template_environment)
    : path_templates_(path_templates), file_system_(file_system),
      template_environment_(std::move(template_environment)) {}

std::shared_ptr<jinja2::MemoryFileSystem> TemplateHandler::file_system() {
  return file_system_;
}

absl::StatusOr<std::string>
TemplateHandler::RenderTemplate(std::string template_name) {
  nonstd::expected_lite::expected<jinja2::Template, jinja2::ErrorInfo> result =
      template_environment_->LoadTemplate(template_name);
  if (!result.has_value()) {
    LOG(ERROR) << result.error();
    return std::string("Error loading template!");
  }
  jinja2::Template tpl = result.value();
  jinja2::Result<std::string> render_result = tpl.RenderAsString({});
  if (!render_result.has_value()) {
    LOG(ERROR) << render_result.error();
    return absl::InternalError("Error rendering template!");
  }
  return render_result.value();
}