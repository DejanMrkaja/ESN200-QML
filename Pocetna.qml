import QtQuick 2.2
import QtQuick.Controls 2.2
Item {
    width:800
    height:480
    property alias hover_menu: hover_menu

    property var range_result:range.result
    property var pic_speed_result:pic_speed.result


    Image {
        id: rectangle_1_copy
        source: "images/rectangle_1_copy.png"
        x: -1
        y: 0
        visible: true
        opacity: 1

        MouseArea {
            id: mouseArea
            x: 605
            y: 413
            width: 103
            height: 53
            onClicked: {

                if(textAutoFunc.text=="ON")
                {
                    textAutoFunc.text="OFF"
                }
                else
                {
                    textAutoFunc.text="ON"
                }
            }
            onPressed: hover_Auto.visible=true
            onReleased: hover_Auto.visible=false

            Image {
                id: hover_Auto
                visible: false
                opacity: 0.3
                anchors.fill: parent
                source: "images/hover_menu_2.png"
            }

            Text {
                id: textAutoFunc
                x: 40
                y: 20
                text: qsTr("ON")
                anchors.verticalCenterOffset: 4
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 23
                color: "#c0d916"
            }

        }
    }

    Config_menu{
        id:config_menu
        visible: false


    }



    Sp_Text{
        id:range
        anchors.verticalCenterOffset: 204
        anchors.horizontalCenterOffset: -109

        property var result

        //property var img_source:"images/group_1.png"
        property var model:model2
        width: 154
        height: 50


        z:2
        ListModel {
            id: model2
            ListElement { value:5 }
            ListElement { value:10 }
            ListElement { value:20 }
            ListElement { value: 50 }
            ListElement { value: 100 }
            ListElement { value: 150 }
            ListElement { value: 200 }
            ListElement { value: 250 }



        }



    }



    Sp_Text{
        id:pic_speed
        x: 394
        y: 329
        width: 154
        height: 50
        z: 2
        anchors.verticalCenterOffset: 205
        anchors.horizontalCenterOffset: 73
        property var result
        property var model:model1
        //property var img_source:"images/group_1_copy.png"


        ListModel {
            id: model1
            ListElement { value: "5 min" }
            ListElement { value: "10 min" }
            ListElement { value: "15 min" }
            ListElement { value: "30 min" }
            ListElement { value: "1 h" }
            ListElement { value: "12 h" }
            ListElement { value: "24 h" }

        }

    }








    Image {
        id: menu
        source: "images/menu.png"
        x: 3
        y: 42
        z: 0
        opacity: 1
    }
    MouseArea {
        id: mouseArea_shallow
        x: 3
        y: 40
        width: 188
        height: 60
        z: 0

        onClicked:
        {
            numpad.visible=true
            numpad.caller_name="Alarm Shallow"
        }

        onPressed:
        {
            hover_menu.x=mouseArea_shallow.x
            hover_menu.y=mouseArea_shallow.y
            hover_menu.visible=true
            console.log(mouseArea_shallow.x + "  "+mouseArea_shallow.y)

        }
        onReleased:hover_menu.visible=false

        TextField {
            id: text_Alarm_Shallow
            x: 37
            y: 18
            width: 84
            height: 39
            color: "#c0d916"
            text: alarm_shallow_value
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 0.9
            z: 1
            opacity: 1
            font.bold: false
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.DemiBold
            enabled: false
            background.visible: false
        }
    }

    MouseArea {
        id: mouseArea1
        x: 3
        y: 103
        width: 188
        height: 58

        onPressed:
        {
            hover_menu.x=mouseArea1.x
            hover_menu.y=mouseArea1.y
            hover_menu.visible=true


        }
        onReleased:hover_menu.visible=false



        TextField {
            id: text_DPTH_Blw_Surface
            x: 38
            y: 14
            width: 84
            height: 39
            color: "#c0d916"
            text: "-/-"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            opacity: 0.9
            font.bold: false
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.DemiBold
            enabled: false
            background.visible: false
        }
    }

    MouseArea {
        id:mouse_draft_area

        x: 3
        y: 163
        width: 188
        height: 58
        onClicked:
        {
            numpad.visible=true
            numpad.caller_name="Draft Fwd"
        }

        onPressed:
        {
            hover_menu.x=mouse_draft_area.x
            hover_menu.y=mouse_draft_area.y
            hover_menu.visible=true


        }
        onReleased:hover_menu.visible=false

        TextField {
            id: text_Draft_Fwd
            x: 40
            y: 15
            width: 84
            height: 39
            color: "#c0d916"
            text: draft_fwd_value+" m"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            opacity: 1
            font.bold: false
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.DemiBold
            enabled: false
            background.visible: false
        }
    }

    MouseArea {
        id: tvg_fed_area
        x: 3
        y: 283
        width: 188
        height: 58
        onClicked:
        {
            numpad.visible=true
            numpad.caller_name="TVG Fwd"
        }

        onPressed:
        {
            hover_menu.x=tvg_fed_area.x
            hover_menu.y=tvg_fed_area.y
            hover_menu.visible=true


        }
        onReleased:hover_menu.visible=false

        TextField {
            id: text_TVG_Fwd
            x: 38
            y: 14
            width: 84
            height: 39
            color: "#c0d916"
            text: tvg_fwd_value
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            opacity: 1
            font.bold: false
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            font.weight: Font.DemiBold
            enabled: false
            background.visible: false
        }
    }


    MouseArea {
        id: mouseArea4
        x: 26
        y: 239
        width: 29
        height: 30
        onClicked: {

            var broj=gain_fwd_value//textField_gain.text
            if(broj>=12)
            {
                broj=1;
            }
            else
            {
                broj++;
            }
            //textField_gain.text=broj
            gain_fwd_value=broj

        }
        onPressed:
        {

            up.opacity=0.6
            up.scale=1.1

        }
        onReleased: {

            up.opacity=1
            up.scale=1
        }

        Image {
            id: up
            source: "images/up.png"
            x: 7
            y: 19
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            opacity: 1
        }


    }


    MouseArea {
        id: mouseArea5
        x: 136
        y: 239
        width: 30
        height: 30
        onClicked: {

            var broj=gain_fwd_value//textField_gain.text
            if(broj<=1)
            {
                broj=12;
            }
            else
            {
                broj--;
            }

            // textField_gain.text=broj
            gain_fwd_value=broj

        }
        onPressed:
        {

            up1.opacity=0.6
            up1.scale=1.1

        }
        onReleased: {

            up1.opacity=1
            up1.scale=1
        }

        Image {
            id: up1
            x: 5
            y: 11
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rotation: 180
            source: "images/up.png"
            opacity: 1
        }

    }

    TextField {
        id: textField_gain
        x: 53
        y: 236
        width: 84
        height: 39
        text: gain_fwd_value
        font.weight: Font.DemiBold
        font.bold: false
        opacity: 1
        enabled: false
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 22
        background.visible: false
        color: "#c0d916"
    }






    MouseArea {
        id: mouseArea6
        x: 27
        y: 361
        width: 29
        height: 30

        onPressed:
        {

            up2.opacity=0.6
            up2.scale=1.1

        }
        onReleased: {

            up2.opacity=1
            up2.scale=1
        }

        Image {
            id: up2
            x: 6
            y: 49
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/up.png"
            opacity: 1
        }
    }

    MouseArea {
        id: mouseArea7
        x: 137
        y: 359
        width: 29
        height: 30
        onPressed:
        {

            up3.opacity=0.6
            up3.scale=1.1

        }
        onReleased: {

            up3.opacity=1
            up3.scale=1
        }

        Image {
            id: up3
            x: 5
            y: 36
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            rotation: 180
            source: "images/up.png"
            opacity: 1
        }
    }

    MouseArea {
        id: mouseArea8
        x: 27
        y: 426
        width: 29
        height: 30
        onPressed:
        {

            up4.opacity=0.6
            up4.scale=1.1

        }
        onReleased: {

            up4.opacity=1
            up4.scale=1
        }

        Image {
            id: up4
            x: 3
            y: 9
            rotation: -90
            source: "images/up.png"
            opacity: 1
        }


    }
    MouseArea {
        id: mouseArea9
        x: 140
        y: 426
        width: 29
        height: 30
        onPressed:
        {

            up5.opacity=0.6
            up5.scale=1.1

        }
        onReleased: {

            up5.opacity=1
            up5.scale=1
        }

        Image {
            id: up5
            x: 6
            y: 10
            source: "images/up.png"
            rotation: 90
            opacity: 1
        }
    }

    MouseArea {
        id: mouseArea_config
        x: 13
        y: 7
        width: 100
        height: 28
        onClicked: loadQML("Config_menu.qml")

        onPressed: config.opacity=0.5
        onReleased: {

            config.opacity=1


        }

        Image {
            id: config
            source: "images/config.png"
            x: 5
            y: 5
            opacity: 1
        }
    }
    Image {
        id: auto_functions
        source: "images/auto_functions.png"
        x: 270
        y: 416
        opacity: 1
    }
    Image {
        id: m_1
        source: "images/m_1.png"
        x: 212
        y: 54
        opacity: 1
    }
    Image {
        id: depth_below_transducer
        source: "images/depth_below_transducer.png"
        x: 211
        y: 88
        opacity: 1
    }
    Image {
        id: s
        source: "images/s.png"
        x: 332
        y: 7
        opacity: 1
    }


    Image {
        id: hover_menu
        x: 3
        y: 42

        width: 188
        height: 58
        visible: false
        opacity: 0.3
        z: 0
        source: "images/hover_menu_2.png"
    }



}
