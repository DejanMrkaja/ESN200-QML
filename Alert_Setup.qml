import QtQuick 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    width:800
    height:480


    Image {
    id: tool_bar_back
    x: -1
    y: 0
    width: 803
    height: 48
    opacity: 1
    z: 1
    source: "images/tool_bar_back.png"

    Text {
        id: text5
        x: 108
        y: 16
        width: 80
        height: 23
        color: "#f9f9f9"
        text: qsTr("14:11")
        font.pixelSize: 20
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
    }

    Text {
        id: text6
        x: 662
        y: 13
        color: "#ffffff"
        text: qsTr("Fwd /50 kHz")
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
    }

    Image {
        id: s
        x: 264
        y: 6
        opacity: 1
        source: "images/s.png"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MouseArea {
        id: mouseArea
        x: 1
        y: 3
        width: 107
        height: 45
        onPressed: image_back_hov.visible=true
        onReleased: {
            image_back_hov.visible=true
            loadQML("Config_menu.qml")

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
            opacity: 0.7
            visible: false
            source: "images/hover_back.png"
        }
        z: 1
    }
    }



    Image {
        id: layer_3
        source: "images/layer_3.png"
        x: 0
        y: 0
        opacity: 1
    }
    Image {
        id: rounded_rectangle_4
        source: "images/back_alert_scroll.png"
        x: 442
        y: 98
        width: 327
        height: 365
        z: 1
        opacity: 1



        ScrollView {
            id: scrollView
            x: 3
            y: 3
            width: 324
            height: 358
            clip: true
            z: 1
            font.pointSize: 7
            padding: 3
            spacing: 0
            font.bold: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            ScrollBar.vertical.interactive: true








            Flickable{
                visible: true
                anchors.fill: parent
                z: 1
                boundsBehavior: Flickable.DragAndOvershootBounds
                flickableDirection: Flickable.VerticalFlick

                ColumnLayout {
                    id: columnLayout
                    x: 7
                    y: 0
                    height: 709
                    spacing: 2
                    z: 1

                    Image {
                        id: alarm_shallow_keel_button
                        x: -1
                        y: -2
                        height: 65
                        z: 1
                        source: "images/alarm_shallow_keel_button.png"
                        TextField {
                            id: textField_alarm_shallow_keel_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alarm_shallow_keel_button
                            z: 1
                            anchors.fill: parent
                            onClicked: textField_alarm_shallow_keel_button.text="33"
                        }

                    }

                    Image {
                        id: alert_deep_keel_button
                        y: 68
                        height: 65
                        source: "images/alert_deep_keel_button.png"
                        TextField {
                            id: textField_alert_deep_keel_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alert_deep_keel_button
                            anchors.fill: parent
                            onClicked:
                            {
                                keypad_Alert_Setup.visible=true
                            }

                        }
                    }

                    Image {
                        id: alert_type_button
                        y: 136
                        height: 65
                        source: "images/alert_type_button.png"
                        TextField {
                            id: textField_alert_type_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alert_type_button
                            anchors.fill: parent
                        }

                    }

                    Image {
                        id: escalation_time_button
                        y: 212
                        height: 65
                        source: "images/escalation_time_button.png"
                        TextField {
                            id: textField_escalation_time_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_escalation_time_button
                            anchors.fill: parent
                        }

                    }

                    Image {
                        id: alarm_shallow_id_button
                        y: 282
                        height: 65
                        source: "images/alarm_shallow_id_button.png"
                        TextField {
                            id: textField_alarm_shallow_id_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alarm_shallow_id_button
                            anchors.fill: parent
                        }
                    }

                    Image {
                        id: alert_Warnning_Deep_ID_button
                        y: 357
                        height: 65
                        source: "images/Alert_Warnning_Deep_ID_button.png"
                        TextField {
                            id: textField_alert_Warnning_Deep_ID_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alert_Warnning_Deep_ID_button
                            anchors.fill: parent
                        }
                    }

                    Image {
                        id: alert_Warnning_System_ID_button
                        y: 429
                        height: 65
                        source: "images/Alert_Warnning_System_ID_button.png"
                        TextField {
                            id: textField_alert_Warnning_System_ID_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alert_Warnning_System_ID_button
                            anchors.fill: parent
                        }
                    }

                    Image {
                        id: warning_Power_Fail_Reduction_ID_button
                        y: 501
                        height: 65
                        source: "images/Warning Power Fail _ Reduction ID_button.png"
                        TextField {
                            id: textField_warning_Power_Fail_Reduction_ID_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alert_warning_Power_Fail_Reduction_ID_button
                            anchors.fill: parent
                        }
                    }

                    Image {
                        id: alarm_SFI_button
                        height: 65
                        source: "images/Alarm SFI_button.png"
                        TextField {
                            id: textField_alarm_SFI_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alarm_SFI_button
                            anchors.fill: parent
                        }
                    }

                    Image {
                        id: alert_Warning_Deep_and_System_Error_button
                        height: 65
                        source: "images/Alert_Warning Deep  and System Error Escalation Type _button.png"
                        TextField {
                            id: textField_alert_Warning_Deep_and_System_Error_button
                            x: 184
                            y: 14
                            width: 112
                            height: 42
                            text: qsTr("4 min")
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Arial"
                            font.pointSize: 16
                            background.visible: false
                            color: "white"
                        }

                        MouseArea{
                            id:mouseArea_alert_Warning_Deep_and_System_Error_button
                            anchors.fill: parent
                        }
                    }
                }



            }

        }


    }








    Image {
        id: es_alert_setup
        source: "images/es_alert_setup.png"
        x: 316
        y: 64
        opacity: 1
    }
    Image {
        id: alarm_shallow_keel
        source: "images/alarm_shallow_keel.png"
        x: 81
        y: 115
        opacity: 1
    }
    Image {
        id: alert_deep_keel
        source: "images/alert_deep_keel.png"
        x: 81
        y: 155
        opacity: 1
    }
    Image {
        id: alert_type
        source: "images/alert_type.png"
        x: 81
        y: 196
        opacity: 1
    }
    Image {
        id: escalation_time
        source: "images/escalation_time.png"
        x: 81
        y: 236
        opacity: 1
    }
    Image {
        id: alarm_shallow_id
        source: "images/alarm_shallow_id.png"
        x: 81
        y: 273
        opacity: 1
    }
    Image {
        id: alarm_deep_id
        source: "images/alarm_deep_id.png"
        x: 81
        y: 310
        opacity: 1
    }
    Image {
        id: alarm_system_id
        source: "images/alarm_system_id.png"
        x: 81
        y: 350
        opacity: 1
    }
    Image {
        id: alarm_power_failure_id
        source: "images/alarm_power_failure_id.png"
        x: 81
        y: 391
        opacity: 1
    }
    Image {
        id: alarm_sfi
        source: "images/alarm_sfi.png"
        x: 81
        y: 428
        opacity: 1
    }

    Tast_NUM{
        id:keypad_Alert_Setup
        x: 0
        y: 158
        visible: false
    }

}
