cmake_minimum_required(VERSION 3.16)

project(QtPractice VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

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
        QML_FILES 5_Signal/SignalHandlers.qml
        QML_FILES 4_CustomComponentsAndModules/LoadButtonsFromModule.qml
        QML_FILES 5_Signal/SignalParameters.qml
        QML_FILES 5_Signal/PropertyChangeSignal.qml
        QML_FILES 5_Signal/Connections.qml
        QML_FILES 5_Signal/AttachedSignalHandlers.qml
        QML_FILES 5_Signal/CustomSignals.qml
        QML_FILES 5_Signal/ConnectSignaltoMethod.qml
        QML_FILES
        QML_FILES 5_Signal/Usecase/ColorPicker.qml
        QML_FILES 5_Signal/Usecase/DisplayArea.qml
        QML_FILES 5_Signal/Usecase/UseMain.qml
        QML_FILES 5_Signal/ConnectASignalToASignal.qml
        QML_FILES 5_Signal/SendSignalsAccrossComponents.qml
        QML_FILES 5_Signal/SendSignalsAccrossComponents/Notifier.qml
        QML_FILES 5_Signal/SendSignalsAccrossComponents/Receiver.qml
        QML_FILES 6_UserInput/1_TextInput.qml
        QML_FILES 6_UserInput/2_BetterTextInput.qml
        QML_FILES 6_UserInput/LabeledTextInput.qml
        QML_FILES 6_UserInput/3_TextEdit.qml
        QML_FILES 6_UserInput/4_MouseArea.qml
        QML_FILES 6_UserInput/5_KeysAttachedProperty.qml
        QML_FILES 6_UserInput/6_KeyNavigation.qml
        QML_FILES 6_UserInput/7_FocusScope.qml
        QML_FILES 6_UserInput/CustomElement.qml
        QML_FILES 7_Javascript/2_JsUsage.qml
        QML_FILES 7_Javascript/3_FunctionsAndScope.qml
        QML_FILES 7_Javascript/4_JsDirectImport.qml
        QML_FILES 7_Javascript/greeting.js
        QML_FILES 7_Javascript/5_JsIndirectImport.qml
        QML_FILES 7_Javascript/utilities1.js
        QML_FILES 7_Javascript/utilities2.js
        QML_FILES 7_Javascript/6_QtInclude.qml
        QML_FILES 7_Javascript/6_util1.js
        QML_FILES 7_Javascript/6_util2.js
        QML_FILES 7_Javascript/7_JsModules.qml
        QML_FILES 7_Javascript/7_util1.mjs
        QML_FILES 7_Javascript/7_util2.mjs
        QML_FILES
        QML_FILES 8_Positioning/2_Anchors.qml
        QML_FILES 8_Positioning/3_AnchorMarginAndOffset.qml
        QML_FILES 8_Positioning/4_AnchorParentSibiling.qml
        QML_FILES 8_Positioning/5_Positioners.qml
        QML_FILES 8_Positioning/6_Layouts.qml
        QML_FILES 8_Positioning/7_Flow.qml
        QML_FILES 9_QtQuickControls/2_Button.qml
        QML_FILES 9_QtQuickControls/3_BusyIndicator.qml
        QML_FILES 9_QtQuickControls/4_checkbox.qml
        SOURCES cppworker.h cppworker.cpp

)

add_subdirectory(custom_buttons)

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
    PRIVATE Qt6::Quick Qt6::QuickControls2 GreatButtonsLibplugin
)

include(GNUInstallDirs)
install(TARGETS appQtPractice
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
