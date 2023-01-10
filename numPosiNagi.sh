#!/bin/bash

echo -n "Enter the number: "
read number

if [  $number -ge 0 ] 
then
    echo "$number is positive"
else
    echo "$number is nagative"
fi
