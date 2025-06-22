#!/bin/bash

LOGS_DIR=/home/ec2-user/ssh-logs
DATE=$(date +%F-%H-%M-%S)
scriptname=$0
LOGFILE=$LOGS_DIR/$scriptname-$DATE.log
R="\e[0;31m"
G="\e[0;32m"
Y="\e[0;33m"
N="\e[0m"
userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "user has no root access. proceed with root access"
exit 1
fi
echo "$LOGFILE $R $G $Y $N"