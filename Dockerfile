FROM node:lts-alpine3.14 as service1
WORKDIR /usr/app/
COPY ./package.json .
RUN npm install
COPY . .
CMD [ "npm", "run", "service1" ]

FROM node:lts-alpine3.14 as service2
WORKDIR /usr/app/
COPY ./package.json .
RUN npm install
COPY . .
CMD [ "npm", "run", "service2" ]

FROM node:lts-alpine3.14 as service3
WORKDIR /usr/app/
COPY ./package.json .
RUN npm install
COPY . .
CMD [ "node", "service3.js" ]


