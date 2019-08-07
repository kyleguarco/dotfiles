#!/bin/zsh

#
# ZSH Login-shell configuration
#

# Start the X window manager on login.

# Check for an existing X server.
if ! pidof Xorg || -f /tmp/dis_login; then startx; fi > /dev/null

