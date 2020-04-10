#!/bin/bash

# Bradley Parkes - 10466095

echo "-Welcome to my Interactive Age Guessing Game-"
echo "-Please enter your guess-: "
read guess

#Below is the function that generates a random number from 20- 70
function system_guess {
 	local number=$echo$((20 + RANDOM % 70))
	
	echo $number
}
# If the guess is correct it will be printed below;
correct=$(system_guess)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Sorry, that is not my age..."
	else 
		echo "Sorry, I am not that young..."
	fi
	echo
	echo "Please have another attempt at guessing how old I must be: "
	read guess
done
#If the guess is correct a congragulations message will be printed
echo "Congratulations! You guessed how old I am!"