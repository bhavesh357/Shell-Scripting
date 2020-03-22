#!/bin/bash -x

stack=100
goal=200
wins=0
try=0
while [[ $stack -gt 0 && $stack -lt $goal ]]
do
	bet=$(( $RANDOM % 2))
	if [ $bet -eq 1 ]
	then
		((stack++))
		((wins++))
	else
		((stack--))
	fi
	((try++))
done
echo won $wins times
echo total tried $try times