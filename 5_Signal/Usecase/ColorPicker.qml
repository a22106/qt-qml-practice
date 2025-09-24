// ColorPicker.qml
import QtQuick

Row {
    spacing: 5

    // 이 컴포넌트의 핵심: 색상이 선택되면 외부로 알려주는 시그널
    signal colorSelected(color selectedColor)

    Repeater {
        model: ["#ff4757", "#2ed573", "#1e90ff", "#ffa502"]
        delegate: Rectangle {
            width: 50; height: 50
            color: modelData // 모델의 데이터를 색상으로 사용
            radius: 25

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // 클릭되면 colorSelected 시그널을 발생시킴
                    colorSelected(parent.color)
                }
            }
        }
    }
}
