#!/bin/bash
sudo apt-get update -y 
sudo apt-get install git -y
sudo apt-get install docker.io -y
sudo snap install docker -y
sudo apt-get install docker-compose-plugin -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/matanshikli/docker_compose.git
cd docker_compose/
docker-compose -d
