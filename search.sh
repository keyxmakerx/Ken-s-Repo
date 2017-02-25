#!/bin/bash

date_1=''
date_2=''
email=''

read -p "Please Enter the Beggining Time. Exp. Aug 1 00:00:01 " date_1;

read -p "Please Enter the End Time. Exp. Aug 2 00:00:01 " date_2;

read -p "Please Enter the Email in question. Exp. tech@example.com " email;

sleep 2

echo $date_1 , $date_2 , $email



./read_log_range.py '$date_2'  '$date_1' /var/log/syslog  | grep $email 
echo "Credits : Python script was developed by Serg on Ubuntu forums."
