#!/bin/bash

read -p "Enter the Filename: " FILENAME
TOTLINE=`cat ${FILENAME} | wc -l`

if [ "${TOTLINE}" -le 1000 ]
then
   echo "small file because it contains less than 1000 lines"
else
   echo "big file because it contains more than 1000 lines"
fi

echo "number of lines are ${TOTLINE}"
