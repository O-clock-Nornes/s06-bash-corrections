#!/bin/bash

mkdir -p /backup

ls -1 /home |
while read dir ; do
    echo "Sauvegarde de $dir"
    tar czf /backup/$dir.tar.gz /home/$dir/
    zip -r /backup/$dir.zip /home/$dir/
done