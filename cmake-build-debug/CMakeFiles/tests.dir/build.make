# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dmitrij/CLionProjects/lab-06-mult

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tests.dir/flags.make

CMakeFiles/tests.dir/tests/test.cpp.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/tests/test.cpp.o: ../tests/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tests.dir/tests/test.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tests.dir/tests/test.cpp.o -c /Users/dmitrij/CLionProjects/lab-06-mult/tests/test.cpp

CMakeFiles/tests.dir/tests/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/tests/test.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dmitrij/CLionProjects/lab-06-mult/tests/test.cpp > CMakeFiles/tests.dir/tests/test.cpp.i

CMakeFiles/tests.dir/tests/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/tests/test.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dmitrij/CLionProjects/lab-06-mult/tests/test.cpp -o CMakeFiles/tests.dir/tests/test.cpp.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/tests/test.cpp.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

tests: CMakeFiles/tests.dir/tests/test.cpp.o
tests: CMakeFiles/tests.dir/build.make
tests: /Users/dmitrij/.hunter/_Base/9a3594a/7e73122/c351cc1/Install/lib/libgtestd.a
tests: /Users/dmitrij/.hunter/_Base/9a3594a/7e73122/c351cc1/Install/lib/libgtest_maind.a
tests: /Users/dmitrij/.hunter/_Base/9a3594a/7e73122/c351cc1/Install/lib/libgtestd.a
tests: CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tests.dir/build: tests

.PHONY : CMakeFiles/tests.dir/build

CMakeFiles/tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tests.dir/clean

CMakeFiles/tests.dir/depend:
	cd /Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dmitrij/CLionProjects/lab-06-mult /Users/dmitrij/CLionProjects/lab-06-mult /Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug /Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug /Users/dmitrij/CLionProjects/lab-06-mult/cmake-build-debug/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tests.dir/depend

