cmake_minimum_required(VERSION 3.16)

project(QtPractice VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appQtPractice
    main.cpp
)

# Method 1.
# qt_add_resources(app3-qt_add_resource "qml"
#     PREFIX /
#     FILES
#             Resources/Images/image.jpg
# )

qt_add_qml_module(appQtPractice
    URI QtPractice
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES 2_DissectingQmlSyntax/dataTypes.qml
        QML_FILES 2_DissectingQmlSyntax/PropertyBindings.qml
        QML_FILES 2_DissectingQmlSyntax/QtGlobalObject.qml
        QML_FILES 2_DissectingQmlSyntax/PropertyChangeHandlers.qml
        QML_FILES 3_BasicElements/Rectangles.qml
        QML_FILES 3_BasicElements/Images.qml
        QML_FILES 4_CustomComponentsAndModules/custom_components.qml
        QML_FILES Basic.qml
    RESOURCES
        resources/Images/image.jpg
        RESOURCES howCleaver.qrc
        QML_FILES 4_CustomComponentsAndModules/MButton.qml
        QML_FILES 4_CustomComponentsAndModules/custom_component_in_path.qml

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQtPractice PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQtPractice
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQtPractice
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQtPractice
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
