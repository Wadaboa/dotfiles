#
# Install apps with Homebrew cask
#

# Upgrade Homebrew and already-installed formulae
brew update && brew upgrade

# Install Homebrew cask
brew install caskroom/cask/brew-cask

# Daily
brew cask install spark
brew cask install 1password
brew cask install telegram
brew cask install whatsapp

# Dev
brew cask install java
brew cask install eclipse-java
brew cask install iterm2
brew cask install sublime-text
brew cask install mactex-no-gui
brew cask install mamp
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code

# Font
brew tap caskroom/fonts 
brew cask install font-fira-code
brew cask install font-hack-nerd-font

# Fun
brew cask install transmission
brew cask install vlc
brew cask install spotify
brew cask install gimp

# Browsers
brew cask install google-chrome
brew cask install firefox
brew cask install tor-browser

# Other
brew cask install keka
brew cask install appcleaner
brew cask install skype
brew cask install slack