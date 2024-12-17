#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Invalid Parameters"
    exit 1
fi
if [ ! -d ~/bin ]
then
    mkdir ~/bin
fi
if [ -f $1 ]
then
    if [ -e ~/bin/$1 ]
    then
        mv $1 ~/bin/${1}_new
        chmod u+x ~/bin/${1}_new
        echo "file with identical name exists in ~/bin, this file was moved with additional _new suffix to avoid overwriting, it will not be executable until manual intervention"
    else
        chmod u+x $1
        mv $1 ~/bin
    fi
fi