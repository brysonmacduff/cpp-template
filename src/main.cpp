#include "shape.h"
#include <iostream>
#include <spdlog/spdlog.h>

int main()
{
    spdlog::info("src/main() -> Hello!\n");
    Geometry::Shape s = Geometry::Shape(3);
    std::cout << "src/main() -> " << s << "\n";
    return 0;
}