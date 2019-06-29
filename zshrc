#!/bin/zsh

#
# ZSH Shell RC for root@Angel
#

PROMPT="%n@%M %~ %# "

BROWSER="firefox"
EDITOR="vim"

export PATH="$HOME/.local/bin":$PATH

alias ls='ls --color=auto'
alias charge='cat /sys/class/power_supply/BAT0/capacity'

