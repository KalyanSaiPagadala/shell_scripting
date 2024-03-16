#!/bin/bash

FILE="/etc/passwd"

R="\e[31m"
N="\e[0m"

if  [ ! -d $FILE ]
then
    echo -e "$R source dir is not present $N"
    exit 1
fi

while IFS=":" read -r username user_id group_id user_full_name
do
    echo "username: $username"
    echo "user_id : $user_id "
done < $FILE
