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
CMAKE_SOURCE_DIR = C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder\build\Test-Debug

# Utility rule file for appQtBlanccoTestProjectFolder_qmlimportscan.

# Include any custom commands dependencies for this target.
include CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/progress.make

CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan: .qt/qml_imports/appQtBlanccoTestProjectFolder_build.cmake

.qt/qml_imports/appQtBlanccoTestProjectFolder_build.cmake: C:/Qt/6.8.2/mingw_64/bin/qmlimportscanner.exe
.qt/qml_imports/appQtBlanccoTestProjectFolder_build.cmake: .qt/rcc/qmake_QtBlanccoTestProjectFolder.qrc
.qt/qml_imports/appQtBlanccoTestProjectFolder_build.cmake: .qt/rcc/appQtBlanccoTestProjectFolder_raw_qml_0.qrc
.qt/qml_imports/appQtBlanccoTestProjectFolder_build.cmake: C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTestProjectFolder/Main.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder\build\Test-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running qmlimportscanner for appQtBlanccoTestProjectFolder"
	cd /d C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder && call C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder\build\Test-Debug\.qt\bin\qt_setup_tool_path.bat C:/Qt/6.8.2/mingw_64/bin/qmlimportscanner.exe @C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTestProjectFolder/build/Test-Debug/.qt/qml_imports/appQtBlanccoTestProjectFolder_build.rsp

CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/codegen:
.PHONY : CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/codegen

appQtBlanccoTestProjectFolder_qmlimportscan: .qt/qml_imports/appQtBlanccoTestProjectFolder_build.cmake
appQtBlanccoTestProjectFolder_qmlimportscan: CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan
appQtBlanccoTestProjectFolder_qmlimportscan: CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/build.make
.PHONY : appQtBlanccoTestProjectFolder_qmlimportscan

# Rule to build all files generated by this target.
CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/build: appQtBlanccoTestProjectFolder_qmlimportscan
.PHONY : CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/build

CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\appQtBlanccoTestProjectFolder_qmlimportscan.dir\cmake_clean.cmake
.PHONY : CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/clean

CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder\build\Test-Debug C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder\build\Test-Debug C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTestProjectFolder\build\Test-Debug\CMakeFiles\appQtBlanccoTestProjectFolder_qmlimportscan.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appQtBlanccoTestProjectFolder_qmlimportscan.dir/depend

