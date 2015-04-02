#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

chmod +x scollector-linux-amd64
cp scollector.conf /etc/init/
service scollector start
