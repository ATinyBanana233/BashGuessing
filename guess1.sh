#!/bin/bash
#second version of the guessing game 

#getting a random number
rand=$RANDOM
answer=${rand:0:1}
flashred=$(tput setab 7; tput setaf 1; tput blink)
none=$(tput sgr0)

printf "This is a number guessing game!\n"
read -p "Guess a single digit number: " guess
	while [[ $guess != $answer ]]; do 
		if [ $guess -lt $answer ]; then
			echo $flashred"guess is too small"$none
			read -p "Try Again: " guess
		elif [ $guess -gt $answer ]; then
			echo $flashred"guess is too big"$none
			read -p "Try Again: " guess
		fi
	done
	echo "Right! The answer is $answer"
	


