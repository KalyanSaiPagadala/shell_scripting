#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please excecute with root access"
else
    echo "you are using root access"
fi