# KDE-initiele-instellingen

In comparison to other systems it is not so easy to migrate your Plasma
setting etc. when you start on a new machine.

These initial scripts try to fill that hiatus.

- harvest-restore-settings.sh

This script can be executed from every sub folder of the user-directory.
The script will create a folder-structure in de folder from where it is
executed and fill these folders with a lot of settings the user has made.

These are of course plasma-settings but also settings of a few
not-kde-apps such as LibreOffice. Also the harvest-script saves the user's Plasma color-schemes, icon themes etc.

The harvest-script produces a folder "extra". This folder will never
be deleted during the proces. So in this folder you can store things
that won't change so frequently. E.g. thunderbird user profile. In this place the harvest-script saves your custom icon themes if you whish to do that.

- user.sh

When executed from the "root directory" of the harvest-script (bash
user.sh), this user.sh script will put the settings back in the
appropriate locations of the user's new homespace.
