#!/bin/bash

read -p "Enter the number: " num

declare -A flipCoin

for (( i=0; i<num; i++ ))
do
        rand=$((RANDOM%4))
        if [ $rand -eq 1 ]
        then
                flipCoin[$i]="Hh"
	elif [ $rand -eq 2 ]
	then
		flipCoin[$i]="Tt"
	elif [ $rand -eq 3 ]
	then
		flipCoin[$i]="Ht"
        else
                flipCoin[$i]="Th"
        fi
done

echo keys: ${!flipCoin[@]}
echo values: ${flipCoin[@]}

hh=0
ht=0
th=0
tt=0


for j in ${flipCoin[@]}
do
        if [ "$j" == "Hh" ]
        then
                ((hh++))
        elif [ "$j" == "Tt" ]
        then
                ((tt++))
	elif [ "$j" == "Ht" ]
	then
		((ht++))
	else
		((th++))
        fi
done
echo Heads: $hh
echo Tails: $tt
echo Combo: $th
echo Combo: $ht

per_hh=$(((hh*100)/num))
per_tt=$(((tt*100)/num))
per_th=$(((th*100)/num))
per_ht=$(((ht*100)/num))
echo Singlet percentage of heads: $per_hh %
echo Singlet percentage of tails: $per_tt %
echo Singlet percentage of combo: $per_th %
echo Singlet percentage of combo: $per_ht %

