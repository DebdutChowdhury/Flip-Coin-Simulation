#!/bin/bash

read -p "Enter the number: " num

declare -A flipCoin

for (( i=0; i<num; i++ ))
do
        rand=$((RANDOM%6))
        if [ $rand -eq 1 ]
        then
                flipCoin[$i]="Hhh"
	elif [ $rand -eq 2 ]
	then
		flipCoin[$i]="Hht"
	elif [ $rand -eq 3 ]
	then
		flipCoin[$i]="Thh"
	elif [ $rand -eq 4 ]
	then 
		flipCoin[$i]="Tth"
	elif [ $rand -eq 5 ]
	then
		flipCoin[$i]="Htt"
	elif [ $rand -eq 6 ]
	then 
		flipCoin[$i]="Hth"
	elif [ $rand -eq 5 ]
	then
		flipCoin[$i]="Tth"
        else
                flipCoin[$i]="Ttt"
        fi
done

echo keys: ${!flipCoin[@]}
echo values: ${flipCoin[@]}

hhh=0
hht=0
thh=0
tth=0
htt=0
hth=0
tht=0
ttt=0


for j in ${flipCoin[@]}
do
        if [ "$j" == "Hhh" ]
        then
                ((hhh++))
        elif [ "$j" == "Hht" ]
        then
                ((hht++))
	elif [ "$j" == "Thh" ]
	then
		((thh++))
	elif [ "$j" == "Tth" ]
	then
		((tth++))
	elif [ "$j" == "Htt" ]
	then
		((htt++))
	elif [ "$j" == "Hth" ]
	then
		((hth++))
	elif [ "$j" == "Tht" ]
	then
		((tht++))
	else
		((ttt++))
        fi
done
echo Heads: $hhh
echo Tails: $ttt
echo Combo: $hht
echo Combo: $thh
echo combo: $tth
echo combo: $htt
echo combo: $hth
echo combo: $tht

per_hhh=$(((hhh*100)/num))
per_ttt=$(((ttt*100)/num))
per_thh=$(((thh*100)/num))
per_htt=$(((htt*100)/num))
per_hht=$(((hht*100)/num))
per_tth=$(((tth*100)/num))
per_hth=$(((hth*100)/num))
per_tht=$(((tht*100)/num))

echo Singlet percentage of heads: $per_hhh %
echo Singlet percentage of tails: $per_ttt %
echo Singlet percentage of combo: $per_thh %
echo Singlet percentage of combo: $per_htt %
echo Singlet percentage of combo: $per_hht %
echo Singlet percentage of combo: $per_tth %
echo Singlet percentage of combo: $per_hth %
echo Singlet percentage of combo: $per_tht %
