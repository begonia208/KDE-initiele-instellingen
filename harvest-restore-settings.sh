#!/bin/bash

# leegmaken
       read -p "clear previously backuped folder system to make an new backup? j/n " -n 1 -r
       echo    # (optional) move to a new line
       if [[ $REPLY =~ ^[YyJj]$ ]]
       then
          rm -r conf/
       fi
read -r -p "press Enter to continue"

mkdir extra/
mkdir -p conf/apps/audacious/Skins/
mkdir conf/apps/desktopfiles/
mkdir -p conf/apps/dolphin/ServiceMenus/
mkdir conf/apps/k3b/
mkdir conf/apps/kickoff/
mkdir conf/apps/konsole/
mkdir conf/apps/krusader/
mkdir -p conf/apps/kde/plasma/

mkdir -p conf/artwork/aurorae/
mkdir conf/artwork/color-schemes/

mkdir conf/config/

# harvesting

cd ~/ || exit
tar -cvf config.tar  .config/ 
zstd --ultra -22 config.tar
rm config.tar
cd -
mv ~/config.tar.zst ./
mv config.tar.zst conf/config/


# audacious
cp -r ~/.local/share/audacious/Skins/* conf/apps/audacious/Skins/

# kickoff favorites
cd ~/.local/share/kactivitymanagerd/ || exit
tar -cvf kickoff.tar  ./* 
zstd --ultra -22 kickoff.tar
rm kickoff.tar
cd -
mv ~/.local/share/kactivitymanagerd/kickoff.tar.zst ./
mv kickoff.tar.zst conf/apps/kickoff/

# dolphin
cp ~/.local/share/dolphin/dolphinstaterc conf/apps/dolphin/
# cp ~/.config/session/dolphin_dolphin_dolphin conf/apps/dolphin/
cp ~/.local/share/dolphin/view_properties/global/.directory conf/apps/dolphin/directory
cp -r ~/.local/share/kservices5/ServiceMenus/* conf/apps/dolphin/ServiceMenus/
cp ~/.local/share/kxmlgui5/dolphin/dolphinui.rc conf/apps/dolphin/

# konsole
cp -r ~/.local/share/konsole/* conf/apps/konsole/

# krusader
cp -r ~/.local/share/krusader/* conf/apps/krusader/

# k3b
cp -r ~/.local/share/k3b/* conf/apps/k3b/

# desktopfiles
cp -r ~/.local/share/applications/* conf/apps/desktopfiles/


# color-schemes
cp -r ~/.local/share/color-schemes/* conf/artwork/color-schemes/

# aurorae themes
cp -r ~/.local/share/aurorae/themes/* conf/artwork/aurorae/

# iconen
        read -p "backup custom icons? j/n " -n 1 -r
        echo    # (optional) move to a new line
            if [[ $REPLY =~ ^[YyJj]$ ]]
            then
            cd ~/.local/share/icons/ || exit
            tar -cvf icons.tar  ./* 
            zstd --ultra -22 icons.tar
            rm icons.tar
            cd -
            mv ~/.local/share/icons/icons.tar.zst ./
            mv icons.tar.zst extra/
            fi
            
# plasma            
cp -r ~/.local/share/plasma/* conf/apps/kde/plasma/

# desktopfiles
cp -r ~/.local/share/applications/* conf/apps/desktopfiles/
