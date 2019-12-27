# dotfiles
My macOS dotfiles, with the ability to choose from two shells:
* Bash (`.bash_profile` and `.bash_prompt`)
* Zsh (`.zshrc`)

Both shells use `.functions` file, where some useful functions and aliases
are stored.\
The `init` folder contains default `Visual Studio Code` and
`iTerm2` settings.\
`.hushlogin` is only used in shells to avoid last login information prompts.

## New setup
If setting up a new mac, run `bootstrap.sh`, which installs Xcode 
command-line tools and Homebrew and executes sequentially:
1. `brew.sh`, to install command-line tools
2. `brew_cask.sh`, to install main applications
3. `.macos`, to configure system and default apps settings

**Note**: `bootstrap.sh` requires you to login to the 
Mac App Store and manually install `Xcode.app`, before being called.
