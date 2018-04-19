import QtQuick 2.0
import QtQuick.Controls 2.2


Item {
    width:800
    height:480

    Image {
        id: untitled_1
        source: "images/untitled_1.png"
        x: 0
        y: 0
        visible: true
        opacity: 1
    }
    Image {
        id: tool_bar_back
        source: "images/tool_bar_back.png"
        x: 0
        y: -1
        width: 801
        height: 48
        opacity: 1

        Text {
            id: text5
            x: 128
            y: 12
            width: 80
            height: 23
            color: "#f9f9f9"
            text: qsTr("14:11")
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Text {
            id: text6
            x: 662
            y: 13
            color: "#ffffff"
            text: qsTr("Fwd /50 kHz")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }
    Image {
        id: auto_functions
        source: "images/auto_functions.png"
        x: 376
        y: 417
        opacity: 1

        Text {
            id: text4
            x: 68
            y: 23
            color: "#ffffff"
            text: qsTr("ON")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 23
        }

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
        }
    }
    Image {
        id: tvg_fwd
        source: "images/tvg_fwd.png"
        x: 615
        y: 295
        opacity: 1

        TextEdit {
            id: textEdit2
            x: 23
            y: 21
            width: 143
            height: 30
            color: "#ffffff"
            text: qsTr("50 %")
            font.pixelSize: 23
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.PlainText
        }
    }
    Image {
        id: dpth_blw_surface
        source: "images/dpth_blw_surface.png"
        x: 615
        y: 112
        opacity: 1

        Text {
            id: text7
            x: 38
            y: 23
            width: 107
            height: 28
            color: "#ffffff"
            text: qsTr("Text")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 23
        }
    }
    Image {
        id: draft_fwd
        source: "images/draft_fwd.png"
        x: 615
        y: 173
        opacity: 1

        TextEdit {
            id: textEdit1
            x: 23
            y: 21
            width: 143
            height: 30
            color: "#00000000"
            text: qsTr("2 m")
            font.pixelSize: 23
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.PlainText
        }
    }
    Image {
        id: alarm_shallow_keel
        source: "images/alarm_shallow_keel.png"
        x: 615
        y: 51
        opacity: 1

        TextField {
            id: textField
            x: 19
            y: 19
            width: 138
            height: 32
            text: qsTr("10")
            opacity: 1
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            color: "white"

            background.visible: false
        }
    }
    Image {
        id: group_1
        source: "images/group_1.png"
        x: 12
        y: 417
        opacity: 1

        Text {
            id: text1
            x: 68
            y: 23
            color: "#ffffff"
            text: qsTr("Text")
            font.pixelSize: 23
        }

        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 45
            height: 59
        }

        MouseArea {
            id: mouseArea1
            x: 141
            y: 0
            width: 39
            height: 59
        }
    }
    Image {
        id: group_1_copy
        source: "images/group_1_copy.png"
        x: 194
        y: 417
        opacity: 1

        Text {
            id: text2
            x: 68
            y: 23
            color: "#ffffff"
            text: qsTr("Text")
            font.pixelSize: 23
        }

        MouseArea {
            id: mouseArea2
            x: 0
            y: 0
            width: 44
            height: 59
            hoverEnabled: false
        }

        MouseArea {
            id: mouseArea3
            x: 140
            y: 0
            width: 40
            height: 59
            hoverEnabled: false
            opacity: 1
            onPressed: image1.visible=true
            onReleased: image1.visible=false

            Image {
                id: image1
                x: 2
                y: 0
                width: 35
                height: 58
                opacity: 0.7
                visible: false
                source: "images/strelica.png"
            }
        }
    }
    Image {
        id: group_1_copy_4
        source: "images/group_1_copy_4.png"
        x: 615
        y: 234
        opacity: 1

        Text {
            id: text3
            x: 68
            y: 23
            color: "#ffffff"
            text: qsTr("Text")
            font.pixelSize: 23
        }

        MouseArea {
            id: mouseArea9
            x: 0
            y: 0
            width: 45
            height: 59
        }

        MouseArea {
            id: mouseArea10
            x: 141
            y: 0
            width: 39
            height: 59
            hoverEnabled: false
        }
    }
    Image {
        id: group_1_copy_2
        source: "images/group_1_copy_2.png"
        x: 615
        y: 356
        opacity: 1

        MouseArea {
            id: mouseArea7
            x: 0
            y: 0
            width: 45
            height: 59
        }

        MouseArea {
            id: mouseArea8
            x: 140
            y: 0
            width: 40
            height: 59
        }
    }
    Image {
        id: group_1_copy_3
        source: "images/group_1_copy_3.png"
        x: 615
        y: 417
        opacity: 1

        MouseArea {
            id: mouseArea5
            x: 0
            y: 0
            width: 45
            height: 59
        }

        MouseArea {
            id: mouseArea6
            x: 140
            y: 0
            width: 40
            height: 59
        }
    }
    Image {
        id: config
        source: "images/config.png"
        x: 7
        y: 4
        opacity: 1

        MouseArea {
            id: mouseArea12
            anchors.fill: parent
        }
    }
    Image {
        id: siren
        source: "images/siren.png"
        x: 235
        y: 51
        opacity: 1
    }
    Image {
        id: s
        source: "images/s.png"
        x: 356
        y: 11
        opacity: 1
    }

}


