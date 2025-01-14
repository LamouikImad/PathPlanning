# Install script for directory: /home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/var/empty/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/nix/store/kvlhk0gpm2iz1asbw1xjac2ch0r8kyw9-gcc-wrapper-13.2.0/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/libfmt.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fmt" TYPE FILE FILES
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/args.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/chrono.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/color.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/compile.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/core.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/format.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/format-inl.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/os.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/ostream.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/printf.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/ranges.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/std.h"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-src/include/fmt/xchar.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt" TYPE FILE FILES
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/fmt-config.cmake"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/fmt-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt/fmt-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt/fmt-targets.cmake"
         "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/CMakeFiles/Export/52567436e6aeb216c623c7cea7a08046/fmt-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt/fmt-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt/fmt-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt" TYPE FILE FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/CMakeFiles/Export/52567436e6aeb216c623c7cea7a08046/fmt-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/fmt" TYPE FILE FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/CMakeFiles/Export/52567436e6aeb216c623c7cea7a08046/fmt-targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/fmt.pc")
endif()

