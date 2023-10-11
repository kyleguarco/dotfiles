#
# Bash Login Shell Initialization
#
# This file is sourced when a login shell is started (Like logging into a TTY)
#

export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"

alias ls='ls --color=auto'

BROWSER="firefox"
PAGER="less"
#SHELL="bash"
#TERM="urxvt"

# This is required for rootless docker
export DOCKER_HOST="unix:///run/user/$UID/podman/podman.sock"

#export CLNOTE="$HOME/Documents/Notes/Spring2023"

# Sets the directory for JupyterLab extensions
# https://wiki.archlinux.org/title/Jupyter#Installation
export JUPYTERLAB_DIR="$HOME/.local/share/jupyter/lab"

# Expand program search paths
export PATH="$HOME/.local/bin:$HOME/.local/bin/script:$HOME/.cargo/bin:$PATH"

# Change TexMF home
export TEXMFHOME="$HOME/.texmf"

# https://developer.android.com/studio/command-line
export ANDROID_HOME="$HOME/.android/sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

# Set global NPM package installation environment
export NPM_PACKAGES="$HOME/.npm/packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"

export PATH="$PATH:$NPM_PACKAGES/bin"

export LESSCHARSET="utf-8"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

