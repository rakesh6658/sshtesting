#!/bin/bash
# 7 days
# MON-SAT have school
# SUN is holday

day=$1

if [ $day == "sunday" ]
then
echo "$day is holiday"
else
echo "$day is working"
fi
