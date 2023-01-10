#!/bin/bash

echo "Hello,You are welcome to shadi.com"
echo "We are here to help you"

read -p "can you tell me your purpose to visit here " PURPOSE

if [ "${PURPOSE}" == "Marriage" ]
then
    echo "We Promise We Will Help you In Best way"
else
    echo "You came to a wrong place. Please go to any other place"
    exit

fi

read -p "Your name ? " NAME
read -p "Your Gender ?(M/m/F/f) " GENDER

if [ "${GENDER}" == 'M' -o "${GENDER}" == 'm' ]
then 
    read -p "Your Age Please : " AGE
    if [ ${AGE} -ge 25 ]
    then
        echo "Hello ${NAME}, You are eligible for getting Married"
    else
        echo "Hello ${NAME}, You are not eligible for getting married, Enjoy your love days"
    fi
elif [ "${GENDER}" == 'F' -o "${GENDER}" == 'f' ]
then
    read -p "your Age please : " AGE
    if [ ${AGE} -ge 21 ]
    then
        echo "Hello ${NAME}, You are eligible for getting Married"
    else
        echo "Hello ${NAME}, You are not eligible for getting married! Enjoy your love days"
    fi
else
    echo "You are not eligible for marry"
fi

