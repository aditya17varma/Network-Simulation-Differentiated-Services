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
include src/csma/examples/CMakeFiles/csma-multicast.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/csma/examples/CMakeFiles/csma-multicast.dir/compiler_depend.make

# Include the progress variables for this target.
include src/csma/examples/CMakeFiles/csma-multicast.dir/progress.make

# Include the compile flags for this target's objects.
include src/csma/examples/CMakeFiles/csma-multicast.dir/flags.make

src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o: src/csma/examples/CMakeFiles/csma-multicast.dir/flags.make
src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/csma/examples/csma-multicast.cc
src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o: src/csma/examples/CMakeFiles/csma-multicast.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o -MF CMakeFiles/csma-multicast.dir/csma-multicast.cc.o.d -o CMakeFiles/csma-multicast.dir/csma-multicast.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/csma/examples/csma-multicast.cc

src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csma-multicast.dir/csma-multicast.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/csma/examples/csma-multicast.cc > CMakeFiles/csma-multicast.dir/csma-multicast.cc.i

src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csma-multicast.dir/csma-multicast.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/csma/examples/csma-multicast.cc -o CMakeFiles/csma-multicast.dir/csma-multicast.cc.s

# Object files for target csma-multicast
csma__multicast_OBJECTS = \
"CMakeFiles/csma-multicast.dir/csma-multicast.cc.o"

# External object files for target csma-multicast
csma__multicast_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/csma/examples/ns3.38-csma-multicast-debug: src/csma/examples/CMakeFiles/csma-multicast.dir/csma-multicast.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/csma/examples/ns3.38-csma-multicast-debug: src/csma/examples/CMakeFiles/csma-multicast.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/csma/examples/ns3.38-csma-multicast-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/src/csma/examples/ns3.38-csma-multicast-debug: src/csma/examples/CMakeFiles/csma-multicast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/aditya/ns-allinone-3.38/ns-3.38/build/src/csma/examples/ns3.38-csma-multicast-debug"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csma-multicast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/csma/examples/CMakeFiles/csma-multicast.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/src/csma/examples/ns3.38-csma-multicast-debug
.PHONY : src/csma/examples/CMakeFiles/csma-multicast.dir/build

src/csma/examples/CMakeFiles/csma-multicast.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples && $(CMAKE_COMMAND) -P CMakeFiles/csma-multicast.dir/cmake_clean.cmake
.PHONY : src/csma/examples/CMakeFiles/csma-multicast.dir/clean

src/csma/examples/CMakeFiles/csma-multicast.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/src/csma/examples /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/csma/examples/CMakeFiles/csma-multicast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/csma/examples/CMakeFiles/csma-multicast.dir/depend

