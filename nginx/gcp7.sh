#!/bin/bash
sudo apt-get update -y 
sudo apt-get install git -y
snap install docker
sudo git clone https://github.com/matanshikli/docker_compose.git /opt/
sudo docker-compose -f /opt/docker-compose.yml up
echo "done"
