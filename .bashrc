#
# Bash Interative Initialization
#
# This file is sourced when an interactive shell is started.
# 
# NOT for login shells (Like logging on to a TTY)
#

# Set up powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
# This uses the user's local python package index ($HOME/.local/lib/pythonX.Y/site-packages)
source "$(python -c 'import site; print(site.getusersitepackages())')/powerline/bindings/bash/powerline.sh"

# Source the environemnt file
if [[ -f ~/.bashenv ]]
then
	source ~/.bashenv
fi

