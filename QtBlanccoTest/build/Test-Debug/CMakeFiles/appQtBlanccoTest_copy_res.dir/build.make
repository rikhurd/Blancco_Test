# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 4.0

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug

# Utility rule file for appQtBlanccoTest_copy_res.

# Include any custom commands dependencies for this target.
include CMakeFiles/appQtBlanccoTest_copy_res.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appQtBlanccoTest_copy_res.dir/progress.make

CMakeFiles/appQtBlanccoTest_copy_res: .qt/appQtBlanccoTest_res.txt

.qt/appQtBlanccoTest_res.txt: C:/Qt/6.8.2/mingw_64/lib/cmake/Qt6Qml/Qt6QmlCopyFiles.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying appQtBlanccoTest qml resources into build dir"
	"C:\Program Files\CMake\bin\cmake.exe" -DFILES_INFO_PATH=C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.qt/appQtBlanccoTest_res.cmake -P C:/Qt/6.8.2/mingw_64/lib/cmake/Qt6Qml/Qt6QmlCopyFiles.cmake

CMakeFiles/appQtBlanccoTest_copy_res.dir/codegen:
.PHONY : CMakeFiles/appQtBlanccoTest_copy_res.dir/codegen

appQtBlanccoTest_copy_res: .qt/appQtBlanccoTest_res.txt
appQtBlanccoTest_copy_res: CMakeFiles/appQtBlanccoTest_copy_res
appQtBlanccoTest_copy_res: CMakeFiles/appQtBlanccoTest_copy_res.dir/build.make
.PHONY : appQtBlanccoTest_copy_res

# Rule to build all files generated by this target.
CMakeFiles/appQtBlanccoTest_copy_res.dir/build: appQtBlanccoTest_copy_res
.PHONY : CMakeFiles/appQtBlanccoTest_copy_res.dir/build

CMakeFiles/appQtBlanccoTest_copy_res.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\appQtBlanccoTest_copy_res.dir\cmake_clean.cmake
.PHONY : CMakeFiles/appQtBlanccoTest_copy_res.dir/clean

CMakeFiles/appQtBlanccoTest_copy_res.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug\CMakeFiles\appQtBlanccoTest_copy_res.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appQtBlanccoTest_copy_res.dir/depend

