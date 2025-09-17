import QtQuick 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image")

    Item{
        id: containerItemId
        x: 150
        y: 50
        width: 600
        height: 300

        Image{
            x: 10
            y: 50
            width: 100
            height: 100
            // Loading
            source: "file:image.jpg"
        }

        Image{
            x: 141
            y: 50
            width: 100
            height: 100
            // Loading
            source: "qrc:/Resources/Images/image.jpg"
        }

        Image{
            x: 250
            y: 50
            width: 100
            height: 100
            // Loading
            source: "file:/Users/bk221/projects/practices/QtPractice/Resources/Images/image.jpg"
        }
    }
}
