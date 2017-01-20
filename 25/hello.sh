#!/bin/bash

task(){
	echo "You have pressed CTRL + C!"
}

trap task SIGINT
counter=0
while (:);do
	((counter=$counter+1))
	echo "The date is : [ $(date) ]"
	sleep 1
	if [ "$counter" == 10 ] ; then
		exit 0
	fi
done
