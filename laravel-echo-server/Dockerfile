FROM node:alpine

ENV LARAVEL_ECHO_SERVER_CONFIG_FILE=${LARAVEL_ECHO_SERVER_CONFIG_FILE}

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN echo 'we are running some # of cool things'
RUN echo ${LARAVEL_ECHO_SERVER_CONFIG_FILE}

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
