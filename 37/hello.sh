#!/bin/bash

cat data.txt | sed '/[2|9]/s/world/china/' # 前面的两个斜杠中间可以使用正则表达式来确定范围

cat ip_data.txt | sed '/Source/s/192.168/255.255/'
