#!/bin/bash -x

random1=$((RANDOM%900 + 100))
random2=$((RANDOM%900 + 100))
random3=$((RANDOM%900 + 100))
random4=$((RANDOM%900 + 100))
random5=$((RANDOM%900 + 100))
min=$random1
max=$random1
#finding smallest
if [ $random2 -lt $min ];
then
	min=$(($random2));
fi
if [ $random3 -lt $min ];
then
	min=$(($random3));
fi
if [ $random4 -lt $min ];
then
	min=$(($random4));
fi
if [ $random5 -lt $min ];
then
	min=$(($random5));
fi
#finding biggest
if [ $random2 -gt $min ];
then
	max=$(($random2));
fi
if [ $random3 -gt $min ];
then
	max=$(($random3));
fi
if [ $random4 -gt $min ];
then
	max=$(($random4));
fi
if [ $random5 -gt $min ];
then
	max=$(($random5));
fi

echo $min
echo $max