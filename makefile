# Define variables
SHELL := /bin/bash
SCRIPT_NAME := guessinggame.sh
README := README.md

# Get the number of lines in the script
LINES := $(shell wc -l < $(SCRIPT_NAME))

# Default target
all: $(README)

# Rule to generate README.md
$(README):
	echo "# Guessing Game" > $(README)
	echo "Date and Time: $(shell date)" >> $(README)
	echo "Number of lines in $(SCRIPT_NAME): $(LINES)" >> $(README)
	echo "" >> $(README)
	echo "## Instructions" >> $(README)
	echo "1. Run the script using: bash $(SCRIPT_NAME)" >> $(README)
	echo "2. Guess the number of files in the current directory." >> $(README)

# Clean rule (optional)
clean:
	rm -f $(README)
