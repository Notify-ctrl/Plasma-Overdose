#!/bin/bash

if [ -e build ]; then rm -r build; fi
PROJ=Plasma-Overdose
VER=$(git describe --tags --abbrev=0)
BUILD=build

rel() {
	DIR=${BUILD}/$1
  SUBNAME=$2
	mkdir $DIR
	cp -r $(pwd)/$1 ${DIR}/${PROJ}
	cd $DIR
  if [ "0" != "0${SUBNAME}" ]; then
    tar zcf ${PROJ}-${SUBNAME}-${VER}.tar.gz ${PROJ}
  fi
	cd - >/dev/null
}

mkdir build

rel cursors Cursors
rel sounds Sounds
rel kwin KWin-Decorations

rel wallpapers Wallpaper

rel aurorae
cd build/aurorae/${PROJ}
tar zcfh ${PROJ}-Aurorae-${VER}.tar.gz ${PROJ}
tar zcf ${PROJ}-Aurorae-x1.5-${VER}.tar.gz ${PROJ}_x1.5
cd - > /dev/null

rel plasma
cd build/plasma/${PROJ}/look-and-feel
tar zcf ${PROJ}-GlobalTheme-${VER}.tar.gz ${PROJ}
cd ../desktoptheme
tar zcf ${PROJ}-DesktopTheme-${VER}.tar.gz ${PROJ}
cd - >/dev/null
