#
# Bash Login Shell Initialization
#
# This file is sourced when a login shell is started (Like logging into a TTY)
#

export LD_LIBRARY_PATH="$HOME/.local/lib":$LD_LIBRARY_PATH

alias ls='ls --color=auto'

BROWSER="firefox"
PAGER="less"
#SHELL="bash"
#TERM="urxvt"

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
export NPM_PACKAGES="$HOME/.npm/packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

