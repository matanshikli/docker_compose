#!/bin/bash
apt-get update -y 
apt-get install git -y
git clone https://github.com/matanshikli/docker_compose.git
docker-compose -d
