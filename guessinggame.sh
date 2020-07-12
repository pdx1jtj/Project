#!/usr/bin/env bash
# File: simpleelif.sh -- from Week-3 IF lesson

ANSWER=`ls -l | grep ^- | wc -l`

echo $ANSWER
echo ""

read -p "Please guess the mumber of files: " GUESS

while [[ $GUESS  -ne $ANSWER ]]
do
	if [[ $GUESS -lt $ANSWER ]] 
	then
		echo "Sorry, $GUESS is Too Low.  Try again"
	else
		echo "Too bad, $GUESS is Too High.  Try again.  Or press '0' to quit"
	fi

	echo "Try again"

	read -p "Please guess the number of files: " GUESS
done

echo "How do you like that?"

