# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vanlancker/Documents/code/gltest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vanlancker/Documents/code/gltest/build

# Include any dependencies generated for this target.
include CMakeFiles/gltest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gltest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gltest.dir/flags.make

CMakeFiles/gltest.dir/src/main.cpp.o: CMakeFiles/gltest.dir/flags.make
CMakeFiles/gltest.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vanlancker/Documents/code/gltest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gltest.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gltest.dir/src/main.cpp.o -c /Users/vanlancker/Documents/code/gltest/src/main.cpp

CMakeFiles/gltest.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gltest.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vanlancker/Documents/code/gltest/src/main.cpp > CMakeFiles/gltest.dir/src/main.cpp.i

CMakeFiles/gltest.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gltest.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vanlancker/Documents/code/gltest/src/main.cpp -o CMakeFiles/gltest.dir/src/main.cpp.s

CMakeFiles/gltest.dir/src/glad.c.o: CMakeFiles/gltest.dir/flags.make
CMakeFiles/gltest.dir/src/glad.c.o: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vanlancker/Documents/code/gltest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/gltest.dir/src/glad.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gltest.dir/src/glad.c.o -c /Users/vanlancker/Documents/code/gltest/src/glad.c

CMakeFiles/gltest.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gltest.dir/src/glad.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/vanlancker/Documents/code/gltest/src/glad.c > CMakeFiles/gltest.dir/src/glad.c.i

CMakeFiles/gltest.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gltest.dir/src/glad.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/vanlancker/Documents/code/gltest/src/glad.c -o CMakeFiles/gltest.dir/src/glad.c.s

CMakeFiles/gltest.dir/src/shader.cpp.o: CMakeFiles/gltest.dir/flags.make
CMakeFiles/gltest.dir/src/shader.cpp.o: ../src/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vanlancker/Documents/code/gltest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gltest.dir/src/shader.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gltest.dir/src/shader.cpp.o -c /Users/vanlancker/Documents/code/gltest/src/shader.cpp

CMakeFiles/gltest.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gltest.dir/src/shader.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vanlancker/Documents/code/gltest/src/shader.cpp > CMakeFiles/gltest.dir/src/shader.cpp.i

CMakeFiles/gltest.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gltest.dir/src/shader.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vanlancker/Documents/code/gltest/src/shader.cpp -o CMakeFiles/gltest.dir/src/shader.cpp.s

CMakeFiles/gltest.dir/src/stb_image.cpp.o: CMakeFiles/gltest.dir/flags.make
CMakeFiles/gltest.dir/src/stb_image.cpp.o: ../src/stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vanlancker/Documents/code/gltest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/gltest.dir/src/stb_image.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gltest.dir/src/stb_image.cpp.o -c /Users/vanlancker/Documents/code/gltest/src/stb_image.cpp

CMakeFiles/gltest.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gltest.dir/src/stb_image.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vanlancker/Documents/code/gltest/src/stb_image.cpp > CMakeFiles/gltest.dir/src/stb_image.cpp.i

CMakeFiles/gltest.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gltest.dir/src/stb_image.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vanlancker/Documents/code/gltest/src/stb_image.cpp -o CMakeFiles/gltest.dir/src/stb_image.cpp.s

# Object files for target gltest
gltest_OBJECTS = \
"CMakeFiles/gltest.dir/src/main.cpp.o" \
"CMakeFiles/gltest.dir/src/glad.c.o" \
"CMakeFiles/gltest.dir/src/shader.cpp.o" \
"CMakeFiles/gltest.dir/src/stb_image.cpp.o"

# External object files for target gltest
gltest_EXTERNAL_OBJECTS =

gltest: CMakeFiles/gltest.dir/src/main.cpp.o
gltest: CMakeFiles/gltest.dir/src/glad.c.o
gltest: CMakeFiles/gltest.dir/src/shader.cpp.o
gltest: CMakeFiles/gltest.dir/src/stb_image.cpp.o
gltest: CMakeFiles/gltest.dir/build.make
gltest: /usr/local/lib/libglfw.3.3.dylib
gltest: CMakeFiles/gltest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vanlancker/Documents/code/gltest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable gltest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gltest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gltest.dir/build: gltest

.PHONY : CMakeFiles/gltest.dir/build

CMakeFiles/gltest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gltest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gltest.dir/clean

CMakeFiles/gltest.dir/depend:
	cd /Users/vanlancker/Documents/code/gltest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vanlancker/Documents/code/gltest /Users/vanlancker/Documents/code/gltest /Users/vanlancker/Documents/code/gltest/build /Users/vanlancker/Documents/code/gltest/build /Users/vanlancker/Documents/code/gltest/build/CMakeFiles/gltest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gltest.dir/depend

