#  _____    _
# |__  /___| |__  _ __ ___
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__
# /____|___/_| |_|_|  \___|
#

# Show OS info when opening a new terminal
neofetch

# Set enviroment variables
export TERM='xterm-256color'
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/sbin:/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

# Auto update homebrew every 24 hours
export HOMEBREW_AUTO_UPDATE_SECS="86400"

# ZSH options
DEFAULT_USER='Jobs'
HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
ENABLE_CORRECTION="true"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k options
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_INSTALLATION_PATH="$HOME/.oh-my-zsh/themes/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%H:%M  \UF133  %d.%m.%y}"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon root_indicator virtualenv dir dir_writable newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status ip ram)

# ZSH plugins
plugins=(
	command-not-found 
	git 
	git-extras 
	docker
	osx 
	sudo 
	sublime 
	history
	last-working-dir 
	compleat
	z
)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# Bind up and down keys to backward search
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Load system-wide plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Set ls and grep colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_COLOR="1;32"

# Load colorls
source $(dirname $(gem which colorls))/tab_complete.sh
alias ls='colorls -A --sd -t'

# Load functions and aliases
if [ -f ~/dotfiles/.functions ]; then
	. ~/dotfiles/.functions
fi

# Source Travis CI config 
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
