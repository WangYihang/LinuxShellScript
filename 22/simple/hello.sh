#!/bin/bash

# 在 shell 中最多可以有 9 个打开的文件描述符

exec 3>stdperfect

echo "This is the perfect output" >&3
