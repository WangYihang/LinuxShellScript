#!/bin/bash

# 行号从 1 开始计算 

echo "---------- 全部替换 ----------"
cat ./data.txt | sed 's/world/china/'
echo "---------- 替换第 2 行----------"
cat ./data.txt | sed '2s/world/china/'
echo "---------- 替换 5 到 10 行 ----------"
cat ./data.txt | sed '5,10s/world/china/'
echo "---------- 替换 第 3 行 到结束的位置----------"
cat ./data.txt | sed '3,$s/world/china/'
echo "---------- 替换 开始到 第 5 行 的位置----------"
cat ./data.txt | sed '1,5s/world/china/'
