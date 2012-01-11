#!/bin/bash

if [ -z "$1" ]
then
    echo "No file to archive specified"
    exit 1
fi

if [ -z "$2" ]
then
    echo "No archives dir specified"
    exit 2
fi

tar -czf $1.tar.gz $1 -C $2

