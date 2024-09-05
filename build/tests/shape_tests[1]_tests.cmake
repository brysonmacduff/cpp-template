add_test( misc_tests.google_test_test [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=misc_tests.google_test_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( misc_tests.google_test_test PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( shape_tests.side_count_constructor_test [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=shape_tests.side_count_constructor_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( shape_tests.side_count_constructor_test PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( shape_tests.angles_constructor_test [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=shape_tests.angles_constructor_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( shape_tests.angles_constructor_test PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( shape_tests.mock_get_side_count [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=shape_tests.mock_get_side_count]==] --gtest_also_run_disabled_tests)
set_tests_properties( shape_tests.mock_get_side_count PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( shape_tests.equal_operator_test [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=shape_tests.equal_operator_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( shape_tests.equal_operator_test PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( shape_tests.equal_assignment_test [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=shape_tests.equal_assignment_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( shape_tests.equal_assignment_test PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( shape_tests.copy_constructor_test [==[/home/bryson/projects/c++/cpp-template/build/tests/shape_tests]==] [==[--gtest_filter=shape_tests.copy_constructor_test]==] --gtest_also_run_disabled_tests)
set_tests_properties( shape_tests.copy_constructor_test PROPERTIES WORKING_DIRECTORY [==[/home/bryson/projects/c++/cpp-template/build/tests]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( shape_tests_TESTS misc_tests.google_test_test shape_tests.side_count_constructor_test shape_tests.angles_constructor_test shape_tests.mock_get_side_count shape_tests.equal_operator_test shape_tests.equal_assignment_test shape_tests.copy_constructor_test)
