#!/bin/bash
# 计算阶乘
# 5! = 5 * ((5 - 1)!)
# n! = n * ((n - 1)!)

factorial(){
	number=$1
	if [[ "$number" == 0 || "$number" == 1 ]] ; then 
		echo "$number"
	else
		local temp=$[ $number - 1 ]
		local result=`factorial $temp`
		echo $[ $result * $number ]
	fi
}

factorial 10
