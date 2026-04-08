/*
    SPDX-FileCopyrightText: 2012 Martin Gräßlin <mgraesslin@kde.org>

    SPDX-License-Identifier: GPL-2.0-or-later
*/
import QtQuick
import Qt5Compat.GraphicalEffects
import org.kde.kwin.decoration

DecorationButton {
  id: root

  property real size
  property color mainColor: "#4D23CF"
  width: size
  height: size

  readonly property var filenameMap: ({
    [DecorationOptions.DecorationButtonMenu]: "menu",
    [DecorationOptions.DecorationButtonApplicationMenu]: "menu",
    [DecorationOptions.DecorationButtonOnAllDesktops]: "alldesktops",
    [DecorationOptions.DecorationButtonQuickHelp]: "help",
    [DecorationOptions.DecorationButtonMinimize]: "minimize",
    // [DecorationOptions.DecorationButtonMaximizeRestore]: "",
    [DecorationOptions.DecorationButtonClose]: "close",
    [DecorationOptions.DecorationButtonKeepAbove]: "keepabove",
    [DecorationOptions.DecorationButtonKeepBelow]: "keepbelow",
    [DecorationOptions.DecorationButtonShade]: "shade",
    [DecorationOptions.DecorationButtonResize]: "resize",
  })

  Item {
    property string source: {
      const prefix = "../images/";
      let filename = filenameMap[root.buttonType];
      if (!filename) {
        if (root.buttonType !== DecorationOptions.DecorationButtonMaximizeRestore) {
          return "";
        }
        filename = decoration.client.maximized ? "restore" : "maximize";
      }

      return prefix + filename + ".svgz";
    }
    anchors.fill: parent
    Image {
      id: image
      antialiasing: false
      // smooth: false
      anchors.fill: parent
      source: parent.source
      sourceSize: Qt.size(root.size, root.size)
    }

    ColorOverlay {
      anchors.fill: image
      source: image
      enabled: root.hovered || root.pressed
      color: {
        if (root.pressed) {
          return "#000000";
        } else if (root.hovered) {
          return "darkred";
        }
        return root.mainColor;
      }
      cached: true
    }
  }
}
