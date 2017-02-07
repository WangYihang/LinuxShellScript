#!/bin/bash

old_folder_name=0
for folder_name in `ls | sort -n | tail -n +3` ; do
	((temp=$folder_name-$old_folder_name))
	if [ "$temp" != "1" ] ; then
		echo "$folder_name -> ERROR!"
	fi
	((old_folder_name=$folder_name))
done
