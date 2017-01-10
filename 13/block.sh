#!/bin/bash

password="pa55w0rd"
read -p 'Password : ' pass
read -p '1 + 1 = ?' result
if [ "$pass" == "$password" ] && {
	echo 'This is a block.'
	[ "$result" == "2" ] # 代码块的最后一条语句的返回值就是整个代码块的值
} ; then
	echo "Login ok!"
else
	echo "Login failed!"
fi
