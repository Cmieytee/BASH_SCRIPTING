#!/bin/bash

MAX=80
EMAIL=similomed97@gmail.com
PART=sda3

use= $(df -h | grep 'sda1' | awk '{ print $5 }' | cut -d'%' -f1)
#if [ -n "$use" ] && [ "$use" -gt "$MAX" ]; then
#echo ' Percentage used: $use ' | mail -s 'RUnning out of disk space ' '$EMAIL'
#fi


echo $use
