# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\AlexanderT\CLionProjects\Molecules

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\AlexanderT\CLionProjects\Molecules\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Molecules.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Molecules.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Molecules.dir/flags.make

CMakeFiles/Molecules.dir/main.cpp.obj: CMakeFiles/Molecules.dir/flags.make
CMakeFiles/Molecules.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\AlexanderT\CLionProjects\Molecules\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Molecules.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Molecules.dir\main.cpp.obj -c C:\Users\AlexanderT\CLionProjects\Molecules\main.cpp

CMakeFiles/Molecules.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Molecules.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\AlexanderT\CLionProjects\Molecules\main.cpp > CMakeFiles\Molecules.dir\main.cpp.i

CMakeFiles/Molecules.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Molecules.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\AlexanderT\CLionProjects\Molecules\main.cpp -o CMakeFiles\Molecules.dir\main.cpp.s

# Object files for target Molecules
Molecules_OBJECTS = \
"CMakeFiles/Molecules.dir/main.cpp.obj"

# External object files for target Molecules
Molecules_EXTERNAL_OBJECTS =

Molecules.exe: CMakeFiles/Molecules.dir/main.cpp.obj
Molecules.exe: CMakeFiles/Molecules.dir/build.make
Molecules.exe: CMakeFiles/Molecules.dir/linklibs.rsp
Molecules.exe: CMakeFiles/Molecules.dir/objects1.rsp
Molecules.exe: CMakeFiles/Molecules.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\AlexanderT\CLionProjects\Molecules\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Molecules.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Molecules.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Molecules.dir/build: Molecules.exe

.PHONY : CMakeFiles/Molecules.dir/build

CMakeFiles/Molecules.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Molecules.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Molecules.dir/clean

CMakeFiles/Molecules.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\AlexanderT\CLionProjects\Molecules C:\Users\AlexanderT\CLionProjects\Molecules C:\Users\AlexanderT\CLionProjects\Molecules\cmake-build-debug C:\Users\AlexanderT\CLionProjects\Molecules\cmake-build-debug C:\Users\AlexanderT\CLionProjects\Molecules\cmake-build-debug\CMakeFiles\Molecules.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Molecules.dir/depend

