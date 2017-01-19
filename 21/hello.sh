#!/bin/bash

script_name=`basename $0` # 使用 basename 获取当前脚本名称

if [ $# != 1 ] ; then
	echo -E "Usage : $script_name param"
	exit 1
fi

echo "$script_name param"
