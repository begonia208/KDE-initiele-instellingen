#!/bin/bash

# Uit Linux Magazine september 2022

# bestandsextensie aanpassen

i="sdfdfd.png"
echo ${i%.png}

i="sdfdfd.png.bak"
echo ${i%.*}
echo ${i%%.*} 

# pad inkorten

i="/etc/network/interfaces"
echo ${i##*/}
echo ${i#*/}

# tekens verwijderen

i="/etc/apt/sources.list.d/backports.list"
echo ${i/.list/}
echo ${i//.list} 

# zoeken en vervangen

echo ${i/.list/.conf/} 
echo ${i//.list/.conf/} 

# hoofdletters vervangen

i="Linus Torvalds"
echo ${i,}
echo ${i,,}
echo ${i^^}

# einde script
