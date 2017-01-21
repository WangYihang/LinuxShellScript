#!/bin/bash

# exec 1>stdout
# exec 2>stderr

counter=0
while (:) ; do
	((counter=$counter+1))
	echo "标准输出流(echo)"
	ls /nosuchfile
	date
	sleep 1 
	if [ "$counter" == 10 ] ; then
		break
	fi
done
