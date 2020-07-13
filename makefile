
README.md:
	echo "# Title: Project Guessing Game \n" > README.md
	echo "Date and Time: \n" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Author:  John Jarvis \n" >> README.md
	echo "Bash Script File: \n" >> README.md
	echo "guessinggame.sh \n" >> README.md
	echo "Number of lines in program: \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md

clean:
	rm README.md

