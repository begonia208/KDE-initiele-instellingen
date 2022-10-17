#!/bin/bash
#
#
clear
echo
read -rsp $'Gebruik je een (Logitech) toetsenbord en muis zonder draad? 
Steek de micro-ontvangers in een usb-hub. 

Tien cm. weg van de computer (in een hub bijv.) dan beweegt de muis
vloeiend en doet het toetsenbord precies wat je wilt. 

DRUK SPATIEBALK\n' -n 1 key
#
echo
    #    killall latte-dock
    #
    # mappen leeg?
        read -p "Alles leeg? (advies: ja) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
        rm -rv ~/.local/share/plasma/*
        rm -rv ~/.local/share/aurorae/themes/*
        rm -rv ~/.local/share/color-schemes/*
        rm -v ~/.congig/kdeglobals
        rm -v ~/.config/ksmserverrc
        rm -v ~/.config/katerc
        rm -v ~/.config/kwinrc
        rm -v ~/.config/powermanagementprofilesrc
        rm -v ~/.config/discoverrc
        rm -v ~/.config/kscreenlockerrc
        # rm -v ~/.config/kcm_touchpad.notifyrc
        rm -v ~/.config/gwenviewrc
        rm -v ~/.config/ksplashrc
        rm -v ~/.config/lightlyrc
        rm -v ~/.config/mimeapps.list
        rm -v ~/.config/spectaclerc
        rm -v ~/.config/systemsettingsrc
        rm -v ~/.config/plasmanotifyrc
        rm -v ~/.config/touchpadrc
        fi
#
echo
#
    # eerste keer op deze computer
    #           
        read -p "Belangrijke programma-instellingen? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
        #
        #
        echo
        #
            # libreoffice registrymodifications
                read -p "libreoffice registrymodifications (wordt niet automatisch gewist)? (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir -p ~/.config/libreoffice/4/user/template/
                    mkdir -p ~/.config/libreofficedev/4/user/template/
                    cp conf/apps/lo/registrymodifications.xcu ~/.config/libreoffice/4/user/
                    cp conf/apps/lo/registrymodifications.xcu ~/.config/libreofficedev/4/user/
                    cp conf/apps/lo/templates/* ~/.config/libreoffice/4/user/template/
                    cp conf/apps/lo/templates/* ~/.config/libreofficedev/4/user/template/
                fi
        #
        echo
        #
            # Audacious
                read -p "Audacious - skins - regelen (wordt niet automatisch gewist)? (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir -p  ~/.local/share/audacious/Skins/
                    cp -r conf/apps/audacious/Skins/* -C ~/.local/share/audacious/Skins/
                    mkdir ~/.config/audacious/
                    cp conf/apps/audacious/* ~/.config/audacious/
                fi
        #
        echo
        # 
            # kickoff favorieten
                read -p "P's favorieten in het applicatie-menu (wordt niet automatisch gewist)? (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -r ~/.local/share/kactivitymanagerd/*
                    cp -r conf/apps/kickoff/* ~/.local/share/kactivitymanagerd/
                fi
        #
        echo
        #
            # desktopachtergronden op thuismachine
                read -p "koppelen desktopachtergronden derest (wordt niet automatisch gewist)? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    ln -s ~/Nextcloud/derest/installatie/scripts/prog-install/wallpapers/ ~/.local/share/
                fi
        #
        echo
        #
            # kmail
                read -p "Kmail netjes regelen (wordt niet automatisch gewist)? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                # kmail "header-theme"
                rm -rv ~/.local/share/messageviewer/themes/*
                mkdir -p ~/.local/share/messageviewer/themes/
                tar -xf extra/kmail/material-reloaded.tar.gz -C ~/.local/share/messageviewer/themes
                cp extra/kmail/kmail2rc ~/.config/
                cp extra/kmail/emaildefaults ~/.config/
                fi
        #
        echo
        #
            # falkon profiel P
                read -p "falkon-profiel P (wordt niet automatisch gewist)? (wanneer je niet P bent: nee) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -r ~/.config/falkon/
                    tar -xf extra/falkon.tar.gz -C ~/.config/
                fi
        #
        echo
        #
            # Nextcloud client inrichten
            echo
                read -p "Nextcloud P? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    nextcloud & disown
                    killall nextcloud
                    nextcloud & disown
                    clear
                    echo
                    echo   kopieer het nextcloud desktop bestand naar ~/.config/autostart
                    echo
                    echo   invullen in Nextcloud-client: documenten.mijncloudoffice.nl
                    echo
                    echo   webadres: https://documenten.mijncloudoffice.nl/login
                    echo
                    echo   gebruikersnaam: pieterkristensen@gmail.com
                    echo
                    echo   ww.browser: fUEYGn3a9z48dwE?
                    echo
                    echo
                    # cp conf/apps/com.nextcloud.desktopclient.nextcloud.desktop ~/.config/autostart/
                fi
        #
        echo
        #
                read -p "Dolphin strippen? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm ~/.config/dolphinrc
                    rm ~/.local/share/dolphin/dolphinstaterc
                    rm ~/.config/session/dolphin_dolphin_dolphin
                    rm ~/.local/share/user-places.xbel
                    rm ~/.local/share/dolphin/view_properties/global/.directory
                    rm -rv ~/.local/share/kservices5/ServiceMenus/*
                    rm ~/.local/share/kxmlgui5/dolphin/*
                fi
        #
        echo
        #
            # Dolphin opknappen
                read -p "Dolphin uiterlijk tweaken? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                # /.config/dolphinrc  
                    rm ~/.config/dolphinrc
                    cp conf/rc/dolphinrc ~/.config/

                # /.local/share/dolphin/dolphinstaterc
                    mkdir ~/.local/share/dolphin/
                    rm ~/.local/share/dolphin/dolphinstaterc
                    cp conf/apps/dolphin/dolphinstaterc ~/.local/share/dolphin/
                 
                # /.config/session/dolphin_dolphin_dolphin 
                    rm ~/.config/session/dolphin_dolphin_dolphin
                    mkdir ~/.config/session/
                    cp conf/apps/dolphin/dolphin_dolphin_dolphin ~/.config/session/
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
            # Konsole opknappen
                read -p "Konsole tweaken? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -rv ~/.local/share/konsole/*
                    cp -r conf/apps/konsole/* ~/.local/share/konsole/
                    rm -v ~/.config/konsolerc
                    cp cp conf/rc/konsolerc ~/.config
                fi
        #
        echo
        #
            # "finishing touch"
                read -p "Echt afmaken - snapmappen verborgen, krusader en nog wat (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                cp conf/rc/kontactrc ~/.config/
                cp conf/rc/korganizerrc ~/.config
                mkdir -p ~/.config/GIMP/2.10/
                cp conf/rc/gimprc ~/.config/GIMP/2.10/
            # snap-mappen verbergen
                touch ~/.hidden
                echo 'lost+found' >> ~/.hidden
                echo 'snap' >> ~/.hidden
                touch ~/Downloads/.hidden
                echo 'firefox.tmp' >> ~/Downloads/.hidden
            # krusader
                rm -r ~/.local/share/krusader/
                cp -r conf/apps/krusader/* ~/.local/share/
                cp conf/rc/krusaderrc ~/.config/
                sed -i "s/gebruiker/$USER/g" ~/.config/krusaderrc
            # k3b
                rm -r ~/.local/share/k3b/
                mkdir ~/.local/share/k3b/
                cp -r conf/apps/k3b/* ~/.local/share/k3b/
            # SpeedCrunch
                mkdir ~/.config/SpeedCrunch/
                cp conf/apps/SpeedCrunch/SpeedCrunch.ini ~/.config/SpeedCrunch/
                fi
                fi
#
echo
#
    # iconen weghalen en terugzetten
        read -p "iconen? j/n" -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
               
        # iconen weghalen
            read -p "eerst oude weghalen? j/n" -n 1 -r
            echo    # (optional) move to a new line
            if [[ $REPLY =~ ^[YyJj]$ ]]
            then
                rm -r ~/.local/share/icons/*
                clear
            fi
        # iconen terugzetten
            read -p "nieuwe iconen erin? j/n " -n 1 -r
            echo    # (optional) move to a new line
            if [[ $REPLY =~ ^[YyJj]$ ]]
            then
                mkdir ~/.local/share/icons
                tar -xvf extra/icons.tar.gz -C ~/.local/share/icons/
                # tar -xf conf/artwork/icons.tar.xz -C ~/.local/share/icons/
                # rm conf/artwork/icons.tar
                # ook: suru-plus https://github.com/gusbemacbe/suru-plus
            fi
        fi
#
echo
#
    # en terugzetten
        read -p "alle instellingen weer terugzetten? j/n (advies: ja) " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            #
            # klein spul
                cp conf/desktop-user/rc/ ~/.config/
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
                cp conf/artwork/aurorae/*  ~/.local/share/aurorae/themes/
            #
            # plasma
                mkdir -p ~/.local/share/plasma/
                cp -r conf/apps/kde/plasma/* ~/.local/share/plasma/
            #
            # globaal thema Vesuvius
                    read -p "Globaal thema Vesuvius toepassen? j/n " -n 1 -r
                    echo    # (optional) move to a new line
                    if [[ $REPLY =~ ^[YyJj]$ ]]
                    then
                        lookandfeeltool -a Vesuvius
                    fi
        fi
