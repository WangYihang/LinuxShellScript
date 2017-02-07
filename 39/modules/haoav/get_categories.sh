#!/bin/bash

url=$1
curl -s $url | grep '</span></a>' | sed 's!</a>!\n!g' | grep -v 'http://' | tr -d '\r\n' | sed 's/\t/\n/g' | tr -s '\n' | tail -n +2 | awk -F '"' '{printf("%s\t%s%s\n", $4,  "'"$url"'", $2)}'

