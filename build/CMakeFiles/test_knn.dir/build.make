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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/msee/Desktop/Projects/KNN-KDTree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/msee/Desktop/Projects/KNN-KDTree/build

# Include any dependencies generated for this target.
include CMakeFiles/test_knn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_knn.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_knn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_knn.dir/flags.make

CMakeFiles/test_knn.dir/tests/test_knn.cpp.o: CMakeFiles/test_knn.dir/flags.make
CMakeFiles/test_knn.dir/tests/test_knn.cpp.o: /Users/msee/Desktop/Projects/KNN-KDTree/tests/test_knn.cpp
CMakeFiles/test_knn.dir/tests/test_knn.cpp.o: CMakeFiles/test_knn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/msee/Desktop/Projects/KNN-KDTree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_knn.dir/tests/test_knn.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_knn.dir/tests/test_knn.cpp.o -MF CMakeFiles/test_knn.dir/tests/test_knn.cpp.o.d -o CMakeFiles/test_knn.dir/tests/test_knn.cpp.o -c /Users/msee/Desktop/Projects/KNN-KDTree/tests/test_knn.cpp

CMakeFiles/test_knn.dir/tests/test_knn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_knn.dir/tests/test_knn.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/msee/Desktop/Projects/KNN-KDTree/tests/test_knn.cpp > CMakeFiles/test_knn.dir/tests/test_knn.cpp.i

CMakeFiles/test_knn.dir/tests/test_knn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_knn.dir/tests/test_knn.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/msee/Desktop/Projects/KNN-KDTree/tests/test_knn.cpp -o CMakeFiles/test_knn.dir/tests/test_knn.cpp.s

# Object files for target test_knn
test_knn_OBJECTS = \
"CMakeFiles/test_knn.dir/tests/test_knn.cpp.o"

# External object files for target test_knn
test_knn_EXTERNAL_OBJECTS =

test_knn: CMakeFiles/test_knn.dir/tests/test_knn.cpp.o
test_knn: CMakeFiles/test_knn.dir/build.make
test_knn: libKDTreeLib.a
test_knn: CMakeFiles/test_knn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/msee/Desktop/Projects/KNN-KDTree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_knn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_knn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_knn.dir/build: test_knn
.PHONY : CMakeFiles/test_knn.dir/build

CMakeFiles/test_knn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_knn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_knn.dir/clean

CMakeFiles/test_knn.dir/depend:
	cd /Users/msee/Desktop/Projects/KNN-KDTree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/msee/Desktop/Projects/KNN-KDTree /Users/msee/Desktop/Projects/KNN-KDTree /Users/msee/Desktop/Projects/KNN-KDTree/build /Users/msee/Desktop/Projects/KNN-KDTree/build /Users/msee/Desktop/Projects/KNN-KDTree/build/CMakeFiles/test_knn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_knn.dir/depend

