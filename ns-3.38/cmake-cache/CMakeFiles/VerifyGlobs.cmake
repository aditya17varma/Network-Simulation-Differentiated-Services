# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.26
cmake_policy(SET CMP0009 NEW)

# single_source_file_scratches at scratch/CMakeLists.txt:57 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/[^.]*.cc")
set(OLD_GLOB
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/diff_serv.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/filter.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/filter_elements.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/lab32.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/scratch-simulator.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/simple-udp-echo.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/spq.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/starter.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/traffic_class.cc"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()

# scratch_sources at scratch/CMakeLists.txt:88 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/lib/[^.]*.cc")
set(OLD_GLOB
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/lib/scratch-nested-subdir-library-source.cc"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()

# scratch_sources at scratch/CMakeLists.txt:88 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/project2/[^.]*.cc")
set(OLD_GLOB
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()

# scratch_sources at scratch/CMakeLists.txt:88 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir/[^.]*.cc")
set(OLD_GLOB
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir/scratch-subdir-additional-header.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir/scratch-subdir.cc"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()

# scratch_subdirectories at scratch/CMakeLists.txt:64 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES true "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/**")
set(OLD_GLOB
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/CMakeLists.txt"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/diff_serv.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/diff_serv.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/drr.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/filter.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/filter.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/filter_elements.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/filter_elements.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/lab32.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/CMakeLists.txt"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/lib"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/lib/scratch-nested-subdir-library-header.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/lib/scratch-nested-subdir-library-source.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/nested-subdir/scratch-nested-subdir-executable.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/project2"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/scratch-simulator.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/simple-udp-echo.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/spq.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/spq.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/starter.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir/scratch-subdir-additional-header.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir/scratch-subdir-additional-header.h"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/subdir/scratch-subdir.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/traffic_class.cc"
  "/Users/aditya/ns-allinone-3.38/ns-3.38/scratch/traffic_class.h"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()
