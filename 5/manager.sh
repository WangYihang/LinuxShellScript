#!/bin/bash

declare -A files # 声明一个关联数组

i=0
numbers=""

for filename in `ls -I $0 ./scripts/`
	do
		echo -e "${i}" '==>' "$filename"
		files[${i}]=${filename} # 使用关联数组建立用户选择的数字和脚本名称的对应关系
		numbers="${numbers}|${i}"
		i=$((i+1))
	done
numbers="("${numbers}"|)"
echo "请选择需要执行的脚本 : $numbers ?"
# 根据用户选择进行选择脚本执行
read userinput
for index in ${!files[@]};do
	if [ "$userinput" == $index ];then
		/bin/bash ./scripts/${files[$userinput]}		
		break
	fi
done
