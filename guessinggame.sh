#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    echo $(ls -l | grep -v ^l | wc -l)
}

# Get the correct number of files
correct_guess=$(count_files)

# Prompt user to guess
echo "Guess how many files are in the current directory."

# Loop until the user guesses correctly
while true; do
    read guess
    if [[ $guess -lt $correct_guess ]]; then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $correct_guess ]]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed it correctly!"
        break
    fi
done
