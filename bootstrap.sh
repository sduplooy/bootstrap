#!/bin/bash

set -e

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

# Modify the PATH
export PATH=/usr/local/bin:$PATH

# Download and install reattach-to-user-namespace
if [[ ! -x /usr/local/bin/reattach-to-user-namespace ]]; then
    echo "Installing reattach-to-user-namespace"
    brew install reattach-to-user-namespace
fi

# Download and install tree
if [[ ! -x /opt/homebrew/bin/tree ]]; then
    echo "Installing tree"
    brew install tree
fi

# Download and install ack
if [[ ! -x /opt/homebrew/bin/ack ]]; then
    echo "Installing ack"
    brew install ack
fi

# Download and install stow
if [[ ! -x /opt/homebrew/bin/stow ]]; then
    echo "Installing stow"
    brew install stow
fi

brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

brew install --cask dotnet-sdk
dotnet tool install --global csharp-ls

brew install nvm
brew install ripgrep
brew install fd
brew install wget

# cd dotfiles
# stow .
