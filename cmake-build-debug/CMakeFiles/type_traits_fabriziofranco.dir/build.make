# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /snap/clion/83/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/83/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/type_traits_fabriziofranco.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/type_traits_fabriziofranco.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/type_traits_fabriziofranco.dir/flags.make

CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.o: CMakeFiles/type_traits_fabriziofranco.dir/flags.make
CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.o: ../mock/mocker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.o -c /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/mock/mocker.cpp

CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/mock/mocker.cpp > CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.i

CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/mock/mocker.cpp -o CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.s

CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.o: CMakeFiles/type_traits_fabriziofranco.dir/flags.make
CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.o: ../test/tester.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.o -c /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/test/tester.cpp

CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/test/tester.cpp > CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.i

CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/test/tester.cpp -o CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.s

CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.o: CMakeFiles/type_traits_fabriziofranco.dir/flags.make
CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.o -c /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/main.cpp

CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/main.cpp > CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.i

CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/main.cpp -o CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.s

# Object files for target type_traits_fabriziofranco
type_traits_fabriziofranco_OBJECTS = \
"CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.o" \
"CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.o" \
"CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.o"

# External object files for target type_traits_fabriziofranco
type_traits_fabriziofranco_EXTERNAL_OBJECTS =

type_traits_fabriziofranco: CMakeFiles/type_traits_fabriziofranco.dir/mock/mocker.cpp.o
type_traits_fabriziofranco: CMakeFiles/type_traits_fabriziofranco.dir/test/tester.cpp.o
type_traits_fabriziofranco: CMakeFiles/type_traits_fabriziofranco.dir/main.cpp.o
type_traits_fabriziofranco: CMakeFiles/type_traits_fabriziofranco.dir/build.make
type_traits_fabriziofranco: CMakeFiles/type_traits_fabriziofranco.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable type_traits_fabriziofranco"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/type_traits_fabriziofranco.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/type_traits_fabriziofranco.dir/build: type_traits_fabriziofranco

.PHONY : CMakeFiles/type_traits_fabriziofranco.dir/build

CMakeFiles/type_traits_fabriziofranco.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/type_traits_fabriziofranco.dir/cmake_clean.cmake
.PHONY : CMakeFiles/type_traits_fabriziofranco.dir/clean

CMakeFiles/type_traits_fabriziofranco.dir/depend:
	cd /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug /home/fabrizio/Desktop/ADS/type-traits-fabriziofranco/cmake-build-debug/CMakeFiles/type_traits_fabriziofranco.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/type_traits_fabriziofranco.dir/depend

