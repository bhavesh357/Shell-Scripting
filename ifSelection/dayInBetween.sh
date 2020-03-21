#!/bin/bash -x

read -p "Enter Month" month
read -p "Enter Day" day
isInBetween="no"
isDateValid=1
if [[ $month -gt 12 || $month -lt 1 ]];
then
	isDateValid=0
fi	
if [[ $day -gt 31 || $day -lt 1 ]];
then
	isDateValid=0
fi
if [[ $(( $month % 2 )) -eq 0 && $day -gt 30 ]];
then
	isDateValid=0
fi
if [[ $(( $month % 2 )) -eq 1 && $day -gt 31 ]];
then
	isDateValid=0
fi
if [ isDateValid -eq 1 ]
then	
	if [[ $month -gt 3  &&  $month -lt 7 ]];
	then
		isInBetween="yes"
	fi
	if [[ $month -eq 3 && $day -ge 20 ]];
	then
		isInBetween="yes"
	fi
	if [[ $month -eq 6 && $day -le 20 ]];
	then
		isInBetween="yes"
	fi
fi
echo $isInBetween