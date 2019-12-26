# 
# Bash shell profile
#

# Homebrew binaries now take precedence over Apple defaults
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Auto update homebrew every 24 hours
export HOMEBREW_AUTO_UPDATE_SECS="86400"

# Set terminal color mode
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

# Remove last login message
touch ~/.hushlogin

# Enhanced ls
alias ls='ls -Gp -F'
alias ll='ls -lh'

# Git autocomplete
source /usr/local/etc/bash_completion.d/git-completion.bash

# Bash autocomplete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Load bash prompt
if [ -f ~/dotfiles/.bash_prompt ]; then
	. ~/dotfiles/.bash_prompt
fi

# Load functions and aliases
if [ -f ~/dotfiles/.functions ]; then
	. ~/dotfiles/.functions
fi
