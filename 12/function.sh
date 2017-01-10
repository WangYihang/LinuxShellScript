#!/bin/bash

echo '练习函数的使用以及参数传递'

reset_color='\e[0m'

print_red(){
	echo -e "\e[1;31m${1}${reset_color}"
}

print_blue(){
	echo -e "\e[1;34m${1}${reset_color}"
}
print_red 'This is the red content!'
print_blue 'This is the blue content'

