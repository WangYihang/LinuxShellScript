#!/bin/bash

# 将所有使用 bash 的用户的默认 shell 修改为 zsh

echo "----------使用转义符----------"
cat /etc/passwd | grep /bin/bash | sed 's/\/bin\/bash/\/bin\/zsh/' # 可以使用转义符
echo "----------修改分隔符----------"
cat /etc/passwd | grep /bin/bash | sed 's|/bin/bash|/bin/zsh|' # 使用 | 作为分隔符 , 也可以使用其他的 , 只要符合语法即可
