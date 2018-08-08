FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x 
RUN apt-get install -y nodejs

# WORKDIR /usr/src/app

RUN apt-get install npm -y
