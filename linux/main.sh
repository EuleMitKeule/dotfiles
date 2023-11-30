#!/bin/bash

cd ./linux

curl -s https://ohmyposh.dev/install.sh | bash -s

# copy .zshrc to home directory
cp .zshrc $HOME/.zshrc
