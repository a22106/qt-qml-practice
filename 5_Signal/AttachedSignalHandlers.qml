import QtQuick

Item {
    width: 400
    height: 400

    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "green"
    }

    Component.onCompleted: {
        // Load data for use on the UI
        console.log("Starting up...")
    }

    Component.onDestruction: {
        console.log("App is dying...")
    }
}
