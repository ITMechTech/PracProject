#!/bin/bash

DT=`date +'%y%m%d%H%M'`

 cd /home/ec2-user
 cp soups.txt /home/ec2-user/backup/soups_${DT}.txt

 cd /home/ec2-user/backup
 gzip soups_${DT}.txt
