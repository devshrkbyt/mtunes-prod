FROM node:12-slim

EXPOSE 3000

RUN mkdir  /app 

WORKDIR /app

USER root

COPY package.json package-lock.json ./

RUN npm install && npm cache clean --force

COPY  . .

CMD ["npm", "start"]