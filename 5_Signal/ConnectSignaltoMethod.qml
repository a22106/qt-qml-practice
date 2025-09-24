//set up own function:
// function respond

import QtQuick

Item {
    width: 400
    height: 400

    Rectangle{
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        // set up the signal
        signal greet(string message)

        // set up the custom handler function
        function respond_your_way(message){
            console.log("custom response: " + message)
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked:{
            rectId.greet("The water is nice")
        }
    }

    Component.onCompleted: {
        rectId.greet.connect(rectId.respond_your_way)
    }
}
