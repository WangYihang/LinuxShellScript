#!/bin/bash

username="admin"
password="admin"

while (:);do
	read -p "Username : " user
	read -p "Password : " pass

	if [ "$username" == "$user" ] && [ "$password" == "$pass" ] ; then
		echo -e "\033[32mLogin ok!\033[30m"
		break
	else
		echo -e "\033[31mLogin failed!\033[30m"
	fi

done
