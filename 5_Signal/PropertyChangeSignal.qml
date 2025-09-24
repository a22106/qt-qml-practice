/*
        . Exploring property change signals

        . For any property you have defined in your QML components,
            QML will set up a signal named <propertyName>Changed, and you can handle it
            through the on<PropertyName>Changed handler,
            with the property name starting with Capital

         . These signals are generated for properties, not signals

              . For example, for MouseArea, we don'thave an
                onClickedChanged signal, because clicked is a signal
                not a property.
              . But enabled is a property, so it has a changed signal

  */

import QtQuick

Item {
    width: 600
    height: 900

    Rectangle{
        id: rectId
        width: 300
        height: width + 500 // property binding
        color: "dodgerblue"

        // custom property
        property string description: "A rect to play with"

        // Property change handlers
        onWidthChanged:{
            console.log("Width change to :" + rectId.width)
        }

        onHeightChanged:{
            console.log("Width change to :" + rectId.height)
        }
        onColorChanged:{
            console.log("Width change to :" + rectId.color)
        }
        onVisibleChanged:{
            console.log("Width change to :" + rectId.visible)
        }
        onDescriptionChanged:{
            console.log("Description change to: " + rectId.description)
        }

        MouseArea{
            anchors.fill: parent
            onClicked: () => {
                           rectId.width = rectId.width + 10
                           rectId.color = "red"
                       }
        }
    }
}
