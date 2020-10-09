FROM node

RUN apt-get update && apt-get install -y nano

RUN npm install babel-cli -S

RUN mkdir /app
COPY package.json /app
WORKDIR /app

RUN yarn install
COPY . /app

#RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 300