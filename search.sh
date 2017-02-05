#!/bin/bash

date_1=$1
date_2=$2

e_date_1=$( date -d"$date_1" +"%s" )
e_date_2=$( date -d"$date_2" +"%s" )

while IFS=, read dt skip
do
        e_dt=$( date -d"$dt" +"%s" )
        if [ $e_dt -ge $e_date_1 ] && [ $e_dt -le $e_date_2 ]
        then
                printf "${dt},${skip}\n"
        fi
done < infile
