#!/bin/bash

set -euxo pipefail

# Function to prompt user for drive selection
#select_drive() {
#    echo "Please enter the drive where you want to install the WSL distribution (e.g., C, D, E):"
#    read -p "> " drive_letter
#	echo "Making wsl install folder at ${drive_letter}/WSL_Distro"
#	mkdir /$drive_letter/WSL_Distro
#    # Validate drive letter input
#    if [[ ! "$drive_letter" =~ ^[A-Za-z]$ ]]; then
#        echo "Invalid drive letter entered. Please enter a single letter (A-Z)."
#        exit 1
#    fi
#
#    # Return the selected drive letter
#    echo "$drive_letter"
#}

# Prompt user to select drive
#selected_drive=$(select_drive)

powershell.exe -c "start https://account.amd.com/en/forms/downloads/xef.html?filename=petalinux-v2019.2-final-installer.run"

powershell.exe -c "Enable-WindowsOptionalFeature -FeatureName 'Microsoft-Windows-Subsystem-Linux' -All -Online -norestart"

powershell.exe -c "Enable-WindowsOptionalFeature -FeatureName 'VirtualMachinePlatform' -All -Online -norestart"

