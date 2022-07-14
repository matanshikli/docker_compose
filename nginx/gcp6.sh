#!/bin/bash
sudo apt-get update -y 
sudo apt-get install git -y
snap install docker
sudo git clone https://github.com/matanshikli/docker_compose.git /opt/
cd /opt/
sudo docker-compose up
echo "done"
