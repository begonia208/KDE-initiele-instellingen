#!/bin/bash

for i in kmail audacity thunderbird firefox dolphin libreoffice 
do
   echo $i:  `dpkg -l | egrep "[ ]+$i[ ]+" | wc -l`
done
