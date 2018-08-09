FROM node:8

#define a work directory
WORKDIR /app

#copy package.json to working directory
COPY ./backend/package.json /app

#run npm install
RUN npm install

#copy server.js to working directory
COPY ./backend/server.js /app

#run server.js
CMD node server.js

#change listening port
EXPOSE 8081
