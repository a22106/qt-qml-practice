import QtQuick

Item {
    width: 600
    height: 400

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "dodgerblue"
        MouseArea{
            id: mouseAreaId
            anchors.fill: parent
        }
    }

    Connections{
        target:mouseAreaId // the source of the signal
        function onClicked(){
            console.log("Clicked on the mouse area")
        }

        function onDoubleClicked(mouse){
            console.log("Double clicked at: " + mouse.x)
        }
    }
}
