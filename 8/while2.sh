#!/bin/bash

password="pa55w0rd"
read -p "Password : " userinput

while [ ${password} != $userinput ]; do # 第二种 while 的语法
	echo "Login failed!"
	read -p "Password : " userinput
done
echo "Login ok!"

