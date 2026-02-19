#!/bin/bash

# variable assigning 
current_ip=$(hostname -I | awk '{print $1}')
echo $current_ip

Target="127.0.0.1"
port=80
echo $Target

