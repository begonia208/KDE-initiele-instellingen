#!/bin/bash
#
echo
#
    # update/upgrade
        read -p "update/upgrade? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo pkcon refresh
            sudo pkcon update
        fi
#
echo 
#
    # ontbrekende software
        read -p "ontbrekende software? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
    #
            sudo apt install aptitude &&
    #
        # de programma's
            sudo aptitude install appmenu-gtk2-module audacious audacity backintime-qt catdoc darktable dolphin-plugins elisa falkon ffmpegthumbs flac fonts-cantarell fonts-lato gimp git htop imagemagick k3b k3b-i18n kcolorchooser keepassxc kfind kid3 kio-audiocd kolourpaint kompare kpat krename krusader kwrite language-pack-gnome-nl libinput-tools lm-sensors mc myspell-nl language-pack-kde-nl okular okular-extra-backends p7zip-full partitionmanager plasma-sdk plasma-workspace-wayland ppa-purge printer-driver-cups-pdf qapt-deb-installer qbittorrent qdirstat simplescreenrecorder sddm-theme-breeze skanlite software-properties-qt software-properties-common speedcrunch thunderbird thunderbird-locale-nl tree vlc xdg-desktop-portal xdg-desktop-portal-kde zstd
            # latte-dock
            sudo aptitude remove kate
            sudo aptitude install kwrite

            # weggelaten voor installatie kontact kaidan
            # ook nieuwe "im" client: NeoChat/Matrix https://carlschwan.eu/2020/12/23/announcing-neochat-1.0-the-kde-matrix-client/
            # en jami (vroeger: Ring)
            # matrix "skins" (clients) https://matrix.org/clients/
            # backup oplossing: backintime
        fi
#
echo
#
    # LO en LO ppa
        echo
        read -p "NEON: libreoffice-ppa? j/n (advies: ja)   " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude update
            sudo add-apt-repository ppa:libreoffice/ppa
            sudo apt-get update 
            sudo apt full-upgrade
            sudo apt autoremove
        fi
#
echo
#
    # LO thema's en rest installatie
        echo
        read -p "libreoffice-thema's toevoegen en rest? j/n (advies: ja)   " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install libreoffice-writer libreoffice-impress libreoffice-calc libreoffice-style-yaru hunspell-nl hyphen-nl libreoffice-kde libreoffice-help-nl -y
        fi
#
echo
#
    # wine
        read -p "wine installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo dpkg --add-architecture i386 
            sudo aptitude update
            sudo aptitude install wine64 wine32 winetricks -y
            apt-cache policy libncurses6:i386
        fi
#
echo
#
    # tlp
        read -p "tlp installeren (systeem minder warm)? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt install tlp tlp-rdw
            sudo systemctl enable tlp.service
            sudo tlp start
        fi
#
echo
#
    # extra fonts
    echo
        read -p "Extra letter-fonts installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install fonts-rufscript fonts-sil-andika fonts-pecita fonts-crosextra-caladea fonts-crosextra-carlito fonts-glasstty fonts-linuxlibertine -y
            mkdir ~/.local/share/fonts
            tar zxf conf/artwork/fonts.tar.gz -C ~/.local/share/fonts/
            fc-cache -f -v
        fi
#
echo
#                
    # wifi uit spaarstand
        echo
        read -p "valt de wifi weleens uit j/n? (advies:ja)   " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo sed -i 's/wifi.powersave = 3/wifi.powersave = 2/g' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
        fi
#
echo
#
    # libdvdcss
        echo
        read -p "libdvdcss installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install libdvd-pkg -y
            sudo dpkg-reconfigure libdvd-pkg
        fi
#
echo
#
    # Nextcloud client
        echo
        read -p "Dolphin Nextcloud client installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install dolphin-nextcloud -y
            mkdir ~/.config/autostart/
        fi
#
echo
#
    # skype
        read -p "Skype installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            wget -O ~/skype.deb https://repo.skype.com/latest/skypeforlinux-64.deb
            sudo dpkg -i ~/skype.deb
            sudo apt --fix-broken install -y
            mv ~/skype.deb ~/Downloads
        fi
#
echo
#
    # teamviewer
        read -p "Teamviewer installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            wget -O ~/teamviewer_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
            sudo dpkg -i ~/teamviewer_amd64.deb
            sudo apt --fix-broken install -y
            mv ~/teamviewer_amd64.deb ~/Downloads
        fi
#
echo
#
    # inkscape
        read -p "inkscape installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install inkscape -y
        fi
#
echo
#
    # sddm thema chili regelen
        read -p "Het prachtige SDDM-thema c h i l i  installeren en activeren? (advies: ja) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo mv /etc/sddm.conf /etc/sddm.conf.oud
            sudo cp conf/artwork/sddm/sddm.conf /etc/
            sudo tar -xf conf/artwork/sddm/plasma-chili.tar.gz -C /usr/share/sddm/themes/
        fi
#
echo
#
    # altijd:
        read -p "en verplicht (programma's installeren/verwijderen, kleurenschemas? (advies: ja) j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt remove xul-ext-ubufox konqueror dragonplayer mpv -y
            # kleurenschema's systeembreed
            sudo mkdir /usr/share/color-schemes/standard/
            sudo mv /usr/share/color-schemes/*.colors /usr/share/color-schemes/standard/
            sudo cp /usr/share/color-schemes/standard/Breeze* /usr/share/color-schemes/
            # start-iconen
            sudo cp conf/artwork/start-here.svg /usr/share/icons/
            sudo cp conf/artwork/start-here-MO.svg /usr/share/icons/
            # appimage launcher (mormel)
            # sudo apt remove appimagelauncher -y
            # convert *.jpg *.pdf en varianten aan de praat krijgen (okt. 2020)
        fi
#
echo
#            
    # lightly thema httpsgithub.com/Luwx/Lightly
        read -p "lightly stijl bouwen en installeren? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install build-essential cmake libkf5config-dev libkdecorations2-dev libqt5x11extras5-dev qtdeclarative5-dev extra-cmake-modules libkf5guiaddons-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5coreaddons-dev libkf5iconthemes-dev gettext -y
            # killall nextcloud
            git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
            cd Lightly && mkdir build && cd build
            cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
            make
            sudo make install
            cd ..
            cd ..

        fi
#
echo
#
    # locate
        read -p "locate database? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo aptitude install locate -y
            sudo updatedb
        fi
#
echo
#
    # systeemtijd conflict met windows
        read -p "Doe je deze installatie dual booten met windows, i.v.m. tijd-conflict? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            timedatectl set-local-rtc 1
        fi
#
echo
#
    # autoremove
        read -p "autoremove? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            sudo apt autoremove -y
        fi
