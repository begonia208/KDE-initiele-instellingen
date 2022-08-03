#!/bin/bash
# #
# echo
# #
#     # firefox
#         echo
#         read -p "Firefox snap installeren en deb verwijderen? j/n (nee als ff er al is)   " -n 1 -r
#         echo    # (optional) move to a new line
#         if [[ $REPLY =~ ^[YyJj]$ ]]
#         then
#             sudo apt remove firefox &&
#             sudo snap install firefox
#         fi
#

software
sudo aptitude install appmenu-gtk2-module aptitude audacious audacity backintime-qt catdoc darktable dolphin-plugins elisa ffmpegthumbs flac fonts-cantarell fonts-lato gimp git gnome-disk-utility htop i2c-tools imagemagick k3b k3b-i18n kate kcolorchooser keepassxc kfind kid3 kio-audiocd kio-gdrive kolourpaint kompare kpat krename krusader language-pack-gnome-nl libcdio-utils libgconf-2-4 libinput-tools libqtcurve-utils2 librsvg2-common lm-sensors mc myspell-nl language-pack-kde-nl latte-dock okular okular-extra-backends p7zip-full partitionmanager plasma-sdk plasma-widgets-addons plasma-workspace-wayland ppa-purge printer-driver-cups-pdf qapt-deb-installer qbittorrent qdirstat qml-module-org-kde-kcm qml-module-qtquick-xmllistmodel simplescreenrecorder sddm-theme-breeze skanlite software-properties-qt software-properties-common speedcrunch testdisk thunderbird thunderbird-locale-nl tree vlc xdg-desktop-portal xdg-desktop-portal-kde zstd
            xserver-xorg-input-libinput xserver-xorg-input-multitouch libinput-bin libinput10 libinput-tools
            fc-cache -f -v



echo
#            
    # audacious ppa
        read -p "audacious uit ppa? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo add-apt-repository ppa:ubuntuhandbook1/apps
            sudo aptitude update
            sudo aptitude install audacious -y
        fi
#
echo
#
    # latte afhankelijkheden
        read -p "afhankelijkheden nodig om latte te bouwen? (advies: ja) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt install cmake extra-cmake-modules qtdeclarative5-dev libqt5x11extras5-dev libkf5iconthemes-dev libkf5plasma-dev libkf5windowsystem-dev libkf5declarative-dev libkf5xmlgui-dev libkf5activities-dev build-essential libxcb-util-dev libkf5wayland-dev git gettext libkf5archive-dev libkf5notifications-dev libxcb-util0-dev libsm-dev libkf5crash-dev libkf5newstuff-dev libxcb-shape0-dev libxcb-randr0-dev libx11-dev libx11-xcb-dev kirigami2-dev libwayland-dev libwayland-client++0 plasma-wayland-protocols libqt5waylandclient5-dev qtwayland5-dev-tools
          # git clone git://anongit.kde.org/latte-dock
        fi

        echo
        #    
            # libreoffice menuwijzigingen
                read -p "libreoffice menuwijzigingen (wordt niet automatisch gewist)? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir -p ~/.config/libreoffice/4/user/config/soffice.cfg/modules/swriter/menubar/
                    mkdir -p ~/.config/libreofficedev/4/user/config/soffice.cfg/modules/swriter/menubar/   
                    cp conf/apps/lo/lowritermenubar.xml ~/.config/libreoffice/4/user/config/soffice.cfg/modules/swriter/menubar/menubar.xml
                    cp conf/apps/lo/lowritermenubar.xml ~/.config/libreofficedev/4/user/config/soffice.cfg/modules/swriter/menubar/menubar.xml
                #
                    mkdir -p ~/.config/libreoffice/4/user/config/soffice.cfg/modules/scalc/menubar/
                    mkdir -p ~/.config/libreofficedev/4/user/config/soffice.cfg/modules/scalc/menubar/
                    cp conf/apps/lo/localcmenubar.xml ~/.config/libreoffice/4/user/config/soffice.cfg/modules/scalc/menubar/menubar.xml
                    cp conf/apps/lo/localcmenubar.xml ~/.config/libreofficedev/4/user/config/soffice.cfg/modules/scalc/menubar/menubar.xml
                fi
        #
        echo
        #
            # akregator
                read -p "Eigen akregator feeds P (wordt niet automatisch gewist)? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    killall akregator
                    rm -r ~/.local/share/akregator/
                    mkdir ~/.local/share/akregator/
                    tar -xf conf/apps/akregator.tar.gz -C ~/.local/share/akregator/
                    cp conf/rc/akregatorrc ~/.config/
                fi
#
echo
#
    # showfoto
    echo
        read -p "Showfoto installeren? (grote download) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install showfoto -y
        fi    
        #
        echo
        #
            # smplayer
                read -p "smplayer frontend installeren (wordt niet automatisch gewist) (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    tar -xf conf/apps/smplayer.tar.gz -C ~/.config/
                # rm ~/.config/mimeapps.list
                #  cp conf/apps/kde/mimeappsmpv.list ~/.config/mimeapps.list
                fi
        #
        echo
        #
            # desktopachtergronden op thuismachine
                read -p "Paar leuke plaatjes in de map /home/Afbeeldingen/Desktopachtergronden? j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir -p ~/Afbeeldingen/Desktopachtergronden
                    cp  ~/Nextcloud/derest/installatie/scripts/prog-install/wallpapers/* ~/Afbeeldingen/Desktopachtergronden/
                fi
        #
        echo
        #
            # latte in autostart
                read -p "Latte-Dock altijd opstarten met het systeem (wordt niet automatisch gewist)? (advies: ja) j/n " -n 1 -r
                echo    # (optional) move to a new line
                if [[ $REPLY =~ ^[YyJj]$ ]]
                then
                    mkdir ~/.config/autostart/
                    cp conf/apps/latte/org.kde.latte-dock.desktop ~/.config/autostart/
                fi
#
echo
#
    # chromium
        echo
        read -p "Chromium installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt install chromium-browser chromium-browser-l10n
        fi
#
echo
#
    # brave
        echo
        read -p "Brave installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
           sudo apt install apt-transport-https curl

            sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

            echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

            sudo apt update

            sudo apt install brave-browser
            mkdir -p ~/.local/share/applications/
            cp conf/apps/brave/brave-browser.desktop ~/.local/share/applications/
        fi
#
echo
#
    # dropbox
        read -p "Dropbox installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt install nautilus-dropbox -y
        fi
#
echo
#
    # calibre
        read -p "Calibre installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
            sudo apt --fix-broken install
        fi
#
echo
#
    # steam spelletjes client
        read -p "Steam client installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo dpkg --add-architecture i386
            sudo aptitude update
            sudo apt upgrade
            sudo aptitude install steam -y
        fi
#
echo
#
    # KDE PIM suite
        read -p "KDE pim-suite installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt install kmail kaddressbook kontact
        fi
#
echo
#
    # lightly ronde hoeken
    # zeer belangrijk: https://github.com/matinlotfali/KDE-Rounded-Corners
        read -p "lightly ronde hoeken? (configureer vanuit desktopeffecten/uiterlijk)" -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt install git cmake g++ gettext extra-cmake-modules qttools5-dev libqt5x11extras5-dev libkf5configwidgets-dev libkf5crash-dev libkf5globalaccel-dev libkf5kio-dev libkf5notifications-dev kinit-dev kwin-dev -y
           # killall nextcloud
           # git clone https://github.com/Luwx/LightlyShaders
            git clone https://github.com/matinlotfali/KDE-Rounded-Corners
           # cd LightlyShaders 
           # mkdir qt5build
            cd KDE-Rounded-Corners || exit
            mkdir qt5build
            cd qt5build || exit
            sudo ln /usr/share/bash-completion/completions/gmake /usr/bin
            cmake ../ -DCMAKE_INSTALL_PREFIX=/usr -DQT5BUILD=ON && 
            make && 
            sudo make install &&
           # (kwin_x11 --replace &)
            cd ..
            (cd ..)
            sudo rm -r KDE-Rounded-Corners
            # sudo rm -r KDE-Rounded-Corners
            # o fully uninstall, simply run the command sudo make uninstall inside qt5build directory
        fi

ook geparkeerd....

abcde akregator f2fs-tools falkon gtk2-engines-qtcurve gtk2-engines-oxygen kde-config-plymouth keepassxc kmail krita krita-l10n kwave ksudoku kup-backup  jmtpfs okular-backend-odt okular-backend-odp plymouth plymouth-themes webcamoid winff wodim youtube-dl 



"voor Debian"
 
sudo apt install --ignore-missing appmenu-gtk2-module aptitude audacity darktable dolphin-plugins elisa ffmpegthumbs flac fonts-lato gimp git gnome-disk-utility htop hddtemp k3b k3b-i18n kate kcolorchooser kfind kid3 kolourpaint4 kompare kpat krename krusader kup-backup libcdio-utils libgconf-2-4 libinput-tools libqtcurve-utils2 librsvg2-common lm-sensors mc latte-dock okular okular-extra-backends p7zip-full partitionmanager plasma-sdk plasma-widgets-addons plasma-workspace-wayland  qbittorrent qdirstat qml-module-org-kde-kcm qml-module-qtquick-xmllistmodel showfoto simplescreenrecorder sddm-theme-breeze skanlite speedcrunch testdisk thunderbird thunderbird-l10n-nl tree vlc xdg-desktop-portal xdg-desktop-portal-kde zstd 

sudo apt install fonts-rufscript fonts-sil-andika fonts-crosextra-caladea fonts-cantarell fonts-crosextra-carlito fonts-glasstty fonts-linuxlibertine -y

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install wine32

        
        
        
##
echo
##
#    # latte widgets installeren
#        read -p "latte window-button widget bouwen? (advies: ja) j/n " -n 1 -r
#        echo    # (optional) move to a new line
#        if [[ $REPLY =~ ^[YyJj]$ ]]
#        then
#            killall nextcloud
#            git clone https://github.com/psifidotos/applet-window-buttons.git &&
#            cd applet-window-buttons/
#            echo
#            read -rsp $'druk spatiebalk\n' -n 1 key 
#            bash install.sh &&
#            cd ..
#            sudo rm -r applet-window-buttons
#            nextcloud &
#        fi
#
echo
# sudo apt install wifi-radar
# sudo apt install firmware-b43-installer b43-fwcutter
#
# abcde is een command-line cd ripper die ALTIJD werkt. Bij meerdere CDDB resultaten eerst   q    enter
#
# cdio-utils maakt het commando "cd-drive" mogelijk. Output =  naam + eigensch cdstations
#
# start de ui van ufw-kde voorlopig met kcmshell4 ufw . Maar het staat toch goed ingesteld.
#
# unoconv
# met unoconv verander je elk door LibreOffice leesbaar bestand in ieder ander type
# docx naar odf:  unoconv -f odt *.docx
# voor LO schrijfbaar bestand. Gebruik: find . -name "*.bron" -exec unoconv -v -f doel {} \; -exec rm {} \;
