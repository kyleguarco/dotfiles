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
alias brightness='echo $1 > /sys/class/backlight/intel_backlight/brightness'

# I can't find any filters for kissanime on the pihole, sooo....
alias anime='ssh pihole pihole disable'

