#!/usr/bin/env bash

echo "[Guessing game 101 ]"

function ask {
	echo "Do you know your device ? Try and guess the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
		echo " "
	else
		echo "Too high."
		echo " "
	fi
	ask
done

echo " "
echo "Congratulations,you have got it right. This is the list:"
echo " "
echo "---" && ls -1
