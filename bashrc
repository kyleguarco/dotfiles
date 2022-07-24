#
# Bash Interative Initialization
#
# This file is sourced when an interactive shell is started.
# 
# NOT for login shells (Like logging on to a TTY)
# See https://superuser.com/questions/183870/difference-between-bashrc-and-bash-profile/183980#183980

# Set up powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
# This uses the user's local python package index ($HOME/.local/lib/pythonX.Y/site-packages)
#source "$(python -c 'import site; print(site.getusersitepackages())')/powerline/bindings/bash/powerline.sh"

PS_BOLD=$(tput bold)
PS_NORM=$(tput sgr0)
export PS1="${PS_BOLD}\u@\H \W\$${PS_NORM} "

# If stdin is a terminal
if [ -t 0 ]; then
	# Set GPG_TTY so gpg-agent knows where to prompt.  See gpg-agent(1)
	export GPG_TTY="$(tty)"
	# Set PINENTRY_USER_DATA so pinentry-auto knows to present a text UI.
	export PINENTRY_USER_DATA=USE_TTY=1
fi

alias whatsmyip='curl https://ipinfo.io/ip; echo'

alias ls='ls --color=auto'
alias top='htop'

alias disconnect='sudo netctl stop-all'
alias connect='disconnect; sudo netctl start'

alias charge='cat /sys/class/power_supply/BAT0/capacity'
alias brightness='echo $1 > /sys/class/backlight/intel_backlight/brightness'

# I can't find any filters for kissanime on the pihole, sooo....
alias anime='ssh pihole pihole disable'

alias vim='nvim'

# https://unix.stackexchange.com/questions/215124/remove-whitespace-from-all-items-in-a-directory-and-sub-directory
function antispaces() {
	find $1 -name '* *' -exec bash -c 'mv "$0" "${0// /}"' {} \;
}

function note() {
	cd $CLNOTE/$1
}

alias gksu='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'

# https://wiki.archlinux.org/title/Alacritty#%22user@host:cwd%22_in_window_title_bar
case ${TERM} in
	xterm*|rxvt*|alacritty*)
		PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
	;;
	screen*)
		PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
	;;
esac

