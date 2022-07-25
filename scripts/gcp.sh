#!/bin/bash
sudo apt-get update -y 
sudo apt-get install git -y
sudo apt install docker.io -y 
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo git clone https://github.com/matanshikli/docker_compose.git /opt/project
sudo docker-compose -f /opt/project/docker-compose.yml up -d mysql && sleep 45
sudo docker-compose -f /opt/project/docker-compose.yml up

echo "done"