#include <doctest/doctest.h>
#include <pathPlanning/pathPlanning.h>
#include <pathPlanning/version.h>

#include <string>

TEST_CASE("PathPlanning") {
  using namespace pathPlanning;

  PathPlanning pathPlanning("Tests");

  CHECK(pathPlanning.greet(LanguageCode::EN) == "Hello, Tests!");
  CHECK(pathPlanning.greet(LanguageCode::DE) == "Hallo Tests!");
  CHECK(pathPlanning.greet(LanguageCode::ES) == "¡Hola Tests!");
  CHECK(pathPlanning.greet(LanguageCode::FR) == "Bonjour Tests!");
}

TEST_CASE("PathPlanning version") {
  static_assert(std::string_view(GREETER_VERSION) == std::string_view("1.0"));
  CHECK(std::string(GREETER_VERSION) == std::string("1.0"));
}
