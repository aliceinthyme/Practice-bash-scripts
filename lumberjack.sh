#!/bin/bash
while [ true ] 
do
    top -n1 -b | head -10 >> system_load_log
    echo "============================" >> system_load_log
    sleep 5m
done