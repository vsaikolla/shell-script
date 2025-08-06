#!/bin/bash
# $?--> to check the exit status of previous command

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " Please run this script with root access "
    exit 1 # manual exit if error occurs ( 1 to 127 for exit status)
else
    echo " You're super user "
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of MYSQL ....... Failure"
    exit 1
else
    echo "Installation of MYSQL ........ Success"