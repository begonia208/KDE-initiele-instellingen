#!/bin/bash

# harvesting

cp ~/.config/* Plasma/desktop-user/conf/rc/
mkdir -p conf/apps/audacious/Skins/
mkdir conf/apps/krusader/
mkdir conf/apps/dolphin/
mkdir conf/apps/kde/
mkdir conf/apps/kickoff/
mkdir conf/apps/kmail/
mkdir conf/apps/SpeedCrunch/
mkdir conf/apps/konsole/
mkdir -p conf/apps/lo/templates/
mkdir -p conf/apps/kickoff/
mkdir conf/apps/konsole

mkdir -p conf/artwork/plasma-layout/knutselcomp/ubuntu-look/
mkdir conf/artwork/plasma-layout/knutselcomp/vesuvius/
mkdir conf/artwork/plasma-layout/knutselcomp/standardconf/
mkdir conf/artwork/color-schemes/
mkdir conf/artwork/aurorae/

mkdir -p conf/artwork/plasma-layout/surface/ubuntu-look/
mkdir conf/artwork/plasma-layout/surface/vesuvius/
mkdir conf/artwork/plasma-layout/surface/standardconf/

mkdir conf/rc/

# harvesting

# alle rc's
cp ~/.config/* conf/rc/

# audacious
cp ~/.config/audacious/config/* conf/apps/audacious/
cp -r ~/.local/share/audacious/Skins/* conf/apps/audacious/Skins/

# kickoff favorieten
cp -r ~/.local/share/kactivitymanagerd/* conf/apps/kickoff/

# lo
cp ~/.config/libreoffice/4/user/template/* conf/apps/lo/templates/
cp ~/.config/libreoffice/4/user/registrymodifications.xcu conf/apps/lo/

# kickoff favorieten
cp -r ~/.local/share/kactivitymanagerd/* conf/apps/kickoff/

# dolphin
cp ~/.local/share/dolphin/dolphinstaterc conf/apps/dolphin/
cp ~/.config/session/dolphin_dolphin_dolphin conf/apps/dolphin/
cp ~/.local/share/dolphin/view_properties/global/.directory conf/apps/dolphin/directory
cp -r ~/.local/share/kservices5/ServiceMenus/* conf/apps/dolphin/directory
cp ~/.local/share/kxmlgui5/dolphin/dolphinui.rc conf/apps/dolphin/

# konsole
cp -r ~/.local/share/konsole/* conf/apps/konsole/

# gimp
cp ~/.config/GIMP/2.10/gimprc conf/rc/

# snap mappen verbergen

# krusader
cp -r ~/.local/share/krusader/* conf/apps/krusader/

# k3b
cp -r ~/.local/share/k3b/* conf/apps/

# SpeedCrunch
cp ~/.config/SpeedCrunch/SpeedCrunch.ini conf/apps/SpeedCrunch/

# iconen
cd ~/.local/share/icons
tar -zcvf icons.tar.gz *
cd -
mv ~/.local/share/icons/icons.tar.gz ./
mv icons.tar.gz conf/artwork/

# color-schemes
cd -r ~/.local/share/color-schemes/* 

# aurorae themes
cp -r ~/.local/share/aurorae/themes/* conf/artwork/aurorae/

# plasma
# iconen
cd ~/.local/share/plasma
tar -zcvf plasma.tar.gz *
cd -
mv ~/.local/share/plasma/plasma.tar.gz ./
mv plasma.tar.gz conf/apps/kde/
