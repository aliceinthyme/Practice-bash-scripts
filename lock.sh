#!/bin/bash
zzz=1
while [ true ] 
do
    read -p "Password: " input
    if [ $input == "12345" ]
    then
        exit 0
    fi
    sleep ${zzz}m
    let zzz=zzz*2
done