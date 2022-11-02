#!/bin/bash
#
#
clear
   # put .config back
        read -p ".config-folder? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
             rm -rv ~/.config/
             tar -xvf conf/config/config.tar.zst -C ~/
             fi
#
echo
#
    # eerste keer op deze computer
    #           
        read -p "Restore cutomizations of user applications? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
        #
        echo
        #
            # Audacious
                read -p "Audacious skins j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir -p  ~/.local/share/audacious/Skins/
                    cp -r conf/apps/audacious/* ~/.local/share/audacious/
                    cp -r conf/apps/audacious/Skins/ ~/.local/share/audacious/
                fi
        #
        echo
        #
            # kmail
                read -p "Kmail j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                # kmail "header-theme"
                rm -rv ~/.local/share/messageviewer/themes/*
                mkdir -p ~/.local/share/messageviewer/themes/
                tar -xf extra/kmail/material-reloaded.tar.gz -C ~/.local/share/messageviewer/themes
                fi
        #
        echo
        #
             # kickoff favorieten
                read -p "Kickoff favorites j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -r ~/.local/share/kactivitymanagerd/*
                    mkdir -p ~/.local/share/kactivitymanagerd/
                    tar -xvf conf/apps/kickoff/kickoff.tar.zst -C ~/.local/share/kactivitymanagerd/
                fi
        #
        echo
        #
                read -p "strip dolphin? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    # rm ~/.config/dolphinrc
                    rm ~/.local/share/dolphin/dolphinstaterc
                    # rm ~/.config/session/dolphin_dolphin_dolphin
                    rm ~/.local/share/user-places.xbel
                    rm ~/.local/share/dolphin/view_properties/global/.directory
                    rm -rv ~/.local/share/kservices5/ServiceMenus/*
                    rm ~/.local/share/kxmlgui5/dolphin/*
                fi
        #
        echo
        #
            # customize dolphin
                read -p "Dolphin j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                # /.local/share/dolphin/dolphinstaterc
                    mkdir ~/.local/share/dolphin/
                    rm ~/.local/share/dolphin/dolphinstaterc
                    cp conf/apps/dolphin/dolphinstaterc ~/.local/share/dolphin/
                 
                # /.config/session/dolphin_dolphin_dolphin 
                    sed -i "s/pieter/$USER/g" ~/.config/session/dolphin_dolphin_dolphin

                # /.local/share/dolphin/view_properties/global/.directory    
                    mkdir -p  ~/.local/share/dolphin/view_properties/global/
                    rm ~/.local/share/dolphin/view_properties/global/.directory
                    cp conf/apps/dolphin/directory ~/.local/share/dolphin/view_properties/global/.directory
                    
                # /.local/share/kservices5/ServiceMenus/    
                    mkdir -p ~/.local/share/kservices5/ServiceMenus/
                    rm -rv ~/.local/share/kservices5/ServiceMenus/*
                    cp -r conf/apps/dolphin/ServiceMenus/* ~/.local/share/kservices5/ServiceMenus/
                    
                # /.local/share/kxmlgui5/dolphinui.rc    
                    rm ~/.local/share/kxmlgui5/dolphin/*
                    mkdir -p ~/.local/share/kxmlgui5/dolphin/
                    cp conf/apps/dolphin/dolphinui.rc ~/.local/share/kxmlgui5/dolphin/
                    cp conf/apps/dolphin/dolphinui-lightly.rc ~/.local/share/kxmlgui5/dolphin/
                fi
        #
        echo
        #
            # customize Konsole
                read -p "Konsole j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -rv ~/.local/share/konsole/*
                    cp -r conf/apps/konsole/* ~/.local/share/konsole/
                fi
        #
        echo
        #
            # "finishing touch"
                read -p "finishing touch j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
            # snap-mappen verbergen
                touch ~/.hidden
                echo 'lost+found' >> ~/.hidden
                echo 'snap' >> ~/.hidden
                touch ~/Downloads/.hidden
                echo 'firefox.tmp' >> ~/Downloads/.hidden
            # krusader
                rm -r ~/.local/share/krusader/
                cp -r conf/apps/krusader/* ~/.local/share/
                sed -i "s/gebruiker/$USER/g" ~/.config/krusaderrc
            # k3b
                rm -r ~/.local/share/k3b/
                mkdir ~/.local/share/k3b/
                cp -r conf/apps/k3b/* ~/.local/share/k3b/
                fi
                fi
#
echo
#
    # remove and restore customized icons themes
        read -p "back to desktkop wide... icons? j/n" -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
               
        # iconen weghalen
            read -p "first remove current customized icon themes? j/n" -n 1 -r
            echo    # (optional) move to a new line
            if [[ $REPLY =~ ^[YyJj]$ ]]
            then
                rm -r ~/.local/share/icons/*
                clear
            fi
        # iconen terugzetten
            read -p "put in backuped icons? j/n " -n 1 -r
            echo    # (optional) move to a new line
            if [[ $REPLY =~ ^[YyJj]$ ]]
            then
                mkdir ~/.local/share/icons
                tar -xvf extra/icons.tar.zst -C ~/.local/share/icons/
                # ook: suru-plus https://github.com/gusbemacbe/suru-plus
            fi
        fi
#
echo
#
    # en terugzetten
        read -p "global desktop settins j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            #
            # desktopfiles
                cp -r conf/apps/desktopfiles ~/.local/share/applications/
            #
            # kleurenschemas
                mkdir ~/.local/share/color-schemes/
                cp conf/artwork/color-schemes/* ~/.local/share/color-schemes/
            #
            # vensterdecoraties
                mkdir -p ~/.local/share/aurorae/themes/
                cp -r conf/artwork/aurorae/*  ~/.local/share/aurorae/themes/
            #
            # plasma
                mkdir -p ~/.local/share/plasma/
                cp -r conf/apps/kde/plasma/* ~/.local/share/plasma/
            fi

