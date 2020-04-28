FROM node:erbium-alpine3.11 as builder
# Get the necessary build tools
RUN apk update && apk add build-base autoconf automake libtool pkgconfig nasm
RUN apk add --no-cache bash

# Add the package.json file and build the node_modules folder
WORKDIR /app
COPY ./package*.json ./
RUN mkdir node_modules && npm install

# Get a clean image with gatsby-cli and the pre-built node modules
FROM node:erbium-alpine3.11
RUN npm install --global gatsby-cli && gatsby telemetry --disable && mkdir /save
COPY --from=builder /app/node_modules /save/node_modules