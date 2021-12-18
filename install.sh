#!/bin/zsh
sudo apt-get install -y ssh
if [ $? -ne 0 ]; then
  echo "Failed to install ssh"
  # exit 1
fi
mkdir /serv/pkgs/ssh
mkdir -p /serv/data/ssh
git clone https://github.com/Servbuntu/ssh-app.git /serv/pkgs/ssh/
