#!/bin/bash

read -p "Please input log file path(/var/log/apache2/access.log) : " path
cat $path | cut -f 1 -d " " | awk '{if(!($1 in data)){data[$1]=1}else{data[$1]=data[$1]+1}}END{for(i in data){if(data[i]>1000){print i "\t" data[i]}}}' | sort -n -r -k 2 | head
