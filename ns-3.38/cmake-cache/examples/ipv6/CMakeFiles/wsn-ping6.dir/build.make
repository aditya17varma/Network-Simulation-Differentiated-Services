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
include examples/ipv6/CMakeFiles/wsn-ping6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/ipv6/CMakeFiles/wsn-ping6.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/ipv6/CMakeFiles/wsn-ping6.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ipv6/CMakeFiles/wsn-ping6.dir/flags.make

examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o: examples/ipv6/CMakeFiles/wsn-ping6.dir/flags.make
examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/examples/ipv6/wsn-ping6.cc
examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o: examples/ipv6/CMakeFiles/wsn-ping6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6 && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o -MF CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o.d -o CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/examples/ipv6/wsn-ping6.cc

examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6 && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/examples/ipv6/wsn-ping6.cc > CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.i

examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6 && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/examples/ipv6/wsn-ping6.cc -o CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.s

# Object files for target wsn-ping6
wsn__ping6_OBJECTS = \
"CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o"

# External object files for target wsn-ping6
wsn__ping6_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/ipv6/ns3.38-wsn-ping6-debug: examples/ipv6/CMakeFiles/wsn-ping6.dir/wsn-ping6.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/ipv6/ns3.38-wsn-ping6-debug: examples/ipv6/CMakeFiles/wsn-ping6.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/ipv6/ns3.38-wsn-ping6-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/ipv6/ns3.38-wsn-ping6-debug: examples/ipv6/CMakeFiles/wsn-ping6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/ipv6/ns3.38-wsn-ping6-debug"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wsn-ping6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ipv6/CMakeFiles/wsn-ping6.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/ipv6/ns3.38-wsn-ping6-debug
.PHONY : examples/ipv6/CMakeFiles/wsn-ping6.dir/build

examples/ipv6/CMakeFiles/wsn-ping6.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6 && $(CMAKE_COMMAND) -P CMakeFiles/wsn-ping6.dir/cmake_clean.cmake
.PHONY : examples/ipv6/CMakeFiles/wsn-ping6.dir/clean

examples/ipv6/CMakeFiles/wsn-ping6.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/examples/ipv6 /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6 /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/ipv6/CMakeFiles/wsn-ping6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ipv6/CMakeFiles/wsn-ping6.dir/depend

