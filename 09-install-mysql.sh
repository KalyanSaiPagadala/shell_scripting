#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please excecute with root access"
    exit 1
else
    echo "you are using root access"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "mysql not installed successfully"
else 
    echo "mysql  installed successfully"
fi