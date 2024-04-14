#!/bin/bash

set -e

if [[ ! -x /opt/homebrew/bin/brew ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
fi

if [[ ! -x /usr/local/bin/reattach-to-user-namespace ]]; then
    echo "Installing reattach-to-user-namespace"
    brew install reattach-to-user-namespace
fi

if [[ ! -x /opt/homebrew/bin/tree ]]; then
    echo "Installing tree"
    brew install tree
fi

if [[ ! -x /opt/homebrew/bin/ack ]]; then
    echo "Installing ack"
    brew install ack
fi

if [[ ! -x /opt/homebrew/bin/stow ]]; then
    echo "Installing stow"
    brew install stow
fi

if [[ ! -x /opt/homebrew/bin/nvm ]]; then
    echo "Installing nvm"
    brew install nvm
fi

if [[ ! -x /opt/homebrew/bin/rg ]]; then
    echo "Installing ripgrep"
    brew install ripgrep
fi

if [[ ! -x /opt/homebrew/bin/fd ]]; then
    echo "Installing fd" 
    brew install fd
fi

if [[ ! -x /opt/homebrew/bin/wget ]]; then
    echo "Installing wget" 
    brew install wget
fi

if ! system_profiler SPFontsDataType | grep "Family: RobotoMono Nerd Font Propo"; then
    echo "Installing RobotoMono Font" 
    brew tap homebrew/cask-fonts
    brew install --cask homebrew/cask-fonts/font-roboto-mono-nerd-font
fi

if [[ ! -x /usr/local/share/dotnet/dotnet ]]; then
    echo "Installing .NET SDK"
    brew install --cask dotnet-sdk
    dotnet tool install --global csharp-ls
fi

if [[ ! -x /opt/homebrew/bin/go ]]; then
    echo "Installing Go"
    brew install go
fi

# cd dotfiles
# stow .
