#!/bin/bash

username="admin"
password="admin"
read -p "Username : " user
read -p "Password : " pass

if [ "$username" == "$user" ] && [ "$password" == "$pass" ] ; then
	echo 'Login ok!'
else
	echo 'Login failed!'
fi
