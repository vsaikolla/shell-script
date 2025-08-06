#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 ..... Failure"
        exit 2
    else
        echo "$2......Success"
    fi 
}

if [ $USERID -ne 0 ]
then
    echo " Please run this script with root access "
    exit 1 # manual exit if error occurs ( 1 to 127 for exit status)
else
    echo " You're super user "
fi


dnf install mysql -y &>> $LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>> $LOGFILE
VALIDATE $? "Installing Git"

if [ $? -ne 0 ]
then
    echo "Installation of all packages is Failure"
else
    echo "Installation of all packages is Success"
fi