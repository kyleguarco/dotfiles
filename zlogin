#!/bin/zsh

#
# ZSH Login-shell configuration
#

# Start the X window manager on login.

# Check for any X servers...
pidof Xorg > /dev/null

# Did the last command NOT return 0?
if ! $(test "$?"); then startx; fi

