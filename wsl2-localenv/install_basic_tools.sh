#!/bin/bash

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
	
bash docker/docker-native-install.sh
