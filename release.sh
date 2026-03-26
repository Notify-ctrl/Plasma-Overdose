#!/bin/bash

if [ -e build ]; then rm -r build; fi
PROJ=Plasma-Overdose
VER=$(git describe --tags --abbrev=0)
BUILD=build

rel() {
	DIR=${BUILD}/$1
	mkdir $DIR
	cp -r $(pwd)/$1 ${DIR}/${PROJ}
	cd $DIR
	tar zcf ${PROJ}-${VER}.tar.gz ${PROJ}
	cd - >/dev/null
}

mkdir build

rel cursors
rel sounds

rel aurorae
rel wallpapers

rel plasma
cd build/plasma/${PROJ}/look-and-feel
tar zcf ${PROJ}-${VER}.tar.gz ${PROJ}
cd ../desktoptheme
tar zcf ${PROJ}-${VER}.tar.gz ${PROJ}
cd - >/dev/null
