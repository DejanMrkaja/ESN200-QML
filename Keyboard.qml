import QtQuick 2.2
import QtQuick.Controls 2.2

Item {


    width: 618
    height: 233
    visible: true
    z:3

    property alias hover_enter: hover_enter


    property var caller_name
    property var keyboard_res:numpad.numpad_res


    function addfromNumpad(text)
    {
        keyboard_result.text=keyboard_result.text+text
    }


    Image {
        id: keyboard
        source: "images/keyboard.png"
        x: 0
        y: 0
        opacity: 1




        MouseArea {
            id: enter
            x: 519
            y: 150
            width: 80
            height: 38

            onPressed: {

                hover_enter.visible=true;
                hover_enter.x=enter.x
                hover_enter.y=enter.y
            }
            onReleased: hover_enter.visible=false

            onClicked: {

                switch(caller_name)
                {
                case "Alarm Shallow":
                    alarm_shallow_value=keyboard_result.text*1;
                    break;
                case "Alert Deep":
                    alert_deep_value=keyboard_result.text;
                    break;
                case "Alert Type":
                    alert_type_value=keyboard_result.text;
                    break;
                case "Escalation Time":
                    escalation_time_value=keyboard_result.text
                    break;
                case "Alarm Shallow ID":
                    alarm_shallow_ID_value=keyboard_result.text
                    break;
                case "Alert/Warning Deep ID":
                    alert_deep_ID_value=keyboard_result.text
                    break;
                case "Alert/Warning System ID":
                    alert_system_ID_value=keyboard_result.text
                    break;
                case "Warning Power Fail":
                    alarm_power_failure_ID_value=keyboard_result.text
                    break;
                case "Alarm SFI":
                    alarm_SFI_value=keyboard_result.text
                    break;



                }
                keyboard_result.text=""
                keyboard_res=""
                key_var=""
                keyboard1.visible=false

            }
        }

        MouseArea {
            id: q
            x: 24
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"Q"
            onPressed: {


                hover_letter.x=q.x
                hover_letter.y=q.y
                hover_letter.visible=true;
            }
            onReleased: hover_letter.visible=false
        }



        MouseArea {
            id: w
            x: 81
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"W"
            onPressed: {


                hover_letter.x=w.x
                hover_letter.y=w.y
                hover_letter.visible=true;
            }
            onReleased: hover_letter.visible=false
        }





        MouseArea {
            id: e
            x: 139
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"E"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=e.x
                hover_letter.y=e.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: r
            x: 196
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"R"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=r.x
                hover_letter.y=r.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: t
            x: 254
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"T"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=t.x
                hover_letter.y=t.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: yy
            x: 311
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"Y"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=yy.x
                hover_letter.y=yy.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: u
            x: 368
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"U"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=u.x
                hover_letter.y=u.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: i
            x: 425
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"I"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=i.x
                hover_letter.y=i.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: o
            x: 483
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"O"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=o.x
                hover_letter.y=o.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: p
            x: 541
            y: 64
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"P"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=p.x
                hover_letter.y=p.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: a
            x: 53
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"A"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=a.x
                hover_letter.y=a.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: s
            x: 110
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"S"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=s.x
                hover_letter.y=s.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: d
            x: 168
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"D"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=d.x
                hover_letter.y=d.y
            }
            onReleased: hover_letter.visible=false

        }




        MouseArea {
            id: f
            x: 226
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"F"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=f.x
                hover_letter.y=f.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: g
            x: 283
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"G"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=g.x
                hover_letter.y=g.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: h
            x: 341
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"H"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=h.x
                hover_letter.y=h.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: j
            x: 398
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"J"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=j.x
                hover_letter.y=j.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: k
            x: 455
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"K"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=k.x
                hover_letter.y=k.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: l
            x: 513
            y: 107
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"L"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=l.x
                hover_letter.y=l.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: z
            x: 111
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"Z"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=z.x
                hover_letter.y=z.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: xx
            x: 168
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"X"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=xx.x
                hover_letter.y=xx.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: c
            x: 226
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"C"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=c.x
                hover_letter.y=c.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: v
            x: 283
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"V"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=v.x
                hover_letter.y=v.y
            }
            onReleased: hover_letter.visible=false
        }




        MouseArea {
            id: b
            x: 341
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"B"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=b.x
                hover_letter.y=b.y
            }
            onReleased: hover_letter.visible=false
        }






        MouseArea {
            id: n
            x: 398
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"N"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=n.x
                hover_letter.y=n.y
            }
            onReleased: hover_letter.visible=false
        }







        MouseArea {
            id: m
            x: 455
            y: 150
            width: 53
            height: 37
            onClicked: keyboard_result.text=keyboard_result.text+"M"
            onPressed: {

                hover_letter.visible=true;
                hover_letter.x=m.x
                hover_letter.y=m.y
            }
            onReleased: hover_letter.visible=false
        }






        MouseArea {
            id: mouseArea4
            x: 483
            y: 195
            width: 116
            height: 36
        }



        TextField {
            id: keyboard_result
            x: 27
            y: 17
            width: 479
            height: 37
            text: keyboard_result.text
            opacity: 0.9
            font.pointSize: 15
            horizontalAlignment: Text.AlignHCenter
            background.visible: false
            color: "black"
        }



        Image {
            id: hover_space
            source: "images/hover_space.png"
            x: 140
            y: 195
            visible: false
            opacity: 1
        }



        Image {
            id: hover_123
            source: "images/hover_123.png"
            x: 25
            y: 195
            visible: false
            opacity: 1
        }



        Image {
            id: hover_cancel
            source: "images/hover_cancel.png"
            x: 484
            y: 195
            visible: false
            opacity: 1
        }



        Image {
            id: hover_shift
            source: "images/hover_shift.png"
            x: 25
            y: 152
            visible: false
            opacity: 1
        }



        Image {
            id: hover_back
            source: "images/hover_back.png"
            x: 519
            y: 18
            visible: false
            opacity: 1
        }



        Image {
            id: hover_enter
            source: "images/hover_enter.png"
            x: 519
            y: 150
            visible: false
            opacity: 1
        }



        Image {
            id: hover_letter
            source: "images/hover_letter.png"
            x: 24
            y: 64
            visible: false
            opacity: 1
        }



        MouseArea {
            id: cancel
            x: 485
            y: 194
            width: 114
            height: 37
            //onClicked: keyboard_result.text=keyboard_result.text+"J"
            onPressed: {

                hover_cancel.visible=true;
                hover_cancel.x=cancel.x
                hover_cancel.y=cancel.y
            }
            onReleased: {

                hover_cancel.visible=false
                keyboard_result.text=""
                keyboard1.visible=false
            }
        }



        MouseArea {
            id: shift
            x: 25
            y: 151
            width: 76
            height: 35
            //onClicked: keyboard_result.text=keyboard_result.text+"J"
            onPressed: {

                hover_shift.visible=true;
                hover_shift.x=shift.x
                hover_shift.y=shift.y
            }
            onReleased: hover_shift.visible=false
        }



        MouseArea {
            id: m123
            x: 25
            y: 195
            width: 109
            height: 35
            onClicked:{

                numpad.caller_name=caller_name
                //numpad.numpad_res=keyboard_result.text
                numpad.addfromKeyboard(keyboard_result.text)
                keyboard_result.text=""
                keyboard1.visible=false
                numpad.visible=true

            }
            onPressed: {

                hover_123.visible=true;
                hover_123.x=m123.x
                hover_123.y=m123.y
            }
            onReleased: hover_123.visible=false
        }





        MouseArea {
            id: back
            x: 519
            y: 18
            width: 80
            height: 38
            onClicked: keyboard_result.remove(keyboard_result.text.length-1,keyboard_result.text.length)
            onPressed: {

                hover_back.visible=true;
                hover_back.x=back.x
                hover_back.y=back.y
            }
            onReleased: hover_back.visible=false
        }


        MouseArea {
            id: space
            x: 139
            y: 195
            width: 340
            height: 35
            onClicked: keyboard_result.text=keyboard_result.text+" "
            onPressed: {

                hover_space.visible=true;
                hover_space.x=space.x
                hover_space.y=space.y
            }
            onReleased: hover_space.visible=false
        }

    }

}


