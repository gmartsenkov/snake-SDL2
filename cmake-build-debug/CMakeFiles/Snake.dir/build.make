# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/martsenkovg/ClionProjects/Snake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/martsenkovg/ClionProjects/Snake/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Snake.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Snake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Snake.dir/flags.make

CMakeFiles/Snake.dir/main.c.o: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/martsenkovg/ClionProjects/Snake/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Snake.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Snake.dir/main.c.o   -c /Users/martsenkovg/ClionProjects/Snake/main.c

CMakeFiles/Snake.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Snake.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/martsenkovg/ClionProjects/Snake/main.c > CMakeFiles/Snake.dir/main.c.i

CMakeFiles/Snake.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Snake.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/martsenkovg/ClionProjects/Snake/main.c -o CMakeFiles/Snake.dir/main.c.s

CMakeFiles/Snake.dir/main.c.o.requires:

.PHONY : CMakeFiles/Snake.dir/main.c.o.requires

CMakeFiles/Snake.dir/main.c.o.provides: CMakeFiles/Snake.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Snake.dir/build.make CMakeFiles/Snake.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Snake.dir/main.c.o.provides

CMakeFiles/Snake.dir/main.c.o.provides.build: CMakeFiles/Snake.dir/main.c.o


# Object files for target Snake
Snake_OBJECTS = \
"CMakeFiles/Snake.dir/main.c.o"

# External object files for target Snake
Snake_EXTERNAL_OBJECTS =

Snake: CMakeFiles/Snake.dir/main.c.o
Snake: CMakeFiles/Snake.dir/build.make
Snake: CMakeFiles/Snake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/martsenkovg/ClionProjects/Snake/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Snake"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Snake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Snake.dir/build: Snake

.PHONY : CMakeFiles/Snake.dir/build

CMakeFiles/Snake.dir/requires: CMakeFiles/Snake.dir/main.c.o.requires

.PHONY : CMakeFiles/Snake.dir/requires

CMakeFiles/Snake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Snake.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Snake.dir/clean

CMakeFiles/Snake.dir/depend:
	cd /Users/martsenkovg/ClionProjects/Snake/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/martsenkovg/ClionProjects/Snake /Users/martsenkovg/ClionProjects/Snake /Users/martsenkovg/ClionProjects/Snake/cmake-build-debug /Users/martsenkovg/ClionProjects/Snake/cmake-build-debug /Users/martsenkovg/ClionProjects/Snake/cmake-build-debug/CMakeFiles/Snake.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Snake.dir/depend
