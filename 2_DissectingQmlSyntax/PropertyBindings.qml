import QtQuick

Window{
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")

    Rectangle{
        id: redRectId
        width: 50
        height: width * 1.5 // property binding
        color: 'red'
    }

    Rectangle{
        id: blueRectId
        width: 100
        height: 100
        color: 'blue'
        anchors.bottom: parent.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle{
        id: greenRectId
        width: 100
        height: 100
        color: "green"
        anchors.left: blueRectId.right
        anchors.bottom: parent.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
                // redRectId.height = 100 // broke binding. replace the binding with a static value: break the binding
                // redRectId.height = redRectId.width * 2.5 // break binding again
                redRectId.height = Qt.binding(function(){
                    return redRectId.width * 2.5
                })
            }
        }
    }

    Component.onCompleted: {
        console.log("hello")
    }
}
