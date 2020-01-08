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

# Install Automator services
cp -R ~/dotfiles/init/services/*.workflow ~/Library/Services/

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install Homebrew command-line utils
chmod +x brew.sh
source ./brew.sh

# Disable Homebrew analytics
brew analytics off

# Install Python packages
chmod +x python.sh
sudo -H ./python.sh

# Update TeX packages
tlmgr update --self --all --reinstall-forcibly-removed

# Install oh-my-zsh and powerlevel9k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install colorls
sudo gem install colorls

# Add symbolic links to .gitconfig, .zshrc, .bash_profile and .hushlogin
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.hushlogin ~/.hushlogin

# Install Homebrew casks
brew install caskroom/cask/brew-cask
chmod +x brew_cask.sh
source ./brew_cask.sh

# Install iTerm2 preferences
ln -s ~/dotfiles/init/iterm2-preferences.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# Install VSCode preferences
ln -s ~/dotfiles/init/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Add the ability to sudo with touch id
sudo chmod 666 /etc/pam.d/sudo
sudo ex -s -c '2i|auth       sufficient     pam_tid.so' -c x /etc/pam.d/sudo
sudo chmod 444 /etc/pam.d/sudo

# Configure macOS settings
source ./.macos
