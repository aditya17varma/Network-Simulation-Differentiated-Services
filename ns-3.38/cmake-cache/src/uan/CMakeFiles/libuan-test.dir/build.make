# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aditya/ns-allinone-3.38/ns-3.38

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache

# Include any dependencies generated for this target.
include src/uan/CMakeFiles/libuan-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/uan/CMakeFiles/libuan-test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/uan/CMakeFiles/libuan-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/uan/CMakeFiles/libuan-test.dir/flags.make

src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o: src/uan/CMakeFiles/libuan-test.dir/flags.make
src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-energy-model-test.cc
src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx
src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx.pch
src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o: src/uan/CMakeFiles/libuan-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -MD -MT src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o -MF CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o.d -o CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-energy-model-test.cc

src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-energy-model-test.cc > CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.i

src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-energy-model-test.cc -o CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.s

src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o: src/uan/CMakeFiles/libuan-test.dir/flags.make
src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-test.cc
src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx
src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx.pch
src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o: src/uan/CMakeFiles/libuan-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -MD -MT src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o -MF CMakeFiles/libuan-test.dir/test/uan-test.cc.o.d -o CMakeFiles/libuan-test.dir/test/uan-test.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-test.cc

src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libuan-test.dir/test/uan-test.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-test.cc > CMakeFiles/libuan-test.dir/test/uan-test.cc.i

src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libuan-test.dir/test/uan-test.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan/test/uan-test.cc -o CMakeFiles/libuan-test.dir/test/uan-test.cc.s

# Object files for target libuan-test
libuan__test_OBJECTS = \
"CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o" \
"CMakeFiles/libuan-test.dir/test/uan-test.cc.o"

# External object files for target libuan-test
libuan__test_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib: src/uan/CMakeFiles/libuan-test.dir/test/uan-energy-model-test.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib: src/uan/CMakeFiles/libuan-test.dir/test/uan-test.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib: src/uan/CMakeFiles/libuan-test.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib: src/uan/CMakeFiles/libuan-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libuan-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/uan/CMakeFiles/libuan-test.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-uan-test-debug.dylib
.PHONY : src/uan/CMakeFiles/libuan-test.dir/build

src/uan/CMakeFiles/libuan-test.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan && $(CMAKE_COMMAND) -P CMakeFiles/libuan-test.dir/cmake_clean.cmake
.PHONY : src/uan/CMakeFiles/libuan-test.dir/clean

src/uan/CMakeFiles/libuan-test.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/src/uan /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/uan/CMakeFiles/libuan-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/uan/CMakeFiles/libuan-test.dir/depend

