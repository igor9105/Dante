FROM node:16.20.2
ADD . /app
WORKDIR /app
RUN npm config set legacy-peer-deps true
RUN npm i
RUN npm install
RUN npm run dante3:build
EXPOSE 8080
