#!/bin/bash

DEPTLIST=`cat emp.txt | cut -d "," -f3 | sort -u`
echo ${DEPTLIST}

  for DEPT in ${DEPTLIST}
do

    echo "${DEPT} : `grep "${DEPT}" emp.txt | cut -d "," -f2 | tr '\n' ',' | sed 's/,$//'`"

    sleep 1
done
