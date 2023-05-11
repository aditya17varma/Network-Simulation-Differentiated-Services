# CMake generated Testfile for 
# Source directory: /Users/aditya/ns-allinone-3.38/ns-3.38
# Build directory: /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-stdlib_pch_exec "ns3.38-stdlib_pch_exec-debug")
set_tests_properties(ctest-stdlib_pch_exec PROPERTIES  WORKING_DIRECTORY "/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/" _BACKTRACE_TRIPLES "/Users/aditya/ns-allinone-3.38/ns-3.38/build-support/macros-and-definitions.cmake;1545;add_test;/Users/aditya/ns-allinone-3.38/ns-3.38/build-support/macros-and-definitions.cmake;1462;set_runtime_outputdirectory;/Users/aditya/ns-allinone-3.38/ns-3.38/CMakeLists.txt;146;process_options;/Users/aditya/ns-allinone-3.38/ns-3.38/CMakeLists.txt;0;")
subdirs("src")
subdirs("examples")
subdirs("scratch")
subdirs("utils")
