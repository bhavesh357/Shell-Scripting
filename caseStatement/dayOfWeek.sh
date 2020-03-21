#!/bin/bash -x

read -p "Enter Day" number 
day="Enter proper Day between 1-7"
echo day

case $number in 
		1)
			day=Sunday
			;;
		2)
			day=Monday
			;;
		3)
			day=Tuesday
			;;
		4)
			day=Wednesday
			;;
		5)
			day=Thursday
			;;
		6)
			day=Friday
			;;
		7)
			day=Saturday
			;;
esac
echo $day