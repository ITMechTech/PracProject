#!/bin/bash
echo -n "Enter the number: " 
read number

if [ `expr $number % 3 || 2` -eq 0 ]
then
    echo "Entered Number is divisible by 3 and 2"
else
    echo "Entered Number is not divisible by 3 and 2"
fi

