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
include examples/tutorial/CMakeFiles/seventh.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/tutorial/CMakeFiles/seventh.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/tutorial/CMakeFiles/seventh.dir/progress.make

# Include the compile flags for this target's objects.
include examples/tutorial/CMakeFiles/seventh.dir/flags.make

examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o: examples/tutorial/CMakeFiles/seventh.dir/flags.make
examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/seventh.cc
examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o: examples/tutorial/CMakeFiles/seventh.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o -MF CMakeFiles/seventh.dir/seventh.cc.o.d -o CMakeFiles/seventh.dir/seventh.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/seventh.cc

examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seventh.dir/seventh.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/seventh.cc > CMakeFiles/seventh.dir/seventh.cc.i

examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seventh.dir/seventh.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/seventh.cc -o CMakeFiles/seventh.dir/seventh.cc.s

examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o: examples/tutorial/CMakeFiles/seventh.dir/flags.make
examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/tutorial-app.cc
examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o: examples/tutorial/CMakeFiles/seventh.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o -MF CMakeFiles/seventh.dir/tutorial-app.cc.o.d -o CMakeFiles/seventh.dir/tutorial-app.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/tutorial-app.cc

examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seventh.dir/tutorial-app.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/tutorial-app.cc > CMakeFiles/seventh.dir/tutorial-app.cc.i

examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seventh.dir/tutorial-app.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial/tutorial-app.cc -o CMakeFiles/seventh.dir/tutorial-app.cc.s

# Object files for target seventh
seventh_OBJECTS = \
"CMakeFiles/seventh.dir/seventh.cc.o" \
"CMakeFiles/seventh.dir/tutorial-app.cc.o"

# External object files for target seventh
seventh_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug: examples/tutorial/CMakeFiles/seventh.dir/seventh.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug: examples/tutorial/CMakeFiles/seventh.dir/tutorial-app.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug: examples/tutorial/CMakeFiles/seventh.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug: examples/tutorial/CMakeFiles/seventh.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/seventh.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/tutorial/CMakeFiles/seventh.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/examples/tutorial/ns3.38-seventh-debug
.PHONY : examples/tutorial/CMakeFiles/seventh.dir/build

examples/tutorial/CMakeFiles/seventh.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial && $(CMAKE_COMMAND) -P CMakeFiles/seventh.dir/cmake_clean.cmake
.PHONY : examples/tutorial/CMakeFiles/seventh.dir/clean

examples/tutorial/CMakeFiles/seventh.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/examples/tutorial /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/examples/tutorial/CMakeFiles/seventh.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/tutorial/CMakeFiles/seventh.dir/depend

