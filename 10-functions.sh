#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
then 
    echo " Error:: mysql is  not installed successfully"
    exit 1
else 
    echo "mysql is  installed successfully"
fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: please run the script with root access"
    exit 1 # you can give other than 0
else
    echo "you are using root access"
fi

yum install mysql -y

VALIDATE 