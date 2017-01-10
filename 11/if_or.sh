#!/bin/bash

read -p "Do you like me ? [Y/N]" like
read -p "Do you love me ? [Y/n]" love
if [ "$like" == "Y" ] || [ "$love" == "Y" ] ; then
	echo ":D"
else
	echo "Say you like / love me , :D"
fi
