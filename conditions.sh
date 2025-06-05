#!/bin/bash
#print if number is greater than 10
x=$1

if ( $x -gt 10 )
then
echo "number $x is greater than 10"
else
echo "number $x is less than 10"
fi
