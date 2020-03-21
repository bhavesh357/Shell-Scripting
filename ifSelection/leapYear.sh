#!/bin/bash -x

read -p "Enter year" year
isLeapYear="Yes"

if [ $(( $year % 4)) -ne 0 ];
then
	isLeapYear="No"
else
	if [ $(( $year % 100)) -ne 0 ];
	then 
		isLeapYear="Yes"
	else
		if [ $(( $year % 400 )) -ne 0 ];
		then
			isLeapYear="No"
		fi
	fi
fi

echo $isLeapYear			
