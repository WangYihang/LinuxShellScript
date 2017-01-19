#!/bin/bash

memery_total=`cat /proc/meminfo | tr -s " " | cut -d " " -f 2 | head -n 1`
memery_free=`cat /proc/meminfo | tr -s " " | cut -d " " -f 2 | head -n 2 | tail -n 1`

echo "内存总量 : " $(($memery_total / 1024)) MB
echo "空闲内存 : " $((memery_free / 1024)) MB
