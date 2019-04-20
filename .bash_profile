# homebrew binaries now take precedence over Apple defaults
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# always use python3
alias pip='pip3'
alias python='python3'

# enhanced ls
alias ls='ls -Gp -F'
alias ll='ls -lh'

alias sublime=/usr/local/bin/sublime

alias cd..='cd ../'                         # cd..: Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # ..: Go back 1 directory level
alias ...='cd ../../'                       # ...: Go back 2 directory levels
alias .3='cd ../../../'                     # .3: Go back 3 directory levels
alias .4='cd ../../../../'                  # .4: Go back 4 directory levels
alias .5='cd ../../../../../'               # .5: Go back 5 directory levels
alias .6='cd ../../../../../../'            # .6: Go back 6 directory levels

alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~: Go Home
trash () { command mv "$@" ~/.Trash ; }     # trash: Moves a file to the MacOS trash

zipf () { zip -r "$1".zip "$1" ; }          # zipf: To create a ZIP archive of a folder
alias numf='echo $(ls -1 | wc -l)'      	# numf: Count of non-hidden files in current dir

# extract: Extract most know archives with one command
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1     ;;
			*.tar.gz)    tar xzf $1     ;;
			*.bz2)       bunzip2 $1     ;;
			*.rar)       unrar e $1     ;;
			*.gz)        gunzip $1      ;;
			*.tar)       tar xf $1      ;;
			*.tbz2)      tar xjf $1     ;;
			*.tgz)       tar xzf $1     ;;
			*.zip)       unzip $1       ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1        ;;
			*)     echo "'$1' cannot be extracted via extract()" ;;
			 esac
	else
		echo "'$1' is not a valid file"
	fi
}

alias qfind="find . -name "                 # qfind: Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff: Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs: Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe: Find file whose name ends with a given string

# spotlight: Search for a file using MacOS Spotlight's metadata
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

# git autocomplete
source /usr/local/etc/bash_completion.d/git-completion.bash

# bash autocomplete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f ~/.local_profile ]; then
	. ~/.local_profile
fi
