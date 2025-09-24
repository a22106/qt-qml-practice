set(MODULE_NAME GreatButtons)
set(LIB_NAME ${MODULE_NAME}Lib) # GreateButtonsLib

qt_add_library(${LIB_NAME} STATIC)

set_target_properties(${LIB_NAME} PROPERTIES AUTOMOC ON)
target_link_libraries(${LIB_NAME} PRIVATE Qt6::Quick)

qt_add_qml_module(${LIB_NAME}
        URI ${MODULE_NAME}
        OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/${MODULE_NAME}
        # VERSION 1.0
        RESOURCE_PREFIX /
        QML_FILES
                GrayButton.qml
                RedButton.qml
                GreenButton.qml
                BlueButton.qml
)
