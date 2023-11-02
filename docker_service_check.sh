#!/bin/bash

echo "==== Status check docker service ===="

status=$(systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f 2 | cut -d '(' -f 1)

echo "$status"

if [ "$status" = "active" ]; then
    echo "Service is up and running"
else
    echo "Service is not running"
    systemctl start docker
fi



