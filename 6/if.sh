#!/bin/bash

############################
# 测试 if 分支
############################
filename='/etc/issue'
if [ -f $filename ];then # -f 指的是判断后面紧接着的参数是不是一个文件
		echo "${filename} is a file!"
else
		echo "${filename} is not a file!"
fi # 需要用 fi 来结束 if 代码块

############################
# 测试 else 分支
############################
filename='/etc/notafile'
if [ -f $filename ];then # -f 指的是判断后面紧接着的参数是不是一个文件
		echo "${filename} is a file!"
else
		echo "${filename} is not a file!"
fi # 需要用 fi 来结束 if 代码块
