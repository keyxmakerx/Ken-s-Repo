#!/bin/bash

date_1=''
date_2=''

read -p "Please Enter the Beggining Time. Exp. Aug 1 00:00:01 " date_1;

read -p "Please Enter the Beggining Time. Exp. Aug 1 00:00:01 " date_2;

 while :
do
    read -p "Is this Date correct? @date_1" choice
    case ${choice,,} in
        y|ye|yes) break;;
        n|no) echo "Try again"; exec $0;;
    esac
done
 while :
    read -p "Is this Date correct? @date_2" choice
    case ${choice,,} in
        y|ye|yes) break;;
        n|no) echo "Try again"; exec $0;;
    esac
done

echo $date_1 , $date_2
find /srv/log/mail -mtime $(date +%s -d"$date_1") -mtime $(date +%s -d"$date_2")
