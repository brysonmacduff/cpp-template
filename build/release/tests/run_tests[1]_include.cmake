if(EXISTS "/home/bryson/projects/c++/cpp-template/build/release/tests/run_tests[1]_tests.cmake")
  include("/home/bryson/projects/c++/cpp-template/build/release/tests/run_tests[1]_tests.cmake")
else()
  add_test(run_tests_NOT_BUILT run_tests_NOT_BUILT)
endif()
