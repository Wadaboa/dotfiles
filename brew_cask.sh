#
# Install apps with Homebrew cask
#

# Upgrade Homebrew and maintain cask
brew update && brew cask upgrade && brew cleanup

# Daily
brew cask install 1password
brew cask install telegram
brew cask install whatsapp
brew cask install megasync

# Dev
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk14
brew cask install adoptopenjdk8
brew cask install eclipse-java
brew cask install iterm2
brew cask install sublime-text
brew cask install mactex-no-gui
brew cask install mamp
brew cask install sequel-pro
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code
brew cask install dash
brew cask install postman
brew cask install cyberduck
brew cask install poedit
brew cask install minizincide

# Font
brew tap homebrew/cask-fonts 
brew cask install font-fira-code
brew cask install font-fira-sans
brew cask install font-fira-mono
brew cask install font-hack-nerd-font
brew cask install font-roboto
brew cask install font-fontawesome

# Fun
brew cask install transmission
brew cask install vlc
brew cask install spotify
brew cask install gimp
brew cask install vox

# Browsers
brew cask install google-chrome
brew cask install firefox
brew cask install tor-browser

# Other
brew cask install nimble
brew cask install keka
brew cask install appcleaner
brew cask install skype
brew cask install slack
brew cask install grammarly
brew cask install teamviewer
brew cask install evernote
brew cask install flixtools
brew cask install drawio
