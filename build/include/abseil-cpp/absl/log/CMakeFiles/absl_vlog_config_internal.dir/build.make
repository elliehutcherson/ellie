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
include include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/compiler_depend.make

# Include the progress variables for this target.
include include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/progress.make

# Include the compile flags for this target's objects.
include include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/flags.make

include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o: include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/flags.make
include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o: ../include/abseil-cpp/absl/log/internal/vlog_config.cc
include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o: include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ellie/Projects/ellie/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o -MF CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o.d -o CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o -c /home/ellie/Projects/ellie/include/abseil-cpp/absl/log/internal/vlog_config.cc

include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.i"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ellie/Projects/ellie/include/abseil-cpp/absl/log/internal/vlog_config.cc > CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.i

include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.s"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ellie/Projects/ellie/include/abseil-cpp/absl/log/internal/vlog_config.cc -o CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.s

# Object files for target absl_vlog_config_internal
absl_vlog_config_internal_OBJECTS = \
"CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o"

# External object files for target absl_vlog_config_internal
absl_vlog_config_internal_EXTERNAL_OBJECTS =

include/abseil-cpp/absl/log/libabsl_vlog_config_internal.a: include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/internal/vlog_config.cc.o
include/abseil-cpp/absl/log/libabsl_vlog_config_internal.a: include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/build.make
include/abseil-cpp/absl/log/libabsl_vlog_config_internal.a: include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ellie/Projects/ellie/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabsl_vlog_config_internal.a"
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log && $(CMAKE_COMMAND) -P CMakeFiles/absl_vlog_config_internal.dir/cmake_clean_target.cmake
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_vlog_config_internal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/build: include/abseil-cpp/absl/log/libabsl_vlog_config_internal.a
.PHONY : include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/build

include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/clean:
	cd /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log && $(CMAKE_COMMAND) -P CMakeFiles/absl_vlog_config_internal.dir/cmake_clean.cmake
.PHONY : include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/clean

include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/depend:
	cd /home/ellie/Projects/ellie/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ellie/Projects/ellie /home/ellie/Projects/ellie/include/abseil-cpp/absl/log /home/ellie/Projects/ellie/build /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log /home/ellie/Projects/ellie/build/include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/abseil-cpp/absl/log/CMakeFiles/absl_vlog_config_internal.dir/depend

