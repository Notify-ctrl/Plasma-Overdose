import QtQuick 2.5

Rectangle {
    id: root
    color: "black"

    Image {
        id: content
        source: "images/booting"
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        opacity: 1
    }

    Row {
        id: theDots
        anchors.bottom: content.bottom
        anchors.bottomMargin: 28 / 1080 * content.height
        anchors.left: content.left
        anchors.leftMargin: 690 / 1920 * content.width
        Repeater {
            id: dots
            model: 996
            property int current: 0
            Image {
                source: "images/dots"
                visible: false
            }
        }
    }

    Image {
        id: welcome
        source: "images/welcome"
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        opacity: 0
    }

    property int stage

    onStageChanged: {
        if (stage === 1) {
            loadingAnim.running = true;
        } else if (stage === 4) {
            loadingAnim.running = false;
            content.opacity = 0;
            theDots.visible = false;
            welcome.opacity = 0;
            loadWelcome.running = true;
        }
    }

    SequentialAnimation {
        id: loadingAnim
        loops: Animation.Infinite
        running: false

        PauseAnimation {
            duration: 100
        }

        ScriptAction {
            script: {
                dots.itemAt(dots.current).visible = true;
                dots.current++;
            }
        }
    }

    PropertyAnimation {
        id: loadWelcome
        running: false
        target: welcome
        property: "opacity"
        to: 1
        duration: 600
    }
}
