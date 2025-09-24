import QtQuick

Item {
    width: 400
    height: 400

    Rectangle{
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        // set up the signals
        signal greet(string message)
        signal forward_greeting(string message)

        // final handler
        function respond_your_way(message){
            console.log("Cusom response: " + message);
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectId.greet("hello!")
            }
        }
    }

    Component.onCompleted: {
        // Connect signal to signal
        rectId.greet.connect(rectId.forward_greeting)

        rectId.forward_greeting.connect(rectId.respond_your_way)
    }
}



