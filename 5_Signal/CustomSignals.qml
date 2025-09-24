import QtQuick

Item {
    width: 400
    height: 400

    Rectangle{
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        // Set up the signal
        signal great(string message)

        // The signal hander
        // onGreat: message => {
        //               console.log(`Greeting with message: ${message}`)
        //           }

        // using the js function syntax
        onGreat: function(message){
            console.log(`Greeting with message: ${message}`)
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectId.great("The sky is blue")
            }
        }
    }
}
