#!/bin/bash

get_max_number(){
	return `ls | sort -n | tail -n 1`
}

get_max_number
max_number=$?

echo "当前最大文件夹序号为 : $max_number"
((new_folder_name=$max_number+1))
echo "新文件夹名 : " $new_folder_name
mkdir $new_folder_name
get_max_number
max_number=$?
echo "新文件夹创建成功 , 当前最大序号为 : " $max_number
cd $max_number
touch ./README.md
echo '目标' >> ./README.md
echo '```' >> ./README.md
echo '' >> ./README.md
echo '```' >> ./README.md
