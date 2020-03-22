#!/bin/bash -x

echo "enter number"
read num
top=0
bottom=1

for (( counter=1; counter<=num; counter++))
do
	bottom=$(($bottom * counter))
done

for (( counter=1; counter<=num; counter++))
do
	top=$(($(($bottom / counter)) + $top))
done

echo "$top / $bottom"