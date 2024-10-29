# this script is meant to be called from the top level directory
BUILD_TYPE=$1

# build for debug
if [ "$BUILD_TYPE" = "debug" ]; then
    # build for debug
    cmake -DCMAKE_BUILD_TYPE=Debug -B build/debug -S .
    cmake --build build/debug
elif [ "$BUILD_TYPE" = "release" ]; then
    # build for release
    cmake -B build/release -S .
    cmake --build build/release
elif [ "$BUILD_TYPE" = "clear" ]; then
    # clear the whole build directory
    rm -r -f build/*
elif [ "$BUILD_TYPE" = "debian" ]; then
    # build a debian package from the release directory's executable
    cp build/release/src/cpp-template deb/cpp-template/usr/local/bin
    dpkg-deb --build deb/cpp-template
else
    echo "Error: Invalid build type."
fi
