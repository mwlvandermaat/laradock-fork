FROM phusion/baseimage:latest
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#MS# add user
ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN groupadd -g ${PGID} beanstalkd && \
  useradd -u ${PUID} -g beanstalkd -m beanstalkd && \
  usermod -p "*" beanstalkd
#MS#

VOLUME /var/lib/beanstalkd/data
FROM alpine
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

RUN apk add --no-cache beanstalkd

#MS# Switch to user beanstalkd instead of root
USER beanstalkd
#MS#

EXPOSE 11300
ENTRYPOINT ["/usr/bin/beanstalkd"]
