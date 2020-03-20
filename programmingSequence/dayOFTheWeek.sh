#!/bin/bash -x

read -p "Enter month" month
read -p "Enter day" day
read -p "enter year" year
yo=$(($year - $(( $((14-$month)) /12)) ))
x=$(( $yo + $(($yo/4)) - $(($yo/100)) + $(($yo/400)) ))
t1=$(( 14 - $month ))
t2=$(( $t1 / 12 ))
mo=$(( $month + $(( 12 *  $t2)) -2 ))
d0=$(( $(($day + $x + $((31 * $mo)) / 12 )) % 7 ))
echo $d0
