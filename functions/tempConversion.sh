#!/bin/bash -x

type=""
temprature=-1;
function getTempInC() {
	temp=$(($1 - 32))
	temp=$(($temp*5))
	temp=$(($temp/9))
	echo $temp
}

function getTempInF() {
	temp=$(($1*9))
	temp=$(($temp/5))
	temp=$(($temp+32))
	echo $temp
}

echo "Enter temprature unit F or C"
read type
#check if in range
if [[ "$type" = "F" ]]
then
	while [[ $temprature -lt 32 || $temprature -gt 212 ]]
	do
		echo "Enter temp in range of 32 - 212"
		read temprature
	done
	getTempInC $temprature
else
	while [[ $temprature -lt 0 || $temprature -gt 100 ]]
	do
		echo "Enter temp in range of 0 - 100"
		read temprature
	done
	getTempInF $temprature
fi


