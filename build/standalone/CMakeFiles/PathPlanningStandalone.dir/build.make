# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /nix/store/17r6ld906midfv8y7997fd56s7a87vrg-cmake-3.28.3/bin/cmake

# The command to remove a file.
RM = /nix/store/17r6ld906midfv8y7997fd56s7a87vrg-cmake-3.28.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lenovo/prep/cpp/PathPlanning/standalone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lenovo/prep/cpp/PathPlanning/build/standalone

# Include any dependencies generated for this target.
include CMakeFiles/PathPlanningStandalone.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PathPlanningStandalone.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PathPlanningStandalone.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PathPlanningStandalone.dir/flags.make

CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o: CMakeFiles/PathPlanningStandalone.dir/flags.make
CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o: /home/lenovo/prep/cpp/PathPlanning/standalone/source/main.cpp
CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o: CMakeFiles/PathPlanningStandalone.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lenovo/prep/cpp/PathPlanning/build/standalone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o"
	/nix/store/kvlhk0gpm2iz1asbw1xjac2ch0r8kyw9-gcc-wrapper-13.2.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o -MF CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o.d -o CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o -c /home/lenovo/prep/cpp/PathPlanning/standalone/source/main.cpp

CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.i"
	/nix/store/kvlhk0gpm2iz1asbw1xjac2ch0r8kyw9-gcc-wrapper-13.2.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lenovo/prep/cpp/PathPlanning/standalone/source/main.cpp > CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.i

CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.s"
	/nix/store/kvlhk0gpm2iz1asbw1xjac2ch0r8kyw9-gcc-wrapper-13.2.0/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lenovo/prep/cpp/PathPlanning/standalone/source/main.cpp -o CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.s

# Object files for target PathPlanningStandalone
PathPlanningStandalone_OBJECTS = \
"CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o"

# External object files for target PathPlanningStandalone
PathPlanningStandalone_EXTERNAL_OBJECTS =

PathPlanning: CMakeFiles/PathPlanningStandalone.dir/source/main.cpp.o
PathPlanning: CMakeFiles/PathPlanningStandalone.dir/build.make
PathPlanning: _deps/pathplanning-build/libPathPlanning.a
PathPlanning: _deps/fmt-build/libfmt.a
PathPlanning: _deps/matplotplusplus-build/source/matplot/libmatplot.a
PathPlanning: _deps/matplotplusplus-build/source/3rd_party/libnodesoup.a
PathPlanning: CMakeFiles/PathPlanningStandalone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/lenovo/prep/cpp/PathPlanning/build/standalone/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PathPlanning"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PathPlanningStandalone.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PathPlanningStandalone.dir/build: PathPlanning
.PHONY : CMakeFiles/PathPlanningStandalone.dir/build

CMakeFiles/PathPlanningStandalone.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PathPlanningStandalone.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PathPlanningStandalone.dir/clean

CMakeFiles/PathPlanningStandalone.dir/depend:
	cd /home/lenovo/prep/cpp/PathPlanning/build/standalone && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lenovo/prep/cpp/PathPlanning/standalone /home/lenovo/prep/cpp/PathPlanning/standalone /home/lenovo/prep/cpp/PathPlanning/build/standalone /home/lenovo/prep/cpp/PathPlanning/build/standalone /home/lenovo/prep/cpp/PathPlanning/build/standalone/CMakeFiles/PathPlanningStandalone.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/PathPlanningStandalone.dir/depend

