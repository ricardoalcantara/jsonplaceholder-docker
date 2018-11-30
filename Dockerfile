FROM node:8-alpine

WORKDIR /usr/app

RUN wget https://github.com/typicode/jsonplaceholder/archive/v0.3.3.tar.gz
RUN tar xf v0.3.3.tar.gz

WORKDIR /usr/app/jsonplaceholder-0.3.3

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]