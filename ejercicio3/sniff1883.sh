#!/bin/bash

if [ "$EUID" -ne 0 ]
then
    echo "Run as sudo to ensure be able to run tcpflow"
    exit
fi


# -i: network interface on which to listen
# -g: output each flow in alternating colors
# -c: console print only (don't create files)
tcpflow -i any -g -c -D port 1883