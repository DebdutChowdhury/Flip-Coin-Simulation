#!/bin/bash 

rand=$((RANDOM%2))

if [ $rand == 1 ]
then
	echo Heads
else
	echo Tails
fi
