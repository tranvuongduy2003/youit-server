FROM node:18-alpine

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install prettier -g

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080

CMD [ "node", "./dist/src/server.js" ]