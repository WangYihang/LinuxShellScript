#!/bin/bash

curl -s $1 | grep 'alt=""' | sed 's!alt="" />!\n!g' | head -n -1 | awk -F '"' '{print $2}'
