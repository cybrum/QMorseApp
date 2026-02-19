import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 500
    height: 500
    title: "Morse Converter"

    property bool engToMorse: true

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 12

        Label {
            text: engToMorse ? "English → Morse" : "Morse → English"
            font.pixelSize: 22
        }

        TextArea {
            id: input
            placeholderText: engToMorse ?
                             "Enter English text..." :
                             "Enter Morse (... --- ...) separated by spaces"
            wrapMode: TextArea.Wrap
            Layout.fillWidth: true
            Layout.preferredHeight: 100
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 8

            Button {
                text: "Convert"
                background: Rectangle {
                    radius: 6
                    color: "#666666"   // Gray background
                }

                contentItem: Text {
                    text: parent.text
                    color: "white"     // White text
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                Layout.fillWidth: true
                onClicked: {
                    output.text = engToMorse ?
                                 morseConverter.englishToMorse(input.text) :
                                 morseConverter.morseToEnglish(input.text)
                }
            }

            Button {
                text: "Swap"

                background: Rectangle {
                    radius: 6
                    color: "#666666"   // Gray background
                }

                contentItem: Text {
                    text: parent.text
                    color: "white"     // White text
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                onClicked: {
                    engToMorse = !engToMorse
                    input.text = ""
                    output.text = ""
                }
            }
        }

        Label { text: "Output"; font.pixelSize: 18 }

        TextArea {
            id: output
            readOnly: true
            Layout.fillWidth: true
            Layout.preferredHeight: 100
        }

        Button {
            text: "Copy"
            background: Rectangle {
                radius: 6
                color: "#666666"   // Gray background
            }

            contentItem: Text {
                text: parent.text
                color: "white"     // White text
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            Layout.alignment: Qt.AlignRight
            onClicked: {
                output.selectAll()
                output.copy()
            }
        }
    }
}
