#!/usr/bin/env bash 

set -e

apt install zsh -y

FILE=ohmyzsh_installer.sh
curl -Lo $FILE https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh $FILE  --unattended

rm $FILE


