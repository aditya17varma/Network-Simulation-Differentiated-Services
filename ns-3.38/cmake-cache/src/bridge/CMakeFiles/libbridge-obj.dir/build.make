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
include src/bridge/CMakeFiles/libbridge-obj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/bridge/CMakeFiles/libbridge-obj.dir/compiler_depend.make

# Include the progress variables for this target.
include src/bridge/CMakeFiles/libbridge-obj.dir/progress.make

# Include the compile flags for this target's objects.
include src/bridge/CMakeFiles/libbridge-obj.dir/flags.make

src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o: src/bridge/CMakeFiles/libbridge-obj.dir/flags.make
src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/helper/bridge-helper.cc
src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx
src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx.pch
src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o: src/bridge/CMakeFiles/libbridge-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -MD -MT src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o -MF CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o.d -o CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/helper/bridge-helper.cc

src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/helper/bridge-helper.cc > CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.i

src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/helper/bridge-helper.cc -o CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.s

src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o: src/bridge/CMakeFiles/libbridge-obj.dir/flags.make
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-channel.cc
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx.pch
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o: src/bridge/CMakeFiles/libbridge-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -MD -MT src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o -MF CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o.d -o CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-channel.cc

src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-channel.cc > CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.i

src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-channel.cc -o CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.s

src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o: src/bridge/CMakeFiles/libbridge-obj.dir/flags.make
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o: /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-net-device.cc
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o: CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx.pch
src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o: src/bridge/CMakeFiles/libbridge-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -MD -MT src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o -MF CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o.d -o CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o -c /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-net-device.cc

src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.i"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -E /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-net-device.cc > CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.i

src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.s"
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 -include/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/stdlib_pch-debug.dir/cmake_pch_arm64.hxx -S /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge/model/bridge-net-device.cc -o CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.s

libbridge-obj: src/bridge/CMakeFiles/libbridge-obj.dir/helper/bridge-helper.cc.o
libbridge-obj: src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-channel.cc.o
libbridge-obj: src/bridge/CMakeFiles/libbridge-obj.dir/model/bridge-net-device.cc.o
libbridge-obj: src/bridge/CMakeFiles/libbridge-obj.dir/build.make
.PHONY : libbridge-obj

# Rule to build all files generated by this target.
src/bridge/CMakeFiles/libbridge-obj.dir/build: libbridge-obj
.PHONY : src/bridge/CMakeFiles/libbridge-obj.dir/build

src/bridge/CMakeFiles/libbridge-obj.dir/clean:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge && $(CMAKE_COMMAND) -P CMakeFiles/libbridge-obj.dir/cmake_clean.cmake
.PHONY : src/bridge/CMakeFiles/libbridge-obj.dir/clean

src/bridge/CMakeFiles/libbridge-obj.dir/depend:
	cd /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aditya/ns-allinone-3.38/ns-3.38 /Users/aditya/ns-allinone-3.38/ns-3.38/src/bridge /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge /Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/bridge/CMakeFiles/libbridge-obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/bridge/CMakeFiles/libbridge-obj.dir/depend

