#!/bin/bash -x

echo "Enter 1 for Feet to Inch"
echo "Enter 2 for Feet to Meter"
echo "Enter 3 for inch to Feet"
echo "Enter 4 for Meter to Feet"
read conversion
echo "Enter number to convert"
read number
answer=0;
case $conversion in 
	1)
		answer=$(( $number * 12))
		;;
	2)
		answer=$(( $number * 1000 ))
		answer=$(( $answer / 3281 ))
		;;
	3)
		answer=$(( $number / 12 ))
		remainder=$(( $number % 12 ))
		answer="$answer feet $remainder inches"
		;;
	4)	
		answer=$(( $number * 3281 ))
		answer=$(( $answer / 1000 ))
		;;
esac
echo $answer