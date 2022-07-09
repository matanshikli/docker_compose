FROM ubuntu:20.04

RUN apt-get update 
RUN apt-get install mysql-client -y

WORKDIR /opt
COPY scripts/* /opt/

ENTRYPOINT bash run.sh