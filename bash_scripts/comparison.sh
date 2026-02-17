#!/bin/bash

read -p "Enter a Number: " NUM

if [ $NUM -gt 0 ]; then
 echo $NUM is Positive
elif [ $NUM -lt 0 ]; then
 echo $NUM is Negative
else
 echo "The Number is Zero"
fi
