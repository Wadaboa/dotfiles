#
# Install command-line tools using Homebrew
#

# Upgrade Homebrew and already-installed formulae
brew update && brew upgrade

# Update OS X GNU core utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Install more recent versions of some OS X tools
brew install wget --with-iri
brew install vim --with-override-system-vi
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Install docker tools
brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# Install other useful binaries
brew install python
brew install tesseract
brew install opencv
brew install qt
brew install nmap
brew install libusb
brew install blueutil
brew install bat
brew install htop
brew install git
brew install imagemagick --with-webp
brew install ffmpeg --with-libvpx
brew install node

# Install zsh shell and related utilities
brew install zsh
brew install powerlevel9k
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install neofetch
brew install z

# Install bash 4 and related utilities
brew install bash
brew install bash-completion

# Remove outdated versions from the cellar
brew cleanup
