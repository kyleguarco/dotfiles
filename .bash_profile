#
# Bash Login Shell Initialization
#
# This file is sourced when a login shell is started (Like logging into a TTY)
#

# Source the environment file
if [[ -f ~/.bashenv ]]
then
	source ~/.bashenv
fi

# Start an X Display Server if one doesn't already exist
#pidof Xorg
#RETVAL=$?
#if [[ $RETVAL -ne 0 ]]
#then
#	startx
#fi

