import QtQuick

Window {
    width: 640
    height: 200
    visible: true
    title: qsTr("TextInput")

    Row {
        x: 10
        y: 10
        spacing: 20

        Rectangle {
            id: firstNameRectId
            width: firstNameLableId.implicitWidth + 10
            height: firstNameLableId.implicitHeight + 10
            color: "beige"

            Text {
                id: firstNameLableId
                anchors.centerIn: parent
                text: "First name: " + firstInputLableId.text
            }
        }

        Rectangle {
            id: firstInputRectId
            width: firstInputLableId.implicitWidth + 10
            height: firstInputLableId.implicitHeight + 10
            color: "beige"

            TextInput {
                id: firstInputLableId
                anchors.centerIn: parent
                text: "Pius"
                focus: true
                onEditingFinished: {
                    console.log("The first name changed to: " + text)
                }
            }
        }
    }

    Row {
        x: 10
        y: firstNameRectId.height + 10
        spacing: 20

        Rectangle {
            id: secondNameRectId
            width: secondNameLableId.implicitWidth + 10
            height: secondNameLableId.implicitHeight + 10
            color: "beige"

            Text {
                id: secondNameLableId
                anchors.centerIn: parent
                text: "Second name"
            }
        }

        Rectangle {
            id: secondInputRectId
            width: secondInputLableId.implicitWidth + 10
            height: secondInputLableId.implicitHeight + 10
            color: "beige"

            TextInput {
                id: secondInputLableId
                anchors.centerIn: parent
                focus: true
                text: "Type in your second name"
                onEditingFinished: {
                    console.log("The second name changed to: " + text)
                }
            }
        }
    }
}
