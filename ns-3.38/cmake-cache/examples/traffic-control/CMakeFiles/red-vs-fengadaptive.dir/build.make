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
include examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/progress.make

# Include the compile flags for this target's objects.
include examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/flags.make

examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o: examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/flags.make
examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/examples/traffic-control/red-vs-fengadaptive.cc
examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o: examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o -MF CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o.d -o CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/examples/traffic-control/red-vs-fengadaptive.cc

examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/examples/traffic-control/red-vs-fengadaptive.cc > CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.i

examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/examples/traffic-control/red-vs-fengadaptive.cc -o CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.s

# Object files for target red-vs-fengadaptive
red__vs__fengadaptive_OBJECTS = \
"CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o"

# External object files for target red-vs-fengadaptive
red__vs__fengadaptive_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/traffic-control/ns3.38-red-vs-fengadaptive-debug: examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/red-vs-fengadaptive.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/traffic-control/ns3.38-red-vs-fengadaptive-debug: examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/traffic-control/ns3.38-red-vs-fengadaptive-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/traffic-control/ns3.38-red-vs-fengadaptive-debug: examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/traffic-control/ns3.38-red-vs-fengadaptive-debug"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/red-vs-fengadaptive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/traffic-control/ns3.38-red-vs-fengadaptive-debug
.PHONY : examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/build

examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control && $(CMAKE_COMMAND) -P CMakeFiles/red-vs-fengadaptive.dir/cmake_clean.cmake
.PHONY : examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/clean

examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/examples/traffic-control /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/traffic-control/CMakeFiles/red-vs-fengadaptive.dir/depend

