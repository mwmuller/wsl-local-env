#!/bin/bash

set -euxo pipefail
powershell.exe -c "wsl --install"

powershell.exe -c "Enable-WindowsOptionalFeature -FeatureName 'Microsoft-Windows-Subsystem-Linux' -All -Online -norestart"

powershell.exe -c "Enable-WindowsOptionalFeature -FeatureName 'VirtualMachinePlatform' -All -Online -norestart"

./install-distro.sh