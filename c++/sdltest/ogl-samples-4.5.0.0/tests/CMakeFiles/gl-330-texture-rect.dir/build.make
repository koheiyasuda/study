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
CMAKE_SOURCE_DIR = /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0

# Include any dependencies generated for this target.
include tests/CMakeFiles/gl-330-texture-rect.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/gl-330-texture-rect.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/gl-330-texture-rect.dir/flags.make

tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o: tests/CMakeFiles/gl-330-texture-rect.dir/flags.make
tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o: tests/gl-330-texture-rect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o -c /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests/gl-330-texture-rect.cpp

tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.i"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests/gl-330-texture-rect.cpp > CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.i

tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.s"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests/gl-330-texture-rect.cpp -o CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.s

tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.requires:

.PHONY : tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.requires

tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.provides: tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/gl-330-texture-rect.dir/build.make tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.provides.build
.PHONY : tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.provides

tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.provides.build: tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o


# Object files for target gl-330-texture-rect
gl__330__texture__rect_OBJECTS = \
"CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o"

# External object files for target gl-330-texture-rect
gl__330__texture__rect_EXTERNAL_OBJECTS =

build/Release/gl-330-texture-rect: tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o
build/Release/gl-330-texture-rect: tests/CMakeFiles/gl-330-texture-rect.dir/build.make
build/Release/gl-330-texture-rect: framework/libframework.a
build/Release/gl-330-texture-rect: external/glfw-3.0.3/src/libglfw3.a
build/Release/gl-330-texture-rect: tests/CMakeFiles/gl-330-texture-rect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../build/Release/gl-330-texture-rect"
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gl-330-texture-rect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/gl-330-texture-rect.dir/build: build/Release/gl-330-texture-rect

.PHONY : tests/CMakeFiles/gl-330-texture-rect.dir/build

tests/CMakeFiles/gl-330-texture-rect.dir/requires: tests/CMakeFiles/gl-330-texture-rect.dir/gl-330-texture-rect.cpp.o.requires

.PHONY : tests/CMakeFiles/gl-330-texture-rect.dir/requires

tests/CMakeFiles/gl-330-texture-rect.dir/clean:
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests && $(CMAKE_COMMAND) -P CMakeFiles/gl-330-texture-rect.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/gl-330-texture-rect.dir/clean

tests/CMakeFiles/gl-330-texture-rect.dir/depend:
	cd /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0 /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0 /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests/CMakeFiles/gl-330-texture-rect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/gl-330-texture-rect.dir/depend

