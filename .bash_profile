#
# Bash Login Shell Initialization
#
# This file is sourced when a login shell is started (Like logging into a TTY)
#

export LD_LIBRARY_PATH="$HOME/.local/lib":$LD_LIBRARY_PATH

# Source the environment file
if [[ -f ~/.bash_env ]]
then
	source ~/.bash_env
fi
# Start an X Display Server if one doesn't already exist
#pidof Xorg
#RETVAL=$?
#if [[ $RETVAL -ne 0 ]]
#then
#	startx
#fi

