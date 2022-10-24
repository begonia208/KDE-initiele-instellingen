#!/bin/bash

for i in kmail audacity thunderbird firefox dolphin libreoffice kickoff dolphin konsole gimp krusader k3b SpeedCrunch plasma 
do
   echo $i:  `dpkg -l | egrep "[ ]+$i[ ]+" | wc -l`
done
