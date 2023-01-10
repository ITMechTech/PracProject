#!/bin/bash

echo "Hi, you are welcome to my shadi.com Dukan"

echo "Have some water please"

read -p "can you please tell me your purpose to visit here " PURPOSE

if [ "${PURPOSE}" == "Marriage" ]
then
    echo "sit down please"
else
    echo "you come to a wrong place! please go to any other place"
   
    exit
fi
