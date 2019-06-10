#!/usr/bin/env bash 

set -ex

echo "install packages required for https and setting up docker repos"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "Add gpg key"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "add docker repository to apt"
export LSB_ETC_LSB_RELEASE=/etc/upstream-release/lsb-release #linux mint doesn't have a repo
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "update apt"
sudo apt-get update

echo "install docker"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo "Verify it works.. hello.. world?"

sudo docker run hello-world
