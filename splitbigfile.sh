#!/bin/bash

TOTLINES=`cat stut.txt | wc -l`

MIDPOINT=`expr ${TOTLINES} / 2`


split -l ${MIDPOINT} stut.txt

head -n 1 xab | grep 'STATE:'
if [ $? -ne 0 ]
then
    echo Rethink about the 2nd file
else 
    echo All files are read to process
    exit
fi

FIRSTMATCHLINE=`grep -n "STATE:" xab | head -n 1 | cut -d ":" -f1`
BEFORELINE=`expr ${FIRSTMATCHLINE} - 1`
echo ${BEFORELINE}

sed -n "1,${BEFORELINE} p" xab >> xaa
sed -i "1,${BEFORELINE} d" xab

