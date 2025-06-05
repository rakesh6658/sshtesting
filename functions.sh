#!/bin/bash
DATE=$(date)
filename=$0
LOGFILE=/tmp/$filename-$DATE.log

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
yum install mysql -y &>> $LOGFILE
validate $? mysql
yum install postfix -y &>> $LOGFILE
validate $? postfix
