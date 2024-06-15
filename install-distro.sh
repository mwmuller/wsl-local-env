#!/bin/bash

# Prints the available distro for WSL2 (Defaults)
wsl.exe --list --online

echo -e "Type the distro name you'd like to install and set for WSL:"
read DISTRO
echo -e "Selected: $DISTRO"
wsl.exe --install $DISTRO