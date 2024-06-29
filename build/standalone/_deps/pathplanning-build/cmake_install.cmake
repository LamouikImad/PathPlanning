# Install script for directory: /home/lenovo/prep/cpp/PathPlanning

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/fmt-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-build/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "PathPlanning_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PathPlanning-1.0" TYPE DIRECTORY FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/PackageProjectInclude/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "PathPlanning_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/PathPlanning-1.0" TYPE STATIC_LIBRARY FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/libPathPlanning.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "PathPlanning_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0/PathPlanningTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0/PathPlanningTargets.cmake"
         "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/CMakeFiles/Export/151d2537b3ef719198581e91615a7d18/PathPlanningTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0/PathPlanningTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0/PathPlanningTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0" TYPE FILE FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/CMakeFiles/Export/151d2537b3ef719198581e91615a7d18/PathPlanningTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0" TYPE FILE FILES "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/CMakeFiles/Export/151d2537b3ef719198581e91615a7d18/PathPlanningTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "PathPlanning_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/PathPlanning-1.0" TYPE FILE FILES
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/PathPlanningConfigVersion.cmake"
    "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build/PathPlanningConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "PathPlanning_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PathPlanning-1.0" TYPE DIRECTORY FILES "/home/lenovo/prep/cpp/PathPlanning/include/")
endif()

