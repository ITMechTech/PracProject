#!/bin/bash

echo "To check Odd OR Even Number"

read -p "Enter the Number : " number

if [ `expr $number / 2` -eq 0 ]
then
    echo "number is even"
else
    echo "number is odd"
fi 
