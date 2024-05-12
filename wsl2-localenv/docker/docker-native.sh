#!/bin/bash

set -euxo pipefail

# Variable to store Usage information

Usage="
\e[0;33m Usage: docker-native.sh
please do not run this script as root user.
you will be asked to enter your password

 Standard Input:
	-h print usage
	
	example 
	bash docker-native.sh"

# Read terminal Args
while getopts "h" options; do
	case $options in
		h) echo -e "$Usage"; exit 1;;
	esac
done

#if [ "$(whoami)" = "root" ] ; then
	#echo $(whoami)
	#echo -e "error: script run as root $Usage"; exit 1
#fi

sudo -E docker-native-install.sh