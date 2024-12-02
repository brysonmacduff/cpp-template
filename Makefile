BUILD_DIR = build
TEST_BIN_PATH = ./$(BUILD_DIR)/tests/run_tests
DEB_DIR = deb
DEB_NAME := $(shell grep Package: deb/DEBIAN/control | cut -d ':' -f 2-)
DEB_BIN_DIR := $(DEB_NAME)/usr/local/bin

# this file is generated on some clauses, such as "deb"
PROJECT_NAME_FILE = $(BUILD_DIR)/project_name.txt

# default "make" command which builds normally
all:
	@cmake -S . -B $(BUILD_DIR) 
	@cmake --build $(BUILD_DIR)

# builds with debug symbols
debug:
	@cmake -S . -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Debug
	@cmake --build $(BUILD_DIR)

# builds normally, but outputs more information in the build directory
info:
	@cmake -S . -B $(BUILD_DIR) -DWRITE_PROJECT_NAME=ON
	@cmake --build $(BUILD_DIR)

# builds normally and runs unit tests
test: all
	@$(TEST_BIN_PATH)

# deletes the build directory
clean:
	@rm -rf $(BUILD_DIR)

# makes the debian directory where the project executable will be copied
deb_dir:
	@echo $(DEB_BIN_DIR)
	@mkdir -p $(DEB_BIN_DIR)
	@mv $(DEB_BIN_DIR) $(DEB_DIR)

# copies the project executable to the debian install directory
deb_bin:
	@cp $(BUILD_DIR)/src/$(shell cat $(PROJECT_NAME_FILE)) $(DEB_BIN_DIR)

# build a debian package that contains the src executable
deb: info deb_dir deb_bin
	@dpkg-deb --build $(DEB_DIR)/$(DEB_NAME)

# this is for a clause to run even if make otherwise would prefer not to
.PHONY: deb