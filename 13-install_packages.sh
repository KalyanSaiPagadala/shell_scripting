#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started exectuing at $TIMESTAMP" &>>$LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2..... $R Failed $N "
    else 
        echo -e "$2 .....  $G Success $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: $N please run the script with root user"
    exit 1
else
    echo "you are running the script using root user"
fi

for PACKAGES in $@
do
    yum list installed $PACKAGES &>>$LOGFILE
    if [ $? -ne 0 ]
    then 
        yum install $PACKAGES -y &>>$LOGFILE
        VALIDATE $? "installation of $PACKAGES "
    else 
        echo -e  "$PACKAGES alredy installed ...... $Y Skipped $N"
    fi
done

