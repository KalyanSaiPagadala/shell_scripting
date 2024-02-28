#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please excecute with root access"
else
    echo "you are using root access"
fi

yum install myql -y

if [ $? -ne 0 ]
then 
    echo "mysql not installed successfully"
else 
    echo "mysql  installed successfully"
fi