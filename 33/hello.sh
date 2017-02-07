#!/bin/bash

echo '输出到标准错误流通过 /dev/stderr (比较通用)' > /dev/stderr
echo '输出到标准错误流通过 >&2' >&2
