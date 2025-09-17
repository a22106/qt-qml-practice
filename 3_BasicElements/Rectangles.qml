import QtQuick 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements")

    Item{
        id: containerItemId
        x: 50
        y: 50
        width: 400
        height: 200

        Rectangle{
            anchors.fill: parent // The rectangle should fill its parent:
            color: "blue"

            // Grouped property syntax variation #1
            border{
                color: "black"
                width: 5
            }
        }

        Rectangle{
            x: 0
            y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 100
            y: 10
            width: 50
            height: 50
            color: "green"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 160
            y: 10
            width: 50
            height: 50
            color: "green"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }
    }
}
