#define CROW_STATIC_DIRECTORY "build/src/static/"

#include "absl/log/log.h"
#include "absl/status/statusor.h"

#include "crow.h"
#include "crow/mustache.h"

#include "jinja2cpp/filesystem_handler.h"
#include "jinja2cpp/template.h"
#include "jinja2cpp/template_env.h"

#include "config.h"
#include "template_handler.h"


int main(int argc, char *argv[]) {
  LOG(INFO) << "Starting application!";
  // #define CROW_STATIC_DIRECTORY absl::StrCat(Config::get()->path_static(), "/")
  LOG(INFO) << "Static directory: " << CROW_STATIC_DIRECTORY;

  crow::SimpleApp app;

  absl::StatusOr<std::unique_ptr<TemplateHandler>> handler_result =
      TemplateHandler::Create(Config::get()->path_templates());
  if (!handler_result.ok()) {
    LOG(ERROR) << handler_result.status();
    return 1;
  }

  std::unique_ptr<TemplateHandler> template_handler =
      std::move(*handler_result);

  CROW_ROUTE(app, "/")
  ([&]() -> std::string {
    absl::StatusOr<std::string> content =
        template_handler->RenderTemplate("layout.html");
    if (!content.ok()) {
      LOG(ERROR) << content.status();
      return std::string(content.status().message());
    }
    return *content;
  });


  CROW_ROUTE(app, "/test")
  ([&]() -> std::string {
    absl::StatusOr<std::string> content =
        template_handler->RenderTemplate("test.html");
    if (!content.ok()) {
      LOG(ERROR) << content.status();
      return std::string(content.status().message());
    }
    return *content;
  });
  
  CROW_ROUTE(app, "/home")
  ([&]() -> std::string {
    absl::StatusOr<std::string> content =
        template_handler->RenderTemplate("home.html");
    if (!content.ok()) {
      LOG(ERROR) << content.status();
      return std::string(content.status().message());
    }
    return *content;
  });


  app.port(18080).multithreaded().run();
  return 0;
}