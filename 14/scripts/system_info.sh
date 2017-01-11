#!/bin/bash

echo "内核头 : " `uname -r`
echo "发行版 : " `lsb_release -d`
echo "主机名 : " `hostname`
echo "用户名 : " `whoami`
