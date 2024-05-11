FROM node:18-alpine3.17

WORKDIR /app

COPY package*.json ./
RUN yarn install

COPY . .
EXPOSE ${PORT}


CMD ["sh", "-c", "if [ \"$NODE_ENV\" = \"production\" ]; then yarn run start:prod; else yarn run start:dev; fi"]