#!/bin/bash

function say_hello { # 一定要注意这里在函数名和花括号中间需要有一个空格
	echo 'Hello~'
}

say_goodbye () {
	echo 'Good-bye~'
}

say_secret(){
	local secret='I love my girl.'
	echo $secret
}

say_hello
say_goodbye
say_secret

echo $secret
