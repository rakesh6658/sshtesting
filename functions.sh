#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
filename=$0
LOGFILE=/tmp/$filename-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
validate(){
    if [ $1 -ne 0 ]
    then
    echo -e " $2 installation.... $R failure $N"
    exit 1
    else
    echo -e " $2 installation .... $G success $N"
    fi

}

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "user is not root user"
exit 23
fi

yum install mysql -y &>> $LOGFILE
validate $? mysql
yum install postfix -y &>> $LOGFILE
validate $? postfix
