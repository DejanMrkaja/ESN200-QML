import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.2
import QtDataVisualization 1.2
import "."

Item {
    visible: true
    width: 800
    height: 480







    property var key_var:""

    property real alarm_shallow_value:10
    property real draft_fwd_value:1
    property real tvg_fwd_value:50

    property int gain_fwd_value:1

    property var range_value:page1.range_result
    property var pic_speed_value:page1.pic_speed_result

    //odabrati tip promjenjive u zavisnosti od vrste podataka
    property var alert_deep_value:10
    property string alert_type_value:"123"
    property string escalation_time_value:"345"
    property string alarm_shallow_ID_value:"567"
    property string alert_deep_ID_value:"789"
    property string alert_system_ID_value:"910"
    property string alarm_power_failure_ID_value:"//**"
    property string alarm_SFI_value


    Loader{
        id: loader
        source: "Pocetna.qml"
    }

    function loadQML(source)
    {
        loader.source = source;

    }

    Keyboard{
        id:keyboard1
        x: 190
        y: 238

        z: 3
        visible:false

    }
    NumPad
    {
        id:numpad
        x: 190
        y: 238
        z: 2
        visible: false

    }


    Pocetna{
        id:page1
        z: 1
        visible: false
    }





   Graph{
        id:graph1
        x: 191
        y: 37
        width: 609
        height: 364



        smooth: false
        enabled: false
        z: 0
        visible: true
    }

}
