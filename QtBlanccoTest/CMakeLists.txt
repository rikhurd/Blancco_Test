cmake_minimum_required(VERSION 3.16)

project(QtBlanccoTest VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)

# Include Qt modules
find_package(Qt6 REQUIRED COMPONENTS Quick Network)

qt_standard_project_setup(REQUIRES 6.5)

# Add executable for the application
qt_add_executable(appQtBlanccoTest
    main.cpp
)

qt_add_qml_module(appQtBlanccoTest
    URI QtBlanccoTest
    VERSION 1.0
    QML_FILES
        Main.qml
)

# Qt application properties
set_target_properties(appQtBlanccoTest PROPERTIES
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Link Qt libraries
target_link_libraries(appQtBlanccoTest
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Network
)

# Installation paths (optional)
include(GNUInstallDirs)
install(TARGETS appQtBlanccoTest
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
