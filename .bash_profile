#
# Bash Login Shell Initialization
#
# This file is sourced when a login shell is started (Like logging into a TTY)
#

export LD_LIBRARY_PATH="$HOME/.local/lib":$LD_LIBRARY_PATH

#PS_BOLD=$(tput bold)
#PS_NORM=$(tput sgr0)
#export PS1="${PS_BOLD}\u@\H \W\$${PS_NORM} "

BROWSER="firefox"
PAGER="less"
#SHELL="bash"
#TERM="urxvt"

# This is required for rootless docker
export DOCKER_HOST="unix:///run/user/1000/docker.sock"

export DEBMAIL="kyleguarco55@gmail.com"
export DEBFULLNAME="Kyle Guarco"

export CLNOTE="$HOME/Documents/Notes/Spring2022"

# Source the local rust installation's environment
source "$HOME/.cargo/env"

# Expand program search paths
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/script"
# Expand program search paths (~/.local/opt)
source "$HOME/.local/opt/env"

# Set global NPM package installation environment
NPM_PACKAGES="${HOME}/.npm/packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

