# Typescript Project Template

A very basic starter template for Typescript projects.

## Tech stack

- NodeJS
- Yarn
- Typescript
- Jest

## Commands

**NOTE:** It's recommended to set a specific NodeJS version for your project. This template provides a ```.nvmrc``` file to specify the NodeJS version with [nvm - Node Version Manager](https://github.com/nvm-sh/nvm).

```
nvm use
```

The following commands are available:

```
yarn lint     - Run the code linter
yarn build    - Build the application
yarn start    - Run the application
yarn test     - Run tests
```

### Docker
This project includes a very basic Dockerfile as a starting point for more sophesticated projects. 

To build the Docker image and run the conatiner afterwards, use the following commands

```
docker build --rm -f "Dockerfile" -t grnxx-tpl-typescript .
docker run -it grnxx-tpl-typescript:latest
```