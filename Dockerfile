FROM node:12.1.0-alpine as builder
RUN mkdir -p /app
WORKDIR /app
COPY *.json /app
COPY yarn.lock /app
COPY jest.config.js /app
COPY ./src /app/src
RUN npm install -g -s --no-progress yarn && \
    yarn && \
    yarn run lint && \
    yarn run test && \
    yarn run build && \
    yarn cache clean

FROM node:12.1.0-alpine
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
COPY yarn.lock /app
RUN npm install -g -s --no-progress yarn && \
    yarn install --production && \
    yarn cache clean

COPY --from=builder /app/dist /app/dist

EXPOSE 3000
CMD yarn start