#!/bin/bash

threshold=1

disk_usage=$(df -hT | grep -vE 'tmpfs|Filesystem|Root')
message=

echo "$disk_usage"

while IFS= read line
do
usage=$(echo $line | awk '{print $6}' | cut -d '%' -f 1 )
partition=$(echo $line | awk '{print $1}')
if [ $usage -gt $partition ]
then
message+="High disk usage on $partition : $usage%\n"
fi

done <<< $disk_usage
echo "$message"