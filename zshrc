#!/bin/zsh

#
# ZSH Shell RC for kyleg@Angel
#

PROMPT="%n@%M %~ %# "

alias ls='ls --color=auto'
alias top='htop'

alias disconnect='sudo netctl stop-all'
alias connect='disconnect; sudo netctl start'

alias charge='cat /sys/class/power_supply/BAT0/capacity'

