# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ellie/Projects/ellie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ellie/Projects/ellie/build

# Include any dependencies generated for this target.
include include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/compiler_depend.make

# Include the progress variables for this target.
include include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/progress.make

# Include the compile flags for this target's objects.
include include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/flags.make

include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.o: include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/flags.make
include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.o: ../include/abseil-cpp/absl/flags/usage_config.cc
include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.o: include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ellie/Projects/ellie/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.o"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.o -MF CMakeFiles/absl_flags_config.dir/usage_config.cc.o.d -o CMakeFiles/absl_flags_config.dir/usage_config.cc.o -c /home/ellie/Projects/ellie/include/abseil-cpp/absl/flags/usage_config.cc

include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/absl_flags_config.dir/usage_config.cc.i"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ellie/Projects/ellie/include/abseil-cpp/absl/flags/usage_config.cc > CMakeFiles/absl_flags_config.dir/usage_config.cc.i

include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/absl_flags_config.dir/usage_config.cc.s"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ellie/Projects/ellie/include/abseil-cpp/absl/flags/usage_config.cc -o CMakeFiles/absl_flags_config.dir/usage_config.cc.s

# Object files for target absl_flags_config
absl_flags_config_OBJECTS = \
"CMakeFiles/absl_flags_config.dir/usage_config.cc.o"

# External object files for target absl_flags_config
absl_flags_config_EXTERNAL_OBJECTS =

include/abseil-cpp/absl/flags/libabsl_flags_config.a: include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/usage_config.cc.o
include/abseil-cpp/absl/flags/libabsl_flags_config.a: include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/build.make
include/abseil-cpp/absl/flags/libabsl_flags_config.a: include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ellie/Projects/ellie/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabsl_flags_config.a"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags && $(CMAKE_COMMAND) -P CMakeFiles/absl_flags_config.dir/cmake_clean_target.cmake
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_flags_config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/build: include/abseil-cpp/absl/flags/libabsl_flags_config.a
.PHONY : include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/build

include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/clean:
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags && $(CMAKE_COMMAND) -P CMakeFiles/absl_flags_config.dir/cmake_clean.cmake
.PHONY : include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/clean

include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/depend:
	cd /home/ellie/Projects/ellie/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ellie/Projects/ellie /home/ellie/Projects/ellie/include/abseil-cpp/absl/flags /home/ellie/Projects/ellie/build /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/abseil-cpp/absl/flags/CMakeFiles/absl_flags_config.dir/depend

