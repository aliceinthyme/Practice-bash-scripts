#!/bin/bash
date=$(date +%F)
echo "select file to archive"
select choice in * QUIT
do
    if [ $choice == "QUIT" ]
    then
        exit 0
    else
        if [ ! -d ~/archive ]
        then
            mkdir ~/archive
        fi
        if [ ! -d ~/archive/uni ]
        then
            mkdir ~/archive/uni
        fi
        if [ ! -d ~/archive/personal ]
        then
            mkdir ~/archive/personal
        fi
        if [ ! -d ~/archive/other ]
        then
            mkdir ~/archive/other
        fi
        echo "choose folder for archiving"
        select choose in ~/archive/* QUIT
        do
            if [ $choose == "QUIT" ]
            then
                exit 0
            else
                tar -czf ${choose}/${date}-${choice}.tar $choice
                read -p "Remove original after archiving? (y/n) (default n) " inp
                    if [ $inp == "y" ]
                    then
                        rm $choice
                    fi
                exit 0
            fi
        done
    fi
done



        


