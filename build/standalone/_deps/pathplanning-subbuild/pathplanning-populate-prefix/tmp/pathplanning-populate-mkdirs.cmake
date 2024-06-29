# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/lenovo/prep/cpp/PathPlanning/standalone/.."
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-build"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix/tmp"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix/src/pathplanning-populate-stamp"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix/src"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix/src/pathplanning-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix/src/pathplanning-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/pathplanning-subbuild/pathplanning-populate-prefix/src/pathplanning-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
