import QtQuick 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Item {
    width:800
    height:480

    Text {
        id: text11
        x: 297
        y: 112
        color: "#ffffff"
        text: alarm_shallow_value
        z: 1
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 17
    }

    Text {
        id: text12
        x: 297
        y: 153
        color: "#ffffff"
        text: alert_deep_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }

    Text {
        id: text13
        x: 297
        y: 190
        color: "#ffffff"
        text: alert_type_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }




    Text {
        id: text14
        x: 296
        y: 230
        color: "#ffffff"
        text:escalation_time_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }

    Text {
        id: text15
        x: 296
        y: 268
        color: "#ffffff"
        text: alarm_shallow_ID_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }

    Text {
        id: text16
        x: 296
        y: 308
        color: "#ffffff"
        text: alert_deep_ID_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }

    Text {
        id: text17
        x: 296
        y: 346
        color: "#ffffff"
        text:alert_system_ID_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }

    Text {
        id: text18
        x: 296
        y: 384
        color: "#ffffff"
        text: alarm_power_failure_ID_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }

    Text {
        id: text19
        x: 296
        y: 419
        color: "#ffffff"
        text: alarm_SFI_value
        z: 1
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 17
    }






    Image {
        id: back
        source: "images/back.png"
        x: 13
        y: 11
        z: 1
        opacity: 1

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: loadQML("Config_menu.qml")
        }
    }
    Image {
        id: alert_setup_background
        width: 806
        anchors.rightMargin: -5
        anchors.fill: parent
        source: "images/alert_setup_background.png"
        opacity: 1
    }





    Image {
        id: list_backgorund
        source: "images/list_backgorund.png"
        x: 484
        y: 106
        width: 301
        height: 337
        opacity: 1


        ScrollView {
            id: scrollView
            x: 3
            y: 8
            width: 298
            height: 322
            topPadding: 5
            leftPadding: 3
            rightPadding: 3
            font.weight: Font.Light
            bottomPadding: 5
            clip: true
            z: 1
            font.pointSize: 4
            padding: 4
            spacing: 3
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
                    x: 8
                    y: -1
                    width: 273
                    height: 644
                    spacing: 6
                    z: 1



                    Image {
                        id: alarm_shallow_keel
                        source: "images/alarm_shallow_keel.png"
                        x: 485
                        y: 0
                        opacity: 1

                        Text {
                            id: text1
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: alarm_shallow_value
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 18
                        }



                        MouseArea {
                            id: mouseArea1
                            anchors.fill: parent
                            onClicked: {


                            }
                            onPressed: {

                                alarm_shallow_keel.opacity=0.6

                            }
                            onReleased: {

                                alarm_shallow_keel.opacity=1
                                numpad.visible=true
                                numpad.caller_name="Alarm Shallow"
                            }
                        }
                    }

                    Image {
                        id: alert_deep_keel
                        source: "images/alert_deep_keel.png"
                        x: 485
                        y: 0
                        opacity: 1

                        Text {
                            id: text2
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: alert_deep_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea2
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Alert Deep"
                            }
                            onPressed: {
                                alert_deep_keel.opacity=0.6

                            }
                            onReleased: alert_deep_keel.opacity=1
                        }

                    }
                    Image {
                        id: alert_type
                        source: "images/alert_type.png"
                        x: 485
                        y: 0
                        opacity: 1

                        Text {
                            id: text3
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: alert_type_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea3
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Alert Type"
                            }
                            onPressed: {
                                alert_type.opacity=0.6

                            }
                            onReleased: alert_type.opacity=1
                        }
                    }
                    Image {
                        id: escalation_time
                        source: "images/escalation_time.png"
                        x: 485
                        y: 0
                        opacity: 1

                        Text {
                            id: text4
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: escalation_time_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea4
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Escalation Time"
                            }
                            onPressed: {
                                escalation_time.opacity=0.6

                            }
                            onReleased: escalation_time.opacity=1
                        }

                    }
                    Image {
                        id: alarm_shallow_id
                        source: "images/alarm_shallow_id.png"
                        x: 484
                        y: 0
                        opacity: 1

                        Text {
                            id: text5
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: alarm_shallow_ID_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea5
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Alarm Shallow ID"
                            }
                            onPressed: {
                                alarm_shallow_id.opacity=0.6

                            }
                            onReleased: alarm_shallow_id.opacity=1
                        }

                    }
                    Image {
                        id: alert_warning_deep_id
                        source: "images/alert_warning_deep_id.png"
                        x: 484
                        y: 0
                        opacity: 1

                        Text {
                            id: text6
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: qsTr("55")
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea6
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Alert/Warning Deep ID"
                            }
                            onPressed: {
                                alert_warning_deep_id.opacity=0.6

                            }
                            onReleased: alert_warning_deep_id.opacity=1
                        }

                    }
                    Image {
                        id: alert_warning_system_id
                        source: "images/alert_warning_system_id.png"
                        x: 484
                        y: 0
                        opacity: 1

                        Text {
                            id: text7
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: alert_system_ID_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea7
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Alert/Warning System ID"
                            }
                            onPressed: {
                                alert_warning_system_id.opacity=0.6

                            }
                            onReleased: alert_warning_system_id.opacity=1
                        }
                    }
                    Image {
                        id: warning_power_fail_reduction_id
                        source: "images/warning_power_fail_reduction_id.png"
                        x: 484
                        y: 0
                        opacity: 1

                        Text {
                            id: text8
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: alarm_power_failure_ID_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea8
                            anchors.fill: parent
                            onClicked: {

                                keyboard1.visible=true
                                keyboard1.caller_name="Warning Power Fail"
                            }
                            onPressed: {
                                warning_power_fail_reduction_id.opacity=0.6

                            }
                            onReleased: warning_power_fail_reduction_id.opacity=1
                        }
                    }
                    Image {
                        id: alarm_sfi
                        source: "images/alarm_sfi.png"
                        x: 484
                        y: 0
                        opacity: 1

                        Text {
                            id: text9
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text:alarm_SFI_value
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea9
                            anchors.fill: parent
                            onClicked: {
                                keyboard1.visible=true
                                keyboard1.keyboard_caller="Alarm SFI"
                            }
                            onPressed: {
                               alarm_sfi.opacity=0.6

                            }
                            onReleased: alarm_sfi.opacity=1
                        }
                    }
                    Image {
                        id: alert_warning_deep_and_system_error_escalation_type
                        source: "images/alert_warning_deep_and_system_error_escalation_type.png"
                        x: 484
                        y: 0
                        opacity: 1

                        Text {
                            id: text10
                            x: 188
                            y: 8
                            width: 80
                            height: 43
                            color: "#d8ec32"
                            text: qsTr("55")
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 18
                        }

                        MouseArea {
                            id: mouseArea10
                            anchors.fill: parent
                            onClicked: {
                                /*keyboard.visible=true
                                keyboard.keyboard_caller="Alert Type"*/
                            }
                            onPressed: {
                               alert_warning_deep_and_system_error_escalation_type.opacity=0.6

                            }
                            onReleased: alert_warning_deep_and_system_error_escalation_type.opacity=1

                        }
                    }

                }
            }
        }
    }










}
