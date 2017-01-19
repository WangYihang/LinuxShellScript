#!/bin/bash

exec 3>&1 # 将 3 这个文件描述符指向 标准输出的文件 的地址
exec 1>stdperfect # 将指向标准输出文件的指针(文件描述符)指向本地文件

echo "This line will redirected to the file stdperfect"
echo "So this is line does"

exec 1>&3 # 将 1 这个描述符重新指向 3 这个文件描述符指向的文件(也就是标准输出)
echo "This line will print to the screen"
