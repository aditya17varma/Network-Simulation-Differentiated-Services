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
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/compiler_depend.make

# Include the progress variables for this target.
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/progress.make

# Include the compile flags for this target's objects.
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/flags.make

# Object files for target libpoint-to-point-layout
libpoint__to__point__layout_OBJECTS =

# External object files for target libpoint-to-point-layout
libpoint__to__point__layout_EXTERNAL_OBJECTS = \
"/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o" \
"/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o" \
"/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o"

/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/build.make
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib: /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/usr/lib/libsqlite3.tbd
/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library /Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libpoint-to-point-layout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/build: /Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-point-to-point-layout-debug.dylib
.PHONY : src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/build

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout && $(CMAKE_COMMAND) -P CMakeFiles/libpoint-to-point-layout.dir/cmake_clean.cmake
.PHONY : src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/clean

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/src/point-to-point-layout /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout.dir/depend

