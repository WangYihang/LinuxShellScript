#!/bin/sh

CORRECT="123456"

while(true); do
	read -p "Your password=" PASSWORD
	if [ "$PASSWORD" = "$CORRECT" ]; then
		echo "Correct."
		break
	fi
	echo "Error!"
done
