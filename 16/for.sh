#!/bin/bash

sum=0

for (( i=0; $i<=100; i=i+1 ))
do
		sum=$(( $sum + $i ))
done
echo "$sum"
