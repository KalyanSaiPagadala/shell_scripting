#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File' |awk '{print $6}'| cut -d % -f1)
DISK_THRESHOLD=1
message=""

while IFS= read -r line 
do 
    if [ $DISK_USAGE -gt $DISK_THRESHOLD ]
    then 
        message+="High Disk Usage on $partition: $usage <br>"
    fi

done <<< $DISK_USAGE

echo -e "Message: $message"