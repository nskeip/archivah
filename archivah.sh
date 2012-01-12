#!/bin/bash

if [ -z "$1" ]
then
    echo "No file to archive specified"
    exit 1
fi

if [ ! -f "$1" ]
then
    echo "File we about to archive does not exist"
    exit 4
fi

if [ -z "$2" ]
then
    echo "No archives dir specified"
    exit 2
fi

if [ ! -d "$2" ]
then
    echo "Output dir does not exist"
    exit 3
fi

ARCHIVE_NAME=`basename $1``date +"_%Y-%m-%d_%H%M"`.gz
SOURCE_FILE=$1
OUTPUT_DIR=$2

gzip -c $SOURCE_FILE > $OUTPUT_DIR/$ARCHIVE_NAME
