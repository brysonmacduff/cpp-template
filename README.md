* Author: Bryson MacDuff
* Edit Date: 2024-10-27
* Description: This is a c++ template project
* Build Instructions:
    * cd build/release
    * cmake ../..
    * cmake --build .
* Testing Instructions:
    * cd build/release
    * make test
* Run Instructions:
    * ./build/release/src/cpp_template
* Debug Instructions:
    * cd build/debug
    * cmake -DCMAKE_BUILD_TYPE=Debug ../..
    * cmake --build .
    * cd src
    * gdb cpp-template
        * set breakpoint:
            * break \<file.cpp\>:\<line\>
        * common gdb commands:
            * run
            * step
            * next
* Dependencies:
    * GoogleTest (GTest)
        * libgtest-dev
        * libgmock-dev
    * Speed Log (spdlog)
* Build Debian Package:
    * cp build/release/src/cpp-template deb/cpp-template/usr/local/bin
    * cd deb
    * dpkg-deb --build cpp-template
    * apt install -y ./cpp-template.deb
