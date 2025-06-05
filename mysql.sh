#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "user is not root user"
exit 23
fi
validate(){
    if [ $1 -ne 0 ]
    then
    echo " $2 installation.... failure"
    exit 1s
    else
    echo " $2 installation .... success"
    fi

}
yum install mysql -y
validate $? mysql
yum install postfix -y
validate $? postfix
