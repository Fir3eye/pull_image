FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# copy source to destination
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
