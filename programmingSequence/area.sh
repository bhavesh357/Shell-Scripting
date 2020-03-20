#!/bin/bash -x

area=$((60*40*25))
acres=$(( $area / 43560 ))
echo $acres acres
