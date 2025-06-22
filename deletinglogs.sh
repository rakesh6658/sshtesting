#!/bin/bash

applogs=/home/ec2-user/app-logs
DATE=$(date +%F-%H-%M-%S)
scriptname=$0
LOGFILE=$LOGS_DIR/$scriptname-$DATE.log

FILES_TO_DELETE= $( find $applogs -name "*.log" -mtime +14)
echo "$FILES_TO_DELETE"