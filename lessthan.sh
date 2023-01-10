#!/bin/bash

NUM1=$1
NUM2=$2

test ${NUM1} -lt ${NUM2} && echo "${NUM1} is less than ${NUM2}" || echo "${NUM2} is less than ${NUM1}"
