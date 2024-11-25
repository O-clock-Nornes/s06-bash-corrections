#!/bin/bash

ls -1 *.txt |
while read fichier; do
	echo "Lecture de $fichier"
done

if [ ! -d backup ] ; then
	mkdir backup
fi
if [ -d backup ] ; then
	cp *.txt backup/
fi
