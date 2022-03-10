alias whatsmyip='curl https://api.ipify.org; echo'

alias ls='ls --color=auto'
alias top='htop'

alias disconnect='sudo netctl stop-all'
alias connect='disconnect; sudo netctl start'

alias charge='cat /sys/class/power_supply/BAT0/capacity'
alias brightness='echo $1 > /sys/class/backlight/intel_backlight/brightness'

# I can't find any filters for kissanime on the pihole, sooo....
alias anime='ssh pihole pihole disable'

function anti-spaces() {
	local FILES=($1)
	for file in $FILES; do 
		mv "$file" $(echo $file | tr ' ' '_')
	done
}

function note() {
	cd $CLNOTE/$1
}

alias gksu='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'

