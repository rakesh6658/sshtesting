#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "user is not root user"
exit 23
fi
yum install mysql -y