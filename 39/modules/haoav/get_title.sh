#!/bin/bash

curl -s $1 | grep '<div class="title">' | sed 's!</div>!!g' | sed 's!><div class="title">!!g' | awk -F '"' '{print $3}'
