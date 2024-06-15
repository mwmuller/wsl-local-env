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

PETA_DIR="/home/${USER}/petalinux_wsl"

if [[ ! -d "$PETA_DIR" ]]; then
	echo "Cloning petalinux_wsl repo"
	git clone https://github.com/mwmuller/petalinux_wsl.git
else
	echo "Petalinux_wsl repo already exists. Skipping..."
fi
	
bash docker/docker-native-install.sh

start "https://account.amd.com/en/forms/downloads/xef.html?filename=petalinux-v2019.2-final-installer.run"