import QtQuick
import QtQuick.Controls
import TimerButtonInclude 1.0

Item {
    visible: true
    width: 900
    height: 540

    Rectangle {
            anchors.fill: parent
            color: "orange"

            TimerButton {
                id: button
                width: 120
                height: 60
                text: "Start"
                anchors.centerIn: parent

                onClicked: {
                    console.log("Button Clicked from QML")
                }
                Rectangle {
                        anchors.fill: parent
                        color: "grey"
                        radius: 20

                        Text {
                            anchors.centerIn: parent
                            text: button.text
                            font.pixelSize: 32
                            color: "black"
                        }
                }
            }

            Rectangle {
                        width: 400   // Adjust the width as needed
                        height: 60
                        anchors.top: parent.top
                        anchors.topMargin: parent.height * 0.25
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "lightGray"
                        radius: 4

                        Text {
                            id: timerDisplay
                            anchors.centerIn: parent
                            text: button.currentTime
                            font.pixelSize: 32
                            color: "black"
                        }
            }
    }
}
