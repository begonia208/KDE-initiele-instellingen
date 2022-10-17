#!/bin/bash
#
    # software en andere systeem-brede dingen
        read -p "systeembrede dingen (software, systeeminstellingen)? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
            bash deb-sys-sudo.sh
        fi
#
echo
#
    # user nivo
        read -p "tweaks op gebruikersnivo? j/n " -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[YyJj]$ ]]
        then
        bash user.sh
      fi
#
echo
#
echo read -rsp $'Einde
\n' -n 1 key
