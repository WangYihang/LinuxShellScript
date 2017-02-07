#!/bin/bash

curl -s $1 | grep '.html" target="_blank">' | sed 's!</a>!!' | sed 's! target="_blank">!!' | tr -d '\r' | awk -F '"' '{printf("%s\t%s%s\n", $3, "'"$url"'", $2)}'
