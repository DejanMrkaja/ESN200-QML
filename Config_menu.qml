import QtQuick 2.2
Item {
    width:800
    height:480
    Image {
        id: es_system_setup
        source: "images/es_system_setup.png"
        x: -1
        y: -1
        opacity: 1
    }
    Image {
        id: runtime_screen_setup
        source: "images/runtime_screen_setup.png"
        x: 84
        y: 145
        opacity: 1

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: alert_setup
        source: "images/alert_setup.png"
        x: 308
        y: 145
        opacity: 1

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: loadQML("Alert_Setup.qml")
            onPressed: {
                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: diagnostics
        source: "images/diagnostics.png"
        x: 532
        y: 145
        opacity: 1

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: es_setup
        source: "images/es_setup.png"
        x: 84
        y: 240
        opacity: 1

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: comunication_setup
        source: "images/comunication_setup.png"
        x: 308
        y: 240
        opacity: 1

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: history_touch_screen
        source: "images/history_touch_screen.png"
        x: 523
        y: 240
        opacity: 1

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: aux_setup
        source: "images/aux_setup.png"
        x: 84
        y: 335
        opacity: 1

        MouseArea {
            id: mouseArea6
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: jb70_setup
        source: "images/jb70_setup.png"
        x: 308
        y: 335
        opacity: 1

        MouseArea {
            id: mouseArea7
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=truee
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: display_setup
        source: "images/display_setup.png"
        x: 532
        y: 335
        opacity: 1

        MouseArea {
            id: mouseArea8
            anchors.fill: parent
            onPressed: {

                hover_config_copy.x=parent.x
                hover_config_copy.y=parent.y
                hover_config_copy.visible=true
            }
            onReleased: hover_config_copy.visible=false
        }
    }
    Image {
        id: hover_config_copy
        source: "images/hover_config_copy.png"
        x: 80
        y: 65
        visible: false
        opacity: 0.15
    }
    Image {
        id: back_alert
        source: "images/back_alert.png"
        x: 14
        y: 9
        opacity: 1

        MouseArea {
            id: mouseArea9
            anchors.fill: parent
            onClicked: loadQML("Pocetna.qml")
        }
    }
}
