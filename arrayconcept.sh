#!/bin/bash

NUMS=(${*})

SUM=0

for NUM in ${NUMS[*]}
do
  SUM=`expr ${SUM} + ${NUM}`

done
echo "the sum of array elelment `echo ${NUMS[*]} | tr ' ' ','` is ${SUM}"
