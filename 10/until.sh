#!/bin/bash

echo "练习使用 until 语句"
password='pa55w0rd'
until [ "$userinput" == "$password" ] ; do
	read -p 'Please input your password : ' userinput
done
echo "Login ok!"
