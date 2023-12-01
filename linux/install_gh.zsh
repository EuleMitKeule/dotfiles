#!/bin/bash

GH_RELEASE_URL="https://github.com/cli/cli/releases/v2.39.2/download/gh_2.39.2_linux_amd64.tar.gz"
TARGET_DIRECTORY="/usr/local/bin"

echo "Downloading the latest GitHub CLI release..."
curl -L "$GH_RELEASE_URL" -o gh_latest.tar.gz

echo "Extracting the archive..."
tar -zxvf gh_latest.tar.gz

echo "Moving the binary to $TARGET_DIRECTORY"
mv gh_*_amd64/gh "$TARGET_DIRECTORY"

echo "Cleaning up..."
rm -rf gh_latest.tar.gz gh_*_amd64

echo "GitHub CLI installation complete!"
