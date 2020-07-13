#!/usr/bin/env bash
# File: guessinggame.sh

# Note: Stackoverflow and some other sites suggested using "ls -1 | wc -l" to get the number of files in the Current Directory.
#       However, if the Current Directory has subdirectories, they will be counted also, making the File Count incorrect.
  

function count {
	count=$(ls -l | grep ^- | wc -l)
	echo $count
}

ANSWER=$(count)

# echo $ANSWER
# echo ""

echo "Let's play a game..."

read -p "Please guess the number of files: " GUESS

while [[ $GUESS  -ne $ANSWER ]]
do
	if [[ $GUESS -lt $ANSWER ]] 
	then
		echo "Sorry, $GUESS is Too Low."
	else
		echo "Too bad, $GUESS is Too High."
	fi

	echo "Try again"

	read -p "Please guess the number of files: " GUESS
done

echo "That is correct"
echo "How did you like that?"

