#!/bin/bash

say_goodbye(){
	echo "Good Bye~"
}

trap say_goodbye EXIT

read -p "Username : " username
read -p "Password : " password

echo "-----------------------"
echo "Your username : $username"
echo "Your password : $password"

echo "The script is going to be finished!"
