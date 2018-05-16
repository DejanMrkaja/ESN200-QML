
import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0
import QtDataVisualization 1.2
import "."


Item {
      id: mainView
      width: parent.width
      height: parent.height
      z:2


      property int sampleColumns:600 //sampleSlider.value
      property int sampleRows: sampleColumns / 4
      property int sampleCache: 34//24

      onSampleRowsChanged: {
          surfaceSeries.selectedPoint = surfaceSeries.invalidSelectionPosition
          generateData()
      }

      Item {
          id: dataView
         // anchors.bottom: parent.bottom
         // anchors.left: parent.left
        //  anchors.fill: parent
          anchors.centerIn: parent
          width: parent.width*2.5
          height: parent.height*2// - buttonLayout.height


          ColorGradient {
              id: surfaceGradient
              ColorGradientStop { position: 0; color: "#43444a" }
              ColorGradientStop { position: 0.05; color: "#fdfd47" }
              ColorGradientStop { id: middleGradient; position: 0.1; color: "#f0ca0b" }
              ColorGradientStop { position: 0.15; color: "#f0a40b" }
              ColorGradientStop { position: 0.2; color: "#f07d0b" }
              ColorGradientStop { position: 0.3; color: "#ea6c3a" }
              ColorGradientStop { position: 0.35; color: "#eb3822"}
           }


          Surface3D {
              id: surfaceGraph
              width: dataView.width
              height: dataView.height
              anchors.horizontalCenter: parent.horizontalCenter
              anchors.verticalCenter: parent.verticalCenter
                 anchors.fill: parent







              theme:Theme3D {
                  type:Theme3D.ThemePrimaryColors
                    colorStyle:Theme3D.ColorStyleRangeGradient
                    backgroundEnabled: true
                    gridLineColor: "#292b2d"
                    labelTextColor: "white"
                    font.pointSize:30
                    backgroundColor: "#00000000"
                    windowColor: "#292b2d"
                    labelBackgroundColor: "#292b2d"
                    gridEnabled: false








                    baseGradients: [surfaceGradient]


                }


             // shadowQuality: AbstractGraph3D.ShadowQualityNone
              renderingMode: AbstractGraph3D.RenderDirectToBackground


              scene.activeCamera.cameraPreset: Camera3D.CameraPresetDirectlyAbove
              reflection: false
              reflectivity: 0




              orthoProjection:true






              axisX.labelFormat: "%d" //ms
              axisY.labelFormat: "%d" // W
              axisZ.labelFormat: "%d"  //mV



              axisX.min: 0
              axisY.min: 20
              axisZ.min: 40

              axisX.max: 15000//pic_speed_value
              axisY.max: 200
              axisZ.max:8000//range_value*10
              axisX.segmentCount: 6
              axisY.segmentCount: 6
              axisZ.segmentCount: 6

              axisX.subSegmentCount:2
              axisZ.subSegmentCount: 2
              axisY.subSegmentCount: 2
             // measureFps: true

              Surface3DSeries {
                  id: surfaceSeries
                  drawMode: Surface3DSeries.DrawSurface;
                  flatShadingEnabled: true;
                  meshSmooth: true
                  itemLabelFormat: "@xLabel,@yLabel, @zLabel"
                  itemLabelVisible: false
                 // baseColor: "black"



              }

              Component.onCompleted: mainView.generateData()
          }
      }

      Timer {
          id: refreshTimer
          interval: 1300 /// frequencySlider.value
          running: true
          repeat: true
          onTriggered: {

              dataSource.update(surfaceSeries)
          }
      }

     Rectangle {
          width: parent.width
         // height: (flatShadingToggle.height * 2)*5
          //height:parent.height/2
          anchors.left: parent.left
          anchors.top: parent.top
          color:surfaceGraph.theme.backgroundColor
               anchors.fill: parent

          ColumnLayout {
              anchors.fill: parent
              RowLayout {
                  id: sliderLayout
                  anchors.top: parent.top
                  Layout.fillHeight: true
                  Layout.fillWidth: true
                 // Layout.minimumHeight: flatShadingToggle.height
                  spacing: 0
              }

              RowLayout {
                  id: buttonLayout
                  Layout.fillHeight: true
                  Layout.fillWidth: true
                  //Layout.minimumHeight: flatShadingToggle.height
                 anchors.fill: parent
                  spacing: 0

              }
          }

      }

      function generateData() {
          dataSource.generateData(mainView.sampleCache, mainView.sampleRows,
                                  mainView.sampleColumns, surfaceGraph.axisX.min,
                                  surfaceGraph.axisX.max, surfaceGraph.axisY.min,
                                  surfaceGraph.axisY.max, surfaceGraph.axisZ.min,
                                  surfaceGraph.axisZ.max)
      }
  }
