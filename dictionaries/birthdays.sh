#!/bin/bash -x

function getMonth() {
	month=""
	case $1 in 
		1)
			month=January
			;;
		2)
			month=February
			;;
		3)
			month=March
			;;
		4)
			month=April
			;;
		5)
			month=May
			;;
		6)
			month=June
			;;
		7)
			month=July
			;;
		8)
			month=August
			;;
		9)
			month=September
			;;
		10)
			month=October
			;;
		11)
			month=November
			;;
		12)
			month=December
			;;
	esac
	echo $month
}

declare -A birthdays

for((month=1;month<25;month++))
do
	birthdays[month]=0;
done

echo ${birthdays[@]}
echo ${!birthdays[@]}

total=0

while [ $total -lt 50 ]
do
	month=$(($(($RANDOM%24))+1))
	value=${birthdays[$month]}
	birthdays[$month]=$(($value+1));
	((total++))		
done

for ((i=1;i<$((${#birthdays[@]}));i++))
do
	if [ $i -lt 12 ]
	then
		echo "$( getMonth $i ) 92 ${birthdays[$i]} person" 
	else
		echo "$( getMonth $(($i%12)) ) 93 ${birthdays[$i]} person"
	fi
done