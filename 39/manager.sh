#!/bin/bash

folder_name='modules'
compiler_path='/bin/bash'

reset_color="\033[0m"

print_green(){
	echo -e "\033[32m"${1}${reset_color}
}

print_purple(){
	echo -e "\033[35m"${1}${reset_color}
}

banner(){
	echo '****************************'
	echo '*         宅男福利         *'
	echo '****************************'
	echo '*     时间 : 2017/01/30    *'
	echo '*       作者 : 王一航      *'
	echo '*        版本 : 1.0        *'
	echo '****************************'
}

banner

declare -A files # 声明一个关联数组

while (true);do
	i=0
	numbers=""

	for filename in `ls -I $0 ./${folder_name}/`
	do
		print_green "${i} "'==>'" $filename"
		files[${i}]=${filename} # 使用关联数组建立用户选择的数字和脚本名称的对应关系
		numbers="${numbers}|${i}"
		i=$((i+1))
	done
	numbers="("${numbers}"|)"
	echo "请选择需要执行的脚本 : $numbers ?"
	echo "按 [exit/quit/q] 退出"
	# 根据用户选择进行选择脚本执行

	read userinput 
	case $userinput in 
		[Ee][Xx][Ii][Tt]|[Qq]|[Qq][Uu][Ii][Tt]) exit 0;;
	esac
	for index in ${!files[@]};do
		if [ "$userinput" == $index ];then
			echo -e "\033[35m"
			echo '============================='	
			cd ./${folder_name}/${files[${userinput}]}
			${compiler_path} ./main.sh
			cd ../../
			echo '============================='	
			echo -e $reset_color
			break
		fi
	done
done
