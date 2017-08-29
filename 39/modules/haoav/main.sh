#!/bin/bash

# 声明变量
url='http://se.haoa05.com'

echo '---------- 分类 ---------'
echo -e '|\t1. 图 片\t|'
echo -e '|\t2. 小 说\t|'
echo '-------------------------'

# 读取用户输入
read -p "请选择分类序号 ( 1 / 2 ) : " user_n_p

# 获取分类列表
categories_content=`bash ./get_categories.sh $url`
categories_keys=`echo "$categories_content" | awk '{print $1}'`
categories_values=`echo "$categories_content" | awk '{print $2}'`

if [ "$user_n_p" == 1 ] ; then
	picture_categories=`echo "$categories_keys" | head -n 9`
	echo '---------- 分类 ---------'
	counter=0
	for category in $picture_categories ; do
		((counter=$counter+1))
		printf "|\t%d.%s\t|\n" $counter $category
	done
	echo '-------------------------'
elif [ "$user_n_p" == 2 ] ; then
	novel_categories=`echo "$categories_keys" | tail -n +10`
	echo '---------- 分类 ---------'
	counter=0
	for category in $novel_categories ; do
		((counter=$counter+1))
		printf "|\t%d.%s\t|\n" $counter $category
	done
	echo '-------------------------'
else
	echo "Input error!"
	exit 1
fi



# 读取用户输入
read -p "请输入分类序号 ( 1 - $counter ) : " category_number

# 显示当前选中分类的首页内容
if [ "$user_n_p" == 1 ] ; then
	temp_url="${url}/listhtml/${category_number}.html"
	pages=`bash ./get_pages.sh $temp_url`
	pages_title=`echo "$pages" | awk '{print $1}'`
	pages_url=`echo "$pages" | awk '{print $2}'`
	echo '--------------- 分类 --------------'
	counter=0
	for page_title in $pages_title ; do
		((counter=$counter+1))
		printf "%d.%s\n" $counter $page_title
	done
	echo '-----------------------------------'
else
	((category_number=${category_number}+10))
	temp_url="${url}/listhtml/${category_number}.html"
	pages=`bash ./get_pages.sh $temp_url`
	pages_title=`echo "$pages" | awk '{print $1}'`
	pages_url=`echo "$pages" | awk '{print $2}'`
	echo '--------------- 分类 --------------'
	counter=0
	for page_title in $pages_title ; do
		((counter=$counter+1))
		printf "%d.%s\n" $counter $page_title
	done
	echo '-----------------------------------'
fi

read -p "请输入页面序号 ( 1 - $counter ) : " page_index
page_url=`echo $pages_url | cut -d ' ' -f $page_index`
page_url="${url}${page_url}"

# 获取页面标题
title=`bash ./get_title.sh $page_url | sed 's/\r//g' | sed 's/ //g'`

# 正式获取内容
if [ "$user_n_p" == 1 ] ; then
	echo "---------- $title ----------"
	pictures_url=`bash ./get_picture.sh $page_url`
	mkdir ./cache/pictures/$title
	wget -v -P ./cache/pictures/${title}/ `echo $pictures_url`
else
	echo "---------- $title ----------"
	bash ./get_novel.sh $page_url | tee ./cache/novels/${title}.txt
fi

