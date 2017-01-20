#!/bin/bash

script_name=`basename $0`

if [ $# != 1 ] ; then
	echo -e "Usage : $script_name [Your Name]"
	exit 1
fi

say_hello(){
	echo "How are you , $1 ?"
}

word=$(say_hello $1)
echo $word
