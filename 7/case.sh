#!/bin/bash
# 练习 case 语句的使用

read -p "Please confirm to formate the disk (Y/N) : " userinput
echo "You have typed : $userinput"
 
case "$userinput" in
	Y|y|[Yy][Ee][Ss]) echo 'Your choosen is Y';;
	N|n|[Nn][Oo]) echo 'Your choosen is N';;
	*) 
		echo 'Input error!'
		echo '一个case之所以用两个分号结束 , 就是为了支持其中可以执行多条语句'
		;;
esac

exit 0
