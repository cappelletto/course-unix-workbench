#The makefile should produce the README.md which should contain the following information:

#    The title of the project.
#    The date and time at which make was run.
#    The number of lines of code contained in guessinggame.sh.

# The README.md should be produced entirely from the makefile and should not be edited by hand.

# As the README.md must updated always (date+time will change), then we must overwrite it
# Project title: The Unix Workbench - Final Project. 

# We create a make rule for README.md
README.md:	guessinggame.sh
	echo "The Unix Workbench - Final Project. (JC)" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 
# Or this more specific version, which doesn't count lines that start with comment
#    cat guessinggame.sh | egrep -v "^\#" | wc -l >> README.md
