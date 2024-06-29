# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-src"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-build"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix/tmp"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix/src/matplotplusplus-populate-stamp"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix/src"
  "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix/src/matplotplusplus-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix/src/matplotplusplus-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/lenovo/prep/cpp/PathPlanning/build/standalone/_deps/matplotplusplus-subbuild/matplotplusplus-populate-prefix/src/matplotplusplus-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
