# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/justine/cgal/cgal-justine/q5/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/justine/cgal/cgal-justine/q5/build

# Include any dependencies generated for this target.
include CMakeFiles/min.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/min.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/min.dir/flags.make

CMakeFiles/min.dir/min.cpp.o: CMakeFiles/min.dir/flags.make
CMakeFiles/min.dir/min.cpp.o: /home/justine/cgal/cgal-justine/q5/src/min.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justine/cgal/cgal-justine/q5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/min.dir/min.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/min.dir/min.cpp.o -c /home/justine/cgal/cgal-justine/q5/src/min.cpp

CMakeFiles/min.dir/min.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min.dir/min.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justine/cgal/cgal-justine/q5/src/min.cpp > CMakeFiles/min.dir/min.cpp.i

CMakeFiles/min.dir/min.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min.dir/min.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justine/cgal/cgal-justine/q5/src/min.cpp -o CMakeFiles/min.dir/min.cpp.s

# Object files for target min
min_OBJECTS = \
"CMakeFiles/min.dir/min.cpp.o"

# External object files for target min
min_EXTERNAL_OBJECTS =

min: CMakeFiles/min.dir/min.cpp.o
min: CMakeFiles/min.dir/build.make
min: libCGAL_Qt5_moc_and_resources.a
min: /usr/lib/x86_64-linux-gnu/libmpfr.so
min: /usr/lib/x86_64-linux-gnu/libgmp.so
min: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
min: /usr/lib/x86_64-linux-gnu/libQt5Svg.so.5.12.8
min: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
min: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
min: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.12.8
min: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
min: CMakeFiles/min.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/justine/cgal/cgal-justine/q5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable min"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/min.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/min.dir/build: min

.PHONY : CMakeFiles/min.dir/build

CMakeFiles/min.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/min.dir/cmake_clean.cmake
.PHONY : CMakeFiles/min.dir/clean

CMakeFiles/min.dir/depend:
	cd /home/justine/cgal/cgal-justine/q5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/justine/cgal/cgal-justine/q5/src /home/justine/cgal/cgal-justine/q5/src /home/justine/cgal/cgal-justine/q5/build /home/justine/cgal/cgal-justine/q5/build /home/justine/cgal/cgal-justine/q5/build/CMakeFiles/min.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/min.dir/depend
