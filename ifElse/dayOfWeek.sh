#!/bin/bash -x

read -p "Enter Day" number 
day="Enter proper Day between 1-7"
echo day
if [ $number -eq 1 ];
then 
	day="Sunday"
elif [ $number -eq 2 ];
then 
	day="Monday"
elif [ $number -eq 3 ];
then 
	day="Tuesday"
elif [ $number -eq 4 ];
then 
	day="Wednesday"
elif [ $number -eq 5 ];
then 
	day="Thursday"
elif [ $number -eq 6 ];
then 
	day="Friday"
elif [ $number -eq 7 ];
then 
	day="Saturday"
fi
echo $day