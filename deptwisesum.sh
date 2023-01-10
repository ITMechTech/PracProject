#!/bin/bash

DEPTLIST=`cat emp.txt | cut -d "," -f3 | sort -u`

 echo ${DEPTLIST}

 for DEPT in ${DEPTLIST}
do
   echo "${DEPT} : `grep "${DEPT}" emp.txt | awk 'BEGIN{FS="," ; SUM=0}{SUM=SUM+$6} END{print SUM}'`"
  sleep 1
done
