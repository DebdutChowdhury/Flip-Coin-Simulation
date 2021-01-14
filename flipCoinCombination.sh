#!/bin/bash

read -p "Enter the number: " num

declare -A flipCoin

for (( i=0; i<num; i++ ))
do
        rand=$((RANDOM%2))
        if [ $rand -eq 1 ]
        then
                flipCoin[$i]="Head"
        else
                flipCoin[$i]="Tail"
        fi
done

echo keys: ${!flipCoin[@]}
echo values: ${flipCoin[@]}

heads=0
tails=0

for j in ${flipCoin[@]}
do
        if [ "$j" == "Head" ]
        then
                ((heads++))
        elif [ "$j" == "Tail" ]
        then
                ((tails++))
        else
                echo Invallid 
        fi
done
echo Heads: $heads
echo Tails: $tails

per_head=$(((heads*100)/num))
per_tail=$(((tails*100)/num))

echo Singlet percentage of heads: $per_head %
echo Singlet percentage of tails: $per_tail %
