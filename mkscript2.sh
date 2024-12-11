#!/bin/bash
select choice in * QUIT
do
    if [ $choice == "QUIT" ]
    then
        exit 0
    fi
    if [ -f $choice ]
    then
        chmod u+x $choice
        if [ ! -d ~/Backup ]
        then
            mkdir ~/Backup
        fi
        mv $choice ~/Backup
    fi
done