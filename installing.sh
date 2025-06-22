#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "user has no root access. proceed with root access"
exit 1
fi