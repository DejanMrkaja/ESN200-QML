import QtQuick 2.2
import QtQuick.Controls 2.2
Item {
    width:339
    height:237


    property var numpad_res:""




    property var caller_name:""

    property var alarm_shallow:""
    property var draft_fwd:""


    property double alarm_value:0
    property double draft_value:0
    property double tvg_value:0


    function addfromKeyboard(text)
    {
        numpad_result.text=numpad_result.text+text
    }


    TextField {
        id: numpad_result
        x: 30
        y: 10
        width: 280
        height: 34
        text: numpad_res
        z: 1
        font.pointSize: 15
        horizontalAlignment: Text.AlignHCenter
        background.visible: false
        color: "black"

    }

    MouseArea {
        id: mouseArea_Enter
        x: 228
        y: 144
        width: 86
        height: 40

        onClicked:{


            switch (numpad.caller_name)
            {
            case "Alarm Shallow":
                alarm_shallow_value=numpad_result.text*1;

                break;
            case "Draft Fwd":
                draft_fwd_value=numpad_result.text*1;

                break;
            case "TVG Fwd":

                tvg_fwd_value=numpad_result.text*1;
                break;
            case "Alert Type":
                alert_type_value=numpad_result.text*1;
                break;
            case "Alert Deep":
                alert_deep_value=numpad_result.text;
                break;
            case "Escalation Time":
                escalation_time_value=numpad_result.text
                break;
            case "Alarm Shallow ID":
                alarm_shallow_ID_value=numpad_result.text
                break;
            case "Alert/Warning Deep ID":
                alert_deep_ID_value=numpad_result.text
                break;
            case "Alert/Warning System ID":
                alert_system_ID_value=numpad_result.text
                break;
            case "Warning Power Fail":
                alarm_power_failure_ID_value=numpad_result.text
                break;
            case "Alarm SFI":
                alarm_SFI_value=numpad_result.text
                break;

            }

            numpad_result.text=""
            numpad_res=""
            numpad.visible=false

        }


        onPressed: {


            hover_tast_num.x=mouseArea_Enter.x
            hover_tast_num.y=mouseArea_Enter.y
            hover_tast_num.visible=true;
        }
        onReleased: hover_tast_num.visible=false

    }


    MouseArea {
        id: mouseArea_1
        x: 24
        y: 54
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"1"
        onPressed: {


            hover_number.x=mouseArea_1.x
            hover_number.y=mouseArea_1.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_2
        x: 92
        y: 54
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"2"
        onPressed: {


            hover_number.x=mouseArea_2.x
            hover_number.y=mouseArea_2.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }



    MouseArea {
        id: mouseArea_3
        x: 160
        y: 54
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"3"
        onPressed: {


            hover_number.x=mouseArea_3.x
            hover_number.y=mouseArea_3.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_4
        x: 24
        y: 99
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"4"
        onPressed: {


            hover_number.x=mouseArea_4.x
            hover_number.y=mouseArea_4.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_5
        x: 92
        y: 99
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"5"
        onPressed: {


            hover_number.x=mouseArea_5.x
            hover_number.y=mouseArea_5.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_6
        x: 160
        y: 99
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"6"
        onPressed: {


            hover_number.x=mouseArea_6.x
            hover_number.y=mouseArea_6.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_7
        x: 24
        y: 144
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"7"
        onPressed: {


            hover_number.x=mouseArea_7.x
            hover_number.y=mouseArea_7.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_8
        x: 92
        y: 144
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"8"
        onPressed: {


            hover_number.x=mouseArea_8.x
            hover_number.y=mouseArea_8.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_9
        x: 160
        y: 144
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"9"
        onPressed: {


            hover_number.x=mouseArea_9.x
            hover_number.y=mouseArea_9.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_line
        x: 24
        y: 189
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"-"
        onPressed: {


            hover_number.x=mouseArea_line.x
            hover_number.y=mouseArea_line.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_0
        x: 92
        y: 189
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"0"
        onPressed: {


            hover_number.x=mouseArea_0.x
            hover_number.y=mouseArea_0.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_point
        x: 160
        y: 189
        width: 54
        height: 40
        onClicked: numpad_result.text=numpad_result.text+"."
        onPressed: {


            hover_number.x=mouseArea_point.x
            hover_number.y=mouseArea_point.y
            hover_number.visible=true;
        }
        onReleased: hover_number.visible=false
    }


    MouseArea {
        id: mouseArea_backSpace
        x: 228
        y: 54
        width: 86
        height: 40
        onClicked: numpad_result.remove(numpad_result.text.length-1,numpad_result.text.length)
        onPressed: {


            hover_tast_num.x=mouseArea_backSpace.x
            hover_tast_num.y=mouseArea_backSpace.y
            hover_tast_num.visible=true;
        }
        onReleased: hover_tast_num.visible=false
    }


    MouseArea {
        id: mouseArea_Cancel
        x: 228
        y: 99
        width: 86
        height: 40
        onClicked:{

            numpad_result.text=""
            numpad.visible=false
        }
        onPressed: {


            hover_tast_num.x=mouseArea_Cancel.x
            hover_tast_num.y=mouseArea_Cancel.y
            hover_tast_num.visible=true;
        }
        onReleased: hover_tast_num.visible=false
    }



    MouseArea {
        id: mouseArea_ABC
        x: 228
        y: 189
        width: 86
        height: 40
        onClicked:{


            keyboard1.caller_name=caller_name
           // keyboard1.keyboard_res=numpad_result.text
            keyboard1.addfromNumpad(numpad_result.text)
            numpad_result.text=""
            numpad.visible=false
            keyboard1.visible=true
        }

        onPressed: {


            hover_tast_num.x=mouseArea_ABC.x
            hover_tast_num.y=mouseArea_ABC.y
            hover_tast_num.visible=true;
        }
        onReleased: hover_tast_num.visible=false
    }







    Image {
        id: hover_number
        source: "images/hover_number.png"
        x: 24
        y: 54
        visible: false
        opacity: 1
    }

    Image {
        id: hover_tast_num
        source: "images/hover_tast_num.png"
        x: 227
        y: 55
        height: 40
        visible: false
        opacity: 1
    }

    Image {
        id: num_pad
        source: "images/num_pad.png"
        x: 0
        y: 0
        opacity: 1
    }
}
