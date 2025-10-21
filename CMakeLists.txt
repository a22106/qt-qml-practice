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
        Basic.qml
        2_DissectingQmlSyntax/dataTypes.qml
        2_DissectingQmlSyntax/PropertyBindings.qml
        2_DissectingQmlSyntax/QtGlobalObject.qml
        2_DissectingQmlSyntax/PropertyChangeHandlers.qml
        3_BasicElements/Rectangles.qml
        3_BasicElements/Images.qml
        4_CustomComponentsAndModules/custom_components.qml
        4_CustomComponentsAndModules/MButton.qml
        4_CustomComponentsAndModules/custom_component_in_path.qml
        5_Signal/SignalHandlers.qml
        4_CustomComponentsAndModules/LoadButtonsFromModule.qml
        5_Signal/SignalParameters.qml
        5_Signal/PropertyChangeSignal.qml
        5_Signal/Connections.qml
        5_Signal/AttachedSignalHandlers.qml
        5_Signal/CustomSignals.qml
        5_Signal/ConnectSignaltoMethod.qml
        5_Signal/Usecase/ColorPicker.qml
        5_Signal/Usecase/DisplayArea.qml
        5_Signal/Usecase/UseMain.qml
        5_Signal/ConnectASignalToASignal.qml
        5_Signal/SendSignalsAccrossComponents.qml
        5_Signal/SendSignalsAccrossComponents/Notifier.qml
        5_Signal/SendSignalsAccrossComponents/Receiver.qml
        6_UserInput/1_TextInput.qml
        6_UserInput/2_BetterTextInput.qml
        6_UserInput/LabeledTextInput.qml
        6_UserInput/3_TextEdit.qml
        6_UserInput/4_MouseArea.qml
        6_UserInput/5_KeysAttachedProperty.qml
        6_UserInput/6_KeyNavigation.qml
        6_UserInput/7_FocusScope.qml
        6_UserInput/CustomElement.qml
        7_Javascript/2_JsUsage.qml
        7_Javascript/3_FunctionsAndScope.qml
        7_Javascript/4_JsDirectImport.qml
        7_Javascript/greeting.js
        7_Javascript/5_JsIndirectImport.qml
        7_Javascript/utilities1.js
        7_Javascript/utilities2.js
        7_Javascript/6_QtInclude.qml
        7_Javascript/6_util1.js
        7_Javascript/6_util2.js
        7_Javascript/7_JsModules.qml
        7_Javascript/7_util1.mjs
        7_Javascript/7_util2.mjs
        8_Positioning/2_Anchors.qml
        8_Positioning/3_AnchorMarginAndOffset.qml
        8_Positioning/4_AnchorParentSibiling.qml
        8_Positioning/5_Positioners.qml
        8_Positioning/6_Layouts.qml
        8_Positioning/7_Flow.qml
        9_QtQuickControls/2_Button.qml
        9_QtQuickControls/3_BusyIndicator.qml
        9_QtQuickControls/4_checkbox.qml
    RESOURCES
        resources/Images/image.jpg
        howCleaver.qrc
    SOURCES
        cppworker.h
        cppworker.cpp

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
