#!/bin/bash

NUMS=(${*})

SUM=0

for NUM in ${NUMS[*]}

do
    SUM=`expr ${SUM} + ${NUM}`

done

 echo "The Sum array element `echo ${NUMS[*]} | tr ' ' ','` is ${SUM}"
