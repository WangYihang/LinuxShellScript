#!/bin/bash
# 应用场景 : 密码输入

password="pa55w0rd"
read -p "Password : " userinput

while [ ${password} != $userinput ] # 第一种 while 的语法
	do
		echo "Login failed!"
		read -p "Password : " userinput
	done
echo "Login ok!"

