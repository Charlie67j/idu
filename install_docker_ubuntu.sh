#!/bin/bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## for ubuntu 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce docker-ce-cli containerd.io -y

## now set user as part of docker group
sudo usermod -aG docker ${USER}

## install docker-compose
sudo apt install docker-compose -y
