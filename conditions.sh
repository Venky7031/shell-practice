#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then

echo "ERROR:: please run this script with root access"


else

echo "your running with root access"

fi

dnf install mysql -y

if [ $? eq 0 ]

then

echo "Install mysql is .... succeed"

else

echo "install mysql is .... failure"

exit 1

fi