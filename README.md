# Nodejs template with Typescript and Docker

A Node.js template which includes:

- Typescript setup
- Docker integration
- ES linting and Prettier for code quality
- Husky for pre-commit checks
- Automatic OpenAPI documentation using `tsoa`
- Debugging setup in VSCode

You can use this template in your project for a quick setup.

## Prerequisites

- Node.js installed
- yarn or npm installed
- Docker installed
- Optional for debugging: VS Code

## Get started

Start by cloning the template into an empty directory:

```
$ git clone --depth 1 https://github.com/jellebaele/Nodejs-Template.git .

```

Next, simply run the following commands:

1. Remove the `.git` folder and initialize git:

```
$ rm -r .git
$ git init
```

2. Install packages

```
$ npm install
OR
$ yarn install
```

2. Initialize husky

```
$ npx init husky
```

3. Create a `.env` file in the main folder (see also `.env-example`).

```
$ touch .env
```

4. Build the project in order to generate the open-api documents for the first time.

```
$ npm run build
OR
$ yarn run build
```

4. Start the app for development with ts-node and nodemon (starts watching changes to \*.ts and \*.js files located within the `src` folder)

   1. With Docker (The Dockerfile is setup so that when the env setting `NODE_ENV=development`, the docker container is started while hot reload is activated. This is also by default):
      ```
      $ docker compose up --build
      ```
   2. Without Docker:
      ```
      $ npm run dev
      OR
      $ yarn run dev
      ```

5. Create and run the application for production mode (Set `NODE_ENV=production` in the `.env` file)
   1. With Docker:
   ```
   $ docker compose up --build
   ```
   2. Without Docker: Build the project:
   ```
   $ npm run build
   OR
   $ yarn run build
   ```
   Run the project:
   ```
   $ npm run start
   OR
   $ yarn run start
   ```

## Debug

Debugging is already configured if you use VS Code. To attach a debugger, start the project by executing:

```
$ npm run debug
OR
$ yarn run debug
```

Next, go to the debugger tab, select `Local: Attach to process with nodemon` and press play. Debug mode is now activated.
