import QtQuick 2.0

Image {
    id :　root
    source: "images/background.png"
    Image {
        id: wheel
        anchors.centerIn: parent   //微调:anchors.horizontalCenterOffset or with anchors.verticalCenterOffset
        source: "images/pinwheel.png"
        Behavior on rotation {
            NumberAnimation {
                duration: 1000  //单位ms
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: wheel.rotation += 360
        onWidthChanged: print(width)
    }
}

