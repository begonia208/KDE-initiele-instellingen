#!/bin/bash
mkdir -p Plasma/desktop-user/conf/apps/audacious/
mkdir Plasma/desktop-user/conf/apps/deb/
mkdir Plasma/desktop-user/conf/apps/dolphin/
mkdir Plasma/desktop-user/conf/apps/kde/
mkdir Plasma/desktop-user/conf/apps/kickoff/
mkdir Plasma/desktop-user/conf/apps/kmail/
mkdir Plasma/desktop-user/conf/apps/konsole/
mkdir Plasma/desktop-user/conf/apps/krusader/
mkdir Plasma/desktop-user/conf/apps/lo/

mkdir -p Plasma/desktop-user/conf/artwork/plasma-layout/knutselcomp/ubuntu-look/
mkdir Plasma/desktop-user/conf/artwork/plasma-layout/knutselcomp/vesuvius/
mkdir Plasma/desktop-user/conf/artwork/plasma-layout/knutselcomp/standardPlasma/

mkdir -p Plasma/desktop-user/conf/artwork/plasma-layout/surface/ubuntu-look/
mkdir Plasma/desktop-user/conf/artwork/plasma-layout/surface/vesuvius/
mkdir Plasma/desktop-user/conf/artwork/plasma-layout/surface/standardPlasma/

mkdir Plasma/desktop-user/conf/rc/

# harvesting

cp ~/.config/* Plasma/desktop-user/conf/rc/
