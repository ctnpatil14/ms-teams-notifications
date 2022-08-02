#!/bin/bash
data='{"text":"'${2}'"}'
echo $2 > message.txt
curl $1 -X post -H 'Content-type: application/json' --data "@message.txt"
