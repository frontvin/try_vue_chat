# FROM ubuntu:16.04

# RUN apt-get update && apt-get -y upgrade

# RUN mkdir -p /usr/src/chat
# WORKDIR /usr/src/chat

# COPY ./backend ./usr/src/chat

# RUN apt-get install npm -y
# RUN npm install express --save
# RUN npm install forever -g

# RUN apt-get install curl -y
# RUN curl -sL https://deb.nodesource.com/setup_8.x
# RUN apt-get install -y nodejs

# RUN forever start server.js


FROM node:8-alpine

WORKDIR /var/www/chat
COPY ./backend/package.json var/www/chat

RUN npm install
RUN npm install express --save
COPY . /var/www/chat

CMD node server.js
EXPOSE 8081