import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntac Demo")

    property string textToShow:  "hello"

    Row{
        anchors.centerIn: parent
        spacing: 2
        Rectangle{
            id: redRectId
            width: 100
            height: 100
            color: "red"
            radius: 15
            border.color: "black"
            border.width: 5

            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {

                    console.log("It's a red rectangle.")
                    textToShow = "red"
                }
            }
        }
        Rectangle{
            id: greenRectId
            width: 100
            height: 100
            color: "blue"
            radius: 15
            border.color: "black"
            border.width: 5

            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {
                    textToShow = "blue"
                    console.log("It's a red rectangle.")
                }
            }
        }
        Rectangle{
            id: blueRectId
            width: 100
            height: 100
            color: "green"
            radius: 15
            border.color: "black"
            border.width: 5

            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: {
                    textToShow = "green"
                    console.log("It's a green rectangle.")
                }
            }
        }
        Rectangle{
            id: circleId
            width: 100
            height: 100
            color: "dodgerblue"
            radius: 60
            border.color: "black"
            border.width: 5

            Text{
                id: textId
                anchors.centerIn: parent
                text: textToShow
            }

            MouseArea{
                anchors.fill: parent // Telling the MouseArea element to fill the rectangle that contains it.
                onClicked: console.log("It's a green rectangle.")
            }
        }
    }
}
