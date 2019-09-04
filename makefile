all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessingame.sh" >> README.md
	echo "The program is last ran at the following timestamp: " >> README.md
	echo $$(date) >> README.md
	echo "\n" >> README.md
	echo "The following are the number of lines in the Program's code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean :
	rm README.md
	
