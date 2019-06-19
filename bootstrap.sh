#
# Setup a new macOS machine
#

# Configure macOS settings
source ./.macos

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

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install Homebrew command-line utils
source ./brew.sh

# Install Homebrew casks
brew install caskroom/cask/brew-cask
source ./brew_cask.sh
