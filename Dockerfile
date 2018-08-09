FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y nodejs npm
# this is an automated script, we want to avoid the apt confirmation


COPY index.js .
COPY package.json .

RUN npm i -g npm
RUN npm install -g loopback-cli
RUN npm run dev
RUN npm start


