// DisplayArea.qml
import QtQuick

Rectangle {
    id: root
    width: 200; height: 150
    color: "#ecf0f1"
    border.color: "#bdc3c7"
    border.width: 2

    Text {
        id: label
        anchors.centerIn: parent
        font.pixelSize: 20
        text: "Color"
    }

    // 외부에서 호출할 수 있는 함수 (슬롯 역할)
    function changeColor(newColor) {
        root.color = newColor
        label.text = newColor.toString()
    }
}
