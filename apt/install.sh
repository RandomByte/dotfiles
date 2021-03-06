#!/bin/bash

set -e

if [[ `uname` != "Linux" ]]; then
    echo "This install script is for Linux only and requires APT"; exit 1
fi

echo "Requesting sudo privileges for apt..."
sudo apt update

function install {
  if dpkg -s $1 >/dev/null 2>&1; then
    echo "Already installed: ${1}"
  else
    echo "Installing: ${1}..."
    sudo apt install -y $1
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
install chrome-gnome-shell
install gnome-tweak-tool
install gufw
install openjdk-8-jre
install lm-sensors

install undistract-me
install openssh-server
install hub
install neofetch
install fd-find

install lolcat
# install gti
install sl
install figlet
install python3-pip

if ! dpkg -s sublime-text >/dev/null 2>&1; then
	echo "Sublime Text not installed. Installing..."
	# From https://www.sublimetext.com/docs/3/linux_repositories.html
	install apt-transport-https
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt update
	install sublime-text
fi

if ! dpkg -s gh >/dev/null 2>&1; then
	echo "GitHub CLI not installed. Installing..."
	# https://github.com/cli/cli/blob/trunk/docs/install_linux.md
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
	sudo apt-add-repository https://cli.github.com/packages
	sudo apt update
	install gh
fi