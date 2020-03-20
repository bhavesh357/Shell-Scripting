#!/bin/bash -x

a=$((RANDOM % 6 + 1))
b=$((RANDOM % 6 + 1))
echo $(( $a + $b ))
