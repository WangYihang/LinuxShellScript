#!/bin/bash

curl -s $1 | tail -n +87 | head -n -33
