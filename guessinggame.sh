#!/bin/bash
# Created by J.Cappelletto (cappelletto [at] gmail [dot] com
# Available from https://github.com/cappelletto/
# Cousera: "Unix Workbench - Week 4. Final Project"

function_count_files()	# Mandatory presence of function
{
	N_FILES=$(ls -1 | wc -l)
}

# First, we must retrieve the number of files (N_FILES) in the current folder. Ignore subfolders, and hidden files/folders
# Retrieve the number of files in the current working directory using a function
function_count_files

# Then, we ask the user for the input (USER_GUESS), until it guess correctly. If USER_GUESS != N_FILES

read -p "Guess the number of files in the current directory: " USER_GUESS

while [ $USER_GUESS -ne $N_FILES ] # While doesn't guess correctly
	do
		if [ $USER_GUESS -lt $N_FILES ]	# Check if lower than..
		then
			read -p "Guess too low, try a with a higher number: " USER_GUESS
		else # is higher
			read -p "Guess too high, try a with a lower number: " USER_GUESS
		fi
	done

echo "Congratulations!! you guessed right, there are "$N_FILES" files in this folder"

