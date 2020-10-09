FROM node

RUN apt-get update && apt-get install -y nano

RUN npm install babel-cli -S

RUN mkdir /app
WORKDIR /app
COPY package.json .

RUN yarn install
COPY . .

#RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 300
