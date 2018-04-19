import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.2


Item {
    id: item1
    width:800
    height:480



   Image {
       id: image12
       x: 8
       y: 4
       z: 1
       source: "images/config2.png"

       Config_menu{
           id:conf_menu1
           x: -8
           y: -4
           z: 1
           visible: false
           opacity: 1
       }


       MouseArea {
           id: mouseArea3
           anchors.fill: parent

           onPressed: image13.visible=true
           onReleased:
           {

               image13.visible=false;



           }
           onClicked: loadQML("Config_menu.qml");

           Image {
               id: image13
               x: -7
               y: -1
               width: 106
               height: 43
               visible: false
               opacity: 0.5
               source: "images/hover_back.png"
           }
       }
   }

    Tast_NUM{
        id:tast1
        x: 6
        y: 181
        opacity: 1
        z: 3
        visible: false
        property string tastNUM_rez:""
        property var caller_name:" "

        property var alarm_shallow:""
        property var draft_fwd:""


        property double alarm_value:0
        property double draft_value:0
        property double tvg_value:0

        function sum()
        {
            console.log(alarm_value+draft_value)
        }

        Image {
            id: image2
            x: 9
            y: -25
            width: 289
            height: 45
            z: -1
            source: "images/naslov_tast.png"

            Text {
                id: text_naslov
                x: 9
                y: 8
                width: 272
                height: 19
                color: "#f7f6f6"
                text: qsTr("Edit value TVG Fwd:")
                styleColor: "#ffffff"
                font.pixelSize: 17
            }
        }

    }



    Sp_Text{
        id:pic_speed
        x: 394
        y: 329
        width: 180
        height: 59
        z: 0
        anchors.verticalCenterOffset: 207
        anchors.horizontalCenterOffset: -103
        property var model:model1
        property var img_source:"images/group_1_copy.png"

        ListModel {
            id: model1
            ListElement { name: "5 min" }
            ListElement { name: "10 min" }
            ListElement { name: "15 min" }
            ListElement { name: "30 min" }
            ListElement { name: "1 h" }
            ListElement { name: "12 h" }
            ListElement { name: "24 h" }

        }




    }




    Sp_Text{
        id:range
        anchors.verticalCenterOffset: 206
        anchors.horizontalCenterOffset: -291

        property var img_source:"images/group_1.png"
        property var model:model2
        z: 0
        ListModel {
            id: model2
            ListElement { name: "5 m" }
            ListElement { name: "10 m" }
            ListElement { name: "20 m" }
            ListElement { name: "50 m" }
            ListElement { name: "100 m" }
            ListElement { name: "150 m" }
            ListElement { name: "200 m" }
            ListElement { name: "250 m" }
            ListElement { name: "300 m" }
            ListElement { name: "350 m" }
            ListElement { name: "400 m" }
            ListElement { name: "450 m" }
            ListElement { name: "500 m" }


        }

    }




    Image {
        id: tool_bar_back
        source: "images/tool_bar_back.png"
        x: -1
        y: 0
        width: 803
        height: 48
        z: -1
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
            id: image
            x: 1
            y: 0
            width: 800
            height: 485
            visible: true
            z: -1
            source: "images/back_2.png"
        }

        Image {
            id: s
            x: 264
            y: 6
            opacity: 1
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/s.png"
        }
    }



    Image {
        id: auto_functions
        source: "images/auto_functions.png"
        x: 396
        y: 417
        z: 0
        opacity: 1

        Text {
            id: text4
            x: 68
            y: 21
            color: "#ffffff"
            text:"ON"
            anchors.horizontalCenterOffset: 1
            z: 1
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 23
        }

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onPressed: image1.visible=true
            onReleased: image1.visible=false
            onClicked: {

                if(text4.text=="ON")
                {
                    text4.text="OFF"
                }
                else
                {
                    text4.text="ON"
                }
            }


            Image {
                id: image1
                x: 2
                y: 2
                opacity: 0.6
                visible: false
                source: "images/button_hover.png"
            }
        }
    }



    Image {
        id: tvg_fwd
        source: "images/tvg_fwd.png"
        x: 615
        y: 173
        opacity: 1

        TextField {
            id: textField3
            x: 8
            y: 15
            width: 163
            height: 39
            color: "#ffffff"
            text: "50 %"
            z: 1
            background.visible: false
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            cursorVisible: false
        }

        MouseArea {
            id: mouseArea2
            z: 2
            anchors.fill: parent
            onClicked:
            {
                tast1.visible=true
                tast1.caller_name="TVG Fwd"
                text_naslov.text="Edit value TVG Fwd:"
            }
            onPressed: image4.visible=true
            onReleased: image4.visible=false

            Image {
                id: image4
                x: 2
                y: 2
                opacity: 0.6
                source: "images/button_hover.png"
                visible: false
            }
        }
    }



    Image {
        id: dpth_blw_surface
        source: "images/dpth_blw_surface.png"
        x: 615
        y: 51
        opacity: 1

        Text {
            id: text7
            x: 38
            y: 23
            width: 107
            height: 28
            color: "#ffffff"
            text: "-/-"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 25
        }
    }



    Image {
        id: draft_fwd
        source: "images/draft_fwd.png"
        x: 615
        y: 112
        opacity: 1

        TextField {
            id: textField1
            x: 8
            y: 15
            width: 163
            height: 39
            text:"2.0"

            font.pixelSize: 25
            z: 1
            horizontalAlignment: Text.AlignHCenter
            background.visible: false
            color: "white"
            cursorVisible: false
        }

        MouseArea {
            id: mouseArea
            z: 2
            anchors.fill: parent

            onClicked:{


                tast1.visible=true


                tast1.caller_name="Draft Fwd"
                text_naslov.text="Edit value Draft Fwd:"
            }
            onPressed: image5.visible=true
            onReleased: image5.visible=false

            Image {
                id: image5
                x: 2
                y: 2
                opacity: 0.6
                source: "images/button_hover.png"
                visible: false
            }
        }
    }




    Image {
        id: alarm_shallow_keel
        source: "images/Al_sh.png"
        x: 615
        y: 233
        width: 180
        height: 59
        visible: true
        opacity: 1

        TextField {
            id: textField2
            x: 9
            y: 20
            width: 163
            height: 39
            color: "#ffffff"
            text:"10 m"

            z: 1
            background.visible: false
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            cursorVisible: false
        }

        MouseArea {
            id: mouseArea1
            z: 2
            anchors.fill: parent
            onClicked: {
                tast1.visible=true;
                tast1.caller_name="Alarm Shallow"
                text_naslov.text="Edit value Alarm Shallow (Keel):"
            }
            onPressed: image3.visible=true
            onReleased: image3.visible=false

            Image {
                id: image3
                x: 2
                y: 2
                opacity: 0.6
                source: "images/button_hover.png"
                visible: false
            }
        }
    }



    Image {
        id: group_1_copy_4
        source: "images/group_1_copy_4.png"
        x: 615
        y: 294
        opacity: 1



        MouseArea {
            id: mouseArea9
            x: 0
            y: 0
            width: 45
            height: 59
            onPressed: image11.visible=true
            onReleased: image11.visible=false
            onClicked: {


                var broj=textField_gain.text
                if(broj>=12)
                {
                    broj=1;
                }
                else
                {
                    broj++;
                }


                textField_gain.text=broj

            }

            Image {
                id: image11
                x: 2
                y: 2
                width: 41
                height: 54
                visible: false
                rotation: 180
                opacity: 0.6
                source: "images/klik.png"
            }
        }

        MouseArea {
            id: mouseArea10
            x: 141
            y: 0
            width: 39
            height: 59
            hoverEnabled: false
            onPressed: image10.visible=true
            onReleased: image10.visible=false
            onClicked: {

                var broj=textField_gain.text
                if(broj<=1)
                {
                    broj=12;
                }
                else
                {
                    broj--;
                }


                textField_gain.text=broj

            }

            Image {
                id: image10
                x: 1
                y: 2
                visible: false
                opacity: 0.6
                source: "images/klik.png"
            }
        }

        TextField {
            id: textField_gain
            x: 50
            y: 18
            width: 84
            height: 40
            text: qsTr("12")
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 27
            background.visible: false
            color: "white"
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
            onPressed: image8.visible=true
            onReleased: image8.visible=false

            Image {
                id: image8
                x: 2
                y: 2
                width: 41
                height: 54
                visible: false
                rotation: 180
                opacity: 0.6
                source: "images/klik.png"
            }
        }

        MouseArea {
            id: mouseArea8
            x: 140
            y: 0
            width: 40
            height: 59
            onPressed: image9.visible=true
            onReleased: image9.visible=false

            Image {
                id: image9
                x: 1
                y: 2
                visible: false
                opacity: 0.6
                source: "images/klik.png"
            }
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
            onPressed: image7.visible=true
            onReleased: image7.visible=false

            Image {
                id: image7
                x: 2
                y: 2
                width: 41
                height: 54
                visible: false
                rotation: 180
                opacity: 0.6
                source: "images/klik.png"
            }
        }

        MouseArea {
            id: mouseArea6
            x: 140
            y: 0
            width: 40
            height: 59
            onPressed: image6.visible=true
            onReleased: image6.visible=false

            Image {
                id: image6
                x: 1
                y: 2
                visible: false
                opacity: 0.6
                source: "images/klik.png"
            }
        }
    }


    Image {
        id: siren
        source: "images/siren.png"
        x: 232
        y: 64
        opacity: 1
    }




}


