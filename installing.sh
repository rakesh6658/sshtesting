#!/bin/bash

LOGS_DIR=/home/ec2-user/ssh-logs
DATE=$(date +%F-%H-%M-%S)
scriptname=$0
LOGFILE=$LOGS_DIR/$scriptname-$DATE.log
R="\e[0;31m"
G="\e[0;32m"
Y="\e[0;33m"
N="\e[0m"
validate(){
if [ $1 -ne 0 ]
then
echo  -e " $2  $R installation....failure $N"
else
echo -e " $2  $G installation....success $N"

fi
}
userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "user has no root access. proceed with root access"
exit 1
fi
for i in $@
do
yum list installed $i &>>$LOGFILE
if [ $? -ne 0 ]
then 
echo -e " $i not installed proceed for installation"
sudo yum install $i -y &>>$LOGFILE
validate $? $i
else 
echo  -e " $i  $Y installed already $N"
done
