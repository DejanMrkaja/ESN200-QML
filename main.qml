
import QtQuick 2.1
  import QtQuick.Layouts 1.0
  import QtQuick.Controls 1.0
  import QtDataVisualization 1.2
  import "."

  Item {
      id: mainView
      width: 800
      height: 480
      smooth: true
      enabled: true


      Loader{
          id: loader
          source: "Sonar.qml"
      }

      function loadQML(source)
      {
          loader.source = source;

      }


      Graph{
          id:graf
          x: 16
          y: 49
          width: 583
          height:367
          sampleCache: 24
          smooth: false
          enabled: false
          z: 0
          visible: true
      }

    /*  Sonar{
          id:sonar2
          visible: true
          width: parent.width
          height:parent.height
          z: 1
      }*/



  }
