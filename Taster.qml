import QtQuick 2.0
import QtQuick.Controls 2.2
Item {
    id: item1
    width: 184
    height: 64
    Image {
        id: image
        x: 192
        y: 187
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "images/group_1_copy_4.png"

        function decrement(br){

            broj=br

            broj--;
            if(broj>=1){
                broj=broj;
            }
            else{
                broj=1
            }

            return broj

        }

        function increment(br){

             broj=br;
            broj++;
            return broj;
        }

        function opcija()
        {
            var br
            if(broj==0)
            {
                text1.text="OP_1";
                br=0;

            }
            else if(broj==1)
            {
                text1.text="OP_2";
                br=1;

            }
            else
            {
                text1.text="OP_3";
                br=2;
            }


            return br;
        }





        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 45
            height: 59
            onClicked: {

               decrement(opcija)




            }
        }

        MouseArea {
            id: mouseArea1
            x: 141
            y: 0
            width: 39
            height: 59
        }

        Text {
            id: text1
            x: 70
            y: 22
            color: "#f9f8f8"
            text: qsTr("Text")
            font.pixelSize: 20
        }
    }




}
