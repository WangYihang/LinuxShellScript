#!/bin/bash

exec 3>stdprefect

echo "This is the prefect line!" >&3

exec 3>&- # 将文件描述符重定向到 &- 就可以关闭该文件描述符

echo "Writing to the closed file descriptor : 3"
echo "New line!" >&3
