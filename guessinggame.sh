#!/bin/bash

# Created by J.Cappelletto (cappelletto [at] gmail [dot] com
# Available from https://githup.com/cappelletto/ TODO
# Cousera. Course "Unix Workbench - Week 4 - Project"

echo 'Test'
# First, we must retrieve the number of files (N_FILES) in the current folder
# Curently, we choose to ignore subfilders, and hidden files/folders when retrieving the list with 'ls'

N_FILES=$(ls -1 | wc -l)

echo $N_FILES
# Then, we ask the user for the input (USER_GUESS), until it guess correctly. If USER_GUESS != N_FILES
# we inform if higher or lower, and ask again 

