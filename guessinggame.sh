#!/bin/bash

# Count the number of files in the current directory
file_count=$(ls -1 | wc -l)

# Initialize a variable to store the user's guess
guess=-1

# Start the guessing game
echo "Welcome to the Guessing Game!"
echo "Try to guess how many files are in the current directory."

# Loop until the user guesses correctly
while [ "$guess" -ne "$file_count" ]; do
    # Prompt the user for their guess
    read -p "Enter your guess: " guess

    # Check if the guess is too high, too low, or correct
    if [ "$guess" -lt "$file_count" ]; then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed it right!"
    fi
done
