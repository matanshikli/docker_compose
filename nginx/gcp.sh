#!/bin/bash
apt-get update -y 
apt-get install git -y
apt-get install docker.io -y
apt-get install docker-compose-plugin -y
git clone https://github.com/matanshikli/docker_compose.git
cd docker_compose/
docker-compose -d
