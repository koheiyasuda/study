# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons

# Include any dependencies generated for this target.
include Lesson0/CMakeFiles/Lesson0.dir/depend.make

# Include the progress variables for this target.
include Lesson0/CMakeFiles/Lesson0.dir/progress.make

# Include the compile flags for this target's objects.
include Lesson0/CMakeFiles/Lesson0.dir/flags.make

Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o: Lesson0/CMakeFiles/Lesson0.dir/flags.make
Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o: Lesson0/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lesson0.dir/src/main.cpp.o -c /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0/src/main.cpp

Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lesson0.dir/src/main.cpp.i"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0/src/main.cpp > CMakeFiles/Lesson0.dir/src/main.cpp.i

Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lesson0.dir/src/main.cpp.s"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0/src/main.cpp -o CMakeFiles/Lesson0.dir/src/main.cpp.s

Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.requires:

.PHONY : Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.requires

Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.provides: Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.requires
	$(MAKE) -f Lesson0/CMakeFiles/Lesson0.dir/build.make Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.provides.build
.PHONY : Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.provides

Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.provides.build: Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o


# Object files for target Lesson0
Lesson0_OBJECTS = \
"CMakeFiles/Lesson0.dir/src/main.cpp.o"

# External object files for target Lesson0
Lesson0_EXTERNAL_OBJECTS =

Lesson0/Lesson0: Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o
Lesson0/Lesson0: Lesson0/CMakeFiles/Lesson0.dir/build.make
Lesson0/Lesson0: Lesson0/CMakeFiles/Lesson0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Lesson0"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lesson0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Lesson0/CMakeFiles/Lesson0.dir/build: Lesson0/Lesson0

.PHONY : Lesson0/CMakeFiles/Lesson0.dir/build

Lesson0/CMakeFiles/Lesson0.dir/requires: Lesson0/CMakeFiles/Lesson0.dir/src/main.cpp.o.requires

.PHONY : Lesson0/CMakeFiles/Lesson0.dir/requires

Lesson0/CMakeFiles/Lesson0.dir/clean:
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 && $(CMAKE_COMMAND) -P CMakeFiles/Lesson0.dir/cmake_clean.cmake
.PHONY : Lesson0/CMakeFiles/Lesson0.dir/clean

Lesson0/CMakeFiles/Lesson0.dir/depend:
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0 /Users/koheiyasuda/Desktop/study/c++/sdltest/Lessons/Lesson0/CMakeFiles/Lesson0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Lesson0/CMakeFiles/Lesson0.dir/depend

