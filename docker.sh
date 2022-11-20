#!/bin/bash

#curl -fsSL https://get.docker.com | sudo bash
#sudo curl -fsSL "https://github.com/docker/compose/1releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get update
sudo apt-get install docker-compose -y
sudo usermod -aG docker vagrant
