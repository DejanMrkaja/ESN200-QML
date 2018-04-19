import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1 as ListItem


Item {
    width:800
    height:480
    z: 0




    Image {
        id: layer_3
        source: "images/layer_3.png"
        x: 0
        y: 0
        z: 0
        opacity: 1
    }
    Image {
        id: tool_bar_back
        source: "images/tool_bar_back.png"
        x: -1
        y: 0
        width: 803
        height: 48
        z: 1
        opacity: 1

        Text {
            id: text5
            x: 108
            y: 16
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

        Image {
            id: s
            x: 264
            y: 6
            opacity: 1
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/s.png"
        }

        MouseArea {
            id: mouseArea
            x: 1
            y: 3
            width: 107
            height: 45
            z: 1

            onPressed: image_back_hov.visible=true
            onReleased:
            {
                loadQML("Sonar.qml")
                image_back_hov.visible=false


            }


            Image {
                id: image
                x: 11
                y: 0
                source: "images/Back_butt.png"
            }

            Image {
                id: image_back_hov
                x: 1
                y: -1
                width: 106
                height: 43
                visible: false
                opacity: 0.5
                source: "images/hover_back.png"
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 15
        y: 14
        width: 697
        height: 323
        color: "#00000000"
        border.color: "#00000000"





     Image {
        id: runtime_screen_setup
        source: "images/runtime_screen_setup.png"
        x: 80
        y: 124
        opacity: 1

        MouseArea {
            id: mouseArea1
            anchors.fill: parent

            Image {
                id: hover_butt2
                x: -3
                y: -4
                visible: false
                opacity: 1
                source: "images/hover_butt.png"
            }
        }
    }



    
    


    Image {
        id: alert_setup
        source: "images/alert_setup.png"
        x: 299
        y: 124
        opacity: 1

        Loader{
            id:load_alert
            x: -297
            y: -121
            width: 800
            height: 480
            z: 2


        }

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onPressed: hover_butt.visible=true
            onReleased:
            {

                hover_butt.visible=false
            }
            onClicked:loadQML("Alert_Setup.qml")


            Image {
                id: hover_butt
                x: -3
                y: -4
                visible: false
                opacity: 0.5
                source: "images/hover_butt.png"
            }
        }
    }


    Image {
        id: diagnostics
        source: "images/diagnostics.png"
        x: 517
        y: 124
        opacity: 1

        MouseArea {
            id: mouseArea4
            anchors.fill: parent

            Image {
                id: hover_butt1
                x: -3
                y: -4
                visible: false
                opacity: 1
                source: "images/hover_butt.png"
            }
        }
    }

    Image {
        id: es_setup
        source: "images/es_setup.png"
        x: 80
        y: 231
        opacity: 1
    }

    Image {
        id: comunication_setup
        source: "images/comunication_setup.png"
        x: 299
        y: 231
        opacity: 1
    }

    Image {
        id: history_touch_screen
        source: "images/history_touch_screen.png"
        x: 517
        y: 231
        opacity: 1
    }

    Image {
        id: aux_setup
        source: "images/aux_setup.png"
        x: 80
        y: 338
        opacity: 1
    }

    Image {
        id: jb70_setup
        source: "images/jb70_setup.png"
        x: 299
        y: 338
        opacity: 1
    }

    Image {
        id: display_setup
        source: "images/display_setup.png"
        x: 517
        y: 338
        opacity: 1
    }

    Image {
        id: es_system_setup
        source: "images/es_system_setup.png"
        x: 316
        y: 71
        opacity: 1
    }

    }


    Image {
        id: s2
        source: "images/s.png"
        x: 311
        y: 3
        visible: false
        opacity: 1
    }

    Loader {
        id: alert_loader
        anchors.fill: parent
    }

}
