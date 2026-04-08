import QtQuick
import org.kde.kwin.decoration

// Note: I'm not considering maximized here because original game doesn't either.

Decoration {
  id: root

  property real pixelWidth: 1.5
  property color colorPurple: "#4D23CF"
  property color colorCyan: "#90F4E4"
  property color colorPink: "#F0D1F1"
  property color colorMagenta: "#EAA0E8"
  property color colorWhite: "#FFF8FF"
  property color colorGray: "#E3E3E3"
  readonly property real buttonSize: pixelWidth * 10

  DecorationOptions {
    id: options
    deco: decoration
  }

  Rectangle {
    id: shadow
    visible: !decoration.client.maximized && decoration.client.active
    width: background.width
    height: background.height
    anchors.left: background.left
    anchors.top: background.top
    anchors.leftMargin: root.padding.right
    anchors.topMargin: root.padding.bottom
    color: root.colorPurple
    opacity: 0.3
    z: -1
  }

  Rectangle {
    id: background
    color: decoration.client.active ? root.colorCyan : root.colorGray
    border.width: root.pixelWidth
    border.color: root.colorPurple
    anchors.fill: parent
    anchors.leftMargin: root.padding.left
    anchors.rightMargin: root.padding.right
    anchors.topMargin: root.padding.top
    anchors.bottomMargin: root.padding.bottom

    Rectangle {
      id: bottomRect1
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      anchors.leftMargin: root.pixelWidth * 3
      height: root.pixelWidth * 5.5
      width: root.pixelWidth * 18
      color: decoration.client.active ? root.colorMagenta : root.colorGray
      border.width: root.pixelWidth
      border.color: root.colorPurple
    }

    Row {
      anchors.top: bottomRect1.top
      anchors.left: bottomRect1.right
      anchors.leftMargin: root.pixelWidth
      spacing: root.pixelWidth * 0.5

      Repeater {
        model: 3
        Rectangle {
          height: root.pixelWidth * 3.5
          width: root.pixelWidth * 3.5
          color: "transparent"
          border.width: root.pixelWidth
          border.color: root.colorPurple
        }
      }
    }
  }

  Rectangle {
    id: titleRow
    color: decoration.client.active ? root.colorPink : root.colorGray
    border.width: root.pixelWidth
    border.color: root.colorPurple

    height: root.pixelWidth * 15

    anchors {
      left: background.left
      right: background.right
      top: background.top
      topMargin: 3 * root.pixelWidth
      leftMargin: 3 * root.pixelWidth
      rightMargin: 3 * root.pixelWidth
    }

    ButtonGroup {
      id: leftButtonGroup
      spacing: root.pixelWidth * 2
      explicitSpacer: root.buttonSize
      menuButton: menuButtonComponent
      appMenuButton: appMenuButtonComponent
      minimizeButton: minimizeButtonComponent
      maximizeButton: maximizeButtonComponent
      keepBelowButton: keepBelowButtonComponent
      keepAboveButton: keepAboveButtonComponent
      helpButton: helpButtonComponent
      shadeButton: shadeButtonComponent
      allDesktopsButton: stickyButtonComponent
      closeButton: closeButtonComponent
      buttons: options.titleButtonsLeft
      anchors {
        top: parent.top
        topMargin: root.pixelWidth * 2.5
        left: parent.left
        leftMargin: root.pixelWidth * 3
      }
    }

    Text {
      id: caption
      textFormat: Text.PlainText
      anchors {
        left: leftButtonGroup.right
        right: rightButtonGroup.left
        leftMargin: root.pixelWidth * 3
        rightMargin: root.pixelWidth * 3
        verticalCenter: parent.verticalCenter
      }
      color: root.colorPurple
      text: decoration.client.caption
      font: options.titleFont
      elide: Text.ElideMiddle
      renderType: Text.NativeRendering
    }

    ButtonGroup {
      id: rightButtonGroup
      spacing: root.pixelWidth * 2
      explicitSpacer: root.buttonSize
      menuButton: menuButtonComponent
      appMenuButton: appMenuButtonComponent
      minimizeButton: minimizeButtonComponent
      maximizeButton: maximizeButtonComponent
      keepBelowButton: keepBelowButtonComponent
      keepAboveButton: keepAboveButtonComponent
      helpButton: helpButtonComponent
      shadeButton: shadeButtonComponent
      allDesktopsButton: stickyButtonComponent
      closeButton: closeButtonComponent
      buttons: options.titleButtonsRight
      anchors {
        top: parent.top
        topMargin: root.pixelWidth * 2.5
        right: parent.right
        rightMargin: root.pixelWidth * 3
      }
    }

    Component.onCompleted: {
      decoration.installTitleItem(this);
    }
  }

  Rectangle {
    id: contentBackground
    color: root.colorWhite
    border.width: root.pixelWidth
    border.color: root.colorPurple
    anchors {
      fill: background
      leftMargin: root.pixelWidth * 3
      rightMargin: root.pixelWidth * 3
      topMargin: root.pixelWidth * 5 + titleRow.height
      bottomMargin: root.pixelWidth * 7
    }
  }

  Component {
    id: maximizeButtonComponent
    PixelButton {
      objectName: "maximizeButton"
      buttonType: DecorationOptions.DecorationButtonMaximizeRestore
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: keepBelowButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonKeepBelow
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: keepAboveButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonKeepAbove
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: helpButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonQuickHelp
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: minimizeButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonMinimize
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: shadeButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonShade
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: stickyButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonOnAllDesktops
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: closeButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonClose
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }
  Component {
    id: menuButtonComponent
    MenuButton {
      width: root.buttonSize
      height: root.buttonSize
    }
  }
  Component {
    id: appMenuButtonComponent
    PixelButton {
      buttonType: DecorationOptions.DecorationButtonApplicationMenu
      size: root.buttonSize
      mainColor: root.colorPurple
    }
  }

  function updatePadding() {
    if (!decoration.client.maximized) {
      padding.setBorders(2 * pixelWidth);
    } else {
      padding.setBorders(0);
    }
  }

  Connections {
    target: decoration.client
    function onMaximizedChanged() {
      root.updatePadding();
    }
  }

  Connections {
    target: decoration
    function onConfigChanged() {
      root.setupBorders();
      root.setupColors();
    }
  }

  function setupBorders() {
    let pw = decoration.readConfig("pixelWidth", 15);
    if (pw) root.pixelWidth = pw / 10;

    borders.setBorders(4 * pixelWidth);
    borders.bottom = 8 * pixelWidth;
    borders.setTitle(titleRow.height + 6 * pixelWidth);
    maximizedBorders.setBorders(4 * pixelWidth);
    maximizedBorders.bottom = 8 * pixelWidth;
    maximizedBorders.setTitle(titleRow.height + 6 * pixelWidth);
    extendedBorders.setBorders(4 * pixelWidth);
    extendedBorders.bottom = 8 * pixelWidth;
    extendedBorders.setTitle(titleRow.height + 6 * pixelWidth);

    updatePadding();
  }

  function setupColors() {
    root.colorPurple = decoration.readConfig("colorPurple", Qt.color("#4D23EF"));
    root.colorCyan = decoration.readConfig("colorCyan", Qt.color("#90F4E4"));
    root.colorPink = decoration.readConfig("colorPink", Qt.color("#F0D1F1"));
    root.colorMagenta = decoration.readConfig("colorMagenta", Qt.color("#EAA0E8"));
    root.colorGray = decoration.readConfig("colorGray", Qt.color("#E3E3E3"));
  }

  Component.onCompleted: {
    setupBorders();
    setupColors();
  }
}
