#!/bin/bash
sudo apt-get update -y 
sudo apt-get install git -y
snap install docker
sudo git clone https://github.com/matanshikli/docker_compose.git
cd docker_compose/
sudo docker-compose up
echo "done"
