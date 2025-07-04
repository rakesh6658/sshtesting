#!/bin/bash

applogs=/home/ec2-user/applogs
DATE=$(date +%F-%H-%M-%S)
scriptname=$0
LOGS_DIR=/home/ec2-user/ssh-logs
LOGFILE=$LOGS_DIR/$scriptname-$DATE.log
#userid=$(id -u)
# if [ $userid -ne 0 ]
# then
# echo "user has no root access. proceed with root access"
# exit 1
# fi

FILES_TO_DELETE=$( find $applogs -name "*.log" -mtime +14)
#echo "$LOGFILE"

while read  line 
do
echo "deleting $line" &>>$LOGFILE
rm -rf $line 
done <<< $FILES_TO_DELETE