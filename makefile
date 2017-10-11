all:README.md
README.md: 
	touch README.md
	echo "Project: Guessing game" >> README.md
	echo "timestamp: `date` " >> README.md
	echo "Total number of lines of code is:`cat guessinggame.sh | wc -l`" >> README.md

clean: 
	rm README.md
