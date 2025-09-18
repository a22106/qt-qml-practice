import QtQuick
import GreatButtons

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QT Practice")

    Column{
        x: 10
        y: 10
        RedButton{
            buttonText: "Button1"
            onButtonClicked:{
                console.log("Clicked on component button1")
            }
        }
        GreenButton{
            buttonText: "Button1"
            onButtonClicked:{
                console.log("Clicked on component button1")
            }
        }
        GrayButton{
            buttonText: "Button1"
            onButtonClicked:{
                console.log("Clicked on component button1")
            }
        }
        BlueButton{
            buttonText: "Button1"
            onButtonClicked:{
                console.log("Clicked on component button1")
            }
        }
    }
}
