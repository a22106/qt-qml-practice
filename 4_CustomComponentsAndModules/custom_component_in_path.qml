import QtQuick
Window{
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom component in path")

    // method1: Using Loader
    // Row{
    //     spacing: 20
    //     Loader{
    //         id: firstButton
    //         sourceComponent: buttonCOmponent

    //         onLoaded: {
    //             var customButton = firstButton.item // Retrieve the loaded item

    //             // access the loaded component's properties and signals
    //             customButton.buttonText = "Button1"
    //             customButton.buttonClicked.connect(function(){
    //                 console.log("Clicked on first button")
    //             })
    //         }
    //     }

    //     Loader{
    //         id: secondButton
    //         sourceComponent: buttonCOmponent

    //         onLoaded: {
    //             var customButton = secondButton.item // Retrieve the loaded item

    //             // access the loaded component's properties and signals
    //             customButton.buttonText = "Button1"
    //             customButton.buttonClicked.connect(function(){
    //                 console.log("Clicked on second Button")
    //             })
    //         }
    //     }
    // }

    // Component{
    //     id: buttonCOmponent
    //     Item{
    //         id: rootId
    //         property alias buttonText: buttonTextId.text
    //         width: containerRectid.width
    //         height: containerRectid.height
    //         signal buttonClicked

    //         Rectangle{
    //             id: containerRectid
    //             width: buttonTextId.implicitWidth + 10
    //             height: buttonTextId.implicitHeight + 10
    //             color: "red"
    //             border{
    //                 color: "blue"
    //                 width: 3
    //             }

    //             Text {
    //                 id: buttonTextId
    //                 text: qsTr("Button")
    //                 anchors.centerIn: parent
    //             }

    //             MouseArea{
    //                 anchors.fill: parent
    //                 onClicked: {
    //                     rootId.buttonClicked()
    //                 }
    //             }
    //         }
    //     }
    // }

    // Method 2: https://www.qt.io/blog/new-qml-language-features-in-qt-5.15
    component MButton: Rectangle{
        id: mButtonId
        property alias buttonText: buttonTextId.text
        signal buttonClicked
        width: buttonTextId.width + 20
        height: buttonTextId.height + 20
        color: "red"
        border {
            color: "blue"
            width: 3
        }

        Text {
            id: buttonTextId
            text: "button"
            anchors.centerIn: parent
            onTextChanged: {
                console.log("Text changed to " + buttonTextId.text)
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mButtonId.buttonClicked();
            }
        }
    }

    Column{
        spacing: 20
        MButton{
            buttonText: "Button3"
            onButtonClicked: {
                console.log("Clicked on inlined component button3");
            }
        }
        MButton{
            buttonText: "Button4"
            onButtonClicked: {
                console.log("Clicked on inlined component button4");
            }
        }
    }
}
