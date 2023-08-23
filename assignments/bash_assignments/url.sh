#!/bin/bash


url="$1"

status=$(curl -o /dev/null -s -w "%{http_code}" "$url")

if [ $status = 200 ]
then
    echo "This URL is working and Status Code is: $status"
else
    echo "This URL is not working and Status Code is: $status"
fi
