#!/bin/zsh

echo "Installing zsh..."

sudo apt install zsh

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

echo "Reloading profile..."

source ~/.zshrc
