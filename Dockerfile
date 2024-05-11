FROM node:18-alpine3.17

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE ${PORT}


CMD ["sh", "-c", "if [ \"$NODE_ENV\" = \"production\" ]; then npm run start:prod; else npm run start:dev; fi"]