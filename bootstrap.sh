#
# Setup a new macOS machine
#

# Install Xcode command-line tools
# (It requires to already have Xcode installed from the Mac App Store)
xcode-select --install
sleep 1
osascript <<EOD
  tell application "System Events"
    tell process "Install Command Line Developer Tools"
      keystroke return
      click button "Agree" of window "License Agreement"
    end tell
  end tell
EOD

# Accept Xcode license
sudo xcodebuild -license

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install Homebrew command-line utils
chmod +x brew.sh
source ./brew.sh

# Install oh-my-zsh and powerlevel9k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install colorls
sudo gem install colorls

# Add .gitconfig, .zshrc, .bash_profile to ~
cat > ~/.zshrc <<- "EOF"
source ~/dotfiles/.zshrc
EOF
cat > ~/.bash_profile <<- "EOF"
source ~/dotfiles/.bash_profile
EOF
cat > ~/.gitconfig <<- "EOF"
[include]
	path = ~/dotfiles/.gitconfig
EOF

# Install Homebrew casks
brew install caskroom/cask/brew-cask
chmod +x brew_cask.sh
source ./brew_cask.sh

# Install iTerm2 preferences
cp init/com.googlecode.iterm2.plist ~/Library/Preferences/

# Install VSCode preferences
cp init vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Configure macOS settings
source ./.macos
