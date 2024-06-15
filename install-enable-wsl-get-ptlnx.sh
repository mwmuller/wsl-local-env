#!/bin/bash

set -euxo pipefail
powershell.exe -c "wsl --install"

powershell.exe -c "Enable-WindowsOptionalFeature -FeatureName 'Microsoft-Windows-Subsystem-Linux' -All -Online -norestart"

powershell.exe -c "Enable-WindowsOptionalFeature -FeatureName 'VirtualMachinePlatform' -All -Online -norestart"

powershell.exe -c "start https://account.amd.com/en/forms/downloads/xef.html?filename=petalinux-v2019.2-final-installer.run"

./install-distro.sh