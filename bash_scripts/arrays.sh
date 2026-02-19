#!/bin/bash
#Array
Ports=(21 22 25 80 3306 3389 8080)
for item in "${Ports[@]}"  
do
    echo "Scanning Ports:$item"
done

mapfile  -t HOSTS < target.txt
for host in "${HOSTS[@]}" 
do 
    echo  $host
done