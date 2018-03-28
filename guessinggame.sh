#!/bin/bash

# Created by J.Cappelletto (cappelletto [at] gmail [dot] com
# Available from https://githup.com/cappelletto/ TODO
# Cousera. Course "Unix Workbench - Week 4 - Project"

function_count_files()
{
	N_FILES=$(ls -1 | wc -l)
}

# First, we must retrieve the number of files (N_FILES) in the current folder.
# We choose to ignore subfolders, and hidden files/folders when retrieving the list with 'ls'

# Retrieve the number of files in the current working directory using a function
#N_FILES=$( function_count_files )

N_FILES=0
function_count_files

# Then, we ask the user for the input (USER_GUESS), until it guess correctly. If USER_GUESS != N_FILES
# we inform if higher or lower, and ask again 

read -p "Guess the number of files in the current directory: " USER_GUESS

# While doesn't guess correctly
while [ $USER_GUESS -ne $N_FILES ]
	do
		# Check if lower than..
		if [ $USER_GUESS -lt $N_FILES ]
		then
			read -p "Guess too low, try a with a higher number: " USER_GUESS
		else # is higher
			read -p "Guess too high, try a with a lower number: " USER_GUESS
		fi
	done

echo "Congratulations!! you guessed right, there are "$N_FILES" files in this folder"

