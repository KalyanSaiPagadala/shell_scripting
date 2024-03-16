#!/bin/bash

FILE=/etc/passwd

R="\e[31m"
N="\e[0m"

if  [ ! -f $FILE ]
then
    echo -e "$R file is not present $N"
    exit 1
fi

while IFS=":" read -r f1 f2 f3 f4 f5 f6 f7 
do
    echo "username: $f1"
    echo "user_id : $f5"
    echo "user_id : $f6"
    echo "user_id : $f7"
done < $FILE
