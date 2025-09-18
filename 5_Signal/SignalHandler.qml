import QtQuick

Window{
    width: 640
    height: 480
    visible: true
    title: "Signal Handler"

    Rectangle{
        id: rectId
        width: 150
        height: 150
        color: "red"

        MouseArea{
            hoverEnabled: true
            anchors.fill: parent

            onClicked:{
                console.log("Clicked on the rectangle")
            }

            onDoubleClicked: {
                console.log("Double CLicked")
            }
            onEntered: {
                console.log("Entered")
            }
            onExited: {
                console.log("Exited")
            }
            onWheel: function(wheel){
                console.log("whilled: " + wheel.x + ", "+ wheel.y)
            }
            onReleased: mouse => {
                            console.log("Released at " + mouse.x + ", y:" + mouse.y)
                        }
            onPressed: mouse => {
                           console.log(`Pressed at ${mouse.x}, y: ${mouse.y}`)
                       }
        }
    }
}
