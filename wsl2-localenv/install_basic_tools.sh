#!/bin/bash

sudo -E apt-get install dos2unix
sudo dis2unix.exe install* docker/docker*

sudo -E apt update && sudo -E apt upgrade -y && sudo -E apt autoremove -y

sudo -E apt install -y \
	vim \
	nano \
	git \
	git-lfs \
	zsh \
	fish \
	wget \
	curl \
	nano \
	unzip \
	dos2unix

git clone https://github.com/mwmuller/petalinux_wsl.git
	
bash docker/docker-native-install.sh
