#!/bin/bash
apt-get update -y 
apt-get install git -y
snap install docker
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
git clone https://github.com/matanshikli/docker_compose.git
cd docker_compose/
docker-compose up
