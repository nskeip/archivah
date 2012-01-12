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

ARCHIVE_NAME=`basename $1``date +"_%Y-%m-%d_%H%M"`.tar.gz
SOURCE_FILE=$1
OUTPUT_DIR=$2

echo tar -czf $OUTPUT_DIR/$ARCHIVE_NAME $SOURCE_FILE
