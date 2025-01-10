# Makefile to generate README.md and build the project

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and time: $(shell date)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
