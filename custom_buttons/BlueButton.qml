import QtQuick

Item{
    id: rootId
    property alias buttonText: buttonTextId.text
    width: containerRectid.width
    height: containerRectid.height
    signal buttonClicked

    Rectangle{
        id: containerRectid
        width: buttonTextId.implicitWidth + 10
        height: buttonTextId.implicitHeight + 10
        color: "blue"

        border{
            color: "red"
            width: 3
        }

        Text {
            id: buttonTextId
            text: qsTr("Button")
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.buttonClicked()
            }
        }
    }
}
