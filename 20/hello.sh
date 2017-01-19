#!/bin/bash

echo "当前 bash 分隔符为 : $IFS"
IFS_OLD=$IFS
IFS=$'\n' # 这里有点坑 , 最开始的时候没有写美刀符号 , 死活不行 , 暂时不知道为啥
echo "已经将分隔符修改成了换行(\\n) , 此时为 $IFS"

for user_line in `cat /etc/passwd | grep '/bin/bash'` ; do
	echo "--------------------------"
	echo $user_line
	IFS=':'
	for column in $user_line ; do
		echo $column		
	done
done
echo "--------------------------"

echo "输出完毕 , 此时分隔符为 : $IFS"
echo "正在恢复分隔符"
IFS=$IFS_OLD
echo "恢复完成 , 此时分隔符为 : $IFS"
echo "完毕"
