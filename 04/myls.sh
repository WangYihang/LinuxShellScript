#!/bin/bash

i=0

for filename in `ls -I $0 ./`
	do
		echo -e "$[${i}+1]" '==>' "$filename"
		i=$i+1
	done
