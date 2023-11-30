#!/bin/zsh

HAS_APT=$(which apt)

export NONINTERACTIVE=true

if [ "$HAS_APT" ]; then
    echo "Installing zsh..."
    sudo apt install zsh
fi

HAS_ZSH=$(which zsh)

if [ ! "$HAS_ZSH" ]; then
    echo "Zsh not found. Please install zsh and run this script again."
    exit 1
fi

echo "Installing oh-my-posh..."

mkdir -p ~/.oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.oh-my-posh

echo "Installing profile..."

cp ./linux/.zshrc ~/.zshrc

echo "Reloading profile..."

source ~/.zshrc

echo "Installing oh-my-posh font..."

oh-my-posh font install Meslo

echo "Installing oh-my-posh theme..."

mkdir -p ~/.oh-my-posh/themes
cp ./eule.omp.json ~/.oh-my-posh/themes/eule.omp.json

echo "Installing linuxbrew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing GitHub CLI..."

brew install gh

echo "Reloading profile..."

source ~/.zshrc

echo "Installing GitHub Copilot CLI..."

gh extension install github/gh-copilot

