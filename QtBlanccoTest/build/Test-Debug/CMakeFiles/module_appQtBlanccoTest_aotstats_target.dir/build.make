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

# Utility rule file for module_appQtBlanccoTest_aotstats_target.

# Include any custom commands dependencies for this target.
include CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/progress.make

CMakeFiles/module_appQtBlanccoTest_aotstats_target: .rcc/qmlcache/module_appQtBlanccoTest.aotstats

.rcc/qmlcache/module_appQtBlanccoTest.aotstats: .rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp.aotstats
.rcc/qmlcache/module_appQtBlanccoTest.aotstats: .rcc/qmlcache/module_appQtBlanccoTest.aotstatslist
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating .rcc/qmlcache/module_appQtBlanccoTest.aotstats"
	call .qt\bin\qt_setup_tool_path.bat C:/Qt/6.8.2/mingw_64/bin/qmlaotstats.exe aggregate C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.rcc/qmlcache/module_appQtBlanccoTest.aotstatslist C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.rcc/qmlcache/module_appQtBlanccoTest.aotstats

.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp: C:/Qt/6.8.2/mingw_64/bin/qmlcachegen.exe
.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp: C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/Main.qml
.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp: .qt/rcc/qmake_QtBlanccoTest.qrc
.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp: .qt/rcc/appQtBlanccoTest_raw_qml_0.qrc
.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp: QtBlanccoTest/appQtBlanccoTest.qmltypes
.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp: QtBlanccoTest/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating .rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp, .rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp.aotstats"
	"C:\Program Files\CMake\bin\cmake.exe" -E make_directory C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.rcc/qmlcache
	call .qt\bin\qt_setup_tool_path.bat C:/Qt/6.8.2/mingw_64/bin/qmlcachegen.exe --bare --resource-path /qt/qml/QtBlanccoTest/Main.qml -I C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug -I C:/Qt/6.8.2/mingw_64/qml -i C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/QtBlanccoTest/qmldir --resource C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.qt/rcc/qmake_QtBlanccoTest.qrc --resource C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.qt/rcc/appQtBlanccoTest_raw_qml_0.qrc --dump-aot-stats --module-id=QtBlanccoTest(appQtBlanccoTest) -o C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/build/Test-Debug/.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp C:/Users/rikuh/source/repos/Blancco_Test/QtBlanccoTest/Main.qml

.rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp.aotstats: .rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate .rcc\qmlcache\appQtBlanccoTest_Main_qml.cpp.aotstats

CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/codegen:
.PHONY : CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/codegen

module_appQtBlanccoTest_aotstats_target: .rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp
module_appQtBlanccoTest_aotstats_target: .rcc/qmlcache/appQtBlanccoTest_Main_qml.cpp.aotstats
module_appQtBlanccoTest_aotstats_target: .rcc/qmlcache/module_appQtBlanccoTest.aotstats
module_appQtBlanccoTest_aotstats_target: CMakeFiles/module_appQtBlanccoTest_aotstats_target
module_appQtBlanccoTest_aotstats_target: CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/build.make
.PHONY : module_appQtBlanccoTest_aotstats_target

# Rule to build all files generated by this target.
CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/build: module_appQtBlanccoTest_aotstats_target
.PHONY : CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/build

CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\module_appQtBlanccoTest_aotstats_target.dir\cmake_clean.cmake
.PHONY : CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/clean

CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug C:\Users\rikuh\source\repos\Blancco_Test\QtBlanccoTest\build\Test-Debug\CMakeFiles\module_appQtBlanccoTest_aotstats_target.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/module_appQtBlanccoTest_aotstats_target.dir/depend

