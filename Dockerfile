FROM node:15.5-alpine as build

RUN yarn global install serve

COPY package.json yarn.lock $DIR/
COPY package.json $DIR/server
RUN yarn

COPY . .

RUN yarn build


