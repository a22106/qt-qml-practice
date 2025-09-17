import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Change handlers")

    property string name: "Steve " // Custom property
    onNameChanged: {
        console.log("Name: " + name)
    }

    onTitleChanged: function() {
        console.log("New title: " + title)
    }

    Rectangle{
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.name = "Morion"
                rootId.title = "New title"
            }
        }
    }

    Component.onCompleted: {
        console.log("Before any change - Name: " + name)
    }
}
