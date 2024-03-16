#!/bin/bash

SOURCE_DIR="/tmp/hello_logs"

R="\e[31m"
N="\e[0m"

if  [ ! -d $SOURCE_DIR ]
then
    echo -e "$R source dir is not present $N"
fi

$FILE_TO_DEL=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line 
do 
    echo "deleting the old logs : $line "
    rm -rf $line
done <<< $FILE_TO_DEL