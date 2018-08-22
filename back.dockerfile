FROM node:8

#get updates and upgrade system
RUN apt-get update && apt-get upgrade -y

#install nano for editing text files
RUN apt-get install nano

#define a work directory
WORKDIR /app

#copy all from backend directory to working directory
#COPY ./backend/ /app

#run npm install
RUN npm install 
RUN npm install forever -g

#run server.js
#CMD forever server.js

#change listening port
EXPOSE 80