#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%f-%h-%m-%s)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
O="\e[0m"

LOG_FILE="/tmp/$0-$TIMESTAMP.log"

echo "script started exectuing at $TIMESTAMP" &>>$LOG_FILE

VALIDATE(){
    if [ $1 -ne 0 ]
then 
    echo "$R Error:: $O $2 is $R not installed successfully $O"
    exit 1
else 
    echo "$2 is $G installed successfully $O"
fi
}

if [ $ID -ne 0 ]
then
    echo "$R Error::$O please run the script with root access"
    exit 1 # you can give other than 0
else
    echo "you are using root access"
fi

yum install mysql -y &>>$LOG_FILE

VALIDATE $? "mysql"

yum install ansible -y &>>$LOG_FILE

VALIDATE $? "ansible"