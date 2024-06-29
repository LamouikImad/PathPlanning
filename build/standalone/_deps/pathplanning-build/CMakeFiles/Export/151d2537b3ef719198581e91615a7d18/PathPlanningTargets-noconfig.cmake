#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PathPlanning::PathPlanning" for configuration ""
set_property(TARGET PathPlanning::PathPlanning APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(PathPlanning::PathPlanning PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib64/PathPlanning-1.0/libPathPlanning.a"
  )

list(APPEND _cmake_import_check_targets PathPlanning::PathPlanning )
list(APPEND _cmake_import_check_files_for_PathPlanning::PathPlanning "${_IMPORT_PREFIX}/lib64/PathPlanning-1.0/libPathPlanning.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
