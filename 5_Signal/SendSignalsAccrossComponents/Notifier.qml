import QtQuick 2.15

Item {
    property alias rectColor: notifierRectId.color
    width: notifierRectId.width
    height: notifierRectId.height

    // set up the custom count property
    property int count: 0

    // set up the signal
    signal notify(string count)


    // 두 번째 방법. 커플링이 높아지는 단점이 있음
    required property Receiver target

    onTargetChanged:{
        notify.connect(target.receiveInfo)
    }

    Rectangle{
        id: notifierRectId
        width: 200
        height: 200
        color: "red"

        Text{
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: count
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                count++;
                notify(count)
            }
        }
    }
}
