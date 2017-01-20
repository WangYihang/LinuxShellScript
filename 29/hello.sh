#!/bin/bash

counter=0
while (:) ; do
	date
	sleep 1
	((counter=$counter+1))
	if [ "$counter" == 10 ] ; then
		echo "Loop Over!"
		break 
	fi
done
echo "Script Over"

