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
include CMakeFiles/KDTreeLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/KDTreeLib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/KDTreeLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/KDTreeLib.dir/flags.make

CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o: CMakeFiles/KDTreeLib.dir/flags.make
CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o: /Users/msee/Desktop/Projects/KNN-KDTree/src/KDTree.cpp
CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o: CMakeFiles/KDTreeLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/msee/Desktop/Projects/KNN-KDTree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o -MF CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o.d -o CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o -c /Users/msee/Desktop/Projects/KNN-KDTree/src/KDTree.cpp

CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/msee/Desktop/Projects/KNN-KDTree/src/KDTree.cpp > CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.i

CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/msee/Desktop/Projects/KNN-KDTree/src/KDTree.cpp -o CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.s

# Object files for target KDTreeLib
KDTreeLib_OBJECTS = \
"CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o"

# External object files for target KDTreeLib
KDTreeLib_EXTERNAL_OBJECTS =

libKDTreeLib.a: CMakeFiles/KDTreeLib.dir/src/KDTree.cpp.o
libKDTreeLib.a: CMakeFiles/KDTreeLib.dir/build.make
libKDTreeLib.a: CMakeFiles/KDTreeLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/msee/Desktop/Projects/KNN-KDTree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libKDTreeLib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/KDTreeLib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KDTreeLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/KDTreeLib.dir/build: libKDTreeLib.a
.PHONY : CMakeFiles/KDTreeLib.dir/build

CMakeFiles/KDTreeLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/KDTreeLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/KDTreeLib.dir/clean

CMakeFiles/KDTreeLib.dir/depend:
	cd /Users/msee/Desktop/Projects/KNN-KDTree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/msee/Desktop/Projects/KNN-KDTree /Users/msee/Desktop/Projects/KNN-KDTree /Users/msee/Desktop/Projects/KNN-KDTree/build /Users/msee/Desktop/Projects/KNN-KDTree/build /Users/msee/Desktop/Projects/KNN-KDTree/build/CMakeFiles/KDTreeLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/KDTreeLib.dir/depend

