## Project Information
* Author: Bryson MacDuff
* Edit Date: 2024-10-27
* Description: This is a c++ template project
## Dependencies
* GoogleTest (GTest)
    * libgtest-dev
    * libgmock-dev
* Speed Log (spdlog)
    * libspdlog-dev
## Build Instructions
    ./build.sh release
## Testing Instructions
    cd build/release
    make test
## Run Instructions
    ./build/release/src/cpp-template
## Debug Instructions
    ./build.sh debug
    cd build/debug/src
    gdb cpp-template
        set breakpoint:
            break <file.cpp>:<line>
        common gdb commands:
            run
            step
            next
## Build Debian Package
    ./build.sh debian
    sudo apt install -y ./cpp-template.deb
