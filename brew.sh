#
# Install command-line tools using Homebrew
#

# Upgrade Homebrew and already-installed formulae
brew update && brew upgrade

# Update OS X GNU core utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed

# Install more recent versions of some OS X tools
brew install wget
brew install vim
brew install nano
brew install grep
brew install openssh

# Install docker tools
brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# Install dev tools
brew install python
brew install mysql
brew install php
brew install gnu-prolog
brew install swi-prolog

# Install other useful binaries
brew install tesseract
brew install opencv
brew install qt
brew install nmap
brew install libusb
brew install blueutil
brew install bat
brew install htop
brew install git
brew install imagemagick
brew install ffmpeg
brew install node
brew install rclone

# Install zsh shell and related utilities
brew install zsh
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install zsh-history-substring-search
brew install neofetch
brew install z

# Install bash 4 and related utilities
brew install bash
brew install bash-completion

# Install Mac App Store apps
brew install mas
mas lucky spark
mas lucky amphetamine

# Remove outdated versions from the cellar
brew cleanup
