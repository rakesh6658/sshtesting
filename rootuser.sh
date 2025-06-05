#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ] 
then
echo "user is not root user run with root access"
else
echo "root user"
fi