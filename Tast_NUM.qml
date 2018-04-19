import QtQuick 2.2
import QtQuick.Controls 2.0


Item {
    width:443
    height:305
    property alias mouseArea9: mouseArea9
    y: 0
    // property var tastNUM_rez:""
    Image {
        id: rounded_rectangle_4
        source: "images/keypad_background.png"
        x: 0
        y: 5
        width: 443
        height: 298
        opacity: 1
    }

    Image {
        id: rounded_rectangle_5
        source: "images/rounded_rectangle_5.png"
        x: 14
        y: 16
        opacity: 1

        TextField {
            id: textField
            text: qsTr("")
            font.pointSize: 18
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            background.visible: false
        }


    }
    Image {
        id: aa
        source: "images/aa.png"
        x: 14
        y: 72
        opacity: 1

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked:{
                textField.cursorPosition=1
                textField.text=textField.text+"1"

            }
            onPressed: image.visible=true
            onReleased: image.visible=false
        }

        Image {
            id: image
            x: 0
            y: 0
            visible: false
            opacity: 0.7
            scale: 1
            source: "images/hover.png"
        }
    }
    Image {
        id: bb
        source: "images/bb.png"
        x: 109
        y: 72
        opacity: 1

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            onClicked: textField.text=textField.text+"2"
            onPressed: image1.visible=true
            onReleased: image1.visible=false

            Image {
                id: image1
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: cc
        source: "images/cc.png"
        x: 205
        y: 72
        opacity: 1

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: textField.text=textField.text+"3"
            onPressed: image2.visible=true
            onReleased: image2.visible=false

            Image {
                id: image2
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }

    Image {
        id: gg
        source: "images/gg.png"
        x: 14
        y: 127
        opacity: 1

        MouseArea {
            id: mouseArea6
            anchors.fill: parent
            onClicked: textField.text=textField.text+"4"
            onPressed: image3.visible=true
            onReleased: image3.visible=false

            Image {
                id: image3
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: ff
        source: "images/ff.png"
        x: 109
        y: 127
        opacity: 1

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            onClicked: textField.text=textField.text+"5"
            onPressed: image12.visible=true
            onReleased: image12.visible=false


            Image {
                id: image12
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }

    Image {
        id: dd
        source: "images/dd.png"
        x: 205
        y: 127
        opacity: 1

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            onClicked: textField.text=textField.text+"6"
            onPressed: image4.visible=true
            onReleased: image4.visible=false

            Image {
                id: image4
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }

    Image {
        id: hh
        source: "images/hh.png"
        x: 14
        y: 182
        opacity: 1

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            onClicked: textField.text=textField.text+"7"
            onPressed: image5.visible=true
            onReleased: image5.visible=false

            Image {
                id: image5
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: jj
        source: "images/jj.png"
        x: 109
        y: 182
        opacity: 1

        MouseArea {
            id: mouseArea7
            anchors.fill: parent
            onClicked: textField.text=textField.text+"8"
            onPressed: image6.visible=true
            onReleased: image6.visible=false

            Image {
                id: image6
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: kk
        source: "images/kk.png"
        x: 205
        y: 182
        opacity: 1

        MouseArea {
            id: mouseArea8
            anchors.fill: parent
            onClicked: textField.text=textField.text+"9"
            onPressed: image7.visible=true
            onReleased: image7.visible=false

            Image {
                id: image7
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: tacka
        source: "images/tacka.png"
        x: 205
        y: 237
        opacity: 1

        MouseArea {
            id: mouseArea9
            anchors.fill: parent
            onClicked: textField.text=textField.text+"."
            onPressed: image8.visible=true
            onReleased: image8.visible=false

            Image {
                id: image8
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }

    Image {
        id: ll
        source: "images/ll.png"
        x: 109
        y: 237
        opacity: 1

        MouseArea {
            id: mouseArea10
            anchors.fill: parent
            onClicked: textField.text=textField.text+"0"
            onPressed: image9.visible=true
            onReleased: image9.visible=false

            Image {
                id: image9
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: crtica
        source: "images/crtica.png"
        x: 14
        y: 237
        opacity: 1

        MouseArea {
            id: mouseArea11
            anchors.fill: parent
            onClicked: {

                textField.text=textField.text+"-"

            }
            onPressed: image10.visible=true
            onReleased: image10.visible=false

            Image {
                id: image10
                x: 0
                y: 0
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: shape_1
        source: "images/shape_1.png"
        x: 301
        y: 16
        opacity: 1

        MouseArea {
            id: mouseArea12
            anchors.fill: parent
            onClicked: {
                textField.remove(textField.text.length-1,textField.text.length)

            }
            onPressed: image11.visible=true
            onReleased: image11.visible=false

            Image {
                id: image11
                x: 0
                y: 0
                width: 126
                height: 52
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }

        }
    }
    Image {
        id: cancel
        source: "images/cancel.png"
        x: 301
        y: 74
        opacity: 1

        MouseArea {
            id: mouseArea13
            anchors.fill: parent

            onPressed: image13.visible=true
            onReleased: image13.visible=false
            onClicked: {
                 textField.text=""
                tast1.visible=false
            }

            Image {
                id: image13
                anchors.fill: parent
                opacity: 0.7
                scale: 1
                visible: false
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: enter
        source: "images/enter.png"
        x: 301
        y: 147
        opacity: 1


        MouseArea {
            id: mouseArea14
            anchors.fill: parent
            onClicked:{

                switch (tast1.caller_name)
                {
                 case "Alarm Shallow":
                     textField2.text=textField.text+" m";
                     tast1.alarm_value=textField.text;
                     break;
                 case "Draft Fwd":
                      textField1.text=textField.text+" m";
                     tast1.draft_value=textField.text;
                     break;
                 case "TVG Fwd":
                     if(textField.text>0 && textField.text<=100)
                     {
                        textField3.text=textField.text+" %";
                        tast1.tvg_value=textField.text;
                     }
                     else
                     {
                         textField3.text="Error!"
                     }
                }

                   console.log(tast1.alarm_value+tast1.draft_value);

                //tastNUM_rez=textField.text
                textField.text=""
                tast1.visible=false
            }

            onPressed: image14.visible=true
            onReleased: image14.visible=false

            Image {
                id: image14
                opacity: 0.7
                scale: 1
                visible: false
                anchors.fill: parent
                source: "images/hover.png"
            }
        }
    }
    Image {
        id: abc
        source: "images/abc.png"
        x: 301
        y: 220
        opacity: 1

        MouseArea {
            id: mouseArea15
            anchors.fill: parent


            onPressed: image15.visible=true
            onReleased: image15.visible=false

            Image {
                id: image15
                opacity: 0.7
                scale: 1
                visible: false
                anchors.fill: parent
                source: "images/hover.png"
            }
        }
    }


}
