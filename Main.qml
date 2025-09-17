import QtQuick
import "3_BasicElements"
import "4_CustomComponentsAndModules"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QT Practice")

    Column{


        MButton{
            id: buttonId1
            buttonText: "Button1"
            onButtonClicked: {
                console.log("Clicked Button1")
            }
        }

        MButton{
            id: buttonId2
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked Button2")
            }
        }

    }
}
