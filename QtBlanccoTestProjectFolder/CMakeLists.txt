cmake_minimum_required(VERSION 3.16)

project(QtBlanccoTestProjectFolder VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add Quick and Widgets packages
find_package(Qt6 REQUIRED COMPONENTS Quick Widgets)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQtBlanccoTestProjectFolder
    main.cpp
)

qt_add_qml_module(appQtBlanccoTestProjectFolder
    URI QtBlanccoTestProjectFolder
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES networkmanager.h networkmanager.cpp
        SOURCES timerbutton.h timerbutton.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQtBlanccoTestProjectFolder PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQtBlanccoTestProjectFolder
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

#Link Qt libraries
target_link_libraries(appQtBlanccoTestProjectFolder
    PRIVATE Qt6::Quick Qt6::Widgets
)

include(GNUInstallDirs)
install(TARGETS appQtBlanccoTestProjectFolder
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
