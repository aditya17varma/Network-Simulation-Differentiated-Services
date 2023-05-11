# Install script for directory: /Users/aditya/ns-allinone-3.38/ns-3.38/src/stats

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib/libns3.38-stats-debug.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.38-stats-debug.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.38-stats-debug.dylib")
    execute_process(COMMAND /Users/aditya/opt/anaconda3/bin/install_name_tool
      -delete_rpath "/Users/aditya/ns-allinone-3.38/ns-3.38/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.38-stats-debug.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.38-stats-debug.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/sqlite-output.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/sqlite-data-output.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/helper/file-helper.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/helper/gnuplot-helper.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/average.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/basic-data-calculators.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/boolean-probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/data-calculator.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/data-collection-object.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/data-collector.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/data-output-interface.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/double-probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/file-aggregator.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/get-wildcard-matches.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/gnuplot-aggregator.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/gnuplot.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/histogram.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/omnet-data-output.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/stats.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/time-data-calculators.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/time-probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/time-series-adaptor.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/uinteger-16-probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/uinteger-32-probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/src/stats/model/uinteger-8-probe.h"
    "/Users/aditya/ns-allinone-3.38/ns-3.38/build/include/ns3/stats-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/aditya/ns-allinone-3.38/ns-3.38/cmake-cache/src/stats/examples/cmake_install.cmake")

endif()

