import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: item1
    width: 160
    height: 52
    anchors.verticalCenterOffset: -61
    anchors.horizontalCenterOffset: 5
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter

    property var nameModel:model



    ListView {
        id:list1
        x: 51
        y: 22
        width: 80; height: 26
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
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
            color: "#c0d916"
            text:result
            //anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            z: 0
            font.pixelSize: 20
            font.family: "Arial"
            fontSizeMode: Text.FixedSize

            anchors.left: parent.left

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }



        onCurrentIndexChanged: {

            result=nameModel.get(currentIndex).value;

        }


    }



    MouseArea {
        id: mouseArea_stb1
        x: 0
        y: 8
        width: 39
        height: 26
        anchors.verticalCenter: parent.verticalCenter
        z: 0

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
        onPressed: {

            image2.opacity=0.6
            image2.scale=1.4
        }
        onReleased:
        {
            image2.opacity=1
            image2.scale=1.3
        }


        Image {
            id: image2
            x: 11
            y: 5
            width: 16
            height: 10
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 3
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rotation: 0
            z: 1
            scale: 1.3
            source: "images/up.png"
        }

    }

    MouseArea {
        id: mouseArea_stb2
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 121
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 13
        anchors.top: parent.top
        anchors.topMargin: 13


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

        onPressed: {

            image1.opacity=0.6
            image1.scale=1.4
        }
        onReleased:
        {
            image1.opacity=1
            image1.scale=1.3
        }

        Image {
            id: image1
            x: 9
            y: 22
            width: 16
            height: 10
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: -3
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            z: 1
            rotation: 180
            scale: 1.3
            source: "images/up.png"
        }


    }



}



