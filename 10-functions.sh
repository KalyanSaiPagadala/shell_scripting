#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then 
    echo " Error:: $2 is  not installed successfully"
    exit 1
else 
    echo "$2 is  installed successfully"
fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: please run the script with root access"
    exit 1 # you can give other than 0
else
    echo "you are using root access"
fi

yum install mysqll -y

VALIDATE $? "mysql"

yum install ansiblle -y

VALIDATE $? "ansible"