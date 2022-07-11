FROM ubuntu:20.04

RUN apt-get update 
RUN apt-get install mysql-client -y

WORKDIR /root/home/scripts

ENTRYPOINT bash run.sh