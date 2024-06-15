#!/bin/bash

set -euxo pipefaile

currentUser=$(whoami)

sudo cp -f /etc/sudoers /var/tmp
sudo bash -c "echo \"$currentUser ALL=(ALL) NOPASSWD: /usr/sbin/service docker start\" >> /etc/sudoers"
sudo bash -c "echo \"$currentUser ALL=(ALL) NOPASSWD: /usr/sbin/service docker stop\" >> /etc/sudoers"
sudo bash -c "echo \"$currentUser ALL=(ALL) NOPASSWD: /usr/sbin/service docker restart\" >> /etc/sudoers"

sudo visudo -cp
sudo usermod -aG docker $currentUser

newgrp docker
sudo chown "$currentUser":"$currentUser" /home/"$currentUser"/.docker -R
sudo chmod g+rwx "/home/$currentUser/.docker" -R
