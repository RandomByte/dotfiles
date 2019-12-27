#!/bin/bash

if [[ `uname` != "Linux" ]]; then
    echo "This install script is for Linux only and requires APT"; exit 1
fi

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}


install curl
install htop
install iftop
install tmux
install vim
install git
install iperf
install nmap
install tree
install zsh

install apt-transport-https
install ca-certificates
install curl
install gnupg-agent
install software-properties-common
install gnome-software-plugin-flatpak
install geary
install chrome-gnome-shell
install gnome-tweak-tool
install gufw
install openjdk-8-jre
install lm-sensors

install undistract-me
install openssh-server
install hub

install lolcat
install gti
install sl
install figlet
