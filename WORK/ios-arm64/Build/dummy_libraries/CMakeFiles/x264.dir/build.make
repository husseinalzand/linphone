# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.3.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.3.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/husseinalzandvirtual/linphone-iphone/submodules/cmake-builder/cmake/dummy_libraries

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries

# Include any dependencies generated for this target.
include CMakeFiles/x264.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/x264.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/x264.dir/flags.make

CMakeFiles/x264.dir/libx264.c.o: CMakeFiles/x264.dir/flags.make
CMakeFiles/x264.dir/libx264.c.o: libx264.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/x264.dir/libx264.c.o"
	/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/arm64-apple-darwin-clang  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/x264.dir/libx264.c.o   -c /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/libx264.c

CMakeFiles/x264.dir/libx264.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/x264.dir/libx264.c.i"
	/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/arm64-apple-darwin-clang  $(C_DEFINES) $(C_FLAGS) -E /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/libx264.c > CMakeFiles/x264.dir/libx264.c.i

CMakeFiles/x264.dir/libx264.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/x264.dir/libx264.c.s"
	/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/arm64-apple-darwin-clang  $(C_DEFINES) $(C_FLAGS) -S /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/libx264.c -o CMakeFiles/x264.dir/libx264.c.s

CMakeFiles/x264.dir/libx264.c.o.requires:

.PHONY : CMakeFiles/x264.dir/libx264.c.o.requires

CMakeFiles/x264.dir/libx264.c.o.provides: CMakeFiles/x264.dir/libx264.c.o.requires
	$(MAKE) -f CMakeFiles/x264.dir/build.make CMakeFiles/x264.dir/libx264.c.o.provides.build
.PHONY : CMakeFiles/x264.dir/libx264.c.o.provides

CMakeFiles/x264.dir/libx264.c.o.provides.build: CMakeFiles/x264.dir/libx264.c.o


# Object files for target x264
x264_OBJECTS = \
"CMakeFiles/x264.dir/libx264.c.o"

# External object files for target x264
x264_EXTERNAL_OBJECTS =

libx264.a: CMakeFiles/x264.dir/libx264.c.o
libx264.a: CMakeFiles/x264.dir/build.make
libx264.a: CMakeFiles/x264.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libx264.a"
	$(CMAKE_COMMAND) -P CMakeFiles/x264.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/x264.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/x264.dir/build: libx264.a

.PHONY : CMakeFiles/x264.dir/build

CMakeFiles/x264.dir/requires: CMakeFiles/x264.dir/libx264.c.o.requires

.PHONY : CMakeFiles/x264.dir/requires

CMakeFiles/x264.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/x264.dir/cmake_clean.cmake
.PHONY : CMakeFiles/x264.dir/clean

CMakeFiles/x264.dir/depend:
	cd /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/husseinalzandvirtual/linphone-iphone/submodules/cmake-builder/cmake/dummy_libraries /Users/husseinalzandvirtual/linphone-iphone/submodules/cmake-builder/cmake/dummy_libraries /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries /Users/husseinalzandvirtual/linphone-iphone/WORK/ios-arm64/Build/dummy_libraries/CMakeFiles/x264.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/x264.dir/depend
