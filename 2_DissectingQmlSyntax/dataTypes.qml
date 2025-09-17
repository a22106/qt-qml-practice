import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Data Types Demo")

    property string mString: "https://www.learnqt.guide"
    property int mInt: 45
    property bool isFemale: true
    property double mDouble: 77.5
    property url mUrl: "https://www.learnqt.guide"

    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

    property var aFont: Qt.font({family: "Consolas", pointSize: 30, bold: false})
    property date mDate: "2018-08-19"


    Rectangle {
        width: 200
        height: 100 + mInt
        anchors.centerIn: parent
        color: "orange"

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            // font.bold: isFemale ? true : false
            font: aFont
        }
    }

    Component.onCompleted: {
        print('The value of mString is: ' + mString)
        console.log("The value of mInt is: " + mInt)

        anArray.forEach(function(value, index){
            if(index ===5){
                console.log(value())
            } else{
                console.log(value)
            }
        })

        console.log("The date is: " + mDate)
    }
}
