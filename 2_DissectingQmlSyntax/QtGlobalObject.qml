import QtQuick

Window{
    width: 640
    height: 480
    visible: true
    title: qsTr("The Qt Global Object")

    property var fonts: Qt.fontFamilies()

    Text{
        anchors.centerIn: parent
        color: Qt.rgba(1, 0, 0, 1)
        text: Qt.md5("Hello World!")
        font.pointSize: 20
    }

    Rectangle{
        id: clickableRectid
        width: 300
        height: 100
        color: "dodgerblue"
        anchors.bottom: parent.bottom

        MouseArea{
            anchors.fill: parent
            onClicked: {
                // Qt.quit() // Quit the application

                for(var i = 0; i < fonts.length; i++){
                    console.log("[" + i + "]" + fonts[i])
                }

                // Hash a string
                var mText = "Daniel Gakwaya"
                var mTextHash = Qt.md5(mText)
                console.log("The hash of the name is: " + mTextHash)

                // Qt.openUrlExternally("https://www.google.com")

                // Qt.openUrlExternally("file:///Users/bk221/Downloads/25359d2766514b038bbd524f6311c365.jpg")

                console.log("The os is: " + Qt.platform.os)
            }
        }
    }
}
