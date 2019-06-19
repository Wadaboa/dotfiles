# dotfiles
My macOS dotfiles, with the ability to choose from two shells:
* Bash (`.bash_profile` and `.bash_prompt`)
* Zsh (`.zshrc`)

Both shells use `.functions` file, where some useful functions and aliases
are stored.\
The `init` folder contains default `Visual Studio Code` settings and
`iTerm2` color theme.\
`.hushlogin` is only used in bash shell to avoid last login information prompts,
while zsh uses `neofetch` as first login command. 

## New setup
If setting up a new mac, run `bootstrap.sh`, which installs Xcode 
command-line tools and Homebrew and executes sequentially:
1. `.macos`, to configure system and default apps settings
2. `brew.sh`, to install command-line tools
3. `brew_cask.sh`, to install main applications

**Note**: `bootstrap.sh` requires you to manually install `Xcode.app` from 
the Mac App Store, before being called.
