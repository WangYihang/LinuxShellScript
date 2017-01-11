#!/bin/bash

ifconfig | grep -E "[[:blank:]][0123456789ABCDEF][0123456789abcdef]\:" | awk '{print $1" ==> "$5}'
