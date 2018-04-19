
import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0
import QtDataVisualization 1.2
import "."

  Item {
      id: mainView
      width: parent.width
      height: parent.height


      property int sampleColumns:400 //sampleSlider.value
      property int sampleRows: sampleColumns / 2
      property int sampleCache: 24

      onSampleRowsChanged: {
          surfaceSeries.selectedPoint = surfaceSeries.invalidSelectionPosition
          generateData()
      }

      Item {
          id: dataView
          anchors.bottom: parent.bottom
          width: parent.width
          height: parent.height// - buttonLayout.height


          ColorGradient {
              id: surfaceGradient
              ColorGradientStop { position: 0.05; color: "blue" }
              ColorGradientStop { id: middleGradient; position: 0.1; color: "yellow" }
              ColorGradientStop { position: 0.25; color: "orange" }
              ColorGradientStop { position: 0.3; color: "red" }
              ColorGradientStop { position: 0.35; color: "green" }
              ColorGradientStop { position: 0.4; color: "black"}
           }


          Surface3D {
              id: surfaceGraph
              width: dataView.width*1.2
              height: dataView.height*1.2
              anchors.horizontalCenter: parent.horizontalCenter
              anchors.verticalCenter: parent.verticalCenter



              theme:Theme3D {
                    type: Theme3D.ThemeIsabelle
                    colorStyle: Theme3D.ColorStyleRangeGradient
                    backgroundEnabled: false
                    gridLineColor: "black"
                    labelTextColor: "white"
                    font.pointSize:30





                    baseGradients: [surfaceGradient]


                }


              shadowQuality: AbstractGraph3D.ShadowQualityNone   
              renderingMode: AbstractGraph3D.RenderDirectToBackground
              scene.activeCamera.cameraPreset: Camera3D.CameraPresetDirectlyAbove

              orthoProjection:true




              axisX.labelFormat: "%d ms"
              axisY.labelFormat: "%d W"
              axisZ.labelFormat: "%d mV"









              axisX.min: 0
              axisY.min: 0
              axisZ.min: 0

              axisX.max: 10000
              axisY.max: 500
              axisZ.max:5000

              axisX.segmentCount: 6
              axisY.segmentCount: 6
              axisZ.segmentCount: 6

              axisX.subSegmentCount:2
              axisZ.subSegmentCount: 2
              axisY.subSegmentCount: 2
              measureFps: true

              Surface3DSeries {
                  id: surfaceSeries
                  drawMode: Surface3DSeries.DrawSurface;
                  flatShadingEnabled: false;
                  meshSmooth: true
                  itemLabelFormat: "@xLabel, @zLabel, @yLabel"
                  itemLabelVisible: false




                  baseColor: "black"




              }

              Component.onCompleted: mainView.generateData()
          }
      }

      Timer {
          id: refreshTimer
          interval: 1300 /// frequencySlider.value
          running: true
          repeat: true
          onTriggered: dataSource.update(surfaceSeries)
      }

     Rectangle {
          width: parent.width
          height: (flatShadingToggle.height * 2)*1.7
          anchors.left: parent.left
          anchors.top: parent.top
          color: surfaceGraph.theme.backgroundColor


          ColumnLayout {
              anchors.fill: parent
              RowLayout {
                  id: sliderLayout
                  anchors.top: parent.top
                  Layout.fillHeight: true
                  Layout.fillWidth: true
                  Layout.minimumHeight: flatShadingToggle.height
                  spacing: 0
              }

              RowLayout {
                  id: buttonLayout
                  Layout.fillHeight: true
                  Layout.fillWidth: true
                  Layout.minimumHeight: flatShadingToggle.height
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
