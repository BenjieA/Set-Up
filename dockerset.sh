#! /bin/bash
sudo apt update

curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
sudo systemctl docker start
sudo systemctl docker enable

sudo apt install docker-compose

echo "Please restart your Terminal"
