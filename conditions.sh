#!/bin/bash

USERID=$(id -u)  #This is the expression we have to give if any condions to write

if [ $USERID -ne 0 ]  #Expression

then

echo "ERROR:: please run this script with root access"

exit 1  #THis is if not root access it will print the above msg so we hv used
else

echo "your running with root access"

fi

dnf install mysql -y #If you want to install this

if [ $? eq 0 ] ##again write exp

then

echo "Install mysql is .... succeed"

else

echo "install mysql is .... failure"

exit 1  #print the above msgs then we will get the output

fi

## after getting some error or output, if it is 0 then script runs if it is any number means whole script is failure