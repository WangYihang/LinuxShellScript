#!/bin/bash

declare -A files # 声明一个关联数组

i=0
numbers=""

for filename in `ls -I $0 ./scripts/`
	do
		echo -e "$[${i}+1]" '==>' "$filename"
		i=$((i+1))
		files[${i}]=${filename}
		numbers="${numbers}|${i}"
	done
numbers="("${numbers}"|)"
echo "请选择需要执行的脚本 : $numbers ?l"


