#!/usr/bin/env bash

set -e pipefail

sudo ./packages.sh
sudo ./ohmyzsh.sh
sudo ./awscli.sh
sudo ./bat.sh
sudo ./nvm.sh

echo "you are required to change your shell to zsh manually"

echo "chsh /usr/bin/zsh"

bat README.md
