import QtQuick 2.0




Item {
    id: item1
    width: 180
    height: 59
    anchors.verticalCenterOffset: -61
    anchors.horizontalCenterOffset: 5
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter

    property var rez:""
    property var nameModel:model




    ListView {
        id:list1
        x: 51
        y: 22
        width: 85; height: 26
        cacheBuffer: 500
        highlightRangeMode: ListView.ApplyRange
        highlightFollowsCurrentItem:true
        spacing: 3
        boundsBehavior: Flickable.StopAtBounds
        interactive: false
        z: 1

        model:nameModel


        delegate: Text {
            id:rez
            color: "#ffffff"
            font.pixelSize: 23
            text: name
            font.family: "Arial"
            fontSizeMode: Text.HorizontalFit
            renderType: Text.NativeRendering
            anchors.left: parent.left
            anchors.leftMargin: -58
            anchors.horizontalCenter: parent.horizontalCenter
            elide: Text.ElideMiddle
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }


        onCurrentIndexChanged: {

            console.log(nameModel.get(currentIndex).name);
            //text2.text=nameModel.get(currentIndex).name;
            rez=nameModel.get(currentIndex).name;

        }
    }


    Image {
        id: image
        anchors.fill: parent
        source: img_source


    }

    MouseArea {
        id: mouseArea_stb1
        x: 0
        y: 0
        width: 45
        height: 59
        z: 1


        onClicked: {

            if(list1.currentIndex<=0)
            {
                list1.currentIndex=list1.count-1;

                list1.positionViewAtIndex(list1.currentIndex,list1.End);
            }
            else
            {
                list1.decrementCurrentIndex()
                list1.positionViewAtIndex(list1.currentIndex,list1.Contain);
            }


        }
        onPressed: image_stb2.visible=true
        onReleased: image_stb2.visible=false

        Image {
            id: image_stb2
            x: 1
            y: 3
            width: 43
            height: 54
            z: 2
            rotation: 180
            opacity: 0.7
            source: "images/klik.png"
            visible: false
        }
    }


    MouseArea {
        id: mouseArea_stb2
        x: 141
        y: 0
        width: 39
        height: 59
        onPressed:image_stb1.visible=true

        onReleased: image_stb1.visible=false



        onClicked: {

            if(list1.currentIndex>=6)
            {
                list1.currentIndex=0;

                list1.positionViewAtIndex(list1.currentIndex,list1.Beginning);
            }
            else
            {
                list1.incrementCurrentIndex();
                list1.positionViewAtIndex(list1.currentIndex,list1.Contain);
            }


        }

        Image {
            id: image_stb1
            x: 0
            y: 2
            width: 37
            height: 55
            z: 2
            visible: false
            opacity: 0.7
            source: "images/klik.png"
        }


    }


}



