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
include scratch/CMakeFiles/scratch_drr.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include scratch/CMakeFiles/scratch_drr.dir/compiler_depend.make

# Include the progress variables for this target.
include scratch/CMakeFiles/scratch_drr.dir/progress.make

# Include the compile flags for this target's objects.
include scratch/CMakeFiles/scratch_drr.dir/flags.make

scratch/CMakeFiles/scratch_drr.dir/drr.cc.o: scratch/CMakeFiles/scratch_drr.dir/flags.make
scratch/CMakeFiles/scratch_drr.dir/drr.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.cc
scratch/CMakeFiles/scratch_drr.dir/drr.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx
scratch/CMakeFiles/scratch_drr.dir/drr.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx.pch
scratch/CMakeFiles/scratch_drr.dir/drr.cc.o: scratch/CMakeFiles/scratch_drr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object scratch/CMakeFiles/scratch_drr.dir/drr.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -MD -MT scratch/CMakeFiles/scratch_drr.dir/drr.cc.o -MF CMakeFiles/scratch_drr.dir/drr.cc.o.d -o CMakeFiles/scratch_drr.dir/drr.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.cc

scratch/CMakeFiles/scratch_drr.dir/drr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scratch_drr.dir/drr.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.cc > CMakeFiles/scratch_drr.dir/drr.cc.i

scratch/CMakeFiles/scratch_drr.dir/drr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scratch_drr.dir/drr.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.cc -o CMakeFiles/scratch_drr.dir/drr.cc.s

# Object files for target scratch_drr
scratch_drr_OBJECTS = \
"CMakeFiles/scratch_drr.dir/drr.cc.o"

# External object files for target scratch_drr
scratch_drr_EXTERNAL_OBJECTS =

/Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug: scratch/CMakeFiles/scratch_drr.dir/drr.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug: scratch/CMakeFiles/scratch_drr.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libxml2.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug: scratch/CMakeFiles/scratch_drr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scratch_drr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
scratch/CMakeFiles/scratch_drr.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/scratch/ns3.38-drr-debug
.PHONY : scratch/CMakeFiles/scratch_drr.dir/build

scratch/CMakeFiles/scratch_drr.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch && $(CMAKE_COMMAND) -P CMakeFiles/scratch_drr.dir/cmake_clean.cmake
.PHONY : scratch/CMakeFiles/scratch_drr.dir/clean

scratch/CMakeFiles/scratch_drr.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/scratch /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/scratch/CMakeFiles/scratch_drr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : scratch/CMakeFiles/scratch_drr.dir/depend

