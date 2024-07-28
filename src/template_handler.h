#pragma once

#include "absl/status/statusor.h"

#include "jinja2cpp/filesystem_handler.h"
#include "jinja2cpp/template_env.h"

class TemplateHandler {
public:
  static absl::StatusOr<std::unique_ptr<TemplateHandler>>
  Create(std::string path_templates);

  ~TemplateHandler() = default;

  std::shared_ptr<jinja2::MemoryFileSystem> file_system();

  absl::StatusOr<std::string> RenderTemplate(std::string template_name);

private:
  TemplateHandler(std::string path_templates,
                  std::shared_ptr<jinja2::MemoryFileSystem> file_system,
                  std::unique_ptr<jinja2::TemplateEnv> template_enviroment);

  std::string path_templates_;
  std::shared_ptr<jinja2::MemoryFileSystem> file_system_;
  std::unique_ptr<jinja2::TemplateEnv> template_environment_;
};