import QtQuick

Item {
    Rectangle{
        id: rectId
        width: 150
        height: 150
        color: "red"

        MouseArea{
            anchors.fill: parent

            // Syntax variation # 1
            // This is on the way to deprecation
            // onClicked: {
            //                console.log("mouse clicked x: " + mouse.x + ", y: " + mouse.y)
            //            }

            // Syntac variation # 2
            // onClicked: function(mouse){
            //     console.log("2 mouse clicked x: " + mouse.x + ", y: " + mouse.y)
            // }

            // Syntax variation # 3 : Arrow function
            onClicked: mouse => {
                           console.log("3 mouse clicked x: " + mouse.x + ", y: " + mouse.y)
                       }
        }
    }
}
