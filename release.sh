#!/bin/bash

if [ -e build ]; then rm -r build; fi
PROJ=Plasma-Overdose
BUILD=build

rel() {
	DIR=${BUILD}/$1
	mkdir $DIR
	cp -r $(pwd)/$1 ${DIR}/${PROJ}
	cd $DIR
	tar zcf ${PROJ}.tar.gz ${PROJ}
	cd - >/dev/null
}

mkdir build

rel cursors
rel sounds

rel aurorae
cd build/aurorae/${PROJ}
tar zcf ${PROJ}.tar.gz *
mv ${PROJ}.tar.gz ..
cd - >/dev/null

rel colorschemes
cd build/colorschemes
mv ${PROJ}/*.colors .
tar zcf ${PROJ}.tar.gz *.colors
cd - >/dev/null

rel plasma
cd build/plasma/${PROJ}/look-and-feel
tar zcf ${PROJ}.tar.gz ${PROJ}
mv ${PROJ}.tar.gz ../..
cd - >/dev/null
