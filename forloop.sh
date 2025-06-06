#!/bin/bash
DATE=$(date +%F-%H-%M-%S)
filename=$0
LOGFILE=/tmp/$filename-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "user is not root user"
exit 1
fi

for i in $@
do
$i --version
if [ $? -ne 0 ]
then

yum install $i -y &>> $LOGFILE
if [ $? -ne 0 ]
then
echo -e "installation of $i .......$R failure $N"
exit 1
else
echo -e "installation of $i .......$G success $N"
fi
else
echo -e " $i ....... $Y already installed $N"
fi 


done
