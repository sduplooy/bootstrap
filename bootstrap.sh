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

if [[ ! -x /opt/homebrew/bin/telnet ]]; then
    echo "Installing telnet"
    brew install telnet
fi

if [[ ! -x /opt/homebrew/bin/docker-credential-osxkeychain ]]; then
    echo "Installing docker credential helper"
    brew install docker-credential-helper
fi

if [[ ! -x /opt/homebrew/bin/docker ]]; then
    echo "Installing docker"
    brew install docker
fi

if [[ ! -x /opt/homebrew/builderx ]]; then
    echo "Installing docker buildx"
    brew install docker-buildx
fi  

if [[ ! -x /opt/homebrew/bin/colima ]]; then
    echo "Installing colima"
    brew install colima
    brew services start colima
    colima start
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
    go install github.com/go-delve/delve/cmd/dlv@latest
fi

if [[ ! -x /opt/homebrew/bin/gpg ]]; then
    echo "Installing gpg"
    brew install gpg
fi 

if [[ ! -x /opt/homebrew/bin/picotool ]]; then
    echo "Installing picotool"
    brew install picotool
fi

if [[ ! -x /opt/homebrew/bin/pkcs11-tool ]]; then
    echo "Installing opensc"
    brew install opensc
fi

if [[ ! -x /opt/homebrew/bin/ansible ]]; then
    echo "Installing ansible"
    brew install ansible
fi

if [[ ! -x /opt/homebrew/bin/kubectl ]]; then
    echo "Installing kubectl"
    brew install kubectl
fi



softwareupdate --install-rosetta
sudo ln ~/.colima/default/docker.sock /var/run

