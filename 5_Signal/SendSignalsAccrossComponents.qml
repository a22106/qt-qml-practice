import QtQuick
import "SendSignalsAccrossComponents"

Window{
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals across QML Components")

    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        // onNotify: count => {
        //               // console.log("Received: " + count)
        //           }
        target:receiverId
    }

    Receiver{
        id: receiverId
        rectColor: "Green"
        anchors.left: notifierId.right
    }

    // 1번째 방법 make the connection from notifier to receiver
    // Component.onCompleted: {
    //     notifierId.notify.connect(receiverId.receiveInfo)
    // }

}
