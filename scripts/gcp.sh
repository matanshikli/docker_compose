#!/bin/bash
apt-get update -y 
apt-get install git -y
apt install docker.io -y 
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
git clone https://github.com/matanshikli/docker_compose.git /opt/project
docker-compose -f /opt/project/docker-compose.yml up -d mysql && sleep 50
echo "SQL is up!" && sleep 40
echo "creating the rest the the stack" && sleep 20
docker-compose -f /opt/project/docker-compose.yml down
echo "SQL is down" && sleep 40
docker-compose -f /opt/project/docker-compose.yml up -d 
