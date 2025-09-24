// Main.qml
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: "Signal-Slot Usecase"

    Column {
        anchors.centerIn: parent
        spacing: 20

        // 1. 색상 선택기 인스턴스 생성
        ColorPicker {
            id: myColorPicker
        }

        // 2. 콘텐츠 표시 영역 인스턴스 생성
        DisplayArea {
            id: myDisplayArea
        }
    }

    // 3. 컴포넌트 로딩이 완료되면 시그널과 슬롯을 연결!
    Component.onCompleted: {
        myColorPicker.colorSelected.connect(myDisplayArea.changeColor)
    }
}
