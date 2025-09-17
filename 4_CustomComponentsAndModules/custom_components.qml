import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image")

    // Row{
    //     spacing: 2

    //     Rectangle { color: "red"; width: 50; height: 50}
    //     Rectangle { color: "green"; width: 20; height: 50}
    //     Rectangle { color: "blue"; width: 50; height: 20}
    // }


    // 커스텀 버튼 빌드
    Rectangle{
        id: contianerRectId
        width: buttonTextId.implicitWidth + 10
        height: buttonTextId.implicitHeight + 10
        color: "red"

        border{
            color: "blue"
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
                console.log("Clicked on the button")
            }
        }
    }
}
