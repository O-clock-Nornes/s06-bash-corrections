#!/bin/bash

OPTSTRING=":abc"

while getopts ${OPTSTRING} opt; do
	case ${opt} in
		a)
			echo "Options -a faite"
			;;
		b)
			echo "Options -b faite"
			;;
		c)
			echo "Options -c faite"
			;;
		?)
			echo "Invalid option - ${OPTARG}"
			exit 1
			;;
	esac
done


echo "Paramètre numéro 1 $1"
echo "Paramètre numéro 2 $2"
echo "Paramètre numéro 3 $3"
echo "Paramètre numéro 4 $4"
echo "Paramètre numéro 5 $5"

if [ "$1" == "un" ] ; then
	echo "Le premier paramètre est bien un, bravo"
fi
