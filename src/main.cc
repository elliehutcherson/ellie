#include "absl/log/log.h"
#include "crow.h"
#include "crow/mustache.h"

#include "config.h"

int main (int argc, char *argv[]) {
  LOG(INFO) << "Starting application!";

  crow::mustache::set_global_base(Config::get()->path_templates());
  crow::SimpleApp app;

  CROW_ROUTE(app, "/") ([]() {
    std::string home_text = crow::mustache::load_text("home.html");
    LOG(INFO) << home_text;
    crow::mustache::template_t page = crow::mustache::load("layout.html");
    crow::mustache::context ctx({{"content", home_text}});
    return page.render(ctx);
  });

  app.port(18080).multithreaded().run();
  return 0;
}