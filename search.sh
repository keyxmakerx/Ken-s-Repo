#!/bin/bash

date_1=''
date_2=''

while true; do
read -p "Please Enter the Beggining Time. Exp. Aug 1 00:00:01 " date_1;
 while :
do
    read -p "Is this Date correct? @date_1" choice
    case ${choice,,} in
        y|ye|yes) break;;
        n|no) echo "Try again"; exec $0;;
    esac
done
read -p "Please Enter the Beggining Time. Exp. Aug 1 00:00:01 " date_2;
do
    read -p "Is this Date correct? @date_2" choice
    case ${choice,,} in
        y|ye|yes) break;;
        n|no) echo "Try again"; exec $0;;
    esac
done

echo "@date_1 , @date_2"
find . -mtime $(date +%s -d"Aug 10, 2013 23:59:59") -mtime $(date +%s -d"Aug 1, 2013 23:59:59")
