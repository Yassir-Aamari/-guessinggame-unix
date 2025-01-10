#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main loop for the guessing game
guessing_game() {
  # Get the correct number of files
  correct_number=$(count_files)
  
  # Initialize guess variable
  guess=-1

  # Loop until the guess is correct
  while [ "$guess" -ne "$correct_number" ]; do
    echo "How many files are in the current directory?"
    read guess

    if [ "$guess" -lt "$correct_number" ]; then
      echo "Your guess is too low!"
    elif [ "$guess" -gt "$correct_number" ]; then
      echo "Your guess is too high!"
    else
      echo "Congratulations! Your guess is correct."
    fi
  done
}

# Start the game
guessing_game

