
README.md:
	echo "Title: Project Guessing Game" > README.md
	echo "Date and Time: " >> README.md
	date >> README.md
	echo "Author:  John Jarvis" >> README.md
	echo "Bash Script File:" >> README.md
	echo "guessinggame.sh" >> README.md
	echo "number of lines in program:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md

clean:
	rm README.md

