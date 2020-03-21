#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ];
then 
	empRatePerHour=20;
	empHrs=8;
	salary=$(($empRatePerHour*$empHrs));
else
	salary=0;
fi
