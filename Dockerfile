FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN yarn install

COPY . .
EXPOSE ${PORT}

RUN yarn build

CMD ["sh", "-c", "if [ \"$NODE_ENV\" = \"production\" ]; then yarn run start; else yarn run dev; fi"]