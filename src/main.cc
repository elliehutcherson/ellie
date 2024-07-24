#include "absl/log/log.h"
#include "crow.h"

int main (int argc, char *argv[]) {
  LOG(INFO) << "Starting application!";

  crow::SimpleApp app;

  CROW_ROUTE(app, "/")
  ([]() {
    return "Hello world!";
  });

  app.port(18080).multithreaded().run();
  return 0;
}