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

# Utility rule file for uninstall_pkgconfig_dsr.

# Include any custom commands dependencies for this target.
include CMakeFiles/uninstall_pkgconfig_dsr.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/uninstall_pkgconfig_dsr.dir/progress.make

CMakeFiles/uninstall_pkgconfig_dsr:
	rm /usr/local/lib/pkgconfig/ns3-dsr.pc

uninstall_pkgconfig_dsr: CMakeFiles/uninstall_pkgconfig_dsr
uninstall_pkgconfig_dsr: CMakeFiles/uninstall_pkgconfig_dsr.dir/build.make
.PHONY : uninstall_pkgconfig_dsr

# Rule to build all files generated by this target.
CMakeFiles/uninstall_pkgconfig_dsr.dir/build: uninstall_pkgconfig_dsr
.PHONY : CMakeFiles/uninstall_pkgconfig_dsr.dir/build

CMakeFiles/uninstall_pkgconfig_dsr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uninstall_pkgconfig_dsr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uninstall_pkgconfig_dsr.dir/clean

CMakeFiles/uninstall_pkgconfig_dsr.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/uninstall_pkgconfig_dsr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uninstall_pkgconfig_dsr.dir/depend

