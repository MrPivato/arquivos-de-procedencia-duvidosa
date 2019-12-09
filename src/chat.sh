#!/bin/bash

while true
do
        read message
        now=$(date +'[%F|%T]')
        echo "$message -- $USER at $now"  >> output.txt
done
