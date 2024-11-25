#!/bin/bash
if [ ! -d ~/analyses ] ; then
	mkdir ~/analyses
fi

cat /etc/passwd | awk -F ":" '{if($3>=1000) print $1}' | grep -v nobody |
while read username ; do
	echo "Utilisateur: $username"
	groups $username >> ~/analyses/user_groups.log
done
