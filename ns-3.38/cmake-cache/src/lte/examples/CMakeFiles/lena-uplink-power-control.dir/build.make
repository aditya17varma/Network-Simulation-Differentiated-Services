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
include src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/compiler_depend.make

# Include the progress variables for this target.
include src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/progress.make

# Include the compile flags for this target's objects.
include src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/flags.make

src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o: src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/flags.make
src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/lte/examples/lena-uplink-power-control.cc
src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o: src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o -MF CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o.d -o CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/lte/examples/lena-uplink-power-control.cc

src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/lte/examples/lena-uplink-power-control.cc > CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.i

src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/lte/examples/lena-uplink-power-control.cc -o CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.s

# Object files for target lena-uplink-power-control
lena__uplink__power__control_OBJECTS = \
"CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o"

# External object files for target lena-uplink-power-control
lena__uplink__power__control_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug: src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/lena-uplink-power-control.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug: src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libxml2.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug: src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lena-uplink-power-control.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/src/lte/examples/ns3.38-lena-uplink-power-control-debug
.PHONY : src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/build

src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples && $(CMAKE_COMMAND) -P CMakeFiles/lena-uplink-power-control.dir/cmake_clean.cmake
.PHONY : src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/clean

src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/src/lte/examples /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lte/examples/CMakeFiles/lena-uplink-power-control.dir/depend

