#!/bin/bash

echo "Welcome to Flip coin Simulator program"

h=0
t=0

while (( $h<11 && $t<11 ))
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
	echo "Head"
	h=$(($h+1))
	else
	echo "Tail"
	t=$(($t+1))
	fi
done

if [ $h -eq 10 ]
then
	echo "Head wins: "$h"times"
else
	echo "Tail wins"$t"times"
fi
