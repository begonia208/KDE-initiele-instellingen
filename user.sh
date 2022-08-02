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
        killall latte-dock
    #
    # mappen leeg?
        read -p "Alles leeg? (advies: ja) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
        rm -rv ~/.local/share/plasma/*
        rm -rv ~/.local/share/aurorae/themes/*
        rm -rv ~/.local/share/color-schemes/*
        rm -rv ~/.local/share/k3b
        rm -rv ~/.local/share/krusader/*
        rm -rv ~/.local/share/messageviewer/themes/*
        rm -rv ~/.config/SpeedCrunch
        rm -v ~/.congig/kdeglobals
        rm -v ~/.config/ksmserverrc
        rm -v ~/.config/katerc
        rm -v ~/.config/kwinrc
        rm -v ~/.config/powermanagementprofilesrc
        rm -v ~/.config/discoverrc
        rm -v ~/.config/kscreenlockerrc
        rm -v ~/.config/kcm_touchpad.notifyrc
        rm -v ~/.config/gwenviewrc
        rm -v ~/.config/krusaderrc
        rm -v ~/.config/ksplashrc
        rm -v ~/.config/lightlyrc
        rm -v ~/.config/mimeapps.list
        rm -v ~/.config/spectaclerc
        rm -v ~/.config/systemsettingsrc
        rm -v ~/.config/plasmarc
        rm -v ~/.config/plasmanotifyrc
        rm -v ~/.config/touchpadrc
        rm -v ~/.config/emaildefaults
        fi
#
echo
#
    # eerste keer op deze computer
    
            cp conf/apps/dolphin/.hidden ~/
            cp conf/apps/firefox/.firefox-tmp-hidden ~/Downloads/.hidden
            mkdir ~/.local/share/fonts/
            cp conf/rc/krusaderrc ~/.config/
            sed -i "s/gebruiker/$USER/" ~/.config/krusaderrc
            
        read -p "programma-instellingen / eerste keer op deze computer? (bij eerste keer altijd even doorheen gaan) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
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
                    cp conf/apps/lo/standaardp.ott ~/.config/libreoffice/4/user/template/
                    cp conf/apps/lo/standaardp.ott ~/.config/libreofficedev/4/user/template/
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
                    tar -xf conf/apps/audacious/audacious.tar.gz -C ~/.local/share/audacious/Skins/
                    mkdir ~/.config/audacious/
                    cp conf/apps/audacious/audacious-config ~/.config/audacious/config
                fi
        #
        echo
        #
            # kickoff favorieten
                read -p "P's favorieten in het applicatie-menu (wordt niet automatisch gewist)? (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -rv ~/.local/share/kactivitymanagerd
                    tar -xf conf/apps/kickoff/kactivitymanagerd.tar.gz -C ~/.local/share/
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
            # falkon profiel P
                read -p "falkon-profiel P (wordt niet automatisch gewist)? (wanneer je niet P bent: nee) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm -rv ~/.config/falkon/
                    tar -xf conf/apps/falkon.tar.gz -C ~/.config/
                fi
                
                cp conf/rc/kmail2rc ~/.config/
                cp conf/rc/kontactrc ~/.config/
                cp conf/rc/korganizerrc ~/.config
                mkdir -p ~/.config/GIMP/2.10/
                cp conf/rc/gimprc ~/.config/GIMP/2.10/
        #
        echo
        #
            # latte lay-outs
                read -p "Latte layouts aanpakken? j/n" -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                            
            # latte lay-outs wissen
                read -p "layouts van latte wissen? j/n" -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm ~/.config/lattedockrc
                    rm -rv ~/.config/latte/*
                    rm -rv ~/.local/share/latte/indicators
                    clear
                fi
                
            # latte erin
                read -p "layouts van latte erin? j/n" -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir ~/.config/latte/
                    tar -xf conf/apps/latte/latte.tar.gz -C ~/.config/latte/
                    # cp conf/rc/lattedockrc ~/.config/
                    mkdir ~/.config/autostart/
                    cp /usr/share/applications/org.kde.latte-dock.desktop ~/.config/autostart/
                    mkdir -p ~/.local/share/latte/indicators/
                    tar -xf conf/apps/latte/indicators.tar.gz -C ~/.local/share/latte/indicators/
                    rm ~/.config/latte/.multiple-layouts_hidden.layout.latte ~/.config/latte/Extended.layout.latte Standaard.layout.latte ~/.config/latte/Unity.layout.latte
                    clear
                fi                
                
            # latte agenda onpersoonlijk maken
                read -p "latte agenda onpersoonlijk maken? j/n" -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    rm ~/.config/latte/*.layout.latte
                    cp * ~/.config/latte/templates/* ~/.config/latte/
                fi
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
            rm -rv ~/.local/share/icons/*
            clear
        fi
    # iconen terugzetten
        read -p "nieuwe iconen erin? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            mkdir ~/.local/share/icons
            tar -xf conf/artwork/icons.tar.zst -C ~/.local/share/icons/
            # tar -xf conf/artwork/icons.tar.xz -C ~/.local/share/icons/
            # rm conf/artwork/icons.tar
            # ook: suru-plus https://github.com/gusbemacbe/suru-plus
        fi
        fi
#
echo
#
    # artwork *
        read -p "alle instellingen weer terugzetten? j/n (advies: ja) " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            #
            # kleurenschemas
                mkdir ~/.local/share/color-schemes/
                tar -xf conf/artwork/color-schemes.tar.gz -C ~/.local/share/color-schemes/
            #
            # plasma
                mkdir -p ~/.local/share/plasma/
                tar -xf conf/apps/kde/plasma.tar.gz -C ~/.local/share/plasma/
            #
            # kde instellingen
                cp conf/rc/kwinrc ~/.config/
            #
            # vensterdecoraties
                mkdir -p ~/.local/share/aurorae/themes/
                tar -xf conf/artwork/aurorae-themes.tar.gz -C ~/.local/share/aurorae/themes/
            #
            # audacious
                mkdir ~/.config/audacious/
                tar -xf conf/apps/audacious/audacious.tar.gz -C ~/.config/audacious/
            #
            # krusader
                mkdir ~/.local/share/krusader/
                tar -xf conf/apps/krusader/krusader.tar.gz -C ~/.local/share/krusader/
            #
            # kdedefaults
                #rm -r ~/.config/kdedefaults
                #mkdir ~/.config/kdedefaults
                #tar -xf conf/apps/kde/kdedefaults.tar.gz -C ~/.config/kdedefaults/
            #
            # SpeedCrunch
                tar -xf conf/apps/SpeedCrunch.tar.gz -C ~/.config/
            #
            # Opstarten in Uefi instellingen
                mkdir ~/.local/share/applications
                cp conf/apps/uefi-reboot.desktop ~/.local/share/applications/
            #
            # kmail "header-theme" 
                mkdir -p ~/.local/share/messageviewer/themes/
                tar -xf conf/artwork/material-reloaded.tar.gz -C ~/.local/share/messageviewer/themes
            #
            # k3b
                tar -xf conf/apps/k3b.tar.gz -C ~/.local/share/
            #
            # windows-toets opent menu
                kwriteconfig5 --file ~/.config/kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.lattedock,/Latte,org.kde.LatteDock,activateLauncherMenu"
                qdbus org.kde.KWin /KWin reconfigure
            #
            # rest
                cp conf/rc/gwenviewrc ~/.config/
                cp conf/rc/emaildefaults ~/.config/
                cp conf/rc/plasmarc ~/.config/
                cp conf/rc/breezerc ~/.config/
                cp conf/rc/systemsettingsrc ~/.config/
                cp conf/rc/discoverrc ~/.config/
                cp conf/rc/ksmserverrc ~/.config/
                cp conf/rc/touchpadrc ~/.config/
                cp conf/rc/kcm_touchpad.notifyrc ~/.config/
                cp conf/rc/powermanagementprofilesrc ~/.config/
                cp conf/rc/kscreenlockerrc ~/.config/
                cp conf/rc/lightlyrc ~/.config/
                cp conf/rc/plasmanotifyrc ~/.config/
                cp conf/rc/ksplashrc ~/.config/
                cp conf/apps/kde/kdeglobals ~/.config/
                cp conf/apps/kde/mimeapps.list ~/.config
                cp conf/rc/katerc ~/.config/
                cp conf/rc/spectaclerc ~/.config/
    #
    #
        fi
#
echo
#
    # globaal thema
        read -p "Het standaard Look-and-Feel thema YaruPlusL zetten? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
           lookandfeeltool -a YaruPlusL
     fi                
