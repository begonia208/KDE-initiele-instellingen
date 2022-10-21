# KDE-initiele-instellingen

In comparison to other systems it is not so easy to migrate your Plasma setting etc. when you start on a new machine.

These scripts try to fill that hiatus.

- harvest-restore-settings.sh

This script can be executed from every sub directory of a user's home-directory. It will create a directory-structure in de directory from where it is executed and fill these directories with a lot of settings the user has made.

These are of course plasma-settings but also settings of a few non-KDE-applications such as LibreOffice. Also the harvest-script saves the user's Plasma color-schemes, icon themes etc.

The harvest-script produces a directory "extra". This directory will never be deleted during the proces. So in this directory you can store things that won't change so frequently. E.g. thunderbird user profile. In this place the harvest-script saves your custom icon themes if you whish to do that.

- user.sh

When executed from the "root directory" of the harvest-script (bash user.sh), this user.sh script will restore settings in the appropriate locations of the user's new homespace.
