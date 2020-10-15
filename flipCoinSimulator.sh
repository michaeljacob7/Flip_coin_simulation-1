#!/bin/bash -x

echo "Welcome to Flip coin Simulator program"

hCount=0
tCount=0
i=1
function tie()
{
while [ $hCount -le 21 ] | [ $tCount -le 21 ]
do
	a=$(expr $RANDOM % 10)
	b=$(expr $a %2)
	echo "Coin tossed $i times"

	if [ $b -eq 0 ]
	then
		hCount=$( expr $hCount + 1 )
	elif [ $b -eq 1 ]
	then
		tCount=$( expr $tCount + 1 )
	fi
		i=$( expr $i + 1)



	if [ $hCount -eq 21 ]
	then
		echo "Head wins: "$hCount"times"
	break
	elif [ $tCount -eq 21 ]
	then
	echo "Tail wins: "$t"times"
	break
	fi
done

echo "Heads won $hCount times and Tails won $tCount times"
}

