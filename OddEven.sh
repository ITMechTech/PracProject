#!/bin/bash

#echo "---- EVEN OR ODD IN SHELL SCRIPT -----"
#echo -n "Enter a number:"

#read n

#echo -n "RESULT: "

#if [ `expr $n % 2` == 0 ]
#then
#        echo "$n is even"
#else
#        echo "$n is Odd"
#fi

echo "To check Number Odd OR Even"
read -p "Enter the number: " number
if [ $((number)) -le 0 ]

then 
    echo "Number is even."
else
    echo "Number is odd,"
fi
