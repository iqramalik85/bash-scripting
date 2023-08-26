#!/bin/bash

#In this script we have to take the url as an argument in a shell script and check the status of the url
#and if the status code is other than 200 , the script  will output the message that it is not working.
#Please add the following functionalities in the script:
#Script should read the urls from an other file
#Script should print response time as well
#Script should print the failed urls in another file

file="$1"

while read  url;
do
  status=$(curl -o /dev/null -s -w "%{http_code}" "$url")
  response=$(curl -o /dev/null -s -w "%{time_total}" "$url")
if [ $status == 200 ]
then
    echo "$url:This URL is working and Status Code is: $status"
    echo "$url:This URL is working and Response time is: $response"
else
    echo "$url:This URL is not working and Status Code is: $status" >> failed_url.txt
    echo "$url:This URL is not working and Rsponse time is: $response" >> failed_url.txt
fi
 
done < "$file"
