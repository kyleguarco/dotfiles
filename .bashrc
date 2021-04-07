#
# Bash Interative Initialization
#
# This file is sourced when an interactive shell is started.
# 
# NOT for login shells (Like logging on to a TTY)
#

# Source the environemnt file
if [[ -f ~/.bashenv ]]
then
	source ~/.bashenv
fi

