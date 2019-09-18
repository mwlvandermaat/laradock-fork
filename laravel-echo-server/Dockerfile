FROM node:alpine

ARG LARAVEL_ECHO_SERVER_CONFIG_FILE

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base

RUN npm install
# Bundle app source
COPY ${LARAVEL_ECHO_SERVER_CONFIG_FILE} /usr/src/app/${LARAVEL_ECHO_SERVER_CONFIG_FILE}

EXPOSE 3000
CMD [ "npm", "start", "--force" ]
